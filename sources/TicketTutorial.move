module TicketTutorial::Tickets {
    use Std::ASCII;
    use Std::Signer;
    use AptosFramework::TestCoin;
    use Std::Vector;


    struct ConcertTicket has key, store, drop {
		seat: ASCII::String,
		ticket_code: Std::ASCII::String,
	}

	struct Arena<ConcertTicket: store> has key {
		available_tickets: vector<ConcertTicket>
	}
	
	const ENO_ARENA: u64 = 0;
	const ENO_TICKETS: u64 = 1;

	public fun init_arena(arena_owner: &signer) {
		let available_tickets = Vector::empty<ConcertTicket>();
		move_to<Arena<ConcertTicket>>(arena_owner, Arena<ConcertTicket> {available_tickets})
	}

	public fun available_ticket_count(addr: address): u64 acquires Arena {
		let arena = borrow_global<Arena<ConcertTicket>>(addr);
		Vector::length<ConcertTicket>(&arena.available_tickets)
	}

	public fun create_ticket(arena_owner: &signer, seat_bytes: vector<u8>, ticket_code_bytes: vector<u8>) acquires Arena {
		let seat = ASCII::string(seat_bytes);
		let ticket_code = ASCII::string(ticket_code_bytes);
		let arena = borrow_global_mut<Arena<ConcertTicket>>(Signer::address_of(arena_owner));
		Vector::push_back(&mut arena.available_tickets, ConcertTicket {seat, ticket_code});
    }

	public fun purchase_ticket(arena_owner: &signer, buyer: &signer) acquires Arena {
		let owner_address = Signer::address_of(arena_owner);
		assert!(available_ticket_count(owner_address)>0, ENO_TICKETS);
		let check = TestCoin::withdraw(buyer, 50);
		TestCoin::deposit(owner_address, check);
		let arena = borrow_global_mut<Arena<ConcertTicket>>(owner_address);
		let ticket = Vector::pop_back<ConcertTicket>(&mut arena.available_tickets);
		move_to<ConcertTicket>(buyer, ticket);
	}

	


    #[test(account = @0x1)]
    public(script) fun sender_can_create_arena(account: signer) acquires Arena {
        let addr = Signer::address_of(&account);

        init_arena(&account);
		assert!(exists<Arena<ConcertTicket>>(addr), ENO_ARENA);

		create_ticket(&account, b"A24", b"CDEFS");
		assert!(available_ticket_count(addr)==1, ENO_TICKETS)
		
		
    }
}

These errors are generated when running 'cargo test' when there is a `build` folder created from 'cargo run sources'.  These errors go away if I delete the build folder.

```
ulbrethw@Waynes-iMac Tickets % cargo test
    Finished test [unoptimized + debuginfo] target(s) in 0.38s
     Running unittests (target/debug/deps/tutorial-130109aaa5c7c0dd)

running 0 tests

test result: ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s

     Running tests/move_unit_tests.rs (target/debug/deps/move_unit_tests-859b6b490f938a8d)

running 1 test
error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ChainId.move:28:33
   │
28 │         borrow_global<ChainId>(@CoreResources).id
   │                                 ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ValidatorOperatorConfig.move:27:61
   │
27 │             !exists<ValidatorOperatorConfigChainMarker<T>>(@CoreResources),
   │                                                             ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ValidatorOperatorConfig.move:40:60
   │
40 │             exists<ValidatorOperatorConfigChainMarker<T>>(@CoreResources),
   │                                                            ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Reconfiguration.move:58:41
   │
58 │         assert!(!exists<Configuration>(@CoreResources), Errors::already_published(ECONFIGURATION));
   │                                         ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Reconfiguration.move:89:42
   │
89 │         !exists<DisableReconfiguration>(@CoreResources)
   │                                          ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/Reconfiguration.move:105:60
    │
105 │         let config_ref = borrow_global_mut<Configuration>(@CoreResources);
    │                                                            ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/Reconfiguration.move:139:40
    │
139 │         assert!(exists<Configuration>(@CoreResources), Errors::not_published(ECONFIGURATION));
    │                                        ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/Reconfiguration.move:140:60
    │
140 │         let config_ref = borrow_global_mut<Configuration>(@CoreResources);
    │                                                            ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Version.move:30:45
   │
30 │             !exists<VersionChainMarker<T>>(@CoreResources),
   │                                             ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Version.move:35:31
   │
35 │             !exists<Version>(@CoreResources),
   │                               ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Version.move:51:48
   │
51 │         assert!(exists<VersionChainMarker<T>>(@CoreResources), Errors::not_published(ECHAIN_MARKER));
   │                                                ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Version.move:52:34
   │
52 │         assert!(exists<Version>(@CoreResources), Errors::not_published(ECONFIG));
   │                                  ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Version.move:53:51
   │
53 │         let old_major = *&borrow_global<Version>(@CoreResources).major;
   │                                                   ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Version.move:60:50
   │
60 │         let config = borrow_global_mut<Version>(@CoreResources);
   │                                                  ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ConsensusConfig.move:28:53
   │
28 │             !exists<ConsensusConfigChainMarker<T>>(@CoreResources),
   │                                                     ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ConsensusConfig.move:33:39
   │
33 │             !exists<ConsensusConfig>(@CoreResources),
   │                                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ConsensusConfig.move:42:56
   │
42 │         assert!(exists<ConsensusConfigChainMarker<T>>(@CoreResources), Errors::not_published(ECHAIN_MARKER));
   │                                                        ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ConsensusConfig.move:43:67
   │
43 │         let config_ref = &mut borrow_global_mut<ConsensusConfig>(@CoreResources).config;
   │                                                                   ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/SystemAddresses.move:29:28
   │
29 │         aborts_if addr != @CoreResources with Errors::REQUIRES_ADDRESS;
   │                            ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/SystemAddresses.move:33:18
   │
33 │         addr == @CoreResources
   │                  ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/TransactionPublishingOption.move:35:42
   │
35 │         assert!(!exists<ChainMarker<T>>(@CoreResources), Errors::already_published(ECHAIN_MARKER));
   │                                          ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/TransactionPublishingOption.move:36:55
   │
36 │         assert!(!exists<TransactionPublishingOption>(@CoreResources), Errors::already_published(ECONFIG));
   │                                                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/TransactionPublishingOption.move:50:74
   │
50 │         let publish_option = borrow_global<TransactionPublishingOption>(@CoreResources);
   │                                                                          ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/TransactionPublishingOption.move:57:74
   │
57 │         let publish_option = borrow_global<TransactionPublishingOption>(@CoreResources);
   │                                                                          ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/TransactionPublishingOption.move:63:41
   │
63 │         assert!(exists<ChainMarker<T>>(@CoreResources), Errors::not_published(ECHAIN_MARKER));
   │                                         ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/TransactionPublishingOption.move:64:78
   │
64 │         let publish_option = borrow_global_mut<TransactionPublishingOption>(@CoreResources);
   │                                                                              ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ValidatorConfig.move:51:53
   │
51 │             !exists<ValidatorConfigChainMarker<T>>(@CoreResources),
   │                                                     ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ValidatorConfig.move:71:52
   │
71 │             exists<ValidatorConfigChainMarker<T>>(@CoreResources),
   │                                                    ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/AptosFramework/sources/TestCoin.move:94:64
   │
94 │         let delegations = &mut borrow_global_mut<Delegations>(@CoreResources).inner;
   │                                                                ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:113:64
    │
113 │         let delegations = &mut borrow_global_mut<Delegations>(@CoreResources).inner;
    │                                                                ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:120:56
    │
120 │         let delegations = &borrow_global<Delegations>(@CoreResources).inner;
    │                                                        ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:151:54
    │
151 │         let coin_info = borrow_global_mut<CoinInfo>(@CoreResources);
    │                                                      ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:210:54
    │
210 │         let coin_info = borrow_global_mut<CoinInfo>(@CoreResources);
    │                                                      ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:216:50
    │
216 │         let cap = borrow_global<BurnCapability>(@CoreResources);
    │                                                  ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:222:34
    │
222 │         borrow_global<CoinInfo>(@CoreResources).total_value
    │                                  ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:226:34
    │
226 │         borrow_global<CoinInfo>(@CoreResources).scaling_factor
    │                                  ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:235:50
    │
235 │         assert!(Signer::address_of(&account) != @CoreResources, 0);
    │                                                  ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:239:23
    │
239 │     #[test(account = @CoreResources)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:245:24
    │
245 │         mint(account, @CoreResources, 42);
    │                        ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:284:23
    │
284 │     #[test(account = @CoreResources)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:294:23
    │
294 │     #[test(account = @CoreResources)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:305:23
    │
305 │     #[test(account = @CoreResources, another = @0x1)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:316:23
    │
316 │     #[test(account = @CoreResources, receiver = @0x1)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:334:23
    │
334 │     #[test(account = @CoreResources, account_clone = @CoreResources, delegatee = @0x1)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:334:55
    │
334 │     #[test(account = @CoreResources, account_clone = @CoreResources, delegatee = @0x1)]
    │                                                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:349:23
    │
349 │     #[test(account = @CoreResources, random = @0x1)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/TestCoin.move:358:23
    │
358 │     #[test(account = @CoreResources, random = @0x1)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ValidatorSystem.move:89:54
   │
89 │         assert!(!exists<ValidatorSetChainMarker<T>>(@CoreResources), Errors::already_published(ECHAIN_MARKER));
   │                                                      ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ValidatorSystem.move:90:43
   │
90 │         assert!(!exists<ValidatorSystem>(@CoreResources), Errors::already_published(ECONFIG));
   │                                           ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/ValidatorSystem.move:106:38
    │
106 │             exists<ValidatorSystem>(@CoreResources),
    │                                      ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/ValidatorSystem.move:110:62
    │
110 │         let config_ref = borrow_global_mut<ValidatorSystem>(@CoreResources);
    │                                                              ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/ValidatorSystem.move:217:42
    │
217 │         *borrow_global<ValidatorSystem>(@CoreResources)
    │                                          ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/ValidatorSystem.move:249:53
    │
249 │         assert!(exists<ValidatorSetChainMarker<T>>(@CoreResources), Errors::not_published(ECHAIN_MARKER));
    │                                                     ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ParallelExecutionConfig.move:34:61
   │
34 │             !exists<ParallelExecutionConfigChainMarker<T>>(@CoreResources),
   │                                                             ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ParallelExecutionConfig.move:39:47
   │
39 │             !exists<ParallelExecutionConfig>(@CoreResources),
   │                                               ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ParallelExecutionConfig.move:59:60
   │
59 │             exists<ParallelExecutionConfigChainMarker<T>>(@CoreResources),
   │                                                            ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ParallelExecutionConfig.move:62:75
   │
62 │         let result_ref = &mut borrow_global_mut<ParallelExecutionConfig>(@CoreResources).read_write_analysis_result;
   │                                                                           ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ParallelExecutionConfig.move:72:60
   │
72 │             exists<ParallelExecutionConfigChainMarker<T>>(@CoreResources),
   │                                                            ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/ParallelExecutionConfig.move:75:75
   │
75 │         let result_ref = &mut borrow_global_mut<ParallelExecutionConfig>(@CoreResources).read_write_analysis_result;
   │                                                                           ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Account.move:68:49
   │
68 │         assert!(Signer::address_of(account) == @CoreResources, Errors::requires_address(ENOT_CORE_FRAMEWORK));
   │                                                 ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Account.move:84:36
   │
84 │         assert!(exists<Marker<T>>(@CoreResources), Errors::invalid_argument(ENOT_MARKER_TYPE))
   │                                    ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/VMConfig.move:92:46
   │
92 │             !exists<VMConfigChainMarker<T>>(@CoreResources),
   │                                              ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/VMConfig.move:97:32
   │
97 │             !exists<VMConfig>(@CoreResources),
   │                                ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/VMConfig.move:145:49
    │
145 │         assert!(exists<VMConfigChainMarker<T>>(@CoreResources), Errors::not_published(ECHAIN_MARKER));
    │                                                 ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/VMConfig.move:156:35
    │
156 │         assert!(exists<VMConfig>(@CoreResources), Errors::not_published(ECONFIG));
    │                                   ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/VMConfig.move:158:63
    │
158 │         let gas_constants = &mut borrow_global_mut<VMConfig>(@CoreResources).gas_schedule.gas_constants;
    │                                                               ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Timestamp.move:78:72
   │
78 │         let global_timer = borrow_global_mut<CurrentTimeMicroseconds>(@CoreResources);
   │                                                                        ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Timestamp.move:91:51
   │
91 │         modifies global<CurrentTimeMicroseconds>(@CoreResources);
   │                                                   ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/Timestamp.move:115:49
    │
115 │         borrow_global<CurrentTimeMicroseconds>(@CoreResources).microseconds
    │                                                 ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/Timestamp.move:123:42
    │
123 │         global<CurrentTimeMicroseconds>(@CoreResources).microseconds
    │                                          ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/Timestamp.move:141:43
    │
141 │         !exists<CurrentTimeMicroseconds>(@CoreResources)
    │                                           ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/Timestamp.move:156:42
    │
156 │         exists<CurrentTimeMicroseconds>(@CoreResources)
    │                                          ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/CoreFramework/sources/Timestamp.move:183:71
    │
183 │         invariant is_operating() ==> exists<CurrentTimeMicroseconds>(@CoreResources);
    │                                                                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Block.move:49:32
   │
49 │         exists<BlockMetadata>(@CoreResources)
   │                                ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Block.move:71:68
   │
71 │         let block_metadata_ref = borrow_global_mut<BlockMetadata>(@CoreResources);
   │                                                                    ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
   ┌─ ./build/CoreFramework/sources/Block.move:88:39
   │
88 │         borrow_global<BlockMetadata>(@CoreResources).height
   │                                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/Genesis.move:206:23
    │
206 │     #[test(account = @CoreResources)]
    │                       ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E03001]: address with no value
    ┌─ ./build/AptosFramework/sources/Genesis.move:212:37
    │
212 │         assert!(Account::exists_at(@CoreResources), 0);
    │                                     ^^^^^^^^^^^^^ address 'CoreResources' is not assigned a value. Try assigning it a value when calling the compiler

error[E02001]: duplicate declaration, item, or annotation
  ┌─ ./build/tutorials/sources/TicketTutorial.move:1:24
  │
1 │ module TicketTutorial::Tickets {
  │                        ^^^^^^^
  │                        │
  │                        Duplicate definition for module 'TicketTutorial::Tickets'
  │                        Module previously defined here

error: test failed, to rerun pass '--test move_unit_tests'
```
// Copyright (c) Aptos
// SPDX-License-Identifier: Apache-2.0

use std::path::PathBuf;
use aptos_vm::natives::aptos_natives;
use move_unit_test::UnitTestingConfig;
use move_cli::package::cli;

#[test]
fn move_unit_tests() {
    let mut path = PathBuf::from(env!("CARGO_MANIFEST_DIR"));
    cli::run_move_unit_tests(
        &path,
        move_package::BuildConfig {
            test_mode: true,
            install_dir: Some(path.clone()),
            ..Default::default()
        },
        UnitTestingConfig::default_with_bound(Some(100_000)),
        aptos_natives(),
        /* compute_coverage */ false,
    )
        .unwrap();
}

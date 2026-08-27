@echo off
cargo build --release
cargo objcopy --release --bin stm32-blinky -- -O binary target/thumbv6m-none-eabi/release/stm32-blinky.bin
rs-dfu write --start-address 0x08000000 target/thumbv6m-none-eabi/release/stm32-blinky.bin
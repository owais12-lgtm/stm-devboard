# STM devboard 


This is an STM32F042F6Px development board designed with GPIO pins, buttons, and USB-C, along with a buncha other features. the firmware included in the firmware folder is temp firmware and it may or may not work. 



Features

    STM32F042F6Px (32KB Flash, 6KB RAM, 48MHz)
    USB-C (USB 2.0 Full Speed via PA11/PA12)
    LP5912-3.3DRV LDO — 3.3V regulated output from 5V USB
    BOOT0 and RESET buttons
    SWD header (SWDIO, SWCLK, 3.3V, GND)
    GPIO headers — all available pins broken out

# Usage 

    Clone and open the firmware/ folder 
    Install the Rust toolchain and the thumbv6m-none-eabi target (rustup target add thumbv6m-none-eabi)

Note

This step assumes you are connected via SWD debugger. If you want to flash the firmware using USB, install rs-dfu (or similar) and skip to step 4.

    Build and flash the firmware using cargo run --release

Flashing via DFU:

    cargo build --release
    cargo objcopy --release --bin stm32-blinky -- -O binary target/thumbv6m-none-eabi/release/stm32.bin
    rdfu write --start-address 0x08000000 target/thumbv6m-none-eabi/release/stm32.bin (or similar command for an alternative dfu utility)




   
# schematic
<img width="753" height="539" alt="image" src="https://github.com/user-attachments/assets/96c9074b-ba78-483c-a226-5108e0bde4e3" />


# PCB

<img width="507" height="688" alt="Screenshot from 2026-08-27 18-23-09" src="https://github.com/user-attachments/assets/71b0d074-ddc0-4b7b-9e73-3697ba6338e1" />


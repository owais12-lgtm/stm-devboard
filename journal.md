---
title: "stm dev board"
total time: "12 hours"
---

# aug 24 schematic 

-> I started up on making the STM32 schematic. I watched tPhil'slab tutorial on making an STM32 board and the Bluetooth version of the same tutorial. I also looked at other people's projects and saw how they were making their boards 

-> I went ahead and labeled all the pins on the board and the headers, then  added decoupling capacitors to the VDD pins. I was told to add more of them along the analog signal lines, so I added 3 more and a ferrite bead that's supposed to make the signal smoother. 

-> I broke out the headers to pins that we could use, then I added 4 more pins for SWDIO and SWCLK + 3V3 V and ground 

-> I added a voltage regulator called XC6206PxxxMR, and I copied over the usb c circuit from a previous devboard I made  



<img width="804" height="435" alt="Screenshot from 2026-08-24 16-30-02" src="https://github.com/user-attachments/assets/20b48b4b-be58-43c9-8b92-f6fdf0d07cfd" />
<img width="712" height="468" alt="Screenshot from 2026-08-24 16-24-31" src="https://github.com/user-attachments/assets/20fccb86-18ef-4fa4-8948-74ace889ce13" />
<img width="1054" height="469" alt="Screenshot from 2026-08-24 16-22-59" src="https://github.com/user-attachments/assets/68cb2cee-f2a4-4a61-90a8-8e14905d16dd" />
<img width="1195" height="304" alt="Screenshot from 2026-08-24 16-37-23" src="https://github.com/user-attachments/assets/e1161e43-6576-4489-9ea8-69dae5819bb9" />
<img width="265" height="280" alt="Screenshot from 2026-08-24 16-33-19" src="https://github.com/user-attachments/assets/73b4c6c7-7f0d-49e2-89cf-15abc7d8fd5d" />
<img width="810" height="646" alt="Screenshot from 2026-08-24 16-32-05" src="https://github.com/user-attachments/assets/e26ce89a-b897-4a38-abc4-000b475d2811" />
<img width="715" height="434" alt="Screenshot from 2026-08-24 16-30-18" src="https://github.com/user-attachments/assets/2c90cb8a-5381-41e3-a7d8-7280893daa69" />
<img width="842" height="657" alt="image" src="https://github.com/user-attachments/assets/5c49158e-30bf-492a-9c45-0799c2080480" />

**Total time spent: 5h**



# aug 24 routing v1 

-> i imported all the footprints i needed cuz kicad dident have many of them, i also tried to find 3d models but i couldnt figure out how to import them. 

-> i figured out the placement of all components so it could be really thin and yet still somehow work and not make routing hell

-> turns out i did not making this easy for myself, and now i have nightmare routing, 4 of pins are basically just landlocked and i cant move to the second layer cuz i alr have traces going next to the pins. i did most of the routing fine but these 4 pins are annoying asf and i spent way too much time trying to route those 


<img width="505" height="636" alt="Screenshot from 2026-08-26 13-45-38" src="https://github.com/user-attachments/assets/9bab4824-f693-4f02-b771-1be5c08c436b" />
<img width="844" height="817" alt="Screenshot from 2026-08-26 13-35-17" src="https://github.com/user-attachments/assets/f29a8051-5541-4ff4-b424-0edc0f9e3186" />
<img width="844" height="817" alt="Screenshot from 2026-08-26 13-30-05" src="https://github.com/user-attachments/assets/e2b6583b-226b-436d-9738-facd39420d02" />
<img width="844" height="817" alt="Screenshot from 2026-08-26 13-26-14" src="https://github.com/user-attachments/assets/54ee858e-0a00-4192-b9d7-b149c263dc58" />
<img width="844" height="817" alt="Screenshot from 2026-08-26 13-18-07" src="https://github.com/user-attachments/assets/29e00a73-3887-4011-8f37-fc745708a735" />
<img width="700" height="635" alt="Screenshot from 2026-08-26 13-00-02" src="https://github.com/user-attachments/assets/cfbccf5b-d9db-4871-8f23-ad5e094b6716" />
**Total time spent: 3h**



# aug 27 routing v2 + v3

-> i got my routing un-gridlocked, then i messed up and got it gridlocked again so i redid it. i deleted all the traces and vias from the entire left side of the pcb

 -> i figured out a way to get the pins to reach by making my board bigger, then got annoyed at all the times i ran into traces on the back so i had to move around vias till i got that right. 

 -> i deleted the right side of all the traces and vias, then re did all the routing for there i had some issues  with pin 2 and 3 where they got locked in wernt able to get connected 

-> i added some silkscreen and some qol improvements. 

> <img width="507" height="688" alt="Screenshot from 2026-08-27 18-23-09" src="https://github.com/user-attachments/assets/d2b653b4-2800-4793-850a-466259c13fa5" />
<img width="437" height="545" alt="Screenshot from 2026-08-27 17-55-28" src="https://github.com/user-attachments/assets/e856ec91-c853-411e-897d-03511298ee26" />
<img width="257" height="239" alt="Screenshot from 2026-08-27 17-52-01" src="https://github.com/user-attachments/assets/53f194e2-97a8-4d17-8dca-3c8526e2c73b" />
<img width="819" height="732" alt="Screenshot from 2026-08-27 17-36-52" src="https://github.com/user-attachments/assets/c4803ca6-4d7f-4400-ab0f-e0e93e786386" />
<img width="623" height="748" alt="Screenshot from 2026-08-27 17-31-48" src="https://github.com/user-attachments/assets/441ecc60-c978-4e1e-8225-0e1c8399dcde" />

<img width="884" height="865" alt="Screenshot from 2026-08-27 17-07-18" src="https://github.com/user-attachments/assets/3206deca-a14a-43d3-b892-e145f43b0357" />

**Total time spent: 4h**

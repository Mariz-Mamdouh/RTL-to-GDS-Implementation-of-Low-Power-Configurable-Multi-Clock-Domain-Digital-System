# RTL-to-GDS-Implementation-of-Low-Power-Configurable-Multi-Clock-Domain-Digital-System
## Description
It is responsible of receiving commands through UART receiver to do different system functions as register file reading/writing or doing some processing using ALU block and send result to UART transmitter through asynchronous FIFO for handling different clock rates and avoid data loss.

## System Architecture
![Screenshot (300)](https://github.com/user-attachments/assets/3581d884-b717-4090-86b1-6e01376d9d8f)

### 1) Clock Domain 1 (REF_CLK)
- RegFile: Stores system and user registers. Supports read and write operations controlled by SYS_CTRL.
- ALU: Performs arithmetic and logic operations such as addition, subtraction, multiplication, division, and bitwise logic.
- Clock Gating: Controls ALU’s clock based on enable signals to save power.
- SYS_CTRL: Central control unit responsible for interpreting UART commands, controlling ALU and RegFile, and managing data flow.

### 2) Clock Domain 2 (UART_CLK)
- UART_TX: Transmits serial data frames to the master.
- UART_RX: Receives serial data frames from the master.
- PULSE_GEN: Generates a pulse signal based on UART_TX status.
- Clock Dividers: Divides the UART clock based on programmable division ratio.

### 3) Synchronizers
- RST Synchronizer: Synchronizes reset signals between clock domains.
- Data Synchronizer: Synchronizes control and data signals across domains.
- ASYNC FIFO: Buffers data safely between asynchronous clock domains.

## Supported Operations
#### ALU Operations
- Addition
- Subtraction
- Multiplication 
- Division
- AND
- OR
- NAND
- NOR
- XOR
- XNOR
- CMP: A = B
- CMP: A > B
- SHIFT: A >> 1
- SHIFT: A << 1

#### Register File Operations
- Register File Write
- Register File read
     
## Supported Commands
- Register File Write Command (3 frames)

  <img width="538" height="133" alt="image" src="https://github.com/user-attachments/assets/06ae16ca-1b59-43bc-98a2-fcf2ec03f295" />
  
- Register File Read Command (2 frames)

  <img width="356" height="110" alt="image" src="https://github.com/user-attachments/assets/9c3efc98-7f44-459c-bbb1-8884f6a44c54" />

- ALU Operation Command with Operand (4 frames)

  <img width="731" height="115" alt="image" src="https://github.com/user-attachments/assets/dce32a6d-fada-439b-ba68-180df2d63243" />

- ALU Operation Command with No Operand (2 frames)

  <img width="493" height="121" alt="image" src="https://github.com/user-attachments/assets/cec91a2a-28dd-45e9-b424-b968c105da21" />


## System Specifications
- Reference Clock (REF_CLK): 50 MHz
- UART Clock (UART_CLK): 3.6864 MHz
- Clock Divider: Always enabled (clock divider enable = 1)
     
    



      



     
        
     
     
     
     

     

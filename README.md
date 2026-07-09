# 📡 433 MHz Half-Duplex Wireless Communication using Nexys4 DDR FPGA

> **A complete FPGA-based Half-Duplex Wireless Communication System using Nexys4 DDR (Artix-7), HT12E/HT12D Encoder-Decoder, and 433 MHz RF Modules.**

![Platform](https://img.shields.io/badge/FPGA-Artix--7-blue)
![Language](https://img.shields.io/badge/Language-Verilog-orange)
![Board](https://img.shields.io/badge/Board-Nexys4_DDR-green)
![Vivado](https://img.shields.io/badge/Tool-Xilinx_Vivado-red)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

# 🚀 Project Overview

This project demonstrates a **Half-Duplex Wireless Communication System** implemented on the **Nexys4 DDR FPGA** using **Verilog HDL**.

The system transmits and receives 4-bit digital data wirelessly using inexpensive **433 MHz ASK RF modules**. Data encoding and decoding are performed using the **HT12E Encoder** and **HT12D Decoder**, while the FPGA controls transmission, receives valid packets, and displays data on the onboard **Seven Segment Display**.

---

# ✨ Features

✅ Half-Duplex Communication

✅ FPGA Controlled Transmission

✅ FPGA Controlled Reception

✅ 433 MHz ASK RF Communication

✅ HT12E Encoder Interface

✅ HT12D Decoder Interface

✅ Seven Segment Display Output

✅ Real-Time Data Display

✅ Switch Controlled Transmission

✅ Valid Transmission (VT) Detection

✅ Synthesizable Verilog RTL

✅ Nexys4 DDR Compatible

---

# 🛠 Hardware Used

| Component | Description |
|------------|-------------|
| Nexys4 DDR FPGA | Artix-7 XC7A100T |
| HT12E | 12-bit Encoder |
| HT12D | 12-bit Decoder |
| 433 MHz RF TX | ASK Transmitter |
| 433 MHz RF RX | ASK Receiver |
| 17.3 cm Antenna | Quarter Wave Antenna |
| Breadboard | Prototyping |
| Logic Level Converter *(Optional)* | If HT12D powered at 5V |

---

# 💻 Software Used

- Xilinx Vivado
- Verilog HDL
- Xilinx Hardware Manager

---

# 📂 Project Structure

```
433MHz-RF-FPGA/
│
├── rtl/
│   ├── tx_top.v
│   ├── rx_top.v
│   ├── half_duplex_top.v
│   ├── seven_segment.v
│   └── clock_divider.v
│
├── constraints/
│   └── nexys4ddr.xdc
│
├── simulation/
│   └── testbench.v
│
├── docs/
│   ├── Architecture.pdf
│   ├── Report.pdf
│   └── Images/
│
├── images/
│
└── README.md
```

---

# 🏗 System Architecture

```
                TRANSMITTER

+------------+
| Nexys4 DDR |
|  FPGA TX   |
+------------+
      |
      |
      v
+------------+
|   HT12E    |
|  Encoder   |
+------------+
      |
      |
      v
+------------+
| 433 MHz TX |
+------------+
      |
~~~~~~~~~~~~~~ AIR ~~~~~~~~~~~~~~
      |
+------------+
| 433 MHz RX |
+------------+
      |
      |
      v
+------------+
|   HT12D    |
|  Decoder   |
+------------+
      |
      |
      v
+------------+
| Nexys4 DDR |
|  FPGA RX   |
+------------+
      |
      |
      v
 Seven Segment Display
```

---

# 🔄 Data Flow

```
Switches
    │
    ▼
FPGA (TX)
    │
    ▼
HT12E Encoder
    │
    ▼
433 MHz RF Transmitter
    │
    ▼
~~~~~~~~ AIR ~~~~~~~~
    │
    ▼
433 MHz RF Receiver
    │
    ▼
HT12D Decoder
    │
    ▼
FPGA (RX)
    │
    ▼
Seven Segment Display
```

---

# 🔌 FPGA GPIO Interface

## TX Side

| FPGA Pin | HT12E |
|----------|--------|
| tx_data[0] | AD8 |
| tx_data[1] | AD9 |
| tx_data[2] | AD10 |
| tx_data[3] | AD11 |
| TE | TE |

---

## RX Side

| HT12D | FPGA |
|--------|------|
| D0 | rx_data[0] |
| D1 | rx_data[1] |
| D2 | rx_data[2] |
| D3 | rx_data[3] |
| VT | vt |

---

# ⚡ Voltage Compatibility

⚠ Nexys4 DDR FPGA GPIO operates at **3.3V LVCMOS**

If HT12D operates at **5V**, use:

- Logic Level Shifter
- Voltage Divider

Do **NOT** connect 5V directly to FPGA GPIO.

---

# 📺 Demonstration

### TX Mode

- Select data using switches.
- FPGA sends data to HT12E.
- RF transmitter broadcasts data.

### RX Mode

- HT12D decodes received packet.
- VT becomes HIGH.
- FPGA reads D0–D3.
- Received data displayed on Seven Segment Display.

---

# 🔧 Vivado Flow

```
Create Project
      │
      ▼
Add RTL Files
      │
      ▼
Add XDC
      │
      ▼
Run Synthesis
      │
      ▼
Run Implementation
      │
      ▼
Generate Bitstream
      │
      ▼
Program FPGA
```

---

# 🧠 FPGA Modules

- TX Controller
- RX Controller
- Half Duplex Controller
- Seven Segment Driver
- Clock Divider

---

# 📸 Future Images

- FPGA Board
- Hardware Setup
- RTL Schematic
- Vivado Block Diagram
- Timing Report
- Hardware Testing

---

# 🐞 Common Issues

### ❌ No RF Communication

- Wrong Address
- Wrong Oscillator Resistor
- Missing Antenna
- Incorrect Wiring

---

### ❌ FPGA Doesn't Receive Data

- VT not HIGH
- Wrong Address Bits
- Decoder powered at wrong voltage

---

### ❌ Vivado Errors

- Missing XDC Pins
- Wrong Clock Constraint
- Unconstrained Ports

---

# 🚀 Future Improvements

- FPGA-based Encoder/Decoder
- Manchester Encoding
- CRC Error Detection
- AES Encryption
- SDR Integration
- LoRa Interface
- UART Debugging
- Wireless Sensor Networks

---

# 🎯 Applications

- Wireless Home Automation
- Smart Agriculture
- Industrial Automation
- IoT Devices
- Wireless Sensor Networks
- Remote Monitoring
- Security Systems

---

# 👨‍💻 Author

**Manjinder Singh**

B.E. Electronics & Communication Engineering

Thapar Institute of Engineering & Technology

---

# ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub!

---

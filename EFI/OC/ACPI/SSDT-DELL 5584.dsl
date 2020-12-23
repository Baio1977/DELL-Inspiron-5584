/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLxAEvhN.aml, Wed Dec 23 17:30:48 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000EF4 (3828)
 *     Revision         0x02
 *     Checksum         0x97
 *     OEM ID           "HACK"
 *     OEM Table ID     "HackLife"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "HackLife", 0x00000000)
{
    External (_SB_.ADP1, DeviceObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.B0D4, DeviceObj)
    External (_SB_.PCI0.CNVW, DeviceObj)
    External (_SB_.PCI0.CNVW._STA, UnknownObj)
    External (_SB_.PCI0.HDAS._STA, UnknownObj)
    External (_SB_.PCI0.HECI._STA, UnknownObj)
    External (_SB_.PCI0.HIDD, MethodObj)    // 5 Arguments
    External (_SB_.PCI0.HIDG, BuffObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0.HID2, IntObj)
    External (_SB_.PCI0.I2C0.TPD0.SBFB, BuffObj)
    External (_SB_.PCI0.I2C0.TPD0.SBFG, BuffObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1._STA, UnknownObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.IGPU.XRT6, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB_.PCI0.PPMC, DeviceObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (_SB_.PCI0.RP10, DeviceObj)
    External (_SB_.PCI0.RP10.PXSX, DeviceObj)
    External (_SB_.PCI0.RP13, DeviceObj)
    External (_SB_.PCI0.RP13.PXSX, DeviceObj)
    External (_SB_.PCI0.SAT0._STA, UnknownObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.TP7D, MethodObj)    // 6 Arguments
    External (_SB_.PCI0.TP7G, BuffObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PR00, ProcessorObj)
    External (CCI0, UnknownObj)
    External (CCI1, UnknownObj)
    External (CCI2, UnknownObj)
    External (CCI3, UnknownObj)
    External (CCI4, UnknownObj)
    External (CTL0, UnknownObj)
    External (CTL1, UnknownObj)
    External (CTL2, UnknownObj)
    External (CTL3, UnknownObj)
    External (CTL4, UnknownObj)
    External (CTL5, UnknownObj)
    External (CTL6, UnknownObj)
    External (CTL7, UnknownObj)
    External (ECRD, UnknownObj)
    External (FMD0, IntObj)
    External (FMH0, IntObj)
    External (FML0, IntObj)
    External (HID2, UnknownObj)
    External (HIDG, UnknownObj)
    External (MGI0, UnknownObj)
    External (MGI1, UnknownObj)
    External (MGI2, UnknownObj)
    External (MGI3, UnknownObj)
    External (MGI4, UnknownObj)
    External (MGI5, UnknownObj)
    External (MGI6, UnknownObj)
    External (MGI7, UnknownObj)
    External (MGI8, UnknownObj)
    External (MGI9, UnknownObj)
    External (MGIA, UnknownObj)
    External (MGIB, UnknownObj)
    External (MGIC, UnknownObj)
    External (MGID, UnknownObj)
    External (MGIE, UnknownObj)
    External (MGIF, UnknownObj)
    External (MGO0, UnknownObj)
    External (MGO1, UnknownObj)
    External (MGO2, UnknownObj)
    External (MGO3, UnknownObj)
    External (MGO4, UnknownObj)
    External (MGO5, UnknownObj)
    External (MGO6, UnknownObj)
    External (MGO7, UnknownObj)
    External (MGO8, UnknownObj)
    External (MGO9, UnknownObj)
    External (MGOA, UnknownObj)
    External (MGOB, UnknownObj)
    External (MGOC, UnknownObj)
    External (MGOD, UnknownObj)
    External (MGOE, UnknownObj)
    External (MGOF, UnknownObj)
    External (SBFB, UnknownObj)
    External (SBFG, UnknownObj)
    External (SSD0, IntObj)
    External (SSH0, IntObj)
    External (SSL0, IntObj)
    External (TP7G, UnknownObj)
    External (XDCE, UnknownObj)
    External (XPRW, MethodObj)    // 2 Arguments

    Scope (\_SB)
    {
        Scope (ADP1)
        {
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x18, 
                0x03
            })
        }

        Device (ALS0)
        {
            Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
            Name (_CID, "smc-als")  // _CID: Compatible ID
            Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
            Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
            {
                Package (0x02)
                {
                    0x64, 
                    0x012C
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (PNLF)
        {
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x13)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPowerSupply", 
                    0x13EC, 
                    "kUSBSleepPortCurrentLimit", 
                    0x0834, 
                    "kUSBWakePowerSupply", 
                    0x13EC, 
                    "kUSBWakePortCurrentLimit", 
                    0x0834
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (PCI0)
        {
            Scope (B0D4)
            {
                If (_OSI ("Darwin"))
                {
                    Return (Zero)
                }
                Else
                {
                }
            }

            Scope (CNVW)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Device (GAUS)
            {
                Name (_ADR, 0x00080000)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Name (HDAS._STA, Zero)  // _STA: Status
            Device (HDEF)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (I2C0)
            {
                Method (PKGX, 3, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    })
                    PKG [Zero] = Arg0
                    PKG [One] = Arg1
                    PKG [0x02] = Arg2
                    Return (PKG) /* \_SB_.PCI0.I2C0.PKGX.PKG_ */
                }

                Method (SSCN, 0, NotSerialized)
                {
                    Return (PKGX (SSH0, SSL0, SSD0))
                }

                Method (FMCN, 0, NotSerialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0101, 
                        0x012C, 
                        0x62
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C0.FMCN.PKG_ */
                }

                Scope (TPD0)
                {
                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg0 == HIDG))
                        {
                            Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                        }

                        If ((Arg0 == TP7G))
                        {
                            Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFB, SBFG))
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }
            }

            Scope (I2C1)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Scope (IGPU)
            {
                Method (BRT6, 2, NotSerialized)
                {
                    If (_OSI ("Darwin"))
                    {
                        If ((Arg0 == One))
                        {
                            Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
                            Notify (\_SB.PCI0.LPCB.PS2K, 0x10) // Reserved
                        }

                        If ((Arg0 & 0x02))
                        {
                            Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
                            Notify (\_SB.PCI0.LPCB.PS2K, 0x20) // Reserved
                        }
                    }
                    Else
                    {
                        \_SB.PCI0.IGPU.XRT6 (Arg0, Arg1)
                    }
                }
            }

            Name (HECI._STA, Zero)  // _STA: Status
            Device (IMEI)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (LPCB)
            {
                Device (ARTC)
                {
                    Name (_HID, "ACPI000E" /* Time and Alarm Device */)  // _HID: Hardware ID
                    Method (_GCP, 0, NotSerialized)  // _GCP: Get Capabilities
                    {
                        Return (0x05)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Scope (HPET)
                {
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        IRQNoFlags ()
                            {11}
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                }

                Device (PMCR)
                {
                    Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadWrite,
                            0xFE000000,         // Address Base
                            0x00010000,         // Address Length
                            )
                    })
                }

                Scope (PS2K)
                {
                    Name (RMCF, Package (0x04)
                    {
                        "Mouse", 
                        Package (0x02)
                        {
                            "ActLikeTrackpad", 
                            ">y"
                        }, 

                        "Keyboard", 
                        Package (0x02)
                        {
                            "Custom PS2 Map", 
                            Package (0x06)
                            {
                                Package (0x00){}, 
                                "46=0", 
                                "e045=0", 
                                "e037=64", 
                                "57=65", 
                                "58=66"
                            }
                        }
                    })
                }
            }

            Device (MCHC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Device (PPMC)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (RP09)
            {
                Scope (PXSX)
                {
                    Name (_STA, Zero)  // _STA: Status
                }

                Device (GIGE)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            Scope (RP10)
            {
                Scope (PXSX)
                {
                    Name (_STA, Zero)  // _STA: Status
                }

                Device (ARPT)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            Scope (RP13)
            {
                Scope (PXSX)
                {
                    Name (_STA, Zero)  // _STA: Status
                }

                Device (ANS0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            Name (SAT0._STA, Zero)  // _STA: Status
            Device (SATA)
            {
                Name (_ADR, 0x00170000)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (SBUS)
            {
                Device (BUS0)
                {
                    Name (_CID, "smbus")  // _CID: Compatible ID
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (DVL0)
                    {
                        Name (_ADR, 0x57)  // _ADR: Address
                        Name (_CID, "diagsvault")  // _CID: Compatible ID
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            If (!Arg2)
                            {
                                Return (Buffer (One)
                                {
                                     0x57                                             // W
                                })
                            }

                            Return (Package (0x02)
                            {
                                "address", 
                                0x57
                            })
                        }
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Device (SRAM)
            {
                Name (_ADR, 0x00140002)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Device (TERM)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (XHC)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x12)
                    {
                        "AAPL,slot-name", 
                        "Internal@0,20,0", 
                        "name", 
                        "Intel XHC Controller", 
                        "model", 
                        Buffer (0x35)
                        {
                            "Cannon Point-LP USB 3.1 xHCI Controller"
                        }, 

                        "device_type", 
                        Buffer (0x0F)
                        {
                            "USB Controller"
                        }, 

                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0898, 
                        "AAPL,current-extra-in-sleep", 
                        0x0640, 
                        "AAPL,device-internal", 
                        0x02, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0834
                    })
                }
            }

            Device (XSPI)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PR00))
    {
        If ((ObjectType (\_SB.PR00) == 0x0C))
        {
            Scope (\_SB.PR00)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    Method (PMPM, 4, NotSerialized)
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x02)
        {
            "plugin-type", 
            One
        })
    }

    Method (GPRW, 2, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If ((0x6D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }

            If ((0x0D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    Zero
                })
            }
        }

        Return (XPRW (Arg0, Arg1))
    }

    Method (XOSI, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If ((Arg0 == "Windows 2012"))
            {
                Return (0xFFFFFFFF)
            }
            Else
            {
                Return (Zero)
            }
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }

    Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
    {
        SLTP = Arg0
    }

    Name (SLTP, Zero)
    Method (SRAM, 0, NotSerialized)
    {
        Return (Package (0x02)
        {
            "Intel Corporation, Series Chipset Shared SRAM", 
            "RAM memory"
        })
    }

    Method (DTGP, 5, NotSerialized)
    {
        If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
        {
            If ((Arg1 == One))
            {
                If ((Arg2 == Zero))
                {
                    Arg4 = Buffer (One)
                        {
                             0x03                                             // .
                        }
                    Return (One)
                }

                If ((Arg2 == One))
                {
                    Return (One)
                }
            }
        }

        Arg4 = Buffer (One)
            {
                 0x00                                             // .
            }
        Return (Zero)
    }
}


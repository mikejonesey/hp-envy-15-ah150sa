/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt8.aml, Fri Apr 22 20:07:00 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000FDB (4059)
 *     Revision         0x01
 *     Checksum         0x5F
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00000001)
{
    /*
     * iASL Warning: There were 14 external control methods found during
     * disassembly, but only 0 were resolved (14 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_ADR, IntObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (M000, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (M013, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M014, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (M017, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (M018, MethodObj)    // Warning: Unknown method, guessing 7 arguments
    External (M019, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M029, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M031, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M032, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M044, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M045, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M049, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M111, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (M128, UnknownObj)
    External (M134, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Scope (\_SB.PCI0.SATA)
    {
        Name (M048, One)
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((XCMP (Arg0, ToUUID ("e4db149b-fcfe-425b-a6d8-92357d78fc7f") /* SATA Controller */) == One))
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             /* . */
                    })
                }
                ElseIf ((Arg2 == One))
                {
                    Name (ADDR, Package (0x01)
                    {
                        0x0001FFFF
                    })
                     = 0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero)
                    ADDR [Zero]
                    Return (Package (0x01)
                    {
                        ADDR
                    })
                }
                ElseIf ((Arg2 == 0x02))
                {
                    Local0 = DerefOf (Arg3 [Zero])
                    If (((Local0 == (0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero))) || 
                        Zero))
                    {
                        (Local0 == Ones)
                        Local1 = DerefOf (Arg3 [One])
                        If ((Local1 == Zero))
                        {
                            STPT (Zero)
                            Return (Zero)
                        }
                        ElseIf ((Local1 == One))
                        {
                            If (M045 ())
                            {
                                \_SB.PCI0.SATA.ODD8._PS0 ()
                            }
                            ElseIf (M044 ())
                            {
                                \_SB.PCI0.SATA.ODDL._PS0 ()
                            }
                            Else
                            {
                                \_SB.PCI0.SATA.ODDZ._PS0 ()
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Return (One)
        }

        Method (XCMP, 2, NotSerialized)
        {
            If ((0x10 != SizeOf (Arg0)))
            {
                Return (Zero)
            }

            If ((0x10 != SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Local0 = Zero
            While ((Local0 < 0x10))
            {
                If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0]
                    )))
                {
                    Return (Zero)
                }

                Local0++
            }

            Return (One)
        }

        Method (STDV, 0, Serialized)
        {
            Local0 = _ADR /* External reference */
            Return ((Local0 >> 0x10))
        }

        Method (STFN, 0, Serialized)
        {
            Local0 = _ADR /* External reference */
            Return ((Local0 & 0xFFFF))
        }

        Method (PBAA, 0, Serialized)
        {
            0x24 = M019 (Zero, STDV (), STFN ())
            Local0
            If ((Local0 == Ones))
            {
                Local0 = Zero
            }

            Return (Local0)
        }

        Method (STPT, 1, Serialized)
        {
            M018 (Zero, STDV (), STFN (), 0x42, M049 (), M134 (0x15), One)
            (Arg0 ^ One)
        }

        Method (STPP, 1, Serialized)
        {
            M018 (Zero, STDV (), STFN (), 0x42, M049 (), M134 (0x15), One)
            (Arg0 ^ One)
            If ((M017 (Zero, STDV (), STFN (), 0x0A, Zero) == 0x10))
            {
                0x0106
                If ((PBAA () != Zero))
                {
                    M018 (Zero, STDV (), STFN (), 0x40, Zero, One, One)
                    M014 (PBAA (), 0x0C, M049 (), M134 (0x15))
                    One
                    Arg0
                    0x06 = M017 (Zero, STDV (), STFN (), 0x42, Zero)
                    Local0
                    If ((Local0 == 0x3F))
                    {
                        M014 (PBAA (), 0x0C, Zero, One)
                        One
                    }
                    ElseIf ((M017 (Zero, STDV (), STFN (), 0x42, Zero) && One))
                    {
                        ((Local0 & 0x3E) ^ 0x3E)
                        M014 (PBAA (), 0x0C, Zero, One)
                        Zero
                    }

                    0x06 = M013 (PBAA (), 0x0C, Zero)
                    Local1
                    Local2 = Zero
                    While (Local1)
                    {
                        If ((Local1 & One))
                        {
                            Local2++
                        }

                        Local1 >>= One
                    }

                    M014 (PBAA (), Zero, Zero, 0x05)
                    Local2--
                    M018 (Zero, STDV (), STFN (), 0x40, Zero, One, Zero)
                }
            }
        }

        Method (STPM, 0, Serialized)
        {
            Local1 = Zero
            If ((PBAA () != Zero))
            {
                 = 0x15 = (0x0118 + (M134 = (0x80 * M049 ())))
                Zero
                Local0
                One = M013 (PBAA (), Local0, Zero)
                Local0
            }

            Return (Local1)
        }

        Method (STPR, 0, Serialized)
        {
            If ((M017 (Zero, STDV (), STFN (), 0x0A, Zero) == 0x10))
            {
                0x0106
                If ((PBAA () != Zero))
                {
                     = 0x15 = (0x0118 + (M134 = (0x80 * M049 ())))
                    Zero
                    Local0
                    M014 (PBAA (), Local0, Zero, One)
                    Zero
                    Sleep (One)
                     = 0x15 = (0x012C + (M134 = (0x80 * M049 ())))
                    Zero
                    Local0
                    M014 (PBAA (), Local0, Zero, 0x04)
                    One
                    Sleep (0x02)
                    M014 (PBAA (), Local0, Zero, 0x04)
                    Zero
                }
            }
        }

        Device (PRT1)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (0x67 = (M049 () & M128) /* External reference */)
                {
                    One
                    Zero
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Device (ODD)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (M049 ())
                    M134 (0x15)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (ODD8)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (((M045 () || M044 ()) && (0x67 = (M049 () & M128)) /* External reference */))
                {
                    One
                    Zero
                    Return (0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero))
                    Zero
                }
                Else
                {
                    Return (M049 ())
                    M134 (0x15)
                }
            }

            Name (ODPS, Zero)
            Name (ODDB, Zero)
            Name (WDSW, One)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != Zero))
                {
                    If ((M013 (PBAA (), (0x0129 + (0x80 = (M049 () * M134 (0x15)))
                        ), Zero) != Zero))
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
            }

            Method (ZSTA, 0, NotSerialized)
            {
                If (0x67 = (M049 () & M128) /* External reference */)
                {
                    One
                    Zero
                    If (0x67 = (M049 () & M128) /* External reference */)
                    {
                        0x02
                        Zero
                        If (M029 (M049 (), M134 (0x12), Return (Zero))) {}
                        ElseIf (0x67 = (M049 () & M128) /* External reference */)
                        {
                            0x04
                            Zero
                            ODDB = One
                        }
                    }
                    ElseIf (0x67 = (M049 () & M128) /* External reference */)
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((0x67 = (M049 () & M128)) /* External reference */ && 0x02))
                {
                    Zero
                    M029 (M049 (), M134 (0x12), M000 (0x84))
                    If (0x67 = (M049 () & M128) /* External reference */)
                    {
                        One
                        Zero
                        If (((ODDB == One) || ((ODDB == Zero) && (STPM () != 
                            Zero))))
                        {
                            STPT (One)
                            Sleep (0x28)
                            M111 (M049 (), M134 (0x10), One, M048 = One)
                            Sleep (0x28)
                        }
                    }

                    ODDB = One
                    ODPS = Zero
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0x85)
                If (0x67 = (M049 () & M128) /* External reference */)
                {
                    One
                    Zero
                    If ((WDSW == One))
                    {
                        Sleep (0x28)
                        M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                        Sleep (0x28)
                        STPT (Zero)
                        M032 (M049 (), M134 (0x11), ODDB = One = (M029 (M049 (), M134 (0x11), 
                            One) ^ Zero))
                    }
                }

                ODPS = 0x03
            }

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (Zero)
            }

            Device (ODD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (One)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (M045 ())
                {
                    Return (ZSTA ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, Serialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0)
                {
                    WDSW = One
                }
                Else
                {
                    WDSW = Zero
                }
            }

            Name (ZPRW, Package (0x02)
            {
                0x07, 
                0x03
            })
            Method (XPRW, 0, NotSerialized)
            {
                If (!M045 ())
                {
                    M134 = M049 ()
                    0x13
                    ZPRW [Zero]
                }

                Return (ZPRW) /* \_SB_.PCI0.SATA.ODD8.ZPRW */
            }
        }

        Device (ODDZ)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (((M045 () || M044 ()) && (0x67 = (M049 () & M128)) /* External reference */))
                {
                    One
                    Zero
                    Return (0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero))
                    Zero
                }
                Else
                {
                    Return (M049 ())
                    M134 (0x15)
                }
            }

            Name (ODPS, Zero)
            Name (ODDB, Zero)
            Name (WDSW, One)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != Zero))
                {
                    If ((M013 (PBAA (), (0x0129 + (0x80 = (M049 () * M134 (0x15)))
                        ), Zero) != Zero))
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
            }

            Method (ZSTA, 0, NotSerialized)
            {
                If (0x67 = (M049 () & M128) /* External reference */)
                {
                    One
                    Zero
                    If (0x67 = (M049 () & M128) /* External reference */)
                    {
                        0x02
                        Zero
                        If (M029 (M049 (), M134 (0x12), Return (Zero))) {}
                        ElseIf (0x67 = (M049 () & M128) /* External reference */)
                        {
                            0x04
                            Zero
                            ODDB = One
                        }
                    }
                    ElseIf (0x67 = (M049 () & M128) /* External reference */)
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((0x67 = (M049 () & M128)) /* External reference */ && 0x02))
                {
                    Zero
                    M029 (M049 (), M134 (0x12), M000 (0x84))
                    If (0x67 = (M049 () & M128) /* External reference */)
                    {
                        One
                        Zero
                        If (((ODDB == One) || ((ODDB == Zero) && (STPM () != 
                            Zero))))
                        {
                            STPT (One)
                            Sleep (0x28)
                            M111 (M049 (), M134 (0x10), One, M048 = One)
                            Sleep (0x28)
                        }
                    }

                    ODDB = One
                    ODPS = Zero
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0x85)
                If (0x67 = (M049 () & M128) /* External reference */)
                {
                    One
                    Zero
                    If ((WDSW == One))
                    {
                        Sleep (0x28)
                        M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                        Sleep (0x28)
                        STPT (Zero)
                        M032 (M049 (), M134 (0x11), ODDB = One = (M029 (M049 (), M134 (0x11), 
                            One) ^ Zero))
                    }
                }

                ODPS = 0x03
            }

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (Zero)
            }

            Device (ODD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (One)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!(M045 () || M044 ()))
                {
                    Return (ZSTA ())
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (ODDL)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (((M045 () || M044 ()) && (0x67 = (M049 () & M128)) /* External reference */))
                {
                    One
                    Zero
                    Return (0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero))
                    Zero
                }
                Else
                {
                    Return (M049 ())
                    M134 (0x15)
                }
            }

            Name (ODPS, Zero)
            Name (ODDB, Zero)
            Name (WDSW, One)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != Zero))
                {
                    If ((M013 (PBAA (), (0x0129 + (0x80 = (M049 () * M134 (0x15)))
                        ), Zero) != Zero))
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
            }

            Method (ZSTA, 0, NotSerialized)
            {
                If (0x67 = (M049 () & M128) /* External reference */)
                {
                    One
                    Zero
                    If (0x67 = (M049 () & M128) /* External reference */)
                    {
                        0x02
                        Zero
                        If (M029 (M049 (), M134 (0x12), Return (Zero))) {}
                        ElseIf (0x67 = (M049 () & M128) /* External reference */)
                        {
                            0x04
                            Zero
                            ODDB = One
                        }
                    }
                    ElseIf (0x67 = (M049 () & M128) /* External reference */)
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((0x67 = (M049 () & M128)) /* External reference */ && 0x02))
                {
                    Zero
                    M029 (M049 (), M134 (0x12), M000 (0x84))
                    If (0x67 = (M049 () & M128) /* External reference */)
                    {
                        One
                        Zero
                        If (((ODDB == One) || ((ODDB == Zero) && (STPM () != 
                            Zero))))
                        {
                            STPT (One)
                            Sleep (0x28)
                            M111 (M049 (), M134 (0x10), One, M048 = One)
                            Sleep (0x28)
                        }
                    }

                    ODDB = One
                    ODPS = Zero
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0x85)
                If (0x67 = (M049 () & M128) /* External reference */)
                {
                    One
                    Zero
                    If ((WDSW == One))
                    {
                        Sleep (0x28)
                        M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                        Sleep (0x28)
                        STPT (Zero)
                        M032 (M049 (), M134 (0x11), ODDB = One = (M029 (M049 (), M134 (0x11), 
                            One) ^ Zero))
                    }
                }

                ODPS = 0x03
            }

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (Zero)
            }

            Device (ODD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (One)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (M044 ())
                {
                    Return (ZSTA ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, Serialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0)
                {
                    WDSW = One
                }
                Else
                {
                    WDSW = Zero
                }
            }

            Name (ZPRW, Package (0x02)
            {
                0x07, 
                0x03
            })
            Method (XPRW, 0, NotSerialized)
            {
                If (!M045 ())
                {
                    M134 = M049 ()
                    0x13
                    ZPRW [Zero]
                }

                Return (ZPRW) /* \_SB_.PCI0.SATA.ODDL.ZPRW */
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XL06, 0, NotSerialized)
        {
            If (((0x67 = (M049 () & M128)) /* External reference */ && One))
            {
                Zero
                (M029 (M049 (), M134 (0x12), Zero) == If (M031 (M049 (), M134 (0x11), Sleep (
                    0x14)))
                    {
                        If (M029 (M049 (), M134 (0x11), If (0x67 = (M049 () & M128) /* External reference */)
                                {
                                    0x10
                                    Zero
                                    \_SB.PCI0.SATA.STPR ()
                                }))
                        {
                            If (M045 ())
                            {
                                Notify (\_SB.PCI0.SATA.ODD8, 0x02) // Device Wake
                            }
                            ElseIf (M044 ())
                            {
                                Notify (\_SB.PCI0.SATA.ODDL, 0x02) // Device Wake
                            }
                            Else
                            {
                                Notify (\_SB.PCI0.SATA.ODDZ, 0x80) // Status Change
                            }

                            Sleep (0x01F4)
                            M000 (0x80)
                        }
                    })
                Else
                {
                    Sleep (0x14)
                    If (!M029 (M049 (), M134 (0x11), If (M045 ())
                                {
                                    Notify (\_SB.PCI0.SATA.ODD8, 0x02) // Device Wake
                                }))
                    {
                        ElseIf (M044 ())
                        {
                            Notify (\_SB.PCI0.SATA.ODDL, 0x02) // Device Wake
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SATA.ODDZ, 0x80) // Status Change
                        }

                        Sleep (0x01F4)
                        M000 (0x81)
                    }
                }
            }

            M032 (M049 (), M134 (0x11), XOr (M029 (M049 (), M134 (0x11), One) ^ Zero))
        }

        Method (XL10, 0, NotSerialized)
        {
            Sleep (0xC8)
            If (M031 (M049 (), M134 (0x12), If (M029 (M049 (), M134 (0x12), M000 (0x82)))
                    {
                        M111 (M049 (), M134 (0x10), Zero, \_SB.PCI0.SATA.M048 = Zero)
                        Sleep (0x28)
                        \_SB.PCI0.SATA.STPP (Zero)
                        If (M045 ())
                        {
                            \_SB.PCI0.SATA.ODD8.ODPS = 0x03
                        }
                        ElseIf (M044 ())
                        {
                            \_SB.PCI0.SATA.ODDL.ODPS = 0x03
                        }
                        Else
                        {
                            \_SB.PCI0.SATA.ODDZ.ODPS = 0x03
                        }

                        M032 (M049 (), M134 (0x12), Else
                                {
                                    Sleep (0x14)
                                    If (!M029 (M049 (), M134 (0x12), M000 (0x83)))
                                    {
                                        \_SB.PCI0.SATA.STPP (One)
                                        Sleep (0x28)
                                        M111 (M049 (), M134 (0x10), One, \_SB.PCI0.SATA.M048 = One)
                                        Sleep (0x28)
                                        If (M045 ())
                                        {
                                            \_SB.PCI0.SATA.ODD8.ODPS = Zero
                                        }
                                        ElseIf (M044 ())
                                        {
                                            \_SB.PCI0.SATA.ODDL.ODPS = Zero
                                        }
                                        Else
                                        {
                                            \_SB.PCI0.SATA.ODDZ.ODPS = Zero
                                        }

                                        M032 (M049 (), M134 (0x12), Sleep (0x28) = (M029 (M049 (), M134 (0x12), One) ^ 
                                            Zero))
                                    }
                                } = (M029 (M049 (), M134 (0x12), One) ^ Zero))
                    })) {}
            If (0x67 = (M049 () & M128) /* External reference */)
            {
                One
                Zero
                If (M045 ())
                {
                    Notify (\_SB.PCI0.SATA.ODD8, One) // Device Check
                }
                ElseIf (M044 ())
                {
                    Notify (\_SB.PCI0.SATA.ODDL, One) // Device Check
                }
                Else
                {
                    Notify (\_SB.PCI0.SATA.ODDZ, One) // Device Check
                    Notify (\_SB.PCI0.SATA.ODDZ, 0x81) // Information Change
                }
            }
            Else
            {
                Notify (\_SB.PCI0.SATA.PRT1, One) // Device Check
                If (!(M045 () || M044 ()))
                {
                    Notify (\_SB.PCI0.SATA.PRT1, 0x81) // Information Change
                }
            }
        }
    }
}


/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt4.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000462 (1122)
 *     Revision         0x01
 *     Checksum         0x5B
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00001000)
{
    Scope (\_SB)
    {
        Device (TPM2)
        {
            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID
            Name (_CID, "MSFT0101" /* TPM 2.0 Security Device */)  // _CID: Compatible ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xDFB76000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xDFB7A000,         // Address Base
                    0x00004000,         // Address Length
                    )
            })
            OperationRegion (SMIP, SystemIO, 0xB0, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (TNVS, SystemMemory, 0xDFB62000, 0x23)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32, 
                CAIN,   8
            }

            OperationRegion (CONA, SystemMemory, 0xDFB61000, 0x30)
            Field (CONA, DWordAcc, NoLock, Preserve)
            {
                HRTB,   32, 
                ERRR,   32, 
                CLFG,   32, 
                STA1,   32, 
                AccessAs (QWordAcc, 0x00), 
                INTC,   64, 
                AccessAs (DWordAcc, 0x00), 
                CMSZ,   32, 
                AccessAs (QWordAcc, 0x00), 
                CMDB,   64, 
                AccessAs (DWordAcc, 0x00), 
                RPSZ,   32, 
                AccessAs (QWordAcc, 0x00), 
                RESP,   64
            }

            Method (PTS, 1, Serialized)
            {
                If (((Arg0 < 0x06) && (Arg0 > 0x03)))
                {
                    If (!(MORD & 0x10))
                    {
                        MCIP = 0x02
                        IOB2 = MCIN /* \_SB_.TPM2.MCIN */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (HINF, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg1)
                    If ((_T_0 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             /* . */
                        })
                    }
                    ElseIf ((_T_0 == One))
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })
                        If ((_STA () == Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM2.HINF.TPMV */
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                             /* . */
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg1)
                    If ((_T_0 == Zero))
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       /* .. */
                        })
                    }
                    ElseIf ((_T_0 == One))
                    {
                        Return ("1.2")
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        PPRQ = DerefOf (Arg2 [Zero])
                        PPIP = 0x02
                        IOB2 = PPIN /* \_SB_.TPM2.PPIN */
                        Return (FRET) /* \_SB_.TPM2.FRET */
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        TPM2 [One] = PPRQ /* \_SB_.TPM2.PPRQ */
                        Return (TPM2) /* \_SB_.TPM2.TPM2 */
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Return (0x02)
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        PPIP = 0x05
                        IOB2 = PPIN /* \_SB_.TPM2.PPIN */
                        TPM3 [One] = LPPR /* \_SB_.TPM2.LPPR */
                        TPM3 [0x02] = PPRP /* \_SB_.TPM2.PPRP */
                        Return (TPM3) /* \_SB_.TPM2.TPM3 */
                    }
                    ElseIf ((_T_0 == 0x06))
                    {
                        Return (0x03)
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        PPIP = 0x07
                        PPRQ = DerefOf (Arg2 [Zero])
                        IOB2 = PPIN /* \_SB_.TPM2.PPIN */
                        Return (FRET) /* \_SB_.TPM2.FRET */
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        PPIP = 0x08
                        PPRQ = DerefOf (Arg2 [Zero])
                        IOB2 = PPIN /* \_SB_.TPM2.PPIN */
                        Return (FRET) /* \_SB_.TPM2.FRET */
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg1)
                    If ((_T_0 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             /* . */
                        })
                    }
                    ElseIf ((_T_0 == One))
                    {
                        MORD = DerefOf (Arg2 [Zero])
                        MCIP = One
                        IOB2 = MCIN /* \_SB_.TPM2.MCIN */
                        Return (MRET) /* \_SB_.TPM2.MRET */
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (OASM, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (Arg1)
                    If ((_T_0 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             /* . */
                        })
                    }
                    ElseIf ((_T_0 == One))
                    {
                        While ((STA1 == One))
                        {
                            If ((STA1 == One))
                            {
                                Sleep (0xC8)
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4")))
                {
                    Return (OASM (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             /* . */
                })
            }
        }
    }
}


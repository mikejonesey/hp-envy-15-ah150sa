/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt6.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000018B6 (6326)
 *     Revision         0x01
 *     Checksum         0x73
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00000001)
{
    /*
     * iASL Warning: There were 27 external control methods found during
     * disassembly, but only 0 were resolved (27 unresolved). Additional
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
    External (_SB_.ALIB, IntObj)
    External (_SB_.LID_._LID, IntObj)
    External (_SB_.PCI0.GFX0.VGA_.AFN0, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN1, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN2, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN3, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN4, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN5, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN6, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN7, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN8, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.VGA_, DeviceObj)
    External (IDPC, UnknownObj)
    External (M000, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (M012, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (M019, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M020, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (M021, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M023, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M024, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M025, UnknownObj)
    External (M026, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M049, IntObj)
    External (M084, UnknownObj)
    External (M087, UnknownObj)
    External (M090, IntObj)
    External (M091, IntObj)
    External (M093, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M094, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M095, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (M098, IntObj)
    External (M099, IntObj)
    External (M100, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M101, IntObj)
    External (M102, IntObj)
    External (M103, IntObj)
    External (M104, IntObj)
    External (M105, IntObj)
    External (M106, IntObj)
    External (M111, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M112, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M113, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M131, IntObj)
    External (M133, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M232, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M233, IntObj)
    External (M235, MethodObj)    // Warning: Unknown method, guessing 2 arguments

    Scope (\_SB.PCI0.VGA)
    {
        Name (ATIB, Buffer (0x0100) {})
        Method (ATIF, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (AF00 ())
            }

            If ((Arg0 == One))
            {
                Return (AF01 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (AF02 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (AF03 (DerefOf (Arg1 [0x02]), DerefOf (Arg1 [0x04])))
            }

            If ((Arg0 == 0x04))
            {
                Return (AF04 ())
            }

            If ((Arg0 == 0x0F))
            {
                Return (AF15 ())
            }

            If ((Arg0 == 0x10))
            {
                Return (AF16 (DerefOf (Arg1 [0x02])))
            }
            Else
            {
                CreateWordField (ATIB, Zero, M157)
                CreateWordField (ATIB, 0x02, M158)
                CreateDWordField (ATIB, 0x04, M159)
                CreateDWordField (ATIB, 0x08, M160)
                M157 = Zero
                M158 = Zero
                M159 = Zero
                M160 = Zero
                Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
            }
        }

        Method (AF00, 0, NotSerialized)
        {
            CreateWordField (ATIB, Zero, M157)
            CreateWordField (ATIB, 0x02, M158)
            CreateDWordField (ATIB, 0x04, M159)
            CreateDWordField (ATIB, 0x08, M160)
            M157 = 0x0C
            M158 = One
            M159 = M101 /* External reference */
            If (!CondRefOf (\_SB.LID._LID, Local1))
            {
                M102 &= 0xFFFFFFF7
            }

            M160 = M102 /* External reference */
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF01, 0, NotSerialized)
        {
            CreateWordField (ATIB, Zero, M157)
            CreateDWordField (ATIB, 0x02, M161)
            CreateDWordField (ATIB, 0x06, M162)
            CreateByteField (ATIB, 0x0A, M163)
            Local0 = (M103 & 0xFF000000)
            Local1 = (M103 & 0x03)
            If ((Local1 == 0x02))
            {
                M157 = 0x0B
                M161 = 0x03
                M162 = Local1
                M163 = Local0
            }
            Else
            {
                M157 = 0x0A
                M161 = 0x03
                M162 = M103 /* External reference */
            }

            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Name (M164, Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                           /* .... */
        })
        Name (M210, Zero)
        Name (M211, Zero)
        Name (M212, Zero)
        Name (M213, Zero)
        Name (M214, Zero)
        Name (M215, Zero)
        Name (SSDM, 0x0A)
        Name (SCDY, Zero)
        Method (AF02, 0, NotSerialized)
        {
            CreateBitField (M164, Zero, M165)
            CreateBitField (M164, One, M166)
            CreateBitField (M164, 0x02, M167)
            CreateBitField (M164, 0x03, M168)
            CreateBitField (M164, 0x04, M169)
            CreateBitField (M164, 0x05, M170)
            CreateBitField (M164, 0x06, M171)
            CreateBitField (M164, 0x07, M172)
            CreateBitField (M164, 0x08, M173)
            CreateWordField (ATIB, Zero, M157)
            CreateDWordField (ATIB, 0x02, M174)
            CreateByteField (ATIB, 0x06, M175)
            CreateByteField (ATIB, 0x07, M176)
            CreateByteField (ATIB, 0x08, M177)
            CreateByteField (ATIB, 0x09, M178)
            CreateByteField (ATIB, 0x0A, M179)
            CreateByteField (ATIB, 0x0B, M180)
            CreateByteField (ATIB, 0x0C, M181)
            M157 = 0x0D
            M174 = M164 /* \_SB_.PCI0.VGA_.M164 */
            If (M165)
            {
                M165 = Zero
            }

            If (M166)
            {
                M175 = M210 /* \_SB_.PCI0.VGA_.M210 */
                M210 = Zero
                M166 = Zero
            }

            If (M167)
            {
                M176 = M211 /* \_SB_.PCI0.VGA_.M211 */
                M177 = M212 /* \_SB_.PCI0.VGA_.M212 */
                M211 = Zero
                M212 = Zero
                M167 = Zero
            }

            If (M168)
            {
                M178 = M213 /* \_SB_.PCI0.VGA_.M213 */
                M179 = M214 /* \_SB_.PCI0.VGA_.M214 */
                M213 = Zero
                M214 = Zero
                M168 = Zero
            }

            If (M169)
            {
                M180 = M215 /* \_SB_.PCI0.VGA_.M215 */
                M169 = Zero
            }

            If (M171)
            {
                M171 = Zero
            }

            If (M172)
            {
                M172 = Zero
            }

            If (M173)
            {
                M173 = Zero
            }

            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF03, 2, NotSerialized)
        {
            CreateWordField (ATIB, Zero, M157)
            CreateWordField (ATIB, 0x02, M182)
            CreateWordField (ATIB, 0x04, M183)
            M182 = Arg0
            M183 = Arg1
            Name (M184, 0x06)
            Name (M185, 0x06)
            Name (M186, Buffer (0x14)
            {
                 0x00                                             /* . */
            })
            Name (M187, Zero)
            M133 = M049 /* External reference */
            0xBF
            M187
            Local1 = Zero
            While ((Local1 < M187))
            {
                M133 = M049 /* External reference */
                (0xC0 + Local1)
                Local2
                M186 [Local1] = Local2
                Local1++
            }

            Local1 = M182 /* \_SB_.PCI0.VGA_.AF03.M182 */
            Local1 &= 0x8B
            Local2 = M183 /* \_SB_.PCI0.VGA_.AF03.M183 */
            If (CondRefOf (\_SB.LID._LID, Local4))
            {
                Local0 = \_SB.LID._LID /* External reference */
                Local2 &= 0xFFFFFFFE
                Local2 |= Local0
            }

            Local0 = Zero
            While ((Local0 < M187))
            {
                Local3 = DerefOf (M186 [Local0])
                If ((Local3 == Local1))
                {
                    M185 = Local0
                    Local0 = M187 /* \_SB_.PCI0.VGA_.AF03.M187 */
                }
                Else
                {
                    Local0++
                }
            }

            Local0 = M185 /* \_SB_.PCI0.VGA_.AF03.M185 */
            While ((Local0 < M187))
            {
                Local0++
                If ((Local0 == M187))
                {
                    Local0 = Zero
                }

                Local3 = DerefOf (M186 [Local0])
                If (((Local3 & Local2) == Local3))
                {
                    M184 = Local0
                    Local0 = M187 /* \_SB_.PCI0.VGA_.AF03.M187 */
                }
            }

            If ((M184 == M187))
            {
                M182 = Zero
            }
            Else
            {
                Local0 = M184 /* \_SB_.PCI0.VGA_.AF03.M184 */
                Local3 = DerefOf (M186 [Local0])
                M182 &= 0xFFFFFFF4
                M182 |= Local3
            }

            M157 = 0x04
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF04, 0, NotSerialized)
        {
            CreateWordField (ATIB, Zero, M157)
            CreateByteField (ATIB, 0x02, M188)
            M157 = 0x03
            Local1 = Zero
            If (CondRefOf (\_SB.LID._LID, Local4))
            {
                Local0 = \_SB.LID._LID /* External reference */
                Local1 = (Local0 ^ One)
            }

            M188 = Local1
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF15, 0, NotSerialized)
        {
            ATIB = M104 /* External reference */
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF16, 1, NotSerialized)
        {
            If ((IDPC == 0x0614))
            {
                Return (ABR0) /* \_SB_.PCI0.VGA_.ABR0 */
            }
            ElseIf ((IDPC == 0x4C51))
            {
                Return (ABR1) /* \_SB_.PCI0.VGA_.ABR1 */
            }
            ElseIf ((IDPC == 0x46EC))
            {
                Return (ABR2) /* \_SB_.PCI0.VGA_.ABR2 */
            }
            ElseIf ((IDPC == 0x15C9))
            {
                Return (ABR3) /* \_SB_.PCI0.VGA_.ABR3 */
            }
            ElseIf ((IDPC == 0x15BE))
            {
                Return (ABR4) /* \_SB_.PCI0.VGA_.ABR4 */
            }
            ElseIf ((IDPC == 0x0465))
            {
                Return (ABR5) /* \_SB_.PCI0.VGA_.ABR5 */
            }
            ElseIf ((IDPC == 0x063B))
            {
                Return (ABR6) /* \_SB_.PCI0.VGA_.ABR6 */
            }
            ElseIf ((IDPC == 0x4E51))
            {
                Return (ABR7) /* \_SB_.PCI0.VGA_.ABR7 */
            }
            ElseIf ((IDPC == 0x45EC))
            {
                Return (ABR8) /* \_SB_.PCI0.VGA_.ABR8 */
            }
            ElseIf ((IDPC == 0x15CA))
            {
                Return (ABR9) /* \_SB_.PCI0.VGA_.ABR9 */
            }
            ElseIf ((IDPC == 0x15BF))
            {
                Return (ABRA) /* \_SB_.PCI0.VGA_.ABRA */
            }
            ElseIf ((IDPC == 0x0493))
            {
                Return (ABRB) /* \_SB_.PCI0.VGA_.ABRB */
            }
            ElseIf ((IDPC == 0x0468))
            {
                Return (ABRC) /* \_SB_.PCI0.VGA_.ABRC */
            }
            ElseIf ((IDPC == 0x044F))
            {
                Return (ABRD) /* \_SB_.PCI0.VGA_.ABRD */
            }
            ElseIf ((IDPC == 0x04B3))
            {
                Return (ABRE) /* \_SB_.PCI0.VGA_.ABRE */
            }
            ElseIf ((IDPC == 0x5444))
            {
                Return (ABRF) /* \_SB_.PCI0.VGA_.ABRF */
            }
            ElseIf ((IDPC == 0x36ED))
            {
                Return (ABRG) /* \_SB_.PCI0.VGA_.ABRG */
            }
            ElseIf ((IDPC == 0x38ED))
            {
                Return (ABRH) /* \_SB_.PCI0.VGA_.ABRH */
            }
            ElseIf ((IDPC == 0x0687))
            {
                Return (ABRI) /* \_SB_.PCI0.VGA_.ABRI */
            }
            ElseIf ((IDPC == 0x0519))
            {
                Return (ABRJ) /* \_SB_.PCI0.VGA_.ABRJ */
            }
            ElseIf ((IDPC == 0x3249))
            {
                Return (ABRK) /* \_SB_.PCI0.VGA_.ABRK */
            }

            Return (ABRT) /* \_SB_.PCI0.VGA_.ABRT */
        }

        Method (AFN0, 0, Serialized)
        {
            If ((M101 & One))
            {
                CreateBitField (M164, Zero, M165)
                M165 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN1, 1, Serialized)
        {
            If ((M101 & 0x02))
            {
                Local0 = Arg0
                M210 = Local0
                CreateBitField (M164, One, M166)
                M166 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN2, 2, Serialized)
        {
            If ((M101 & 0x04))
            {
                Local0 = Arg0
                M212 = Local0
                Local0 = Arg1
                M211 = Local0 &= 0x03
                CreateBitField (M164, 0x02, M167)
                M167 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN3, 2, Serialized)
        {
            If ((M101 & 0x08))
            {
                Local0 = Arg0
                M214 = Local0
                Local0 = Arg1
                M213 = Local0 &= 0x03
                CreateBitField (M164, 0x03, M168)
                M168 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN4, 1, Serialized)
        {
            If ((M101 & 0x10))
            {
                Local0 = Arg0
                Local1 = M215 /* \_SB_.PCI0.VGA_.M215 */
                M215 = Local0
                If ((Local0 == Local1)) {}
                Else
                {
                    CreateBitField (M164, 0x04, M169)
                    M169 = One
                    Notify (VGA, 0x81) // Information Change
                }
            }
        }

        Method (AFN5, 0, Serialized)
        {
            If ((M101 & 0x20))
            {
                CreateBitField (M164, 0x05, M170)
                M170 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN6, 0, Serialized)
        {
            If ((M101 & 0x40))
            {
                CreateBitField (M164, 0x06, M171)
                M171 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN7, 1, Serialized)
        {
            If ((M101 & 0x80))
            {
                CreateBitField (M164, 0x07, M172)
                M172 = One
                CreateByteField (ATIB, 0x0C, M181)
                M181 = Arg0
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN8, 0, Serialized)
        {
            If ((M101 & 0x0100))
            {
                CreateBitField (M164, 0x08, M173)
                M173 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Name (ABRT, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x33, 0x1E, 0x4C,  /* .....3.L */
            /* 0010 */  0x28, 0x66, 0x32, 0x7F, 0x3C, 0x99, 0x46, 0xB2,  /* (f2.<.F. */
            /* 0018 */  0x50, 0xCC, 0x5A, 0xE5                           /* P.Z. */
        })
        Name (ABR0, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x11,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x1C, 0x14, 0x26, 0x1E, 0x33,  /* .....&.3 */
            /* 0010 */  0x28, 0x49, 0x32, 0x66, 0x3C, 0x7F, 0x46, 0x9B,  /* (I2f<.F. */
            /* 0018 */  0x50, 0xAD, 0x5A, 0xDD                           /* P.Z. */
        })
        Name (ABR1, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3F, 0x32, 0x59, 0x3C, 0x72, 0x46, 0x8C,  /* (?2Y<rF. */
            /* 0018 */  0x50, 0xA0, 0x5A, 0xC9                           /* P.Z. */
        })
        Name (ABR2, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3A, 0x32, 0x4F, 0x3C, 0x66, 0x46, 0x7A,  /* (:2O<fFz */
            /* 0018 */  0x50, 0x8C, 0x5A, 0xA0                           /* P.Z. */
        })
        Name (ABR3, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x42, 0x32, 0x59, 0x3C, 0x72, 0x46, 0x87,  /* (B2Y<rF. */
            /* 0018 */  0x50, 0x9E, 0x5A, 0xC6                           /* P.Z. */
        })
        Name (ABR4, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0A,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x14, 0x14, 0x1E, 0x1E, 0x28,  /* .......( */
            /* 0010 */  0x28, 0x3A, 0x32, 0x51, 0x3C, 0x68, 0x46, 0x7F,  /* (:2Q<hF. */
            /* 0018 */  0x50, 0x8E, 0x5A, 0xB5                           /* P.Z. */
        })
        Name (ABR5, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2D,  /* .....!.- */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x8C,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xA3, 0x5A, 0xC9                           /* P.Z. */
        })
        Name (ABR6, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x11,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x1C, 0x14, 0x26, 0x1E, 0x33,  /* .....&.3 */
            /* 0010 */  0x28, 0x49, 0x32, 0x66, 0x3C, 0x7F, 0x46, 0x9B,  /* (I2f<.F. */
            /* 0018 */  0x50, 0xB7, 0x5A, 0xDD                           /* P.Z. */
        })
        Name (ABR7, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3F, 0x32, 0x59, 0x3C, 0x72, 0x46, 0x8C,  /* (?2Y<rF. */
            /* 0018 */  0x50, 0xA0, 0x5A, 0xC9                           /* P.Z. */
        })
        Name (ABR8, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2B,  /* .....!.+ */
            /* 0010 */  0x28, 0x38, 0x32, 0x4F, 0x3C, 0x63, 0x46, 0x7A,  /* (82O<cFz */
            /* 0018 */  0x50, 0x89, 0x5A, 0xAD                           /* P.Z. */
        })
        Name (ABR9, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x42, 0x32, 0x56, 0x3C, 0x72, 0x46, 0x8C,  /* (B2V<rF. */
            /* 0018 */  0x50, 0x9B, 0x5A, 0xC4                           /* P.Z. */
        })
        Name (ABRA, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2B,  /* .....!.+ */
            /* 0010 */  0x28, 0x3A, 0x32, 0x4F, 0x3C, 0x66, 0x46, 0x7A,  /* (:2O<fFz */
            /* 0018 */  0x50, 0x8C, 0x5A, 0xAF                           /* P.Z. */
        })
        Name (ABRB, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x91,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xAA, 0x5A, 0xD1                           /* P.Z. */
        })
        Name (ABRC, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x91,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xAA, 0x5A, 0xD1                           /* P.Z. */
        })
        Name (ABRD, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x91,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xA8, 0x5A, 0xD1                           /* P.Z. */
        })
        Name (ABRE, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x91,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xAA, 0x5A, 0xCC                           /* P.Z. */
        })
        Name (ABRF, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x3F, 0x32, 0x5B, 0x3C, 0x72, 0x46, 0x8E,  /* (?2[<rF. */
            /* 0018 */  0x50, 0xA8, 0x5A, 0xC9                           /* P.Z. */
        })
        Name (ABRG, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3A, 0x32, 0x51, 0x3C, 0x68, 0x46, 0x7C,  /* (:2Q<hF| */
            /* 0018 */  0x50, 0x91, 0x5A, 0xB7                           /* P.Z. */
        })
        Name (ABRH, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3A, 0x32, 0x51, 0x3C, 0x68, 0x46, 0x7C,  /* (:2Q<hF| */
            /* 0018 */  0x50, 0x91, 0x5A, 0xB7                           /* P.Z. */
        })
        Name (ABRI, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2B,  /* .....!.+ */
            /* 0010 */  0x28, 0x3A, 0x32, 0x51, 0x3C, 0x68, 0x46, 0x7F,  /* (:2Q<hF. */
            /* 0018 */  0x50, 0x93, 0x5A, 0xBA                           /* P.Z. */
        })
        Name (ABRJ, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x44, 0x32, 0x5E, 0x3C, 0x77, 0x46, 0x91,  /* (D2^<wF. */
            /* 0018 */  0x50, 0xA5, 0x5A, 0xCE                           /* P.Z. */
        })
        Name (ABRK, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2B,  /* .....!.+ */
            /* 0010 */  0x28, 0x35, 0x32, 0x49, 0x3C, 0x60, 0x46, 0x75,  /* (52I<`Fu */
            /* 0018 */  0x50, 0x84, 0x5A, 0xB5                           /* P.Z. */
        })
        Name (M189, Buffer (0x0100) {})
        Name (M190, Ones)
        Name (M191, Ones)
        Method (ATPX, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (PX00 ())
            }

            If ((Arg0 == One))
            {
                Return (PX01 ())
            }

            If ((Arg0 == 0x02))
            {
                PX02 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x03))
            {
                PX03 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x04))
            {
                PX04 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x08))
            {
                Return (PX08 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (PX09 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (PX11 ())
            }

            CreateWordField (M189, Zero, M157)
            CreateWordField (M189, 0x02, M158)
            CreateDWordField (M189, 0x04, M160)
            M157 = Zero
            M158 = Zero
            M160 = Zero
            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX00, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateWordField (M189, 0x02, M158)
            CreateDWordField (M189, 0x04, M160)
            M157 = 0x08
            M158 = One
            M160 = M098 /* External reference */
            If (M098)
            {
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Store (M019 (M095 (M094 (M093 (0x2C, Local0), Store (M019 (M095 (M094 (
                    Local1 = (M093 (One, Zero) + 0x2C), If ((Local0 != Local5))
                                                {
                                                    M190 = Local0
                                                }, If ((Local1 != Local5))
                                                {
                                                    M191 = Local1
                                                }), Return (M189) /* \_SB_.PCI0.VGA_.M189 */)))))
            }
        }

        Method (PX01, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateDWordField (M189, 0x02, M161)
            CreateDWordField (M189, 0x06, M162)
            M157 = 0x0A
            M161 = 0x00019FFF
            M162 = M099 /* External reference */
            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX02, 1, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateByteField (M189, 0x02, M192)
            M157 = 0x03
            M192 = (Arg0 & One)
            Local7 = Buffer (0x05) {}
            CreateWordField (Local7, Zero, M197)
            CreateField (Local7, 0x10, 0x03, M200)
            CreateField (Local7, 0x13, 0x05, M199)
            CreateByteField (Local7, 0x03, M198)
            CreateByteField (Local7, 0x04, M201)
            M197 = 0x05
            M198 = Zero
            M199 = M091 /* External reference */
            M200 = M090 /* External reference */
            Name (HPOK, Zero)
            M133 = M049 /* External reference */
            0x11
            Local0
            Local0 = M113 ()
            Local6
            M023 (Zero, M091, M090)
            If ((M192 && Local6))
            {
                M000 (0x86)
                M112 (Local0, Zero)
                M111 (Local0, One)
                Sleep (0x20)
                M112 (Local0, 0x02)
                M112 (Local0, One)
                M000 (0x87)
                HPOK = Zero
                Sleep (0x14)
                M201 = One
                0x06 = \_SB.ALIB /* External reference */
                Local7
                Local6
                Local2 = Zero
                While ((Local2 < 0x0F))
                {
                    M023 (Zero, M091, M090)
                    Local4 = One
                    Local5 = 0xC8
                    While ((Local4 && Local5))
                    {
                        0xA5 = M021 (Zero, M091, M090)
                        Local0
                        Local0 &= 0x7F
                        If (((Local0 >= 0x10) && (Local0 != 0x7F)))
                        {
                            Local4 = Zero
                        }
                        Else
                        {
                            Sleep (0x05)
                            Local5--
                        }
                    }

                    If (!Local4)
                    {
                        M090 = M024 (Zero, M091)
                        Local5
                        If (Local5)
                        {
                            M026 (Zero, M091, M090)
                            Sleep (0x05)
                            Local2++
                        }
                        Else
                        {
                            Local0 = Zero
                            If ((M025 == Zero))
                            {
                                M091
                                M090
                                Ones
                                Local0 = One
                            }

                            If (Local0)
                            {
                                M111 (M049, M133 (0x17, One))
                                M111 (M049, M133 (0x18, One))
                                HPOK = One
                                Local2 = 0x10
                            }
                            Else
                            {
                                HPOK = Zero
                                Local2 = 0x10
                            }
                        }
                    }
                    Else
                    {
                        Local2 = 0x10
                    }
                }

                If (!HPOK)
                {
                    M000 (0x88)
                    Store (M019 (M095 (M094 (M093 (Zero, Local1), Sleep (0x0A), Local4 = One), 
                        Local5 = 0x05, While ((Local4 && Local5))
                                {
                                    0xA5 = M021 (Zero, M091, M090)
                                    Local0
                                    Local0 &= 0x7F
                                    If (((Local0 <= 0x04) || (Local0 == 0x1F)))
                                    {
                                        Local4 = Zero
                                    }
                                    Else
                                    {
                                        Else
                                            {
                                                M000 (0x8A)
                                                M201 = Zero
                                                \_SB.ALIB
                                                0x06
                                                Local7
                                                M000 (0x8B)
                                                M111 (M049, M133 (0x17, Zero))
                                                M111 (M049, M133 (0x18, Zero))
                                                M112 (Local0, Zero)
                                                Sleep (0x0A)
                                                M111 (Local0, Zero)
                                                M023 (Zero, M091, M090)
                                                Store (M019 (M095 (M094 (M093 (Zero, Local1), Sleep (0x0A), Local4 = One), 
                                                    Local5 = 0x05, While ((Local4 && Local5))
                                                            {
                                                                0xA5 = M021 (Zero, M091, M090)
                                                                Local0
                                                                Local0 &= 0x7F
                                                                If (((Local0 <= 0x04) || (Local0 == 0x1F)))
                                                                {
                                                                    Local4 = Zero
                                                                }
                                                                Else
                                                                {
                                                                    Store (M019 (M095 (M094 (M093 (Zero, Local1), Sleep (0x05), Local5--), 
                                                                        HPOK = 0x02, M000 (0x8C), If (HPOK)
                                                                                {
                                                                                    Local5 = 0x7FFFFFFF
                                                                                    Local5 |= 0x80000000
                                                                                    Store (M019 (M095 (M094 (M093 (Zero, Local0), If (((HPOK == One) && 
                                                                                        (Local0 != Local5)))
                                                                                                    {
                                                                                                        M020 (M095 (M094 (M093 (0x4C, M190), Sleep (0x0A), If ((M191 != 
                                                                                                            Local5))
                                                                                                                    {
                                                                                                                        M020 (M095 (M094 (M191 = (M093 (One, Zero) + 0x4C), Sleep (0x0A))))
                                                                                                                    })))
                                                                                                    })))
                                                                                }))
                                                                }
                                                            }))
                                            } = M019 (
                                                                                                                            M095 (M094 (M093 (Zero, Local0), Sleep (0x05), Local5--), M201 = Zero, \_SB.ALIB, 
                                                                                                                            0x06), Local7, M000 (0x89))
                                    }
                                }))
                }
            }
        }

        Method (PX03, 1, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateWordField (M189, 0x02, M195)
            M157 = 0x04
            M195 = (Arg0 & One)
            If (M195)
            {
                M111 (M049, M133 (0x17, One))
            }
            Else
            {
                M111 (M049, M133 (0x17, Zero))
            }
        }

        Method (PX04, 1, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateWordField (M189, 0x02, M196)
            M157 = 0x04
            M196 = (Arg0 & One)
            If (M196)
            {
                M111 (M049, M133 (0x18, One))
            }
            Else
            {
                M111 (M049, M133 (0x18, Zero))
            }
        }

        Method (PX08, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M193)
            CreateWordField (M189, 0x02, M157)
            M133 = M049 /* External reference */
            0x19
            Local0
            M193 = Local0
            M157 = 0x05
            Local0 *= M157 /* \_SB_.PCI0.VGA_.PX08.M157 */
            Local1 = Zero
            While ((Local1 < Local0))
            {
                M133 = M049 /* External reference */
                (0x1A + Local1)
                Local2
                M189 [(0x04 + Local1)] = Local2
                Local1++
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX09, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M193)
            CreateWordField (M189, 0x02, M157)
            M133 = M049 /* External reference */
            0x7E
            Local0
            M193 = Local0
            M157 = 0x03
            Local0 *= M157 /* \_SB_.PCI0.VGA_.PX09.M157 */
            Local1 = Zero
            While ((Local1 < Local0))
            {
                M133 = M049 /* External reference */
                (0x7F + Local1)
                Local2
                M189 [(0x04 + Local1)] = Local2
                Local1++
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX11, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateByteField (M189, 0x02, M162)
            Local2 = M162 /* \_SB_.PCI0.VGA_.PX11.M162 */
            Local0 = M131 /* External reference */
            If (Local0)
            {
                M131 = M049 /* External reference */
                0x10
                Local0
                M131 = M049 /* External reference */
                0x11
                Local1
                Local1 = (M084 + ((Local0 * 0x0100) + Local1))
                M012 (Local1, 0x0A, Zero, 0x08, Local2)
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Name (M207, Buffer (0xFF) {})
        Name (M208, Buffer (0x03) {})
        Name (M204, One)
        Method (ATCS, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                ATC0 ()
            }

            If ((Arg0 == One))
            {
                ATC1 ()
            }

            If ((Arg0 == 0x02))
            {
                ATC2 (Arg1)
            }

            If ((Arg0 == 0x03))
            {
                ATC3 ()
            }

            If ((Arg0 == 0x04))
            {
                ATC4 (Arg1)
            }

            If ((Arg0 == 0x06))
            {
                ATC6 (Arg1)
            }

            If ((Arg0 == 0x07))
            {
                ATC7 (Arg1)
            }

            Return (M207) /* \_SB_.PCI0.VGA_.M207 */
        }

        Method (ATC0, 0, NotSerialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateWordField (M207, 0x02, M158)
            CreateDWordField (M207, 0x04, M160)
            M157 = 0x08
            M158 = One
            M160 = 0x6F
             = \_SB.ALIB /* External reference */
            M207
            M207
        }

        Method (ATC1, 0, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateDWordField (M207, 0x02, M161)
            CreateDWordField (M207, 0x06, M162)
            CreateField (M207, 0x30, One, M203)
            M157 = 0x0A
            M161 = One
            0x15 = M100 (M162, M133 = M049 /* External reference */)
            Local0
            If ((Local0 & 0x80))
            {
                M204 = (Local0 & One)
            }
            ElseIf ((Local0 & 0x7F))
            {
                Local0 = M113 ()
                M204
            }

            M203 = M204 /* \_SB_.PCI0.VGA_.M204 */
        }

        Method (ATC2, 1, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateByteField (M207, 0x02, M205)
            M157 = 0x03
            M205 = One
            0x02 = \_SB.ALIB /* External reference */
            Arg0
            M207
        }

        Method (ATC3, 0, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateByteField (M207, 0x02, M205)
            CreateWordField (M208, Zero, M197)
            CreateByteField (M208, 0x02, M206)
            M157 = 0x03
            M205 = One
            M197 = 0x03
            M206 = One
            0x03 = \_SB.ALIB /* External reference */
            M208
            M207
        }

        Method (ATC4, 1, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateByteField (M207, 0x02, M209)
            M157 = 0x03
            M209 = One
            0x04 = \_SB.ALIB /* External reference */
            Arg0
            M207
        }

        Method (ATC6, 1, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateDWordField (M207, 0x02, M234)
            M157 = 0x06
            M234 = M233 /* External reference */
        }

        Method (ATC7, 1, Serialized)
        {
            M232 (M235 (Zero, One))
        }

        Name (M202, Buffer (0xFF00)
        {
             0x00                                             /* . */
        })
        Method (XTRM, 2, Serialized)
        {
            Local0 = (Arg0 + Arg1)
            Local4 = M105 /* External reference */
            If ((Local4 > 0xFF00))
            {
                Local4 = 0xFF00
            }

            If ((Local0 <= Local4))
            {
                Local1 = (Arg1 * 0x08)
                Local2 = (Arg0 * 0x08)
                M202 = M106 /* External reference */
                CreateField (M202, Local2, Local1, TEMP)
                Name (RETB, Buffer (Arg1) {})
                RETB = TEMP /* \_SB_.PCI0.VGA_.XTRM.TEMP */
                Return (RETB) /* \_SB_.PCI0.VGA_.XTRM.RETB */
            }
            ElseIf ((Arg0 < Local4))
            {
                Local3 = (M105 - Arg0)
                Local1 = (Local3 * 0x08)
                Local2 = (Arg0 * 0x08)
                M202 = M106 /* External reference */
                CreateField (M202, Local2, Local1, TEM)
                Name (RETC, Buffer (Local3) {})
                RETC = TEM /* \_SB_.PCI0.VGA_.XTRM.TEM_ */
                Return (RETC) /* \_SB_.PCI0.VGA_.XTRM.RETC */
            }
            Else
            {
                Name (RETD, Buffer (One) {})
                Return (RETD) /* \_SB_.PCI0.VGA_.XTRM.RETD */
            }
        }
    }

    Method (AFN0, 0, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN0 ()
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN0 ()
        }
    }

    Method (AFN1, 1, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN1 (Arg0)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN1 (Arg0)
        }
    }

    Method (AFN2, 2, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN2 (Arg0, Arg1)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN2 (Arg0, Arg1)
        }
    }

    Method (AFN3, 2, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN3 (Arg0, Arg1)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN3 (Arg0, Arg1)
        }
    }

    Method (AFN4, 1, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN4 (Arg0)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN4 (Arg0)
        }
    }

    Method (AFN5, 0, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN5 ()
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN5 ()
        }
    }

    Method (AFN6, 0, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN6 ()
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN6 ()
        }
    }

    Method (AFN7, 1, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN7 (Arg0)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN7 (Arg0)
        }
    }

    Method (AFN8, 0, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN8 ()
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN8 ()
        }
    }
}


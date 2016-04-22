/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.aml, Fri Apr 22 20:07:00 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000873A (34618)
 *     Revision         0x02
 *     Checksum         0x6E
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "HPQOEM", "INSYDE  ", 0x00000002)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
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
    External (_SB_.ALIC, MethodObj)    // Warning: Unknown method, guessing 2 arguments

    Scope (\_SB)
    {
        Name (AGRB, 0xF8000000)
        Name (ADBG, Buffer (0x0100) {})
        Name (ADAT, Buffer (0x0200)
        {
            /* 0000 */  0x03, 0x76, 0x76, 0x6E, 0x00, 0x05, 0x00, 0x00,  /* .vvn.... */
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0020 */  0x03, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x04,  /* ........ */
            /* 0028 */  0x04, 0x00, 0x03, 0x00, 0x00, 0x02, 0x02, 0x00,  /* ........ */
            /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x03, 0x01, 0x01, 0x01,  /* ........ */
            /* 0038 */  0x00, 0x00, 0x00, 0x05, 0x05, 0x04, 0x05, 0x01,  /* ........ */
            /* 0040 */  0x00, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0048 */  0x03, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x06,  /* ........ */
            /* 0050 */  0x06, 0x06, 0x06, 0x02, 0x00, 0x02, 0x04, 0x00,  /* ........ */
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 0060 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0070 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 0088 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0098 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 00B0 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00C0 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 00D8 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0100 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0110 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0118 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0120 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0128 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0138 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0140 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0148 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0150 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0158 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0160 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0170 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0178 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0180 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0188 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0190 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0198 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
        })
        Method (ALIB, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                CreateWordField (Arg1, 0x00, A010)
                CreateWordField (Arg1, 0x02, A011)
                CreateDWordField (Arg1, 0x04, A012)
                Local0 = Buffer (0x0100) {}
                CreateWordField (Local0, 0x00, A013)
                A013 = A010 /* \_SB_.ALIB.A010 */
                CreateWordField (Local0, 0x02, A014)
                A014 = A011 /* \_SB_.ALIB.A011 */
                CreateDWordField (Local0, 0x04, A015)
                A015 = A012 /* \_SB_.ALIB.A012 */
                A015 &= ~0x0F
                If ((DerefOf (\_SB.ADAT [0x00]) > 0x00))
                {
                    Local1 = 0x0F
                }
                Else
                {
                    Local1 = 0x01
                }

                A015 |= Local1
                Return (Local0)
            }

            If ((Arg0 == 0x01))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A016 (Local0))
            }

            If ((Arg0 == 0x02))
            {
                Return (A017 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A018 (Local0))
            }

            If ((Arg0 == 0x06))
            {
                Local0 = DerefOf (Arg1 [0x04])
                Local1 = DerefOf (Arg1 [0x02])
                Return (A021 (Local0, Local1))
            }

            If ((Arg0 == 0x0A))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A022 (Local0))
            }

            If ((Arg0 == 0x0B))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Local1 = DerefOf (Arg1 [0x03])
                Local2 = DerefOf (Arg1 [0x04])
                Local2 |= (DerefOf (Arg1 [0x05]) << 0x08)
                Local2 |= (DerefOf (Arg1 [0x06]) << 0x10)
                Local2 |= (DerefOf (Arg1 [0x07]) << 0x18)
                Local3 = DerefOf (Arg1 [0x08])
                Local3 |= (DerefOf (Arg1 [0x09]) << 0x08)
                Local3 |= (DerefOf (Arg1 [0x0A]) << 0x10)
                Local3 |= (DerefOf (Arg1 [0x0B]) << 0x18)
                Local4 = DerefOf (Arg1 [0x0C])
                Local4 |= (DerefOf (Arg1 [0x0D]) << 0x08)
                Local4 |= (DerefOf (Arg1 [0x0E]) << 0x10)
                Local4 |= (DerefOf (Arg1 [0x0F]) << 0x18)
                Return (A023 (Local0, Local1, Local2, Local3, Local4))
            }

            If ((Arg0 == 0x0C))
            {
                A024 (Arg1)
            }

            Return (0x00)
        }

        Method (A021, 2, NotSerialized)
        {
            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                Local1 = A085 (Local0, Arg1)
                If ((Local1 == 0x01))
                {
                    Local1 = A086 (Local0, Arg0)
                    Break
                }

                Local0++
            }

            Local7 = Buffer (0x0A) {}
            CreateWordField (Local7, 0x00, A013)
            CreateByteField (Local7, 0x02, A025)
            CreateByteField (Local7, 0x03, A087)
            A013 = 0x04
            A025 = 0x00
            A087 = Local1
            Return (Local7)
        }

        Method (A085, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A077 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A077 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A077 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A077 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A077 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A077 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A077 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A077 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A077 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A077 (Arg1))
            }
        }

        Method (A086, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A078 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A078 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A078 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A078 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A078 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A078 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A078 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A078 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A078 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A078 (Arg1))
            }
        }

        Name (AD00, 0x00)
        Name (DK00, 0x00)
        Method (A016, 1, NotSerialized)
        {
            If ((AD00 == Arg0))
            {
                Return (0x00)
            }

            AD00 = Arg0
            A007 ()
        }

        Method (A022, 1, NotSerialized)
        {
            DK00 = Arg0
        }

        Method (A023, 5, NotSerialized)
        {
        }

        Name (AP01, 0x00)
        Name (AP02, 0x00)
        Name (AP03, 0x00)
        Name (AP05, 0x00)
        Name (AP0B, 0xFF)
        Name (AP10, 0x00)
        Method (A017, 1, NotSerialized)
        {
            Local7 = Buffer (0x0100) {}
            CreateWordField (Local7, 0x00, A013)
            A013 = 0x03
            CreateByteField (Local7, 0x02, A025)
            A025 = 0x01
            If ((DerefOf (\_SB.ADAT [0x00]) == 0x01))
            {
                A025 = 0x02
                Return (Local7)
            }

            If ((DerefOf (\_SB.ADAT [0x00]) == 0x00))
            {
                A025 = 0x01
                Return (Local7)
            }

            A026 (Arg0)
            If ((AP05 != 0x01))
            {
                Return (Local7)
            }

            A027 ()
            A025 = 0x02
            Return (Local7)
        }

        Method (A008, 0, NotSerialized)
        {
            If ((DerefOf (\_SB.ADAT [0x00]) <= 0x01))
            {
                Return (0x00)
            }

            If ((AP05 != 0x01))
            {
                Return (0x00)
            }

            A027 ()
        }

        Method (A003, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                AP01 = 0x00
            }
        }

        Method (A006, 1, NotSerialized)
        {
            AP10 = 0x01
        }

        Method (A018, 1, NotSerialized)
        {
            AP05 = Arg0
            If ((DerefOf (\_SB.ADAT [0x00]) <= 0x01))
            {
                Return (0x00)
            }

            Local1 = AP0B /* \_SB_.AP0B */
            If ((AP05 == 0x00))
            {
                Local0 = 0x00
                While ((Local0 < 0x0A))
                {
                    A028 (Local0)
                    Local0++
                }

                AP0B = 0x00
            }

            A027 ()
            AP0B = Local1
            Local7 = Buffer (0x0100) {}
            Local7 [0x00] = 0x03
            Local7 [0x01] = 0x00
            Local7 [0x02] = 0x00
            Return (Local7)
        }

        Method (A029, 0, NotSerialized)
        {
            If ((AP0B != 0xFF))
            {
                Return (AP0B) /* \_SB_.AP0B */
            }

            Return (AD00) /* \_SB_.AD00 */
        }

        Method (A026, 1, NotSerialized)
        {
            CreateWordField (Arg0, 0x02, AP06)
            CreateWordField (Arg0, 0x04, AP07)
            CreateWordField (Arg0, 0x06, AP08)
            CreateByteField (Arg0, 0x08, AP09)
            CreateByteField (Arg0, 0x09, AP0A)
            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                If ((A030 (Local0, AP06) == 0x01))
                {
                    If (((AP07 & AP08) == 0x01))
                    {
                        Local1 = A031 (Local0)
                        A032 (Local0, Local1)
                    }
                    Else
                    {
                        A032 (Local0, AP0A)
                    }

                    Break
                }

                Local0++
            }
        }

        Method (A033, 0, NotSerialized)
        {
            AP02 = 0x01
            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                Local1 = A034 (Local0)
                If ((Local1 > AP02))
                {
                    AP02 = Local1
                }

                Local0++
            }
        }

        Method (A035, 0, NotSerialized)
        {
            AP03 = 0x00
            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                Local1 = A036 (Local0)
                If ((Local1 > AP03))
                {
                    AP03 = Local1
                }

                Local0++
            }
        }

        Method (A027, 0, NotSerialized)
        {
            A035 ()
            A033 ()
            If ((AP02 != AP01))
            {
                A009 (AP02, AP01)
            }

            If ((AP02 > AP01))
            {
                \_SB.A037 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }

            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                Local1 = A034 (Local0)
                Local2 = A038 (Local0)
                If ((Local1 != Local2))
                {
                    A039 (Local0, Local1)
                }
                ElseIf ((AP10 == 0x01))
                {
                    A039 (Local0, Local1)
                }

                Local0++
            }

            If ((AP02 < AP01))
            {
                \_SB.A037 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }
            ElseIf ((AP10 == 0x01))
            {
                \_SB.A037 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }

            AP10 = 0x00
        }

        Method (A039, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A040 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A040 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A040 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A040 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A040 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A040 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A040 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A040 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A040 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A040 (Arg1))
            }
        }

        Method (A038, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A041 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A041 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A041 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A041 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A041 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A041 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A041 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A041 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A041 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A041 ())
            }
        }

        Method (A034, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A042 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A042 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A042 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A042 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A042 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A042 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A042 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A042 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A042 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A042 ())
            }
        }

        Method (A036, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A043 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A043 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A043 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A043 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A043 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A043 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A043 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A043 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A043 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A043 ())
            }
        }

        Method (A031, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A044 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A044 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A044 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A044 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A044 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A044 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A044 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A044 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A044 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A044 ())
            }
        }

        Method (A032, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A045 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A045 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A045 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A045 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A045 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A045 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A045 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A045 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A045 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A045 (Arg1))
            }
        }

        Method (A030, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A046 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A046 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A046 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A046 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A046 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A046 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A046 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A046 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A046 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A046 (Arg1))
            }
        }

        Method (A028, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A047 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A047 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A047 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A047 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A047 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A047 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A047 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A047 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A047 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A047 ())
            }
        }

        OperationRegion (A106, SystemMemory, (AGRB + 0x000C4000), 0x1000)
        Field (A106, ByteAcc, NoLock, Preserve)
        {
            Offset (0x124), 
                ,   22, 
            A107,   1, 
            A108,   4
        }

        OperationRegion (A109, SystemMemory, (AGRB + 0x000C5000), 0x1000)
        Field (A109, ByteAcc, NoLock, Preserve)
        {
            Offset (0x170), 
                ,   14, 
            A110,   1
        }

        OperationRegion (A092, SystemMemory, AGRB, 0x1000)
        Field (A092, ByteAcc, NoLock, Preserve)
        {
            Offset (0x60), 
            A093,   32, 
            Offset (0xB8), 
            A094,   32, 
            Offset (0xC8), 
            A095,   32
        }

        BankField (A092, A094, 0x13000000, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A096,   32
        }

        BankField (A092, A094, 0x13000010, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A097,   32
        }

        BankField (A092, A094, 0x13000020, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A098,   32
        }

        BankField (A092, A094, 0x13000024, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A099,   32
        }

        BankField (A092, A094, 0x13000028, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A100,   32
        }

        BankField (A092, A094, 0x1300002C, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A101,   32
        }

        BankField (A092, A094, 0x13000030, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A102,   32
        }

        BankField (A092, A094, 0x13000034, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A103,   32
        }

        OperationRegion (A104, SystemMemory, (AGRB + 0x8000), 0x1000)
        Field (A104, DWordAcc, NoLock, Preserve)
        {
            A105,   32
        }

        OperationRegion (A111, SystemMemory, AGRB, 0x1000)
        Field (A111, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            A112,   32
        }

        BankField (A111, A112, 0x01110004, DWordAcc, NoLock, Preserve)
        {
            Offset (0xE4), 
                ,   12, 
            A113,   1
        }

        BankField (A111, A112, 0x01318070, DWordAcc, NoLock, Preserve)
        {
            Offset (0xE4), 
            A114,   1
        }

        BankField (A111, A112, 0x01410129, DWordAcc, NoLock, Preserve)
        {
            Offset (0xE4), 
            A115,   16
        }

        Method (A037, 1, NotSerialized)
        {
            If ((Arg0 == 0x01))
            {
                Local0 = DerefOf (\_SB.ADAT [0x01])
            }

            If ((Arg0 == 0x02))
            {
                Local0 = DerefOf (\_SB.ADAT [0x02])
            }

            If ((Arg0 == 0x03))
            {
                Local0 = DerefOf (\_SB.ADAT [0x03])
            }

            If ((Local0 > 0xF7))
            {
                Local0 = 0xF7
            }

            Local2 = (0x0271 * ((Local1 = (0xF7 - Local0)) + 0x01))
            Divide (Local2 *= 0x04, 0x64, Local3, Local4)
            Local7 = Buffer (0x18) {}
            CreateDWordField (Local7, 0x00, A116)
            CreateDWordField (Local7, 0x04, A117)
            CreateDWordField (Local7, 0x08, A118)
            CreateDWordField (Local7, 0x0C, A119)
            CreateDWordField (Local7, 0x10, A120)
            CreateDWordField (Local7, 0x14, A121)
            A116 = Local4
            A122 (0x3A, Local7)
        }

        Method (A123, 3, NotSerialized)
        {
        }

        Method (A081, 3, NotSerialized)
        {
            If (((Arg1 >= 0x08) && (Arg2 >= 0x08)))
            {
                If ((Arg0 == 0x01))
                {
                    A114 = 0x01
                }
                ElseIf ((Arg1 > Arg2))
                {
                    Local1 = (Arg1 - Arg2)
                    Local2 = (Arg2 - 0x08)
                }
                Else
                {
                    Local1 = (Arg2 - Arg1)
                    Local2 = (Arg1 - 0x08)
                }
            }
        }

        Method (A083, 3, NotSerialized)
        {
            If (((Arg1 >= 0x08) && (Arg2 >= 0x08)))
            {
                If ((Arg0 == 0x01))
                {
                    A113 = 0x01
                }
                ElseIf (((A115 & 0xFF) == 0x00))
                {
                    A114 = 0x00
                }
            }
        }

        Method (A122, 2, Serialized)
        {
            CreateDWordField (Arg1, 0x00, A124)
            CreateDWordField (Arg1, 0x04, A125)
            CreateDWordField (Arg1, 0x08, A126)
            CreateDWordField (Arg1, 0x0C, A127)
            CreateDWordField (Arg1, 0x10, A128)
            CreateDWordField (Arg1, 0x14, A129)
            A097 = 0x00
            While ((A097 != 0x00)) {}
            A098 = A124 /* \_SB_.A122.A124 */
            A099 = A125 /* \_SB_.A122.A125 */
            A100 = A126 /* \_SB_.A122.A126 */
            A101 = A127 /* \_SB_.A122.A127 */
            A102 = A128 /* \_SB_.A122.A128 */
            A103 = A129 /* \_SB_.A122.A129 */
            A096 = Arg0
            While ((A097 == 0x00)) {}
        }

        Method (A050, 1, NotSerialized)
        {
        }

        Method (A005, 1, NotSerialized)
        {
            Local0 = A110 /* \_SB_.A110 */
            Return (Local0)
        }

        Name (A130, 0x00)
        Name (A131, 0x00)
        Method (A004, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                If ((A130 == 0x00))
                {
                    A130 = 0x01
                }
            }
            ElseIf ((A130 == 0x01))
            {
                If ((A131 == 0x01)) {}
            }
        }

        Method (A024, 1, Serialized)
        {
            CreateWordField (Arg0, 0x00, A132)
            Local7 = Buffer (0x18) {}
            CreateDWordField (Local7, 0x00, A116)
            CreateDWordField (Local7, 0x04, A117)
            CreateDWordField (Local7, 0x08, A118)
            CreateDWordField (Local7, 0x0C, A119)
            CreateDWordField (Local7, 0x10, A120)
            CreateDWordField (Local7, 0x14, A121)
            Local0 = 0x02
            While ((Local0 < A132))
            {
                Local1 = DerefOf (Arg0 [Local0])
                Local0++
                Local2 = DerefOf (Arg0 [Local0])
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x08)
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x10)
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x18)
                Local0++
                A116 = 0x00
                A117 = 0x00
                A118 = 0x00
                A119 = 0x00
                A120 = 0x00
                A121 = 0x00
                If ((Local1 == 0x00))
                {
                    A116 = Local2
                    A122 (0x69, Local7)
                }

                If ((Local1 == 0x01))
                {
                    A118 = Local2
                    A122 (0x6C, Local7)
                }

                If ((Local1 == 0x02))
                {
                    A116 = Local2
                    A122 (0x6C, Local7)
                }

                If ((Local1 == 0x03))
                {
                    A116 = Local2
                    A122 (0x7C, Local7)
                }
            }
        }

        OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            A088,   8, 
            A089,   8
        }

        IndexField (A088, A089, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            A090,   32
        }

        OperationRegion (ACFG, SystemIO, A090, 0x08)
        Field (ACFG, DWordAcc, NoLock, Preserve)
        {
            A091,   32
        }

        BankField (ACFG, A091, 0x80000068, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            A058,   2
        }

        Name (ABSM, 0x00)
        Method (A055, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                ABSM = A058 /* \_SB_.A058 */
                A058 = 0x00
            }
            Else
            {
                A058 = ABSM /* \_SB_.ABSM */
            }
        }

        Device (AWR0)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x90)  // _UID: Unique ID
            Name (WRBS, 0x0150)
            Name (CORE, 0x0140)
            Device (ABR0)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x80)  // _UID: Unique ID
                Name (AB12, 0x20)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR0.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR0.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR0.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR0.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR0.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR0.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR0.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR0.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR0.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR0.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR0.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR0.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR0.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR0.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR0.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR0.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR0.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR0.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR1)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x81)  // _UID: Unique ID
                Name (AB12, 0x34)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR1.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR1.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR1.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR1.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR1.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR1.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR1.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR1.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR1.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR1.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR1.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR1.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR1.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR1.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR1.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR1.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR1.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR1.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR2)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x82)  // _UID: Unique ID
                Name (AB12, 0x48)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR2.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR2.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR2.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR2.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR2.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR2.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR2.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR2.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR2.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR2.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR2.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR2.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR2.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR2.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR2.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR2.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR2.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR2.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR3)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x83)  // _UID: Unique ID
                Name (AB12, 0x5C)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR3.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR3.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR3.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR3.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR3.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR3.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR3.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR3.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR3.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR3.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR3.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR3.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR3.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR3.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR3.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR3.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR3.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR3.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR4)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x84)  // _UID: Unique ID
                Name (AB12, 0x70)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR4.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR4.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR4.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR4.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR4.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR4.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR4.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR4.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR4.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR4.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR4.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR4.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR4.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR4.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR4.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR4.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR4.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR4.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }
        }

        Device (AWR1)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x91)  // _UID: Unique ID
            Name (WRBS, 0x0151)
            Name (CORE, 0x0141)
            Device (ABR5)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x85)  // _UID: Unique ID
                Name (AB12, 0x84)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR5.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR5.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR5.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR5.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR5.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR5.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR5.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR5.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR5.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR5.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR5.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR5.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR5.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR5.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR5.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR5.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR5.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR5.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR6)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x86)  // _UID: Unique ID
                Name (AB12, 0x98)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR6.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR6.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR6.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR6.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR6.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR6.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR6.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR6.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR6.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR6.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR6.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR6.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR6.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR6.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR6.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR6.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR6.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR6.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR7)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x87)  // _UID: Unique ID
                Name (AB12, 0xAC)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR7.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR7.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR7.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR7.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR7.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR7.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR7.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR7.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR7.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR7.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR7.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR7.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR7.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR7.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR7.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR7.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR7.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR7.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR8)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x88)  // _UID: Unique ID
                Name (AB12, 0xC0)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR8.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR8.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR8.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR8.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR8.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR8.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR8.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR8.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR8.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR8.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR8.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR8.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR8.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR8.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR8.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR8.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR8.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR8.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR9)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x89)  // _UID: Unique ID
                Name (AB12, 0xD4)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR9.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR9.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR9.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR9.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR9.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR9.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR9.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR9.AB00 */
                }

                Method (A040, 1, NotSerialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR9.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR9.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR9.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, NotSerialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR9.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR9.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR9.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR9.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR9.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR9.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR9.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }
        }

        Name (A001, 0x01)
        Name (A002, 0x00)
        Method (APTS, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                A003 (Arg0)
                A004 (0x00)
                A002 = A005 (0x00)
            }
        }

        Method (AWAK, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                A006 (Arg0)
                If ((A002 == 0x00))
                {
                    A005 (0x01)
                }
            }
        }

        Method (A007, 0, NotSerialized)
        {
            A008 ()
        }

        Method (A009, 2, NotSerialized)
        {
        }
    }
}


/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.aml, Fri Apr 22 20:07:00 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000654D (25933)
 *     Revision         0x01
 *     Checksum         0x11
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00001000)
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
    External (_SB_.PCI0.LPC0.EC0_.ATTE, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.ATTF, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BAC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BACV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BAM0, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.BAT0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCG0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCTL, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCV1, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCV2, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCV3, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCV4, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BDC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BDV0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BDVN, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BFC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BMD0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BMNN, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BOL0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BPC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BPV0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BRC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BRTS, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BSN0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BSSB, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BST0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BTDC, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BTNO, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BTTP, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BTTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.CPTR, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.CPTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.CPUT, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.CYC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.FNTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.FRPM, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.GBIS, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.GBTC, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.GPTP, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.GPTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.MBMS, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.MBSS, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.MUAC, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.MXER, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.PHTP, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.PHTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.PRDT, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.PRTM, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.REC1, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.REC2, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.RSTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.RTTE, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.SAD2, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.SADP, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.SBIS, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.SBTC, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.STMS, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.WACL, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.WEC1, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.WEC2, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.WMIM, IntObj)
    External (_SB_.PCI0.LPC0.ECOK, IntObj)
    External (_SB_.RTC_.RTCH, UnknownObj)
    External (_SB_.RTC_.RTCM, UnknownObj)
    External (_SB_.RTC_.RTCW, IntObj)
    External (GP15, UnknownObj)
    External (GP68, UnknownObj)
    External (OSYS, UnknownObj)
    External (SSMP, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Mutex (MSMT, 0x00)
    Scope (\_SB)
    {
        Name (ETYP, Buffer (One) {})
        Device (\_SB.WMID)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WEI1, Zero)
            Name (WED1, Zero)
            Name (WEI2, Zero)
            Name (WED2, Zero)
            Name (WEVT, Zero)
            Name (_WDG, Buffer (0x0104)
            {
                /* 0000 */  0x34, 0xF0, 0xB7, 0x5F, 0x63, 0x2C, 0xE9, 0x45,  /* 4.._c,.E */
                /* 0008 */  0xBE, 0x91, 0x3D, 0x44, 0xE2, 0xC7, 0x07, 0xE4,  /* ..=D.... */
                /* 0010 */  0x41, 0x41, 0x01, 0x02, 0x79, 0x42, 0xF2, 0x95,  /* AA..yB.. */
                /* 0018 */  0x7B, 0x4D, 0x34, 0x43, 0x93, 0x87, 0xAC, 0xCD,  /* {M4C.... */
                /* 0020 */  0xC6, 0x7E, 0xF6, 0x1C, 0x80, 0x00, 0x01, 0x08,  /* .~...... */
                /* 0028 */  0x18, 0x43, 0x81, 0x2B, 0xE8, 0x4B, 0x07, 0x47,  /* .C.+.K.G */
                /* 0030 */  0x9D, 0x84, 0xA1, 0x90, 0xA8, 0x59, 0xB5, 0xD0,  /* .....Y.. */
                /* 0038 */  0xA0, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,  /* ....!... */
                /* 0040 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  /* f....... */
                /* 0048 */  0xC9, 0x06, 0x29, 0x10, 0x41, 0x42, 0x01, 0x00,  /* ..).AB.. */
                /* 0050 */  0xEB, 0x91, 0x4C, 0x1F, 0x5C, 0xDC, 0x0B, 0x46,  /* ..L.\..F */
                /* 0058 */  0x95, 0x1D, 0xC7, 0xCB, 0x9B, 0x4B, 0x8D, 0x5E,  /* .....K.^ */
                /* 0060 */  0x42, 0x41, 0x01, 0x02, 0x49, 0x4B, 0x11, 0x2D,  /* BA..IK.- */
                /* 0068 */  0xFB, 0x2D, 0x30, 0x41, 0xB8, 0xFE, 0x4A, 0x3C,  /* .-0A..J< */
                /* 0070 */  0x09, 0xE7, 0x51, 0x33, 0x42, 0x43, 0x27, 0x00,  /* ..Q3BC'. */
                /* 0078 */  0xE3, 0x08, 0x8D, 0x98, 0xF4, 0x68, 0x35, 0x4C,  /* .....h5L */
                /* 0080 */  0xAF, 0x3E, 0x6A, 0x1B, 0x81, 0x06, 0xF8, 0x3C,  /* .>j....< */
                /* 0088 */  0x42, 0x44, 0x0D, 0x00, 0x46, 0x97, 0xEA, 0x14,  /* BD..F... */
                /* 0090 */  0x1F, 0xCE, 0x98, 0x40, 0xA0, 0xE0, 0x70, 0x45,  /* ...@..pE */
                /* 0098 */  0xCB, 0x4D, 0xA7, 0x45, 0x42, 0x45, 0x02, 0x00,  /* .M.EBE.. */
                /* 00A0 */  0x28, 0x20, 0x2F, 0x32, 0x84, 0x0F, 0x01, 0x49,  /* ( /2...I */
                /* 00A8 */  0x98, 0x8E, 0x01, 0x51, 0x76, 0x04, 0x9E, 0x2D,  /* ...Qv..- */
                /* 00B0 */  0x42, 0x46, 0x01, 0x00, 0x3D, 0xDE, 0x32, 0x82,  /* BF..=.2. */
                /* 00B8 */  0x3D, 0x66, 0x27, 0x43, 0xA8, 0xF4, 0xE2, 0x93,  /* =f'C.... */
                /* 00C0 */  0xAD, 0xB9, 0xBF, 0x05, 0x42, 0x47, 0x00, 0x00,  /* ....BG.. */
                /* 00C8 */  0x36, 0x64, 0x1F, 0x8F, 0x42, 0x9F, 0xC8, 0x42,  /* 6d..B..B */
                /* 00D0 */  0xBA, 0xDC, 0x0E, 0x94, 0x24, 0xF2, 0x0C, 0x9A,  /* ....$... */
                /* 00D8 */  0x42, 0x48, 0x00, 0x00, 0x35, 0x64, 0x1F, 0x8F,  /* BH..5d.. */
                /* 00E0 */  0x42, 0x9F, 0xC8, 0x42, 0xBA, 0xDC, 0x0E, 0x94,  /* B..B.... */
                /* 00E8 */  0x24, 0xF2, 0x0C, 0x9A, 0x42, 0x49, 0x00, 0x00,  /* $...BI.. */
                /* 00F0 */  0xB6, 0x63, 0x4E, 0xDF, 0xBC, 0x3B, 0x58, 0x48,  /* .cN..;XH */
                /* 00F8 */  0x97, 0x37, 0xC7, 0x4F, 0x82, 0xF8, 0x21, 0xF3,  /* .7.O..!. */
                /* 0100 */  0x42, 0x4A, 0x00, 0x00                           /* BJ.. */
            })
            OperationRegion (HNVS, SystemMemory, 0xDFB5E000, 0x000012E8)
            Field (HNVS, AnyAcc, NoLock, Preserve)
            {
                SERN,   80, 
                MDID,   256, 
                GUID,   64, 
                UUID,   128, 
                SKUN,   96, 
                LCOD,   24, 
                MACA,   48, 
                KBMX,   8, 
                CHID,   8, 
                OSKU,   8, 
                QKPM,   8, 
                WPFL,   8, 
                DBSW,   8, 
                WPCR,   8, 
                WINA,   8, 
                GPSA,   8, 
                MSME,   8, 
                PREV,   24, 
                ODDC,   8, 
                WIN7,   8, 
                IMID,   8, 
                WSDY,   32, 
                WSDM,   16, 
                WSDD,   16, 
                CTNU,   152, 
                ESTL,   8, 
                SKN1,   104, 
                NISC,   8, 
                MACF,   8, 
                OSSV,   8, 
                CCAV,   56, 
                FFBT,   1600, 
                BUID,   168, 
                TAVL,   8, 
                UBFG,   8, 
                HBDC,   8, 
                MECT,   16, 
                FFLG,   8, 
                Offset (0x1000), 
                SIGN,   32, 
                REVN,   32, 
                HWCT,   8, 
                HWBC,   8, 
                HWRC,   8, 
                HWBF,   1024, 
                EHWB,   4096, 
                IAOR,   8, 
                CDAT,   32, 
                WLVD,   16, 
                WLDD,   16, 
                WLSV,   16, 
                WLSS,   16, 
                BTVD,   16, 
                BTDD,   16, 
                WWVD,   16, 
                WWDD,   16, 
                GPVD,   16, 
                GPDD,   16, 
                FACM,   16, 
                SMA4,   8, 
                WIVD,   16, 
                WIDD,   16, 
                RCKP,   8, 
                HDSM,   16, 
                HD1H,   64, 
                HD2H,   64, 
                OD1H,   64, 
                EBUR,   8, 
                HD1P,   16, 
                HD1M,   16, 
                HD2P,   16, 
                HD2M,   16, 
                OD1P,   16, 
                OD1M,   16, 
                HBUP,   8, 
                HSIN,   8, 
                HJVS,   8, 
                HTVS,   8, 
                HRSV,   136
            }

            Name (WQAB, Buffer (0x2135)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                /* 0008 */  0x25, 0x21, 0x00, 0x00, 0xB0, 0xCB, 0x00, 0x00,  /* %!...... */
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                /* 0018 */  0x28, 0x27, 0xA1, 0x00, 0x01, 0x06, 0x18, 0x42,  /* ('.....B */
                /* 0020 */  0x10, 0x4D, 0x10, 0x92, 0x46, 0x62, 0x02, 0x89,  /* .M..Fb.. */
                /* 0028 */  0x80, 0x90, 0x18, 0x18, 0x14, 0x81, 0x85, 0x00,  /* ........ */
                /* 0030 */  0x49, 0x02, 0x88, 0xC4, 0x41, 0xE1, 0x20, 0xD4,  /* I...A. . */
                /* 0038 */  0x9F, 0x40, 0x7E, 0x05, 0x20, 0x74, 0x28, 0x40,  /* .@~. t(@ */
                /* 0040 */  0xA6, 0x00, 0x83, 0x02, 0x9C, 0x22, 0x88, 0xA0,  /* .....".. */
                /* 0048 */  0x57, 0x01, 0x36, 0x05, 0x98, 0x14, 0x60, 0x51,  /* W.6...`Q */
                /* 0050 */  0x80, 0x76, 0x01, 0x96, 0x05, 0xE8, 0x16, 0x20,  /* .v.....  */
                /* 0058 */  0x1D, 0x96, 0x88, 0x04, 0x47, 0x89, 0x01, 0x47,  /* ....G..G */
                /* 0060 */  0xE9, 0xC4, 0x16, 0x6E, 0xD8, 0xE0, 0x85, 0xA2,  /* ...n.... */
                /* 0068 */  0x68, 0x06, 0x51, 0x12, 0x94, 0x8B, 0x20, 0x5D,  /* h.Q... ] */
                /* 0070 */  0x10, 0x52, 0x2E, 0xC0, 0x37, 0x82, 0x06, 0x10,  /* .R..7... */
                /* 0078 */  0xA5, 0x77, 0x01, 0xB6, 0x05, 0x98, 0x86, 0x27,  /* .w.....' */
                /* 0080 */  0xD2, 0x20, 0xE4, 0x60, 0x08, 0x54, 0xCE, 0x80,  /* . .`.T.. */
                /* 0088 */  0x20, 0x69, 0x44, 0x21, 0x1E, 0xA7, 0x44, 0x08,  /*  iD!..D. */
                /* 0090 */  0x0A, 0x84, 0x90, 0xD4, 0xF1, 0xA0, 0xA0, 0x71,  /* .......q */
                /* 0098 */  0x88, 0xAD, 0xCE, 0x46, 0x93, 0xA9, 0x74, 0x7E,  /* ...F..t~ */
                /* 00A0 */  0x48, 0x82, 0x70, 0xC6, 0x2A, 0x7E, 0x3A, 0x9A,  /* H.p.*~:. */
                /* 00A8 */  0xD0, 0xD9, 0x9C, 0x60, 0xE7, 0x18, 0x72, 0x3C,  /* ...`..r< */
                /* 00B0 */  0x48, 0xF4, 0x20, 0xB8, 0x00, 0x0F, 0x1C, 0x2C,  /* H. ...., */
                /* 00B8 */  0x34, 0x84, 0x22, 0x6B, 0x80, 0xC1, 0x8C, 0xDD,  /* 4."k.... */
                /* 00C0 */  0x63, 0xB1, 0x0B, 0x4E, 0x0A, 0xEC, 0x61, 0xB3,  /* c..N..a. */
                /* 00C8 */  0x01, 0x19, 0xA2, 0x24, 0x38, 0xD4, 0x11, 0xC0,  /* ...$8... */
                /* 00D0 */  0x12, 0x05, 0x98, 0x1F, 0x87, 0x0C, 0x0F, 0x95,  /* ........ */
                /* 00D8 */  0x8C, 0x25, 0x24, 0x1B, 0xAB, 0x87, 0xC2, 0xA5,  /* .%$..... */
                /* 00E0 */  0x40, 0x68, 0x6C, 0x27, 0xED, 0x19, 0x45, 0x2C,  /* @hl'..E, */
                /* 00E8 */  0x79, 0x4A, 0x82, 0x49, 0xE0, 0x51, 0x44, 0x36,  /* yJ.I.QD6 */
                /* 00F0 */  0x1A, 0x27, 0x28, 0x1B, 0x1A, 0x25, 0x03, 0x42,  /* .'(..%.B */
                /* 00F8 */  0x9E, 0x05, 0x58, 0x07, 0x26, 0x04, 0x76, 0x2F,  /* ..X.&.v/ */
                /* 0100 */  0xC0, 0x9A, 0x00, 0x73, 0xB3, 0x90, 0xB1, 0xB9,  /* ...s.... */
                /* 0108 */  0xE8, 0xFF, 0x0F, 0x71, 0xB0, 0x31, 0xDA, 0x9A,  /* ...q.1.. */
                /* 0110 */  0xAE, 0x90, 0xC2, 0xC4, 0x88, 0x12, 0x2C, 0x5E,  /* ......,^ */
                /* 0118 */  0xC5, 0xC3, 0x10, 0xCA, 0x93, 0x42, 0xA8, 0x48,  /* .....B.H */
                /* 0120 */  0x95, 0xA1, 0x68, 0xB4, 0x51, 0x2A, 0x14, 0xE0,  /* ..h.Q*.. */
                /* 0128 */  0x4C, 0x80, 0x30, 0x5C, 0x1D, 0x03, 0x82, 0x46,  /* L.0\...F */
                /* 0130 */  0x88, 0x15, 0x29, 0x56, 0xFB, 0x83, 0x20, 0xF1,  /* ..)V.. . */
                /* 0138 */  0x2D, 0x40, 0x54, 0x01, 0xA2, 0x48, 0xA3, 0x41,  /* -@T..H.A */
                /* 0140 */  0x9D, 0x03, 0x3C, 0x5C, 0x0F, 0xF5, 0xF0, 0x3D,  /* ..<\...= */
                /* 0148 */  0xF6, 0x93, 0x0C, 0x72, 0x90, 0x67, 0xF1, 0xA8,  /* ...r.g.. */
                /* 0150 */  0x70, 0x9C, 0x06, 0x49, 0xE0, 0x0B, 0x80, 0x4F,  /* p..I...O */
                /* 0158 */  0x08, 0x1E, 0x38, 0xDE, 0x35, 0xA0, 0x66, 0x7C,  /* ..8.5.f| */
                /* 0160 */  0xBC, 0x4C, 0x10, 0x1C, 0x6A, 0x88, 0x1E, 0x68,  /* .L..j..h */
                /* 0168 */  0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8, 0x49, 0x3D,  /* ..8D..I= */
                /* 0170 */  0x52, 0x60, 0x07, 0x77, 0x32, 0xEF, 0x01, 0xAF,  /* R`.w2... */
                /* 0178 */  0x0A, 0xCD, 0x5E, 0x12, 0x08, 0xC1, 0xF1, 0xF8,  /* ..^..... */
                /* 0180 */  0x7E, 0xC0, 0x26, 0x9C, 0xC0, 0xF2, 0x07, 0x81,  /* ~.&..... */
                /* 0188 */  0x1A, 0x99, 0xA1, 0x3D, 0xCA, 0xD3, 0x8A, 0x19,  /* ...=.... */
                /* 0190 */  0xF2, 0x31, 0xC1, 0x04, 0x16, 0x0B, 0x21, 0x05,  /* .1....!. */
                /* 0198 */  0x10, 0x1A, 0x0F, 0xF8, 0x6F, 0x00, 0x8F, 0x17,  /* ....o... */
                /* 01A0 */  0xBE, 0x12, 0xC4, 0xF6, 0x80, 0x12, 0x0C, 0x0B,  /* ........ */
                /* 01A8 */  0x21, 0x23, 0xAB, 0xF0, 0x78, 0xE8, 0x28, 0x7C,  /* !#..x.(| */
                /* 01B0 */  0x95, 0x38, 0x9C, 0xD3, 0x8A, 0x67, 0x82, 0xE1,  /* .8...g.. */
                /* 01B8 */  0x20, 0xF4, 0x05, 0x90, 0x00, 0x51, 0xE7, 0x0C,  /*  ....Q.. */
                /* 01C0 */  0xD4, 0x61, 0xC1, 0xE7, 0x04, 0x76, 0x33, 0x38,  /* .a...v38 */
                /* 01C8 */  0x83, 0x47, 0x00, 0x8F, 0xE4, 0x84, 0xFC, 0x2B,  /* .G.....+ */
                /* 01D0 */  0xF1, 0xC0, 0xE0, 0x03, 0xE2, 0xEF, 0x1F, 0xA7,  /* ........ */
                /* 01D8 */  0xEC, 0x11, 0x9C, 0xA9, 0x01, 0x7D, 0x1C, 0xF0,  /* .....}.. */
                /* 01E0 */  0xFF, 0x7F, 0x28, 0x7C, 0x88, 0x1E, 0xDF, 0x29,  /* ..(|...) */
                /* 01E8 */  0x1F, 0xAF, 0x4F, 0x17, 0x96, 0x35, 0x4E, 0xE8,  /* ..O..5N. */
                /* 01F0 */  0x77, 0x08, 0x9F, 0x38, 0x7C, 0x64, 0x71, 0x44,  /* w..8|dqD */
                /* 01F8 */  0x08, 0x39, 0x39, 0x05, 0xA0, 0x81, 0x4F, 0xF7,  /* .99...O. */
                /* 0200 */  0xEC, 0x22, 0x9C, 0xAE, 0x27, 0xE5, 0x40, 0xC3,  /* ."..'.@. */
                /* 0208 */  0xA0, 0xE3, 0x04, 0xC7, 0x79, 0x00, 0x1C, 0xE3,  /* ....y... */
                /* 0210 */  0x84, 0x7F, 0x2E, 0x80, 0x3F, 0x40, 0x7E, 0xCA,  /* ....?@~. */
                /* 0218 */  0x78, 0xC5, 0x48, 0xE0, 0x98, 0x23, 0x44, 0x9F,  /* x.H..#D. */
                /* 0220 */  0x6B, 0x3C, 0x42, 0x2C, 0xFC, 0x53, 0x45, 0xE1,  /* k<B,.SE. */
                /* 0228 */  0x03, 0x21, 0x63, 0x04, 0x17, 0xA0, 0xC7, 0x08,  /* .!c..... */
                /* 0230 */  0x7C, 0x03, 0x8E, 0x11, 0x7D, 0x94, 0xE0, 0xEA,  /* |...}... */
                /* 0238 */  0x0F, 0x1A, 0x74, 0x80, 0xB8, 0xFF, 0xFF, 0x00,  /* ..t..... */
                /* 0240 */  0xE1, 0x83, 0x7A, 0x80, 0xC0, 0x37, 0xFA, 0xD1,  /* ..z..7.. */
                /* 0248 */  0x03, 0x3D, 0x2E, 0x8B, 0x3E, 0x0F, 0xC8, 0xF8,  /* .=..>... */
                /* 0250 */  0x89, 0x46, 0xF3, 0xE2, 0xA7, 0x03, 0x7E, 0xF8,  /* .F....~. */
                /* 0258 */  0x00, 0x0F, 0xA8, 0x87, 0x84, 0x03, 0xC5, 0x4C,  /* .......L */
                /* 0260 */  0x9B, 0x83, 0x3E, 0xBB, 0x1C, 0x3A, 0x76, 0xB8,  /* ..>..:v. */
                /* 0268 */  0xE0, 0x3F, 0x81, 0x80, 0x4B, 0xDE, 0x21, 0x0C,  /* .?..K.!. */
                /* 0270 */  0x14, 0x23, 0xC6, 0x9F, 0x83, 0x7C, 0x0A, 0x03,  /* .#...|.. */
                /* 0278 */  0xFF, 0xFF, 0xFF, 0x14, 0x06, 0xFE, 0xE1, 0xF0,  /* ........ */
                /* 0280 */  0x20, 0x4F, 0x07, 0x9F, 0xB6, 0xA8, 0x74, 0x18,  /*  O....t. */
                /* 0288 */  0xD4, 0x81, 0x0B, 0xB0, 0x32, 0x89, 0x08, 0xCF,  /* ....2... */
                /* 0290 */  0x12, 0xB5, 0x41, 0xE8, 0xD4, 0xF0, 0x36, 0xF1,  /* ..A...6. */
                /* 0298 */  0xB6, 0xE5, 0x5B, 0x40, 0x9C, 0xD3, 0xEC, 0xED,  /* ..[@.... */
                /* 02A0 */  0xC0, 0x45, 0x30, 0x22, 0xD4, 0x0C, 0x45, 0x4E,  /* .E0"..EN */
                /* 02A8 */  0x5A, 0x11, 0x63, 0x44, 0x79, 0xDC, 0x32, 0xCA,  /* Z.cDy.2. */
                /* 02B0 */  0xDB, 0xD6, 0x0B, 0x40, 0xBC, 0x13, 0x7B, 0xDE,  /* ...@..{. */
                /* 02B8 */  0x32, 0x46, 0xF0, 0xC8, 0x0F, 0x5C, 0x2C, 0xC6,  /* 2F...\,. */
                /* 02C0 */  0xEA, 0xF5, 0x5F, 0xF3, 0x81, 0x0B, 0x70, 0xF6,  /* .._...p. */
                /* 02C8 */  0xFF, 0x3F, 0x70, 0x01, 0x1C, 0x0A, 0x7A, 0x18,  /* .?p...z. */
                /* 02D0 */  0x42, 0x0F, 0xC3, 0x53, 0x39, 0x97, 0x87, 0xC8,  /* B..S9... */
                /* 02D8 */  0x53, 0x89, 0x18, 0x35, 0x4C, 0xD4, 0x67, 0x28,  /* S..5L.g( */
                /* 02E0 */  0xDF, 0x2D, 0x7C, 0x20, 0x02, 0xDF, 0x99, 0x0B,  /* .-| .... */
                /* 02E8 */  0xF8, 0xFD, 0xFF, 0x0F, 0x44, 0x70, 0x8E, 0x29,  /* ....Dp.) */
                /* 02F0 */  0xB8, 0x33, 0x0D, 0x78, 0x7C, 0xCE, 0x40, 0x20,  /* .3.x|.@  */
                /* 02F8 */  0xA7, 0xE2, 0x43, 0x0D, 0x60, 0x41, 0xF4, 0x13,  /* ..C.`A.. */
                /* 0300 */  0xC2, 0x27, 0x1A, 0x2A, 0x13, 0x06, 0x75, 0xA8,  /* .'.*..u. */
                /* 0308 */  0x01, 0xAC, 0x5C, 0x61, 0x9E, 0x46, 0xCF, 0xF9,  /* ..\a.F.. */
                /* 0310 */  0x59, 0xC6, 0xA7, 0x1A, 0x1F, 0x4A, 0x8D, 0x63,  /* Y....J.c */
                /* 0318 */  0x88, 0x97, 0x99, 0x87, 0x1A, 0x1F, 0x0B, 0x5E,  /* .......^ */
                /* 0320 */  0x49, 0x7D, 0xA8, 0x31, 0x54, 0x9C, 0x87, 0x1A,  /* I}.1T... */
                /* 0328 */  0x0F, 0x37, 0x50, 0xD4, 0x37, 0x9B, 0x67, 0x1B,  /* .7P.7.g. */
                /* 0330 */  0xA3, 0xC7, 0xF7, 0x0D, 0xD5, 0x10, 0x0F, 0x35,  /* .......5 */
                /* 0338 */  0x4C, 0xF2, 0x4A, 0x35, 0x16, 0x1F, 0x6A, 0xC0,  /* L.J5..j. */
                /* 0340 */  0xF1, 0xFF, 0x3F, 0xD4, 0x00, 0xFC, 0xFF, 0xFF,  /* ..?..... */
                /* 0348 */  0x1F, 0x6A, 0x00, 0x47, 0x47, 0x03, 0x38, 0x47,  /* .j.GG.8G */
                /* 0350 */  0x46, 0xDC, 0xD1, 0x00, 0x5C, 0x87, 0x52, 0xE0,  /* F...\.R. */
                /* 0358 */  0x70, 0x34, 0x00, 0x1E, 0x47, 0x21, 0x30, 0x5F,  /* p4..G!0_ */
                /* 0360 */  0x68, 0x7C, 0x14, 0x02, 0x16, 0xFF, 0xFF, 0xA3,  /* h|...... */
                /* 0368 */  0x10, 0xF8, 0x65, 0x9F, 0x83, 0x50, 0x42, 0x8F,  /* ..e..PB. */
                /* 0370 */  0x42, 0x80, 0xA0, 0xDB, 0xCF, 0x53, 0xC4, 0xB3,  /* B....S.. */
                /* 0378 */  0x8F, 0x2F, 0x3F, 0x0F, 0x04, 0x11, 0x5E, 0xF3,  /* ./?...^. */
                /* 0380 */  0x7D, 0x0A, 0xF2, 0x21, 0xDF, 0x47, 0x21, 0x06,  /* }..!.G!. */
                /* 0388 */  0x63, 0x28, 0x5F, 0x83, 0x7C, 0x14, 0x62, 0x50,  /* c(_.|.bP */
                /* 0390 */  0xAF, 0x41, 0xBE, 0xEF, 0x1B, 0xE4, 0xF1, 0x22,  /* .A....." */
                /* 0398 */  0x48, 0xEC, 0x67, 0x02, 0x1F, 0x85, 0x98, 0xE8,  /* H.g..... */
                /* 03A0 */  0xA3, 0x10, 0xA0, 0xF0, 0xFF, 0x7F, 0x14, 0x02,  /* ........ */
                /* 03A8 */  0xF8, 0xFF, 0xFF, 0x3F, 0x0A, 0x01, 0xCE, 0x02,  /* ...?.... */
                /* 03B0 */  0x1C, 0x0D, 0x40, 0x37, 0xAD, 0x47, 0x21, 0xF0,  /* ..@7.G!. */
                /* 03B8 */  0xDE, 0x59, 0x4E, 0xFB, 0x04, 0x7C, 0x16, 0x02,  /* .YN..|.. */
                /* 03C0 */  0xCC, 0xFE, 0xFF, 0xCF, 0x42, 0xC0, 0xEC, 0x28,  /* ....B..( */
                /* 03C8 */  0x74, 0x14, 0x67, 0xF9, 0x2A, 0xF4, 0x04, 0xF0,  /* t.g.*... */
                /* 03D0 */  0x02, 0x10, 0x23, 0xCC, 0x3B, 0xD0, 0x4B, 0x26,  /* ..#.;.K& */
                /* 03D8 */  0xBB, 0x8B, 0x1B, 0xE7, 0xC9, 0xE5, 0x2C, 0x9E,  /* ......,. */
                /* 03E0 */  0xC4, 0x7D, 0x09, 0xF2, 0x81, 0xE2, 0x59, 0xC8,  /* .}....Y. */
                /* 03E8 */  0x50, 0xA7, 0x1B, 0xF4, 0x8D, 0xDC, 0x03, 0x8B,  /* P....... */
                /* 03F0 */  0x19, 0x3F, 0xC4, 0xF3, 0x90, 0x21, 0x9E, 0x85,  /* .?...!.. */
                /* 03F8 */  0x00, 0x76, 0xFD, 0xFF, 0xCF, 0x42, 0x00, 0xFF,  /* .v...B.. */
                /* 0400 */  0xFF, 0xFF, 0x47, 0x03, 0xF8, 0x2F, 0x00, 0x9F,  /* ..G../.. */
                /* 0408 */  0x85, 0x80, 0xE7, 0x09, 0xE0, 0x41, 0xDB, 0x67,  /* .....A.g */
                /* 0410 */  0x21, 0x80, 0x33, 0x87, 0xCB, 0xF3, 0x7F, 0x05,  /* !.3..... */
                /* 0418 */  0x3A, 0x96, 0xF7, 0x08, 0xCF, 0xFA, 0x24, 0x5F,  /* :.....$_ */
                /* 0420 */  0x2F, 0x3D, 0xD3, 0x87, 0x82, 0x67, 0x21, 0x86,  /* /=...g!. */
                /* 0428 */  0x75, 0x18, 0x3E, 0x0B, 0x31, 0x88, 0x17, 0x4D,  /* u.>.1..M */
                /* 0430 */  0x43, 0xBC, 0x70, 0xFA, 0x30, 0xE0, 0xFF, 0x3F,  /* C.p.0..? */
                /* 0438 */  0x5E, 0xE0, 0x57, 0x4E, 0x03, 0x05, 0x09, 0xF4,  /* ^.WN.... */
                /* 0440 */  0x2C, 0x04, 0x30, 0xFE, 0xFF, 0x7F, 0x16, 0x02,  /* ,.0..... */
                /* 0448 */  0xC8, 0xB8, 0x46, 0x9D, 0x85, 0x80, 0xE5, 0x6D,  /* ..F....m */
                /* 0450 */  0xE5, 0x19, 0xDB, 0xA7, 0x95, 0x04, 0xFF, 0xFF,  /* ........ */
                /* 0458 */  0x67, 0x21, 0xC0, 0x41, 0x2E, 0x23, 0x07, 0x21,  /* g!.A.#.! */
                /* 0460 */  0x4C, 0xC4, 0x87, 0x83, 0x8F, 0x99, 0x80, 0x9E,  /* L....... */
                /* 0468 */  0x29, 0xBE, 0xB8, 0x1B, 0xE3, 0x09, 0xE0, 0x45,  /* )......E */
                /* 0470 */  0xE2, 0x31, 0x93, 0x1D, 0x35, 0x0D, 0xF3, 0x2C,  /* .1..5.., */
                /* 0478 */  0x64, 0xBC, 0xB3, 0x78, 0x0D, 0x78, 0x82, 0xF7,  /* d..x.x.. */
                /* 0480 */  0xE4, 0x9F, 0x85, 0x18, 0xD8, 0x61, 0x05, 0x7B,  /* .....a.{ */
                /* 0488 */  0x14, 0x32, 0xA8, 0xC1, 0x63, 0x87, 0x08, 0x13,  /* .2..c... */
                /* 0490 */  0xE8, 0x59, 0x88, 0xC5, 0x7D, 0xAE, 0xE8, 0x3C,  /* .Y..}..< */
                /* 0498 */  0xE1, 0xB3, 0x10, 0xF0, 0xFE, 0xFF, 0x9F, 0x25,  /* .......% */
                /* 04A0 */  0xE0, 0x5E, 0x0D, 0x9E, 0x85, 0x00, 0x13, 0x87,  /* .^...... */
                /* 04A8 */  0x0D, 0x9F, 0x35, 0xC0, 0x33, 0x7C, 0x8F, 0xEA,  /* ..5.3|.. */
                /* 04B0 */  0x1C, 0x1E, 0x8F, 0x81, 0x7F, 0x56, 0x1D, 0xE7,  /* .....V.. */
                /* 04B8 */  0x04, 0x96, 0x7B, 0xD1, 0xB2, 0x71, 0xA0, 0xA1,  /* ..{..q.. */
                /* 04C0 */  0x23, 0xB2, 0x3A, 0x20, 0x8D, 0x0D, 0x73, 0x29,  /* #.: ..s) */
                /* 04C8 */  0x89, 0x7C, 0x72, 0x6C, 0xD4, 0x56, 0x04, 0xA7,  /* .|rl.V.. */
                /* 04D0 */  0x33, 0x93, 0x4F, 0x00, 0xD6, 0x42, 0x21, 0x05,  /* 3.O..B!. */
                /* 04D8 */  0x34, 0x1A, 0x8B, 0xE1, 0x9D, 0xF9, 0xE8, 0x44,  /* 4......D */
                /* 04E0 */  0x41, 0x0C, 0xE8, 0xE3, 0x90, 0x6D, 0x1C, 0x0A,  /* A....m.. */
                /* 04E8 */  0x50, 0x7B, 0xD1, 0x14, 0xC8, 0x39, 0x07, 0xA3,  /* P{...9.. */
                /* 04F0 */  0x7F, 0x76, 0x74, 0x36, 0xBE, 0x13, 0x70, 0x0D,  /* .vt6..p. */
                /* 04F8 */  0x10, 0x3A, 0x25, 0x18, 0xDA, 0x6A, 0x04, 0xFC,  /* .:%..j.. */
                /* 0500 */  0xFF, 0x67, 0x89, 0x01, 0x33, 0xFE, 0x53, 0x8C,  /* .g..3.S. */
                /* 0508 */  0x09, 0x7C, 0x8E, 0xC1, 0x1F, 0x0C, 0xF0, 0x03,  /* .|...... */
                /* 0510 */  0x7F, 0x31, 0xA8, 0xFA, 0x5E, 0xA0, 0xFB, 0x82,  /* .1..^... */
                /* 0518 */  0xD5, 0xDD, 0x64, 0x20, 0xCC, 0xC8, 0x04, 0xF5,  /* ..d .... */
                /* 0520 */  0x9D, 0x0E, 0x40, 0x01, 0xE4, 0x0B, 0x81, 0xCF,  /* ..@..... */
                /* 0528 */  0x51, 0x0F, 0x05, 0x6C, 0x22, 0x21, 0xC2, 0x44,  /* Q..l"!.D */
                /* 0530 */  0x33, 0x3A, 0x62, 0xC2, 0xA8, 0xE8, 0x13, 0xA6,  /* 3:b..... */
                /* 0538 */  0x20, 0x9E, 0xB0, 0x63, 0x4D, 0x18, 0x3D, 0x13,  /*  ..cM.=. */
                /* 0540 */  0x5F, 0x74, 0xD8, 0x88, 0x31, 0x21, 0xAE, 0x1E,  /* _t..1!.. */
                /* 0548 */  0xD0, 0x26, 0x18, 0xD4, 0x97, 0x22, 0x58, 0x43,  /* .&..."XC */
                /* 0550 */  0xE6, 0x63, 0xF1, 0x05, 0x02, 0x37, 0x65, 0x30,  /* .c...7e0 */
                /* 0558 */  0xCE, 0x89, 0x5D, 0x13, 0x7C, 0xD9, 0xC1, 0xCD,  /* ..].|... */
                /* 0560 */  0x19, 0x8C, 0xF0, 0x98, 0xBB, 0x18, 0xBF, 0x3A,  /* .......: */
                /* 0568 */  0x79, 0x74, 0xFC, 0xA0, 0xE0, 0x1B, 0x0E, 0xC3,  /* yt...... */
                /* 0570 */  0x7E, 0x32, 0xF3, 0x8C, 0xDE, 0xCB, 0x7C, 0x8D,  /* ~2....|. */
                /* 0578 */  0xC3, 0xC0, 0x7A, 0xBC, 0x1C, 0xD6, 0x68, 0x61,  /* ..z...ha */
                /* 0580 */  0x0F, 0xED, 0x3D, 0xC4, 0xFF, 0xFF, 0x43, 0x8C,  /* ..=...C. */
                /* 0588 */  0xCF, 0x13, 0xC6, 0x08, 0xEB, 0xDB, 0x0B, 0x38,  /* .......8 */
                /* 0590 */  0xEE, 0x59, 0xF0, 0xEF, 0x1A, 0xE0, 0xB9, 0x84,  /* .Y...... */
                /* 0598 */  0xF8, 0xAE, 0x01, 0x30, 0xF0, 0xFF, 0x7F, 0xD7,  /* ...0.... */
                /* 05A0 */  0x00, 0x4E, 0xD7, 0x04, 0xDF, 0x35, 0x80, 0xF7,  /* .N...5.. */
                /* 05A8 */  0xD0, 0x7D, 0xD7, 0x00, 0xAE, 0xD9, 0xEF, 0x1A,  /* .}...... */
                /* 05B0 */  0xA8, 0x63, 0x80, 0x15, 0xDE, 0x35, 0xA0, 0x5D,  /* .c...5.] */
                /* 05B8 */  0xD9, 0xDE, 0xD7, 0x9E, 0xB0, 0xAC, 0xE9, 0xB2,  /* ........ */
                /* 05C0 */  0x81, 0x52, 0x73, 0xD9, 0x00, 0x14, 0xFC, 0xFF,  /* .Rs..... */
                /* 05C8 */  0x2F, 0x1B, 0x80, 0x01, 0x29, 0x13, 0x46, 0x85,  /* /...).F. */
                /* 05D0 */  0x9F, 0x30, 0x05, 0xF1, 0x84, 0x1D, 0xEC, 0xB2,  /* .0...... */
                /* 05D8 */  0x01, 0x8A, 0x18, 0x97, 0x0D, 0xD0, 0x8F, 0xED,  /* ........ */
                /* 05E0 */  0x65, 0x03, 0x18, 0xDC, 0x13, 0xF8, 0x6D, 0x03,  /* e.....m. */
                /* 05E8 */  0x78, 0x43, 0xFA, 0xB6, 0x01, 0xD6, 0xFF, 0xFF,  /* xC...... */
                /* 05F0 */  0x6D, 0x03, 0xAC, 0xF9, 0x6F, 0x1B, 0x28, 0x0E,  /* m...o.(. */
                /* 05F8 */  0xAB, 0xBC, 0x6D, 0x40, 0x3C, 0xC9, 0x33, 0x02,  /* ..m@<.3. */
                /* 0600 */  0xAB, 0xBA, 0x6E, 0xA0, 0xF4, 0x5C, 0x37, 0x00,  /* ..n..\7. */
                /* 0608 */  0x12, 0x88, 0x99, 0x30, 0x2A, 0xFE, 0x84, 0x29,  /* ...0*..) */
                /* 0610 */  0x88, 0x27, 0xEC, 0x68, 0xD7, 0x0D, 0x50, 0x04,  /* .'.h..P. */
                /* 0618 */  0xB9, 0x6E, 0x80, 0x7E, 0x5E, 0x09, 0xFE, 0xFF,  /* .n.~^... */
                /* 0620 */  0xAF, 0x1B, 0xC0, 0xE0, 0xA2, 0x80, 0xB9, 0x6F,  /* .......o */
                /* 0628 */  0x00, 0x6F, 0x58, 0x7E, 0xDF, 0x00, 0x7C, 0xDC,  /* .oX~..|. */
                /* 0630 */  0xC4, 0x31, 0xF7, 0x0D, 0xC0, 0xCC, 0xFF, 0xFF,  /* .1...... */
                /* 0638 */  0xBE, 0x01, 0xB0, 0xE7, 0xA2, 0x80, 0xBB, 0x6F,  /* .......o */
                /* 0640 */  0x00, 0xEF, 0x8B, 0xB4, 0xEF, 0x1B, 0x60, 0xFE,  /* ......`. */
                /* 0648 */  0xFF, 0xDF, 0x37, 0xC0, 0x28, 0x6D, 0xFD, 0x1E,  /* ..7.(m.. */
                /* 0650 */  0x1C, 0x3D, 0x21, 0x78, 0x7C, 0xB8, 0xFB, 0xA5,  /* .=!x|... */
                /* 0658 */  0xC7, 0xE7, 0xBB, 0x39, 0x38, 0x06, 0x79, 0x8C,  /* ...98.y. */
                /* 0660 */  0x87, 0x76, 0xC0, 0xAF, 0xEF, 0x9E, 0x98, 0xEF,  /* .v...... */
                /* 0668 */  0xE6, 0xC0, 0xFF, 0x4C, 0x70, 0x3C, 0x18, 0x68,  /* ...Lp<.h */
                /* 0670 */  0x1C, 0x62, 0xAB, 0x97, 0x06, 0x72, 0x34, 0x38,  /* .b...r48 */
                /* 0678 */  0x3F, 0xDC, 0x19, 0x81, 0x61, 0x15, 0x7F, 0xF2,  /* ?...a... */
                /* 0680 */  0x47, 0x38, 0xC7, 0xD0, 0xD9, 0xE1, 0x20, 0xB1,  /* G8.... . */
                /* 0688 */  0x83, 0xE0, 0xC1, 0x56, 0x6D, 0x02, 0x85, 0x86,  /* ...Vm... */
                /* 0690 */  0x50, 0x14, 0x18, 0x14, 0x8B, 0x0F, 0x18, 0xF8,  /* P....... */
                /* 0698 */  0x61, 0xB3, 0xB3, 0x00, 0x93, 0x04, 0x87, 0x3A,  /* a......: */
                /* 06A0 */  0x02, 0xF8, 0x3E, 0xD1, 0xFC, 0x38, 0x74, 0x37,  /* ..>..8t7 */
                /* 06A8 */  0x38, 0x54, 0x8F, 0xE5, 0xA1, 0x80, 0x9E, 0x01,  /* 8T...... */
                /* 06B0 */  0x71, 0xC7, 0x0C, 0x32, 0x69, 0xCF, 0x28, 0xE2,  /* q..2i.(. */
                /* 06B8 */  0x53, 0xC2, 0x29, 0x85, 0x49, 0xE0, 0xF3, 0x03,  /* S.).I... */
                /* 06C0 */  0x43, 0xE3, 0x04, 0xAF, 0x0D, 0xA1, 0xF9, 0xFF,  /* C....... */
                /* 06C8 */  0xFF, 0xA4, 0xC0, 0x3C, 0xDF, 0x31, 0x04, 0x6C,  /* ...<.1.l */
                /* 06D0 */  0x02, 0xBB, 0xBF, 0x64, 0xC8, 0xDA, 0xC0, 0x75,  /* ...d...u */
                /* 06D8 */  0x4B, 0x32, 0x44, 0x6F, 0x38, 0xB2, 0x85, 0xA2,  /* K2Do8... */
                /* 06E0 */  0xE9, 0x44, 0x79, 0xDF, 0x88, 0x62, 0x67, 0x08,  /* .Dy..bg. */
                /* 06E8 */  0xC2, 0x88, 0x12, 0x2C, 0xC8, 0xA3, 0x42, 0xAC,  /* ...,..B. */
                /* 06F0 */  0x28, 0x2F, 0x05, 0x46, 0x88, 0x18, 0xE2, 0x95,  /* (/.F.... */
                /* 06F8 */  0x23, 0xD0, 0x09, 0x87, 0x0F, 0xF2, 0xD8, 0x14,  /* #....... */
                /* 0700 */  0xA7, 0xFD, 0x41, 0x90, 0x58, 0x4F, 0x02, 0x8D,  /* ..A.XO.. */
                /* 0708 */  0xC5, 0x91, 0x46, 0x83, 0x3A, 0x07, 0x78, 0xB8,  /* ..F.:.x. */
                /* 0710 */  0x3E, 0xC4, 0x78, 0xF8, 0x0F, 0x21, 0x06, 0x39,  /* >.x..!.9 */
                /* 0718 */  0xC8, 0x73, 0x7B, 0x54, 0x38, 0x4E, 0x5F, 0x25,  /* .s{T8N_% */
                /* 0720 */  0x4C, 0xF0, 0x02, 0xE0, 0x83, 0x0A, 0x1C, 0xD7,  /* L....... */
                /* 0728 */  0x80, 0x9A, 0xF1, 0x33, 0x06, 0x58, 0x8E, 0xE3,  /* ...3.X.. */
                /* 0730 */  0x3E, 0xA9, 0xC0, 0x1D, 0x8F, 0xEF, 0x07, 0x6C,  /* >......l */
                /* 0738 */  0xC2, 0x09, 0x2C, 0x7F, 0x10, 0xA8, 0xE3, 0x0C,  /* ..,..... */
                /* 0740 */  0x9F, 0xE7, 0x0B, 0x8B, 0x21, 0x1F, 0x13, 0x4C,  /* ....!..L */
                /* 0748 */  0x60, 0xB1, 0x27, 0x1B, 0x3A, 0x1E, 0xF0, 0xDF,  /* `.'.:... */
                /* 0750 */  0x63, 0x1E, 0x2F, 0x7C, 0x32, 0xF1, 0x7C, 0x4D,  /* c./|2.|M */
                /* 0758 */  0x30, 0x22, 0x84, 0x9C, 0x8C, 0x07, 0x7D, 0x87,  /* 0"....}. */
                /* 0760 */  0xC0, 0x5C, 0x6F, 0xD8, 0xB9, 0x85, 0x8B, 0x3A,  /* .\o....: */
                /* 0768 */  0x68, 0xA0, 0x4E, 0x0B, 0x3E, 0x28, 0xB0, 0x9B,  /* h.N.>(.. */
                /* 0770 */  0x11, 0xE6, 0xB8, 0xCE, 0xCF, 0x2A, 0x60, 0xF8,  /* .....*`. */
                /* 0778 */  0xFF, 0x9F, 0x55, 0x60, 0x8F, 0x10, 0xFE, 0xED,  /* ..U`.... */
                /* 0780 */  0xC1, 0xF3, 0xF2, 0x95, 0xE1, 0xD5, 0x21, 0x81,  /* ......!. */
                /* 0788 */  0x43, 0x8E, 0x10, 0x3D, 0x2E, 0x8F, 0x10, 0x73,  /* C..=...s */
                /* 0790 */  0x3E, 0xC2, 0x0C, 0x11, 0x5C, 0x67, 0x01, 0x70,  /* >...\g.p */
                /* 0798 */  0x0C, 0x11, 0xF8, 0x1C, 0x70, 0xC0, 0x71, 0x69,  /* ....p.qi */
                /* 07A0 */  0xE2, 0x03, 0xF5, 0x01, 0x07, 0x70, 0x70, 0x4D,  /* .....ppM */
                /* 07A8 */  0xC3, 0x1D, 0x70, 0xC0, 0x71, 0x16, 0x60, 0xFF,  /* ..p.q.`. */
                /* 07B0 */  0xFF, 0xC3, 0x0D, 0x2C, 0x49, 0x26, 0x0E, 0x23,  /* ...,I&.# */
                /* 07B8 */  0x18, 0x11, 0x30, 0x28, 0x02, 0x02, 0xA4, 0xB3,  /* ..0(.... */
                /* 07C0 */  0x80, 0x0F, 0x29, 0x00, 0x1F, 0xAE, 0x0C, 0x0F,  /* ..)..... */
                /* 07C8 */  0x29, 0xD8, 0x93, 0x86, 0x07, 0x8E, 0x1B, 0x85,  /* )....... */
                /* 07D0 */  0x07, 0x8D, 0x0B, 0x30, 0x68, 0x7A, 0xE2, 0x80,  /* ...0hz.. */
                /* 07D8 */  0x7F, 0x4C, 0xF0, 0x19, 0x05, 0x1C, 0xE3, 0x06,  /* .L...... */
                /* 07E0 */  0xDF, 0x2A, 0x0C, 0xFC, 0xFF, 0x3F, 0x30, 0xCC,  /* .*...?0. */
                /* 07E8 */  0xE1, 0xC2, 0x63, 0x39, 0x8A, 0xA0, 0x07, 0x1E,  /* ..c9.... */
                /* 07F0 */  0xD4, 0xF7, 0x8C, 0x33, 0xF7, 0x24, 0x8F, 0xD1,  /* ...3.$.. */
                /* 07F8 */  0x51, 0x0F, 0x27, 0xF4, 0xE4, 0x85, 0x3B, 0x57,  /* Q.'...;W */
                /* 0800 */  0xF9, 0x0A, 0x71, 0x14, 0x18, 0xB8, 0x77, 0x29,  /* ..q...w) */
                /* 0808 */  0x8F, 0xCF, 0x17, 0x2B, 0xC3, 0x63, 0x46, 0xFB,  /* ...+.cF. */
                /* 0810 */  0x1E, 0x72, 0xD6, 0x11, 0x02, 0xE2, 0x2F, 0x75,  /* .r..../u */
                /* 0818 */  0x6C, 0xC0, 0x60, 0x39, 0x18, 0x00, 0x87, 0x01,  /* l.`9.... */
                /* 0820 */  0xE3, 0x13, 0x0D, 0x58, 0x67, 0x1B, 0x3C, 0xF4,  /* ...Xg.<. */
                /* 0828 */  0x69, 0x31, 0xC4, 0xE3, 0x0B, 0xFB, 0x56, 0x61,  /* i1....Va */
                /* 0830 */  0x82, 0xEA, 0x41, 0x75, 0x12, 0xF4, 0xD0, 0xC0,  /* ..Au.... */
                /* 0838 */  0x01, 0xE8, 0xA1, 0xC1, 0x3F, 0xB9, 0x90, 0xFB,  /* ....?... */
                /* 0840 */  0x2B, 0x1D, 0x82, 0xB5, 0xE2, 0x69, 0xDE, 0x47,  /* +....i.G */
                /* 0848 */  0x1E, 0xF3, 0xDC, 0xA2, 0xBC, 0x0D, 0x3C, 0x07,  /* ......<. */
                /* 0850 */  0xF0, 0xD3, 0x82, 0x87, 0xE3, 0x63, 0x81, 0xC7,  /* .....c.. */
                /* 0858 */  0xE9, 0x4B, 0x58, 0x82, 0xF7, 0x1A, 0x9F, 0x6C,  /* .KX....l */
                /* 0860 */  0x1E, 0x5C, 0x58, 0xB2, 0x21, 0xA0, 0x06, 0xEB,  /* .\X.!... */
                /* 0868 */  0x21, 0x60, 0xA6, 0x9A, 0xC0, 0x49, 0x46, 0x80,  /* !`...IF. */
                /* 0870 */  0xCA, 0x00, 0xA1, 0x1B, 0xCB, 0xE9, 0x3E, 0x8B,  /* ......>. */
                /* 0878 */  0x84, 0x38, 0xCD, 0x47, 0x99, 0xC7, 0x02, 0x8F,  /* .8.G.... */
                /* 0880 */  0xF5, 0xC1, 0xC0, 0xFF, 0x7F, 0xCD, 0x23, 0xD4,  /* ......#. */
                /* 0888 */  0x7D, 0xCD, 0x33, 0x7B, 0x3A, 0xC0, 0xAC, 0x22,  /* }.3{:.." */
                /* 0890 */  0xDC, 0x7B, 0xCE, 0x1B, 0x86, 0xD1, 0x9E, 0x2D,  /* .{.....- */
                /* 0898 */  0x7C, 0xCD, 0x78, 0xD6, 0x34, 0x42, 0x38, 0x76,  /* |.x.4B8v */
                /* 08A0 */  0x83, 0xF3, 0x48, 0x8C, 0xF0, 0x82, 0xC0, 0x4E,  /* ..H....N */
                /* 08A8 */  0x0C, 0x0F, 0x30, 0xC6, 0x39, 0x79, 0xC3, 0xFA,  /* ..0.9y.. */
                /* 08B0 */  0xC2, 0xCB, 0x40, 0x83, 0x19, 0xDB, 0x97, 0x01,  /* ..@..... */
                /* 08B8 */  0x36, 0x2A, 0xDF, 0x88, 0xC0, 0x97, 0xFC, 0x62,  /* 6*.....b */
                /* 08C0 */  0x00, 0x65, 0x16, 0xBE, 0x9E, 0xF8, 0xA0, 0xC4,  /* .e...... */
                /* 08C8 */  0x2E, 0x06, 0x2C, 0xE5, 0xC5, 0x00, 0x54, 0x37,  /* ..,...T7 */
                /* 08D0 */  0x0C, 0x5F, 0x0C, 0xE0, 0x5F, 0x89, 0x5E, 0x0C,  /* ._.._.^. */
                /* 08D8 */  0xC0, 0x70, 0x71, 0xF2, 0x3D, 0xC0, 0x1E, 0xEE,  /* .pq.=... */
                /* 08E0 */  0xA3, 0x74, 0x9C, 0xBE, 0xFD, 0xBD, 0x19, 0xF8,  /* .t...... */
                /* 08E8 */  0x6C, 0xC0, 0x60, 0x3C, 0xC3, 0x30, 0xC6, 0x08,  /* l.`<.0.. */
                /* 08F0 */  0xE3, 0x51, 0x86, 0x31, 0xC1, 0xDC, 0xB7, 0x03,  /* .Q.1.... */
                /* 08F8 */  0xE8, 0x39, 0x87, 0x81, 0x4A, 0x78, 0x3B, 0x80,  /* .9..Jx;. */
                /* 0900 */  0x72, 0x0E, 0xE8, 0xF2, 0x68, 0x42, 0x4F, 0x01,  /* r...hBO. */
                /* 0908 */  0x4F, 0x07, 0x3E, 0x29, 0x1A, 0xA2, 0xAF, 0xB1,  /* O.>).... */
                /* 0910 */  0x0A, 0x26, 0x50, 0xC4, 0x07, 0x0D, 0x3E, 0xB5,  /* .&P...>. */
                /* 0918 */  0x28, 0x3E, 0x15, 0x78, 0x2D, 0xCF, 0x4E, 0xE1,  /* (>.x-.N. */
                /* 0920 */  0xE2, 0x9C, 0x89, 0xA7, 0x6A, 0x38, 0x03, 0xBD,  /* ....j8.. */
                /* 0928 */  0xE6, 0x86, 0x63, 0xFF, 0x7F, 0x38, 0xFC, 0xA9,  /* ..c..8.. */
                /* 0930 */  0xE0, 0x35, 0x80, 0x1D, 0x24, 0x3D, 0x2D, 0x23,  /* .5..$=-# */
                /* 0938 */  0xC2, 0x38, 0xA4, 0x3C, 0x32, 0xF8, 0xB6, 0x18,  /* .8.<2... */
                /* 0940 */  0xC7, 0x90, 0x0F, 0x91, 0xBE, 0x13, 0x18, 0xF2,  /* ........ */
                /* 0948 */  0x21, 0xEF, 0x79, 0xC7, 0xC0, 0xAF, 0x08, 0x71,  /* !.y....q */
                /* 0950 */  0x9E, 0xB2, 0x7C, 0x67, 0xF0, 0x65, 0x01, 0x7C,  /* ..|g.e.| */
                /* 0958 */  0x91, 0x2E, 0x0B, 0x68, 0x68, 0x9F, 0x64, 0x7C,  /* ...hh.d| */
                /* 0960 */  0x41, 0x30, 0xEC, 0x89, 0xB3, 0x00, 0x77, 0x05,  /* A0....w. */
                /* 0968 */  0x50, 0x81, 0xFA, 0xAE, 0x00, 0xFF, 0x42, 0xF0,  /* P.....B. */
                /* 0970 */  0xAE, 0x00, 0x86, 0x79, 0xF9, 0x56, 0xC0, 0x35,  /* ...y.V.5 */
                /* 0978 */  0x1D, 0x4A, 0xD0, 0x67, 0x12, 0x5F, 0x17, 0x70,  /* .J.g._.p */
                /* 0980 */  0x53, 0x64, 0xA9, 0x8E, 0x0A, 0xD0, 0x53, 0x4C,  /* Sd....SL */
                /* 0988 */  0x02, 0x75, 0x47, 0xF7, 0x51, 0x01, 0xC6, 0x4D,  /* .uG.Q..M */
                /* 0990 */  0xD9, 0x07, 0x54, 0x76, 0x5A, 0x60, 0x67, 0x21,  /* ..TvZ`g! */
                /* 0998 */  0x76, 0x1D, 0xC1, 0x5D, 0x49, 0x18, 0xCA, 0xB3,  /* v..]I... */
                /* 09A0 */  0x81, 0x2F, 0x59, 0xFC, 0x70, 0x00, 0x03, 0xDC,  /* ./Y.p... */
                /* 09A8 */  0xB3, 0x38, 0xC4, 0x08, 0xB1, 0xD9, 0x81, 0xEB,  /* .8...... */
                /* 09B0 */  0x75, 0xD2, 0x70, 0x2F, 0x44, 0xEC, 0xFF, 0x7F,  /* u.p/D... */
                /* 09B8 */  0x32, 0x00, 0xE3, 0x51, 0x1B, 0x1C, 0x27, 0x9D,  /* 2..Q..'. */
                /* 09C0 */  0xF0, 0x91, 0x9E, 0x59, 0xF8, 0x49, 0x19, 0x30,  /* ...Y.I.0 */
                /* 09C8 */  0x71, 0xF2, 0x03, 0xE3, 0xC9, 0x1A, 0xC6, 0x00,  /* q....... */
                /* 09D0 */  0xB8, 0xBC, 0x57, 0x95, 0x81, 0xFC, 0x43, 0x90,  /* ..W...C. */
                /* 09D8 */  0x20, 0x18, 0xD4, 0x29, 0x19, 0x38, 0x1C, 0xC5,  /*  ..).8.. */
                /* 09E0 */  0x70, 0xA7, 0x64, 0x78, 0x50, 0xF8, 0xC3, 0x00,  /* p.dxP... */
                /* 09E8 */  0xE6, 0x46, 0xE8, 0x7B, 0x82, 0xA1, 0xDE, 0x93,  /* .F.{.... */
                /* 09F0 */  0x0E, 0xE3, 0x91, 0xD0, 0x04, 0x3E, 0x2D, 0xC3,  /* .....>-. */
                /* 09F8 */  0xFA, 0xFF, 0x9F, 0x96, 0xF9, 0x39, 0x21, 0xFE,  /* .....9!. */
                /* 0A00 */  0x53, 0xCE, 0xFB, 0xC5, 0x83, 0xB2, 0x31, 0xA2,  /* S.....1. */
                /* 0A08 */  0xBC, 0x2A, 0xFB, 0x9C, 0x69, 0x14, 0x76, 0x4B,  /* .*..i.vK */
                /* 0A10 */  0x7E, 0x73, 0x78, 0x55, 0xF6, 0x69, 0xF9, 0xDC,  /* ~sxU.i.. */
                /* 0A18 */  0x22, 0xBD, 0x2F, 0x7B, 0xE4, 0x31, 0xE3, 0xC4,  /* "./{.1.. */
                /* 0A20 */  0x0A, 0x12, 0xE8, 0x7D, 0x23, 0x4A, 0xD8, 0x18,  /* ...}#J.. */
                /* 0A28 */  0xE1, 0x02, 0x3D, 0x2D, 0xB3, 0x63, 0xBB, 0x87,  /* ..=-.c.. */
                /* 0A30 */  0xEC, 0xB3, 0x02, 0xEE, 0xEC, 0x00, 0x77, 0x7A,  /* ......wz */
                /* 0A38 */  0xFC, 0xF4, 0x00, 0x38, 0x01, 0x7A, 0x7A, 0x00,  /* ...8.zz. */
                /* 0A40 */  0xDB, 0x79, 0x03, 0xEE, 0x81, 0x00, 0x71, 0xFC,  /* .y....q. */
                /* 0A48 */  0x47, 0x05, 0xBF, 0xB2, 0x50, 0x38, 0x7E, 0x6C,  /* G...P8~l */
                /* 0A50 */  0xE7, 0xC7, 0x12, 0xDC, 0xE1, 0xC0, 0x47, 0x06,  /* ......G. */
                /* 0A58 */  0x1F, 0x20, 0x71, 0x43, 0xF1, 0xA1, 0x02, 0x79,  /* . qC...y */
                /* 0A60 */  0x16, 0x00, 0xC5, 0xE8, 0xD9, 0x08, 0xD8, 0x0D,  /* ........ */
                /* 0A68 */  0xE6, 0xA5, 0x25, 0xCA, 0xFF, 0xFF, 0xBD, 0x81,  /* ..%..... */
                /* 0A70 */  0x9D, 0x52, 0x70, 0x07, 0x01, 0xF0, 0x1D, 0x03,  /* .Rp..... */
                /* 0A78 */  0xC0, 0x3B, 0x18, 0x2E, 0x6B, 0xCC, 0x28, 0x21,  /* .;..k.(! */
                /* 0A80 */  0x30, 0x1A, 0x33, 0xEE, 0x10, 0xC2, 0x4F, 0x04,  /* 0.3...O. */
                /* 0A88 */  0xB8, 0x31, 0x7B, 0xDC, 0x1E, 0x33, 0xEE, 0x38,  /* .1{..3.8 */
                /* 0A90 */  0xCB, 0x47, 0xF5, 0x94, 0x11, 0xCA, 0x07, 0x0E,  /* .G...... */
                /* 0A98 */  0x76, 0xCE, 0x78, 0x23, 0xE0, 0x43, 0x07, 0x1E,  /* v.x#.C.. */
                /* 0AA0 */  0x07, 0x18, 0xDC, 0x91, 0x02, 0x8C, 0x97, 0x03,  /* ........ */
                /* 0AA8 */  0x36, 0x76, 0x70, 0x07, 0x21, 0xA7, 0x40, 0x96,  /* 6vp.!.@. */
                /* 0AB0 */  0x0E, 0xA3, 0xB1, 0xE3, 0x64, 0x03, 0xE9, 0x18,  /* ....d... */
                /* 0AB8 */  0xE3, 0x43, 0xAE, 0xC7, 0x8E, 0x1B, 0xAC, 0xC7,  /* .C...... */
                /* 0AC0 */  0x8E, 0x3B, 0xBE, 0x60, 0xFF, 0xFF, 0xC7, 0x17,  /* .;.`.... */
                /* 0AC8 */  0x30, 0x8C, 0x81, 0x8B, 0x1F, 0x06, 0xFA, 0xE6,  /* 0....... */
                /* 0AD0 */  0xE7, 0xD1, 0x19, 0xDC, 0xC3, 0xF6, 0x09, 0x26,  /* .......& */
                /* 0AD8 */  0xC6, 0x1B, 0x4C, 0x88, 0x47, 0x96, 0x97, 0x96,  /* ..L.G... */
                /* 0AE0 */  0x08, 0x0F, 0x2D, 0xBE, 0xB9, 0xBC, 0xB4, 0xF8,  /* ..-..... */
                /* 0AE8 */  0x16, 0x63, 0x94, 0x10, 0x11, 0x0E, 0x26, 0xCE,  /* .c....&. */
                /* 0AF0 */  0x13, 0x8C, 0x11, 0x0E, 0x3C, 0x8A, 0x21, 0x22,  /* ....<.!" */
                /* 0AF8 */  0x9C, 0x40, 0x88, 0x93, 0x3E, 0xD9, 0x20, 0xE1,  /* .@..>. . */
                /* 0B00 */  0x63, 0x84, 0x8D, 0x16, 0xE5, 0x09, 0x86, 0x8D,  /* c....... */
                /* 0B08 */  0x85, 0x9F, 0x57, 0x3C, 0x78, 0x7E, 0x5A, 0xF3,  /* ..W<x~Z. */
                /* 0B10 */  0x5D, 0xD0, 0x93, 0x39, 0xC7, 0x87, 0x2C, 0x4F,  /* ]..9..,O */
                /* 0B18 */  0xED, 0x71, 0xD2, 0x87, 0x59, 0xDC, 0xA0, 0x1E,  /* .q..Y... */
                /* 0B20 */  0x1C, 0xD9, 0x5D, 0xC7, 0xC7, 0x6B, 0xEC, 0x29,  /* ..]..k.) */
                /* 0B28 */  0xC8, 0x43, 0xE0, 0x27, 0x02, 0x5F, 0x10, 0x3D,  /* .C.'._.= */
                /* 0B30 */  0x59, 0xDF, 0xF5, 0xD8, 0xBD, 0xCC, 0x18, 0xD5,  /* Y....... */
                /* 0B38 */  0x4F, 0x01, 0x75, 0x4C, 0x39, 0x83, 0x57, 0x08,  /* O.uL9.W. */
                /* 0B40 */  0x76, 0xCF, 0xF3, 0x21, 0xDB, 0x77, 0x49, 0x36,  /* v..!.wI6 */
                /* 0B48 */  0x0A, 0xDC, 0x21, 0xC1, 0x67, 0x24, 0x7E, 0xAA,  /* ..!.g$~. */
                /* 0B50 */  0xF0, 0x30, 0x3C, 0x0A, 0x18, 0x33, 0x78, 0x47,  /* .0<..3xG */
                /* 0B58 */  0x38, 0xB4, 0x10, 0x07, 0xFC, 0xBE, 0xCB, 0x86,  /* 8....... */
                /* 0B60 */  0x1A, 0xE3, 0xF4, 0x7C, 0xFE, 0x60, 0x83, 0x80,  /* ...|.`.. */
                /* 0B68 */  0x0F, 0x75, 0xA8, 0x1E, 0xE6, 0x51, 0xBD, 0x14,  /* .u...Q.. */
                /* 0B70 */  0x32, 0x9C, 0xB3, 0x83, 0x3B, 0x08, 0xEC, 0xF1,  /* 2...;... */
                /* 0B78 */  0xC3, 0x83, 0xE0, 0x37, 0x4B, 0x3E, 0x08, 0x76,  /* ...7K>.v */
                /* 0B80 */  0xBE, 0x79, 0x83, 0x33, 0xC8, 0xFF, 0xFF, 0x18,  /* .y.3.... */
                /* 0B88 */  0x60, 0x9F, 0xA9, 0x7C, 0x34, 0x41, 0x1C, 0x01,  /* `..|4A.. */
                /* 0B90 */  0xD1, 0xE7, 0x0F, 0x8F, 0xE1, 0x4D, 0x8E, 0x0F,  /* .....M.. */
                /* 0B98 */  0x07, 0x7B, 0xF4, 0xC0, 0x9D, 0x44, 0xE0, 0x1E,  /* .{...D.. */
                /* 0BA0 */  0xBB, 0x0E, 0xDA, 0xD7, 0x38, 0x5F, 0xB4, 0x60,  /* ....8_.` */
                /* 0BA8 */  0xDC, 0xF7, 0x9E, 0x45, 0xC0, 0x8F, 0xF1, 0xD8,  /* ...E.... */
                /* 0BB0 */  0x02, 0x8E, 0x43, 0x09, 0xB8, 0x83, 0x1D, 0xD7,  /* ..C..... */
                /* 0BB8 */  0x38, 0x84, 0xA2, 0xC0, 0xE8, 0x50, 0x82, 0x8B,  /* 8....P.. */
                /* 0BC0 */  0x01, 0x24, 0x18, 0xC7, 0x38, 0xA3, 0xA1, 0x2F,  /* .$..8../ */
                /* 0BC8 */  0x91, 0x3E, 0xA4, 0xC1, 0x19, 0x34, 0xEC, 0x79,  /* .>...4.y */
                /* 0BD0 */  0x3E, 0xA1, 0x70, 0x7B, 0x02, 0x14, 0x9D, 0x50,  /* >.p{...P */
                /* 0BD8 */  0x40, 0x86, 0xFB, 0x0C, 0x82, 0x3D, 0x21, 0xF0,  /* @....=!. */
                /* 0BE0 */  0x33, 0x08, 0xFB, 0xFF, 0x1F, 0x1C, 0x3D, 0xEE,  /* 3.....=. */
                /* 0BE8 */  0xF7, 0x46, 0x9F, 0x1A, 0xD9, 0xDC, 0x1F, 0x02,  /* .F...... */
                /* 0BF0 */  0x4E, 0xE0, 0xDC, 0xD9, 0xA9, 0x19, 0x77, 0x66,  /* N.....wf */
                /* 0BF8 */  0xC0, 0x9E, 0x3F, 0x3C, 0x04, 0x7E, 0x2E, 0xF0,  /* ..?<.~.. */
                /* 0C00 */  0xF0, 0x3D, 0x04, 0xFC, 0xE0, 0x1F, 0x98, 0x0D,  /* .=...... */
                /* 0C08 */  0x0E, 0xC6, 0x53, 0x84, 0xAF, 0x1D, 0x1C, 0x9C,  /* ..S..... */
                /* 0C10 */  0x9F, 0x06, 0x0C, 0xCE, 0x5F, 0xA1, 0x3E, 0xCF,  /* ...._.>. */
                /* 0C18 */  0x33, 0x70, 0xEC, 0xA9, 0xD7, 0xF7, 0x0E, 0xCF,  /* 3p...... */
                /* 0C20 */  0xD7, 0x87, 0x0A, 0xFC, 0x4D, 0xCF, 0x87, 0x0A,  /* ....M... */
                /* 0C28 */  0x70, 0x1C, 0x1E, 0xF8, 0x61, 0x85, 0x0D, 0xE1,  /* p...a... */
                /* 0C30 */  0x51, 0x00, 0x7F, 0x6A, 0xF1, 0xF1, 0x2F, 0xCE,  /* Q..j../. */
                /* 0C38 */  0x53, 0x04, 0xBB, 0x8D, 0x60, 0x0F, 0x17, 0x80,  /* S...`... */
                /* 0C40 */  0xA3, 0x68, 0x67, 0x31, 0x54, 0x98, 0xB3, 0x18,  /* .hg1T... */
                /* 0C48 */  0xF9, 0xFF, 0x9F, 0xA3, 0x50, 0x67, 0x31, 0x7A,  /* ....Pg1z */
                /* 0C50 */  0xB8, 0x00, 0x5C, 0x08, 0x3E, 0x1E, 0x80, 0xE6,  /* ..\.>... */
                /* 0C58 */  0x20, 0xF0, 0xB8, 0xE0, 0x0B, 0xC1, 0x91, 0x1C,  /*  ....... */
                /* 0C60 */  0xC8, 0xD3, 0x01, 0xE0, 0x53, 0x1E, 0x09, 0x3D,  /* ....S..= */
                /* 0C68 */  0x1F, 0x59, 0x10, 0x0C, 0xEA, 0x7C, 0xE0, 0x13,  /* .Y...|.. */
                /* 0C70 */  0x8A, 0x8F, 0x1D, 0xFC, 0x6C, 0xE0, 0x1B, 0xB9,  /* ....l... */
                /* 0C78 */  0x87, 0xCA, 0x4F, 0xCD, 0x3E, 0x69, 0xF3, 0xE0,  /* ..O.>i.. */
                /* 0C80 */  0x3F, 0x69, 0xD9, 0x80, 0x51, 0xA0, 0x61, 0xA0,  /* ?i..Q.a. */
                /* 0C88 */  0x46, 0xE4, 0x23, 0xD2, 0xFF, 0xFF, 0xB9, 0x0D,  /* F.#..... */
                /* 0C90 */  0x1B, 0x60, 0x68, 0xF4, 0x1C, 0x0E, 0xE3, 0x80,  /* .`h..... */
                /* 0C98 */  0xEB, 0x73, 0x38, 0x76, 0x40, 0x3E, 0x87, 0xC3,  /* .s8v@>.. */
                /* 0CA0 */  0x3F, 0x47, 0xC3, 0x1F, 0x1B, 0x3B, 0xDD, 0xF3,  /* ?G...;.. */
                /* 0CA8 */  0x81, 0xC1, 0xBA, 0x7E, 0x63, 0x06, 0x06, 0xB6,  /* ...~c... */
                /* 0CB0 */  0x6F, 0x91, 0x07, 0x06, 0x1C, 0x51, 0xCF, 0xC6,  /* o....Q.. */
                /* 0CB8 */  0x57, 0x08, 0x0F, 0x0C, 0x6C, 0x80, 0x1E, 0x18,  /* W...l... */
                /* 0CC0 */  0xF0, 0x89, 0x05, 0x21, 0x27, 0x03, 0x43, 0x9D,  /* ...!'.C. */
                /* 0CC8 */  0x32, 0x8C, 0x1C, 0xF3, 0x89, 0xC3, 0xC3, 0xF0,  /* 2....... */
                /* 0CD0 */  0xA1, 0x22, 0xEA, 0x33, 0xC0, 0x23, 0x1E, 0x1B,  /* .".3.#.. */
                /* 0CD8 */  0x1B, 0xFB, 0xFF, 0x8F, 0x0D, 0x2C, 0xC7, 0x16,  /* .....,.. */
                /* 0CE0 */  0x8F, 0x0D, 0xFC, 0x47, 0x78, 0xFC, 0xD8, 0xE0,  /* ...Gx... */
                /* 0CE8 */  0x8C, 0xE5, 0xD1, 0xC4, 0x97, 0x99, 0x23, 0x3B,  /* ......#; */
                /* 0CF0 */  0x8D, 0x33, 0x7B, 0x0D, 0xF1, 0xD1, 0xEE, 0xF1,  /* .3{..... */
                /* 0CF8 */  0xDB, 0x63, 0x03, 0x97, 0x85, 0xB1, 0x01, 0xA5,  /* .c...... */
                /* 0D00 */  0x90, 0x63, 0x43, 0x1F, 0x52, 0x7C, 0x0A, 0xB0,  /* .cC.R|.. */
                /* 0D08 */  0x71, 0x54, 0x32, 0x0F, 0x1F, 0xAF, 0x7C, 0x62,  /* qT2...|b */
                /* 0D10 */  0x38, 0xBA, 0x20, 0x6F, 0xE8, 0xBE, 0x5C, 0xF8,  /* 8. o..\. */
                /* 0D18 */  0x48, 0x63, 0x30, 0x5F, 0x5A, 0x7C, 0x06, 0xE5,  /* Hc0_Z|.. */
                /* 0D20 */  0x43, 0x04, 0x97, 0x86, 0x21, 0x02, 0xA5, 0x50,  /* C...!..P */
                /* 0D28 */  0x43, 0x44, 0x8F, 0xE7, 0xFF, 0xFF, 0x08, 0xE6,  /* CD...... */
                /* 0D30 */  0x21, 0xB2, 0xA1, 0x81, 0xF7, 0x1B, 0xA3, 0xA1,  /* !....... */
                /* 0D38 */  0x01, 0xA1, 0x70, 0x43, 0x43, 0x1F, 0xD6, 0x7C,  /* ..pCC..| */
                /* 0D40 */  0x08, 0x60, 0x10, 0xBE, 0x0D, 0xB0, 0xAB, 0x80,  /* .`...... */
                /* 0D48 */  0xAF, 0x42, 0x1E, 0xE0, 0x93, 0x28, 0x1B, 0x1E,  /* .B...(.. */
                /* 0D50 */  0xF8, 0x06, 0xE5, 0xE1, 0x01, 0x9F, 0xF0, 0xC0,  /* ........ */
                /* 0D58 */  0x5E, 0x85, 0x87, 0x47, 0xCF, 0x4A, 0x1E, 0x1E,  /* ^..G.J.. */
                /* 0D60 */  0x3C, 0x90, 0xC7, 0x08, 0x76, 0x0E, 0xF1, 0xE0,  /* <...v... */
                /* 0D68 */  0xC0, 0x61, 0x62, 0x70, 0xA0, 0x38, 0xFA, 0xE3,  /* .abp.8.. */
                /* 0D70 */  0x86, 0xC0, 0x2E, 0xB3, 0x9E, 0x38, 0xBF, 0xB2,  /* .....8.. */
                /* 0D78 */  0x78, 0x50, 0xF8, 0xFF, 0xFF, 0x11, 0x00, 0xD6,  /* xP...... */
                /* 0D80 */  0x71, 0x06, 0x7C, 0xC1, 0x0E, 0x07, 0xE8, 0x63,  /* q.|....c */
                /* 0D88 */  0x22, 0x1B, 0xC3, 0x43, 0xC4, 0x83, 0xAB, 0x07,  /* "..C.... */
                /* 0D90 */  0xE2, 0x6B, 0xC7, 0x6B, 0x31, 0xEE, 0x68, 0x00,  /* .k.k1.h. */
                /* 0D98 */  0x2E, 0x15, 0x47, 0x03, 0xA0, 0x74, 0xB0, 0x05,  /* ..G..t.. */
                /* 0DA0 */  0xC7, 0x3D, 0xCD, 0x47, 0x3B, 0xCC, 0x1C, 0x3D,  /* .=.G;..= */
                /* 0DA8 */  0x80, 0xE7, 0x37, 0x8F, 0x96, 0x9F, 0xDF, 0x00,  /* ..7..... */
                /* 0DB0 */  0x47, 0x41, 0x0F, 0xB6, 0x74, 0xE0, 0x8E, 0x06,  /* GA..t... */
                /* 0DB8 */  0x83, 0x3A, 0xBF, 0x61, 0xFE, 0xFF, 0xE7, 0x37,  /* .:.a...7 */
                /* 0DC0 */  0x30, 0x44, 0x00, 0xD7, 0x99, 0xC6, 0xE7, 0x17,  /* 0D...... */
                /* 0DC8 */  0x38, 0x43, 0x3D, 0x68, 0x5F, 0x13, 0x3C, 0x6B,  /* 8C=h_.<k */
                /* 0DD0 */  0xDF, 0xB8, 0xD8, 0x39, 0x01, 0x5C, 0x03, 0xF2,  /* ...9.\.. */
                /* 0DD8 */  0x49, 0x07, 0x38, 0x02, 0x9F, 0xC4, 0x03, 0xFE,  /* I.8..... */
                /* 0DE0 */  0xA1, 0x81, 0x79, 0x58, 0x1E, 0x1A, 0xF0, 0x39,  /* ..yX...9 */
                /* 0DE8 */  0x1A, 0xE0, 0x4E, 0x14, 0xE0, 0xB9, 0x8D, 0xE0,  /* ..N..... */
                /* 0DF0 */  0x0E, 0x14, 0xC0, 0xE2, 0xFF, 0x7F, 0xA0, 0x00,  /* ........ */
                /* 0DF8 */  0x56, 0x47, 0x7C, 0x8F, 0x8B, 0x43, 0xE3, 0x10,  /* VG|..C.. */
                /* 0E00 */  0x1F, 0xD2, 0xCE, 0xD9, 0xE7, 0xAF, 0x33, 0xC5,  /* ......3. */
                /* 0E08 */  0x9D, 0x45, 0xC0, 0x70, 0xA2, 0x47, 0xBC, 0xD3,  /* .E.p.G.. */
                /* 0E10 */  0x0C, 0xE4, 0x07, 0x86, 0x84, 0xC0, 0xA0, 0x4E,  /* .......N */
                /* 0E18 */  0x40, 0x1E, 0x8A, 0x0F, 0x06, 0x1C, 0xD8, 0x47,  /* @......G */
                /* 0E20 */  0x04, 0x76, 0x2E, 0x60, 0x07, 0x28, 0xC3, 0xF1,  /* .v.`.(.. */
                /* 0E28 */  0xB3, 0x80, 0x4F, 0x09, 0x0F, 0x35, 0xC7, 0xF1,  /* ..O..5.. */
                /* 0E30 */  0xB8, 0xE9, 0xBB, 0x99, 0x21, 0xD9, 0xD5, 0xE0,  /* ....!... */
                /* 0E38 */  0xF9, 0x07, 0x7B, 0xDA, 0x85, 0x73, 0xC4, 0x05,  /* ..{..s.. */
                /* 0E40 */  0x17, 0x81, 0xCF, 0x3A, 0x1E, 0x05, 0x3F, 0x3D,  /* ...:..?= */
                /* 0E48 */  0x78, 0x8E, 0x6F, 0x0C, 0x3E, 0x3D, 0x30, 0xF7,  /* x.o.>=0. */
                /* 0E50 */  0x02, 0xCC, 0x1D, 0xBA, 0x85, 0x70, 0x4C, 0xAF,  /* .....pL. */
                /* 0E58 */  0x0F, 0x31, 0x8E, 0xFA, 0xB1, 0xA1, 0x2D, 0x01,  /* .1....-. */
                /* 0E60 */  0xDA, 0x50, 0x74, 0x07, 0x78, 0x19, 0x88, 0x12,  /* .Pt.x... */
                /* 0E68 */  0xE2, 0x08, 0x22, 0xB5, 0x86, 0xA2, 0x99, 0x47,  /* .."....G */
                /* 0E70 */  0x8A, 0x12, 0x30, 0x9E, 0x61, 0x1A, 0x9B, 0x8C,  /* ..0.a... */
                /* 0E78 */  0x20, 0x63, 0x84, 0x8E, 0x13, 0x2C, 0x4A, 0xB4,  /*  c...,J. */
                /* 0E80 */  0x57, 0x80, 0xF6, 0x47, 0xCB, 0x56, 0xAC, 0xB1,  /* W..G.V.. */
                /* 0E88 */  0x38, 0xD2, 0xC9, 0x12, 0x3D, 0x6C, 0x1F, 0xB3,  /* 8...=l.. */
                /* 0E90 */  0xF1, 0xA7, 0x55, 0xCC, 0xFF, 0x9F, 0xE0, 0x55,  /* ..U....U */
                /* 0E98 */  0xC5, 0x07, 0x05, 0x1F, 0x00, 0xF0, 0x2E, 0x01,  /* ........ */
                /* 0EA0 */  0x75, 0x75, 0xF4, 0xB8, 0x7D, 0xDE, 0x00, 0xFF,  /* uu..}... */
                /* 0EA8 */  0xF5, 0x02, 0x4B, 0x50, 0xFE, 0x20, 0x50, 0x23,  /* ..KP. P# */
                /* 0EB0 */  0x33, 0xB4, 0xC7, 0xF9, 0x36, 0x63, 0xC8, 0x27,  /* 3...6c.' */
                /* 0EB8 */  0x27, 0x13, 0x58, 0xEC, 0x09, 0x15, 0x68, 0x0C,  /* '.X...h. */
                /* 0EC0 */  0xFE, 0x69, 0xC3, 0xD7, 0x76, 0xCF, 0xD7, 0xE7,  /* .i..v... */
                /* 0EC8 */  0x38, 0x80, 0x0F, 0xFF, 0xFF, 0x73, 0x1C, 0x60,  /* 8....s.` */
                /* 0ED0 */  0x68, 0x38, 0xB8, 0xA3, 0x0F, 0xDC, 0x2B, 0x09,  /* h8....+. */
                /* 0ED8 */  0x3F, 0xFC, 0x00, 0xCE, 0x80, 0x1E, 0x7E, 0xC0,  /* ?.....~. */
                /* 0EE0 */  0x3E, 0x54, 0xDC, 0x10, 0x78, 0x84, 0x15, 0xD1,  /* >T..x... */
                /* 0EE8 */  0xC3, 0x80, 0x45, 0xC3, 0xA0, 0xCE, 0x6B, 0xD8,  /* ..E...k. */
                /* 0EF0 */  0xFF, 0xFF, 0x79, 0x0D, 0xB6, 0x38, 0x70, 0x1D,  /* ..y..8p. */
                /* 0EF8 */  0x54, 0x7D, 0x36, 0x86, 0x33, 0xA8, 0xD3, 0xEE,  /* T}6.3... */
                /* 0F00 */  0xFD, 0xAE, 0x40, 0x2E, 0x22, 0x1E, 0xF4, 0xF9,  /* ..@."... */
                /* 0F08 */  0x3C, 0x3B, 0xB0, 0x03, 0x1B, 0xF0, 0x1F, 0x1B,  /* <;...... */
                /* 0F10 */  0x9C, 0x1B, 0xC0, 0x53, 0x74, 0x84, 0x63, 0x03,  /* ...St.c. */
                /* 0F18 */  0xFB, 0x89, 0x0D, 0x38, 0x9D, 0xED, 0xE0, 0x5C,  /* ...8...\ */
                /* 0F20 */  0xA1, 0xD8, 0x6D, 0x1F, 0x37, 0x34, 0xB0, 0xD9,  /* ..m.74.. */
                /* 0F28 */  0x18, 0x1A, 0xC8, 0xFE, 0xFF, 0x87, 0x4F, 0xE0,  /* ......O. */
                /* 0F30 */  0x75, 0xE8, 0xE2, 0x97, 0x8A, 0xE7, 0x2F, 0x7E,  /* u...../~ */
                /* 0F38 */  0xB8, 0x03, 0x9C, 0x4B, 0x3B, 0xD9, 0xA1, 0xC4,  /* ...K;... */
                /* 0F40 */  0x1C, 0xEE, 0x00, 0x29, 0xFF, 0xFF, 0xC3, 0x1D,  /* ...).... */
                /* 0F48 */  0xB8, 0xEE, 0x72, 0xEF, 0x0C, 0x2F, 0x0D, 0x9E,  /* ..r../.. */
                /* 0F50 */  0xD3, 0xBB, 0x9D, 0x31, 0x5E, 0xEA, 0x8C, 0x10,  /* ...1^... */
                /* 0F58 */  0x85, 0xDD, 0x06, 0xA2, 0xD9, 0xDB, 0xE1, 0x8E,  /* ........ */
                /* 0F60 */  0x9C, 0xF0, 0x38, 0x66, 0xA4, 0x27, 0xBD, 0x60,  /* ..8f.'.` */
                /* 0F68 */  0x91, 0x22, 0x1E, 0x4E, 0x94, 0x10, 0xC1, 0x5E,  /* .".N...^ */
                /* 0F70 */  0x27, 0x9E, 0xF2, 0x1E, 0xEE, 0x98, 0x90, 0xC3,  /* '....... */
                /* 0F78 */  0x1D, 0xD0, 0x71, 0x7D, 0xB8, 0x03, 0x2A, 0x27,  /* ..q}..*' */
                /* 0F80 */  0x2A, 0xFC, 0xE1, 0x0E, 0x30, 0xFB, 0xFF, 0x3F,  /* *...0..? */
                /* 0F88 */  0xDC, 0x01, 0x8C, 0x3A, 0xA3, 0xE1, 0x0E, 0x77,  /* ...:...w */
                /* 0F90 */  0x60, 0x3B, 0xFD, 0x00, 0xE7, 0xFF, 0xFF, 0xE9,  /* `;...... */
                /* 0F98 */  0x07, 0x78, 0x8F, 0x15, 0xC6, 0x18, 0x78, 0xB4,  /* .x....x. */
                /* 0FA0 */  0x25, 0x51, 0x20, 0x87, 0x81, 0x41, 0x11, 0x38,  /* %Q ..A.8 */
                /* 0FA8 */  0xC8, 0xA1, 0x8E, 0x06, 0x3B, 0xBD, 0x40, 0x99,  /* ....;.@. */
                /* 0FB0 */  0xCB, 0x81, 0x9E, 0xC2, 0x33, 0x82, 0x0F, 0x60,  /* ....3..` */
                /* 0FB8 */  0x60, 0x3F, 0xD5, 0x01, 0x87, 0x53, 0x03, 0x3E,  /* `?...S.> */
                /* 0FC0 */  0xD0, 0x09, 0x05, 0x3D, 0x0A, 0x9F, 0x4D, 0xC0,  /* ...=..M. */
                /* 0FC8 */  0x7B, 0xA4, 0x03, 0x36, 0xFF, 0xFF, 0xB3, 0x09,  /* {..6.... */
                /* 0FD0 */  0x7B, 0x35, 0xFA, 0x6C, 0x82, 0x63, 0x31, 0xEA,  /* {5.l.c1. */
                /* 0FD8 */  0x1B, 0xC4, 0x21, 0xBE, 0x74, 0xF8, 0xDC, 0xF8,  /* ..!.t... */
                /* 0FE0 */  0x4E, 0xE3, 0x4B, 0x00, 0xE6, 0xFA, 0x61, 0x82,  /* N.K...a. */
                /* 0FE8 */  0x31, 0x21, 0xF4, 0xC9, 0xF2, 0xA9, 0x0E, 0x38,  /* 1!.....8 */
                /* 0FF0 */  0x1D, 0x4E, 0xE0, 0x8D, 0x1E, 0x77, 0x5A, 0xF0,  /* .N...wZ. */
                /* 0FF8 */  0x70, 0x38, 0xB8, 0x67, 0xF3, 0x2C, 0xF1, 0x44,  /* p8.g.,.D */
                /* 1000 */  0xE4, 0x71, 0xF8, 0x74, 0x02, 0xBC, 0x0E, 0x18,  /* .q.t.... */
                /* 1008 */  0x98, 0x19, 0x84, 0x7F, 0x08, 0x61, 0xA7, 0x4F,  /* .....a.O */
                /* 1010 */  0x1F, 0x99, 0x3C, 0xF7, 0x77, 0x23, 0x9F, 0x4E,  /* ..<.w#.N */
                /* 1018 */  0x00, 0x5F, 0xFF, 0xFF, 0xA3, 0x1E, 0xB0, 0x90,  /* ._...... */
                /* 1020 */  0xA8, 0xE1, 0x9C, 0x87, 0x11, 0x05, 0x83, 0x3A,  /* .......: */
                /* 1028 */  0xEA, 0x01, 0xD6, 0x2E, 0x7A, 0x36, 0x86, 0xA0,  /* ....z6.. */
                /* 1030 */  0x8B, 0xC0, 0x19, 0x84, 0x78, 0xBC, 0x7B, 0xC5,  /* ....x.{. */
                /* 1038 */  0x8B, 0xE4, 0x3B, 0x40, 0x9C, 0x47, 0x3D, 0x83,  /* ..;@.G=. */
                /* 1040 */  0xBD, 0x7D, 0x3C, 0x48, 0x44, 0x89, 0xF3, 0xA8,  /* .}<HD... */
                /* 1048 */  0xE7, 0xD1, 0x87, 0xF2, 0xE4, 0x43, 0x9D, 0x7E,  /* .....C.~ */
                /* 1050 */  0xAC, 0xB0, 0x81, 0x9E, 0xF8, 0x5E, 0xF4, 0x42,  /* .....^.B */
                /* 1058 */  0x1A, 0xE1, 0x51, 0x8F, 0x09, 0x7A, 0x79, 0xE8,  /* ..Q..zy. */
                /* 1060 */  0x70, 0xE5, 0xA3, 0x1E, 0x60, 0xE5, 0xFF, 0x7F,  /* p...`... */
                /* 1068 */  0xD4, 0x03, 0xF8, 0xFF, 0xFF, 0x3F, 0xEA, 0x81,  /* .....?.. */
                /* 1070 */  0xF9, 0xF4, 0x04, 0xF8, 0x3F, 0xD6, 0xE0, 0x8E,  /* ....?... */
                /* 1078 */  0x8A, 0x60, 0x3B, 0x3F, 0x01, 0x2E, 0xFE, 0xFF,  /* .`;?.... */
                /* 1080 */  0xE7, 0x27, 0x30, 0x0D, 0xDD, 0xE7, 0x27, 0x30,  /* .'0...'0 */
                /* 1088 */  0x8F, 0x16, 0xE6, 0x01, 0x01, 0x71, 0x56, 0x44,  /* .....qVD */
                /* 1090 */  0x85, 0x7F, 0xC8, 0x18, 0x0E, 0x15, 0x1C, 0x48,  /* .......H */
                /* 1098 */  0xBF, 0x28, 0x1F, 0x01, 0x81, 0xCB, 0x51, 0x11,  /* .(....Q. */
                /* 10A0 */  0x38, 0x9C, 0x59, 0xF0, 0x42, 0x4E, 0x1D, 0xE8,  /* 8.Y.BN.. */
                /* 10A8 */  0xF1, 0x18, 0xF4, 0x95, 0xC3, 0x57, 0x02, 0x7E,  /* .....W.~ */
                /* 10B0 */  0xE4, 0x60, 0xA1, 0x8F, 0x1C, 0xA0, 0x3A, 0x2C,  /* .`....:, */
                /* 10B8 */  0x82, 0xEF, 0xC8, 0x01, 0x8E, 0xEB, 0x55, 0x60,  /* ......U` */
                /* 10C0 */  0xFE, 0xFF, 0x07, 0x66, 0xB7, 0x83, 0xD7, 0x4F,  /* ...f...O */
                /* 10C8 */  0x4F, 0xE2, 0x31, 0xEA, 0x38, 0x43, 0x14, 0x8E,  /* O.1.8C.. */
                /* 10D0 */  0x49, 0x0E, 0x06, 0x91, 0xDE, 0xC1, 0xD8, 0x00,  /* I....... */
                /* 10D8 */  0x5F, 0x5E, 0x7C, 0xA8, 0xF2, 0x31, 0x10, 0x18,  /* _^|..1.. */
                /* 10E0 */  0x42, 0x9C, 0x0D, 0x3F, 0x5D, 0x18, 0xF3, 0x74,  /* B..?]..t */
                /* 10E8 */  0xF8, 0x31, 0x10, 0xB0, 0x2E, 0xF5, 0x0C, 0x88,  /* .1...... */
                /* 10F0 */  0x12, 0x77, 0x0C, 0x04, 0x52, 0xFF, 0xFF, 0x63,  /* .w..R..c */
                /* 10F8 */  0x20, 0x70, 0xBD, 0x04, 0x7A, 0xCC, 0x67, 0xFC,  /*  p..z.g. */
                /* 1100 */  0xE6, 0xF7, 0xE4, 0x17, 0xA5, 0xB6, 0xEB, 0x9F,  /* ........ */
                /* 1108 */  0xEE, 0x06, 0xC6, 0x7A, 0x08, 0x78, 0x02, 0xF4,  /* ...z.x.. */
                /* 1110 */  0xFD, 0xCF, 0xC7, 0x8A, 0x28, 0x01, 0xA3, 0xC4,  /* ....(... */
                /* 1118 */  0x7A, 0x11, 0x34, 0x66, 0x8C, 0x60, 0xEF, 0x80,  /* z.4f.`.. */
                /* 1120 */  0x31, 0x1F, 0x09, 0x3D, 0xC2, 0x68, 0xC1, 0x0D,  /* 1..=.h.. */
                /* 1128 */  0xF4, 0x18, 0xC8, 0x84, 0x1D, 0x03, 0x01, 0x12,  /* ........ */
                /* 1130 */  0xFD, 0xFF, 0x8F, 0x81, 0x00, 0x23, 0x4F, 0x50,  /* .....#OP */
                /* 1138 */  0xC0, 0xF6, 0xFF, 0x7F, 0x82, 0x02, 0x0C, 0x1D,  /* ........ */
                /* 1140 */  0x05, 0xC1, 0x7C, 0x86, 0x02, 0xAC, 0x1D, 0x05,  /* ..|..... */
                /* 1148 */  0xC1, 0x3E, 0x5A, 0x98, 0xA3, 0xE0, 0x31, 0x5F,  /* .>Z...1_ */
                /* 1150 */  0x1E, 0x06, 0xA2, 0xC1, 0x24, 0xFC, 0xFF, 0x8F,  /* ....$... */
                /* 1158 */  0x82, 0xD8, 0x50, 0x40, 0x3A, 0x77, 0x38, 0xD4,  /* ..P@:w8. */
                /* 1160 */  0xE9, 0x05, 0x7D, 0x50, 0xF0, 0xB0, 0x9F, 0x0A,  /* ..}P.... */
                /* 1168 */  0x3C, 0x89, 0x53, 0xF5, 0xB5, 0xE0, 0x28, 0x9E,  /* <.S...(. */
                /* 1170 */  0x00, 0x7C, 0x18, 0x04, 0xFE, 0x43, 0x83, 0x35,  /* .|...C.5 */
                /* 1178 */  0x89, 0xE2, 0x87, 0x06, 0xEA, 0xB3, 0x07, 0xF8,  /* ........ */
                /* 1180 */  0x86, 0x06, 0x8E, 0xA8, 0x67, 0x1C, 0xF4, 0x89,  /* ....g... */
                /* 1188 */  0xC8, 0x67, 0x83, 0x98, 0x6F, 0x1E, 0x11, 0x9E,  /* .g..o... */
                /* 1190 */  0x3C, 0x7C, 0x7D, 0x60, 0x27, 0x4F, 0x9F, 0x9A,  /* <|}`'O.. */
                /* 1198 */  0x02, 0x45, 0x79, 0xDF, 0xE0, 0x71, 0x4E, 0x39,  /* .Ey..qN9 */
                /* 11A0 */  0xA0, 0x3A, 0xFC, 0x82, 0xE3, 0xC0, 0x0B, 0xE3,  /* .:...... */
                /* 11A8 */  0xFF, 0x7F, 0xE0, 0x65, 0xC7, 0x29, 0x1F, 0x4B,  /* ...e.).K */
                /* 11B0 */  0xC0, 0x77, 0x26, 0x85, 0x73, 0x73, 0xF1, 0x1D,  /* .w&.ss.. */
                /* 11B8 */  0x8F, 0x9D, 0x06, 0xC0, 0xA6, 0xE3, 0x34, 0x00,  /* ......4. */
                /* 11C0 */  0x94, 0x62, 0x0D, 0x0C, 0x7D, 0x54, 0x31, 0x6A,  /* .b..}T1j */
                /* 11C8 */  0xEF, 0x93, 0xD0, 0xC4, 0xD8, 0x75, 0xE4, 0x25,  /* .....u.% */
                /* 11D0 */  0xC5, 0xD7, 0x93, 0x67, 0x2D, 0xF0, 0xF9, 0x18,  /* ...g-... */
                /* 11D8 */  0x1B, 0x50, 0x3A, 0x81, 0xF1, 0xA3, 0x27, 0x98,  /* .P:...'. */
                /* 11E0 */  0x60, 0x0E, 0xE6, 0x55, 0xDC, 0x83, 0x7C, 0x12,  /* `..U..|. */
                /* 11E8 */  0x62, 0xA7, 0x1C, 0xF0, 0xFE, 0xFF, 0x0F, 0x9E,  /* b....... */
                /* 11F0 */  0x80, 0x3D, 0x11, 0xA7, 0x4E, 0x54, 0xEC, 0x37,  /* .=..NT.7 */
                /* 11F8 */  0x97, 0x0F, 0x9E, 0x80, 0xBC, 0x3B, 0x83, 0x11,  /* .....;.. */
                /* 1200 */  0xCE, 0x3F, 0xC4, 0x03, 0x44, 0x88, 0x67, 0x4E,  /* .?..D.gN */
                /* 1208 */  0x83, 0xC4, 0x09, 0xF2, 0x32, 0xF0, 0xE0, 0xE9,  /* ....2... */
                /* 1210 */  0x7B, 0x67, 0x9C, 0x67, 0xCF, 0x28, 0x6F, 0x9E,  /* {g.g.(o. */
                /* 1218 */  0x46, 0x38, 0xFA, 0x78, 0x06, 0x7A, 0xE7, 0x0C,  /* F8.x.z.. */
                /* 1220 */  0xF1, 0xD6, 0xF9, 0x0C, 0xFA, 0xEA, 0x69, 0xB4,  /* ......i. */
                /* 1228 */  0x58, 0xC1, 0x8F, 0xF1, 0xC1, 0x93, 0x45, 0x3E,  /* X.....E> */
                /* 1230 */  0x23, 0xD1, 0x83, 0x27, 0xEC, 0xFF, 0xFF, 0xC1,  /* #..'.... */
                /* 1238 */  0x13, 0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x09, 0x18,  /* ........ */
                /* 1240 */  0x3B, 0x83, 0x01, 0xC7, 0x13, 0x1B, 0x38, 0xCE,  /* ;.....8. */
                /* 1248 */  0x60, 0xC0, 0xE5, 0xE8, 0x0F, 0x9E, 0x93, 0x26,  /* `......& */
                /* 1250 */  0x8C, 0x23, 0x13, 0xF8, 0xFF, 0xFF, 0x47, 0x26,  /* .#....G& */
                /* 1258 */  0xC0, 0xD5, 0x58, 0x61, 0x8C, 0x81, 0x27, 0x7B,  /* ..Xa..'{ */
                /* 1260 */  0x1A, 0xD0, 0xE3, 0x80, 0x45, 0x1D, 0x98, 0x04,  /* ....E... */
                /* 1268 */  0xC3, 0x59, 0x7C, 0x58, 0xF0, 0x11, 0x81, 0x1F,  /* .Y|X.... */
                /* 1270 */  0x16, 0x3C, 0x82, 0x8A, 0xC7, 0x49, 0x8F, 0x45,  /* .<...I.E */
                /* 1278 */  0x3E, 0x77, 0xB2, 0x43, 0x82, 0x0F, 0x21, 0x1E,  /* >w.C..!. */
                /* 1280 */  0xA4, 0x0F, 0xB3, 0xE0, 0x39, 0x58, 0xC1, 0xBB,  /* ....9X.. */
                /* 1288 */  0x2E, 0xC1, 0x39, 0x15, 0x00, 0x66, 0xFE, 0xFF,  /* ..9..f.. */
                /* 1290 */  0x04, 0xB5, 0xAB, 0x38, 0x5D, 0xB0, 0x00, 0x07,  /* ...8]... */
                /* 1298 */  0x30, 0xD9, 0x38, 0x86, 0x50, 0x0E, 0x1F, 0x5D,  /* 0.8.P..] */
                /* 12A0 */  0x3D, 0x4D, 0x76, 0x24, 0x83, 0x19, 0x0B, 0x52,  /* =Mv$...R */
                /* 12A8 */  0x27, 0x01, 0x0F, 0xC0, 0x81, 0x60, 0xA4, 0x9D,  /* '....`.. */
                /* 12B0 */  0x44, 0xA3, 0x31, 0x9C, 0xD5, 0xC2, 0x08, 0xCE,  /* D.1..... */
                /* 12B8 */  0x20, 0x3E, 0x8E, 0x38, 0xD7, 0x91, 0x0A, 0xBD,  /*  >.8.... */
                /* 12C0 */  0x1B, 0x1D, 0xA7, 0x50, 0x41, 0xEE, 0x25, 0x74,  /* ...PA.%t */
                /* 12C8 */  0xDE, 0xBE, 0x1B, 0xF0, 0x77, 0x9A, 0xC7, 0x62,  /* ....w..b */
                /* 12D0 */  0x60, 0xDF, 0x4E, 0xC0, 0x31, 0x17, 0xAB, 0x01,  /* `.N.1... */
                /* 12D8 */  0x45, 0x0D, 0xC0, 0x68, 0x98, 0x53, 0xC0, 0x53,  /* E..h.S.S */
                /* 12E0 */  0x09, 0xB8, 0x82, 0xCD, 0x0D, 0x7D, 0x61, 0xB1,  /* .....}a. */
                /* 12E8 */  0xD6, 0xA9, 0xE8, 0xF8, 0xF4, 0x3E, 0x70, 0x70,  /* .....>pp */
                /* 12F0 */  0xC0, 0x63, 0xF6, 0x1E, 0x1C, 0x2C, 0x34, 0x0F,  /* .c...,4. */
                /* 12F8 */  0x0E, 0x6C, 0xD9, 0x06, 0x87, 0x56, 0x72, 0x17,  /* .l...Vr. */
                /* 1300 */  0x21, 0x87, 0x0F, 0xFC, 0xEC, 0x60, 0xFC, 0xFF,  /* !....`.. */
                /* 1308 */  0x67, 0x07, 0x46, 0x40, 0xCF, 0x0E, 0x16, 0x92,  /* g.F@.... */
                /* 1310 */  0x67, 0x07, 0x36, 0x7D, 0x67, 0x11, 0x50, 0x00,  /* g.6}g.P. */
                /* 1318 */  0xF9, 0xDE, 0xE1, 0x73, 0xCB, 0xB3, 0x07, 0x1B,  /* ...s.... */
                /* 1320 */  0xC3, 0xA3, 0x8B, 0xD1, 0x8C, 0xCE, 0x35, 0xDD,  /* ......5. */
                /* 1328 */  0x26, 0x50, 0x2A, 0x6E, 0x13, 0x14, 0xC4, 0x37,  /* &P*n...7 */
                /* 1330 */  0x00, 0x27, 0xA4, 0xD1, 0x3D, 0x0D, 0x37, 0x13,  /* .'..=.7. */
                /* 1338 */  0xE3, 0x3F, 0x62, 0xF8, 0x88, 0x70, 0x48, 0x67,  /* .?b..pHg */
                /* 1340 */  0x6B, 0x82, 0x79, 0x20, 0xF5, 0x7E, 0xF4, 0x65,  /* k.y .~.e */
                /* 1348 */  0x0F, 0x3F, 0xFB, 0x90, 0x0F, 0x2E, 0x9E, 0x86,  /* .?...... */
                /* 1350 */  0xAF, 0x37, 0xE4, 0xDE, 0x41, 0xA7, 0xED, 0x33,  /* .7..A..3 */
                /* 1358 */  0x03, 0xE6, 0x30, 0xED, 0xEB, 0x54, 0x02, 0xCB,  /* ..0..T.. */
                /* 1360 */  0xBA, 0x4A, 0x50, 0x0F, 0x17, 0x10, 0x7A, 0xA1,  /* .JP...z. */
                /* 1368 */  0xF1, 0xBD, 0x30, 0xC1, 0xC3, 0x99, 0x6F, 0x67,  /* ..0...og */
                /* 1370 */  0xEF, 0x25, 0xEC, 0x70, 0x98, 0xE0, 0xDD, 0x30,  /* .%.p...0 */
                /* 1378 */  0xC1, 0xBC, 0x83, 0x40, 0x8D, 0xCA, 0x83, 0xC0,  /* ...@.... */
                /* 1380 */  0x1C, 0xBF, 0x4C, 0x30, 0xDF, 0x18, 0x50, 0xC9,  /* ..L0..P. */
                /* 1388 */  0x2E, 0x5A, 0xF4, 0x0C, 0xF3, 0x0E, 0xE3, 0x4B,  /* .Z.....K */
                /* 1390 */  0x82, 0xAF, 0x1F, 0x3E, 0xB7, 0x78, 0x01, 0xAF,  /* ...>.x.. */
                /* 1398 */  0x5B, 0x30, 0x08, 0x9E, 0x81, 0x5E, 0x5D, 0x0C,  /* [0...^]. */
                /* 13A0 */  0x15, 0x27, 0xF0, 0xAB, 0xC0, 0x1B, 0x4D, 0x88,  /* .'....M. */
                /* 13A8 */  0x60, 0x86, 0x3D, 0xFC, 0x90, 0x6F, 0x31, 0x3E,  /* `.=..o1> */
                /* 13B0 */  0x5F, 0xFA, 0x06, 0x10, 0xEB, 0x75, 0xC4, 0xFF,  /* _....u.. */
                /* 13B8 */  0xFF, 0x91, 0xF2, 0x63, 0xCB, 0x01, 0x45, 0x7A,  /* ...c..Ez */
                /* 13C0 */  0xEB, 0xF3, 0x04, 0x7C, 0x96, 0xF1, 0x71, 0xF0,  /* ...|..q. */
                /* 13C8 */  0xA4, 0x7C, 0xAF, 0x34, 0xFA, 0x2B, 0x84, 0x0F,  /* .|.4.+.. */
                /* 13D0 */  0x3F, 0x46, 0xF6, 0x39, 0x87, 0x1D, 0x0C, 0xD9,  /* ?F.9.... */
                /* 13D8 */  0xA0, 0x38, 0xE2, 0x03, 0xC3, 0x4B, 0x8D, 0xA7,  /* .8...K.. */
                /* 13E0 */  0xC2, 0xCE, 0x5D, 0x30, 0x0E, 0x0E, 0xEC, 0x58,  /* ..]0...X */
                /* 13E8 */  0x84, 0x39, 0xEA, 0x81, 0xEB, 0x64, 0xE3, 0x93,  /* .9...d.. */
                /* 13F0 */  0x03, 0x98, 0xE1, 0x31, 0x87, 0x6B, 0x9F, 0x37,  /* ...1.k.7 */
                /* 13F8 */  0x7C, 0x33, 0xF0, 0xB8, 0xF8, 0x91, 0xC3, 0xC7,  /* |3...... */
                /* 1400 */  0x3B, 0x86, 0x7D, 0x9A, 0x3E, 0x1A, 0xBD, 0xBC,  /* ;.}.>... */
                /* 1408 */  0xF9, 0xF4, 0x82, 0x81, 0xF5, 0xA5, 0x81, 0xC3,  /* ........ */
                /* 1410 */  0x1A, 0x2D, 0xEC, 0x63, 0xC0, 0x99, 0xFB, 0x42,  /* .-.c...B */
                /* 1418 */  0x84, 0x3B, 0x75, 0x82, 0x05, 0x10, 0x7F, 0x2B,  /* .;u....+ */
                /* 1420 */  0x79, 0xE4, 0xF0, 0x04, 0x0C, 0xC8, 0x72, 0xAF,  /* y.....r. */
                /* 1428 */  0x4B, 0x07, 0x22, 0x7E, 0xCA, 0xB3, 0xBA, 0x03,  /* K."~.... */
                /* 1430 */  0x11, 0x02, 0xE3, 0x71, 0xF4, 0xF1, 0xC3, 0xB3,  /* ...q.... */
                /* 1438 */  0xF1, 0x51, 0xC0, 0xC7, 0x28, 0xCF, 0xFC, 0x8C,  /* .Q..(... */
                /* 1440 */  0x22, 0xBD, 0x32, 0x58, 0xCB, 0x89, 0x08, 0xA5,  /* ".2X.... */
                /* 1448 */  0x02, 0x46, 0x81, 0x69, 0x74, 0xE7, 0xE0, 0x11,  /* .F.it... */
                /* 1450 */  0x61, 0x04, 0x67, 0x10, 0x8F, 0xD6, 0x37, 0x17,  /* a.g...7. */
                /* 1458 */  0x18, 0xFF, 0xFF, 0x9B, 0x0B, 0xF0, 0x3A, 0x13,  /* ......:. */
                /* 1460 */  0x01, 0x97, 0xEB, 0xA5, 0x67, 0x87, 0xBB, 0x2C,  /* ....g.., */
                /* 1468 */  0xB2, 0x69, 0x1B, 0xF7, 0x15, 0xD5, 0xA7, 0x63,  /* .i.....c */
                /* 1470 */  0x4F, 0xFC, 0xB4, 0x61, 0x9C, 0x8C, 0x00, 0x1F,  /* O..a.... */
                /* 1478 */  0x77, 0x1D, 0xC0, 0xC9, 0xFF, 0xFF, 0xAE, 0x03,  /* w....... */
                /* 1480 */  0xF0, 0xFF, 0xFF, 0x7F, 0xD7, 0xE1, 0xF7, 0x07,  /* ........ */
                /* 1488 */  0xDF, 0x75, 0x80, 0x6B, 0xA4, 0x55, 0x51, 0x11,  /* .u.k.UQ. */
                /* 1490 */  0xBF, 0x05, 0x85, 0x80, 0x41, 0x8D, 0xCE, 0xD7,  /* ....A... */
                /* 1498 */  0x0A, 0xFC, 0xB1, 0x84, 0x81, 0xB3, 0xF3, 0x8A,  /* ........ */
                /* 14A0 */  0xE1, 0xF8, 0xC0, 0x3D, 0xBE, 0xD7, 0x95, 0xD3,  /* ...=.... */
                /* 14A8 */  0x7A, 0x36, 0xF0, 0x8D, 0xC5, 0x90, 0xEC, 0x82,  /* z6...... */
                /* 14B0 */  0x8A, 0xBB, 0x5F, 0xF8, 0x46, 0xED, 0xA9, 0xBE,  /* .._.F... */
                /* 14B8 */  0x28, 0xBC, 0x27, 0xF8, 0x8E, 0xC0, 0xA0, 0x60,  /* (.'....` */
                /* 14C0 */  0xDC, 0x51, 0x31, 0x07, 0x54, 0x38, 0x04, 0x67,  /* .Q1.T8.g */
                /* 14C8 */  0x7C, 0x14, 0x98, 0x41, 0xFA, 0x90, 0xF2, 0x7A,  /* |..A...z */
                /* 14D0 */  0xE0, 0xC1, 0x32, 0xF7, 0xC7, 0x0D, 0x5D, 0x22,  /* ..2...]" */
                /* 14D8 */  0x1E, 0x36, 0x9E, 0x0C, 0x9A, 0x43, 0xD1, 0x99,  /* .6...C.. */
                /* 14E0 */  0xE0, 0x14, 0xDA, 0x1A, 0x96, 0x70, 0xDE, 0x37,  /* .....p.7 */
                /* 14E8 */  0x42, 0x44, 0x09, 0xF6, 0xC2, 0xF1, 0xC6, 0xF0,  /* BD...... */
                /* 14F0 */  0x34, 0x1B, 0x25, 0x5E, 0xA4, 0x80, 0xD1, 0xA2,  /* 4.%^.... */
                /* 14F8 */  0x04, 0xEB, 0x0D, 0x42, 0xA0, 0x91, 0x42, 0x04,  /* ...B..B. */
                /* 1500 */  0x0C, 0x51, 0x1C, 0x96, 0xE0, 0xA2, 0xB7, 0x7F,  /* .Q...... */
                /* 1508 */  0x8D, 0x67, 0x6F, 0x02, 0x1D, 0x65, 0x1C, 0xE9,  /* .go..e.. */
                /* 1510 */  0xB8, 0x83, 0x1E, 0xB6, 0x6F, 0xAC, 0xFC, 0x7C,  /* ....o..| */
                /* 1518 */  0xEF, 0x71, 0xF9, 0x02, 0x8A, 0x21, 0x78, 0xCD,  /* .q...!x. */
                /* 1520 */  0xF0, 0x17, 0xC0, 0x07, 0x00, 0xBC, 0x6B, 0x40,  /* ......k@ */
                /* 1528 */  0xCD, 0xFC, 0xB1, 0x00, 0xD6, 0xFF, 0xFF, 0x46,  /* .......F */
                /* 1530 */  0x0F, 0xBE, 0xEB, 0x35, 0x5E, 0xFE, 0x20, 0x50,  /* ...5^. P */
                /* 1538 */  0x97, 0x19, 0x7E, 0xF6, 0xF0, 0xCD, 0xD5, 0xF7,  /* ..~..... */
                /* 1540 */  0x80, 0xC3, 0x62, 0xB7, 0x6E, 0x3E, 0x1E, 0xF0,  /* ..b.n>.. */
                /* 1548 */  0x0F, 0xFD, 0xA5, 0xD7, 0x87, 0x0A, 0xCF, 0xD7,  /* ........ */
                /* 1550 */  0x57, 0x5F, 0xDF, 0xBE, 0xC1, 0x7B, 0x39, 0x06,  /* W_...{9. */
                /* 1558 */  0xEC, 0x09, 0xBE, 0x81, 0x83, 0x7C, 0xBC, 0xD8,  /* .....|.. */
                /* 1560 */  0xFF, 0xFF, 0x78, 0xE1, 0x8C, 0x83, 0x2B, 0x27,  /* ..x...+' */
                /* 1568 */  0xA1, 0xC7, 0x02, 0x6B, 0x85, 0x41, 0xDD, 0xC2,  /* ...k.A.. */
                /* 1570 */  0xC1, 0xA5, 0x09, 0x5C, 0x57, 0x65, 0x1F, 0x6A,  /* ...\We.j */
                /* 1578 */  0x7C, 0x08, 0xC6, 0x9F, 0x2F, 0x70, 0x01, 0x86,  /* |.../p.. */
                /* 1580 */  0x4C, 0x4F, 0x65, 0x30, 0xAE, 0x29, 0x3E, 0x95,  /* LOe0.)>. */
                /* 1588 */  0x61, 0xEE, 0x0E, 0x1E, 0x90, 0x8F, 0x18, 0xC0,  /* a....... */
                /* 1590 */  0x67, 0x15, 0x1E, 0x18, 0xEE, 0xB4, 0xE0, 0x9B,  /* g....... */
                /* 1598 */  0x92, 0x41, 0xCF, 0x31, 0xA8, 0x8F, 0x3C, 0x27,  /* .A.1..<' */
                /* 15A0 */  0xEF, 0x7B, 0xC2, 0xE3, 0x84, 0xA3, 0x9E, 0x83,  /* .{...... */
                /* 15A8 */  0xE8, 0xD8, 0xC0, 0x71, 0xDC, 0x00, 0xC7, 0xE1,  /* ...q.... */
                /* 15B0 */  0x06, 0x77, 0xCE, 0x63, 0xE3, 0xC2, 0xC0, 0x3D,  /* .w.c...= */
                /* 15B8 */  0x17, 0x78, 0x18, 0xBE, 0xE9, 0x78, 0x44, 0x98,  /* .x...xD. */
                /* 15C0 */  0xF1, 0x3F, 0xEA, 0x19, 0x21, 0x20, 0xFE, 0x62,  /* .?..! .b */
                /* 15C8 */  0xC4, 0x06, 0x0C, 0xA6, 0xFF, 0xFF, 0x80, 0xF9,  /* ........ */
                /* 15D0 */  0xAD, 0xCD, 0xD7, 0x37, 0xDC, 0x80, 0x7D, 0x75,  /* ...7..}u */
                /* 15D8 */  0xF0, 0x05, 0xC3, 0x27, 0x30, 0xA3, 0xBF, 0xC0,  /* ...'0... */
                /* 15E0 */  0x3C, 0x89, 0xF9, 0xD8, 0x40, 0x2E, 0x70, 0x74,  /* <...@.pt */
                /* 15E8 */  0xC0, 0xE0, 0x00, 0xF4, 0x80, 0xE1, 0x1F, 0x2E,  /* ........ */
                /* 15F0 */  0xDE, 0xE5, 0xC0, 0x70, 0x15, 0xF4, 0x71, 0xC1,  /* ...p..q. */
                /* 15F8 */  0xC7, 0x1E, 0x2B, 0xBA, 0xCB, 0xA1, 0x6F, 0x72,  /* ..+...or */
                /* 1600 */  0x86, 0x89, 0x63, 0x88, 0x37, 0x30, 0x76, 0x97,  /* ..c.70v. */
                /* 1608 */  0x20, 0x87, 0x39, 0xA8, 0x77, 0x09, 0xCF, 0x81,  /*  .9.w... */
                /* 1610 */  0x9F, 0x2D, 0x7C, 0x82, 0xF3, 0xCD, 0x27, 0xC4,  /* .-|...'. */
                /* 1618 */  0xA9, 0x3E, 0x5A, 0xBD, 0x07, 0xF8, 0xE8, 0xF1,  /* .>Z..... */
                /* 1620 */  0xDE, 0xE5, 0xB3, 0x13, 0xBB, 0x08, 0xF8, 0xC8,  /* ........ */
                /* 1628 */  0x65, 0x1C, 0x4F, 0xD3, 0x57, 0x40, 0x0F, 0xD9,  /* e.O.W@.. */
                /* 1630 */  0x60, 0xAF, 0x1A, 0x3E, 0x81, 0xF9, 0xE8, 0x86,  /* `..>.... */
                /* 1638 */  0x3B, 0x46, 0x79, 0x26, 0x9E, 0xBE, 0xEF, 0x20,  /* ;Fy&...  */
                /* 1640 */  0xEC, 0x48, 0x72, 0xD4, 0xA1, 0xAE, 0xE9, 0x11,  /* .Hr..... */
                /* 1648 */  0xE5, 0x84, 0x0E, 0xC4, 0xB7, 0x36, 0x70, 0x46,  /* .....6pF */
                /* 1650 */  0xBB, 0x7F, 0xA0, 0xB7, 0xE9, 0x91, 0x61, 0x8E,  /* ......a. */
                /* 1658 */  0x06, 0xB0, 0x2E, 0x21, 0x60, 0xF9, 0xFF, 0xDF,  /* ...!`... */
                /* 1660 */  0x0C, 0xD8, 0x1D, 0xC3, 0x97, 0x10, 0xE0, 0x13,  /* ........ */
                /* 1668 */  0xF4, 0x12, 0x81, 0xBE, 0x66, 0x78, 0x74, 0x8F,  /* ....fxt. */
                /* 1670 */  0x00, 0x98, 0x2B, 0x06, 0x3B, 0x16, 0xF8, 0xB0,  /* ..+.;... */
                /* 1678 */  0xE1, 0x6B, 0x00, 0xBB, 0x17, 0x38, 0xCC, 0x3D,  /* .k...8.= */
                /* 1680 */  0x02, 0x54, 0xA0, 0x1E, 0x1E, 0x7C, 0xB5, 0xF7,  /* .T...|.. */
                /* 1688 */  0x08, 0x50, 0x9C, 0x2C, 0x7D, 0x68, 0xF0, 0x40,  /* .P.,}h.@ */
                /* 1690 */  0xAD, 0xEA, 0x8C, 0x09, 0xE5, 0x88, 0xC9, 0xA1,  /* ........ */
                /* 1698 */  0xA2, 0xB1, 0x5B, 0x01, 0xBB, 0x5D, 0xFA, 0x26,  /* ..[..].& */
                /* 16A0 */  0x01, 0x37, 0xCF, 0x2C, 0x50, 0x49, 0x6E, 0x12,  /* .7.,PIn. */
                /* 16A8 */  0xD0, 0x61, 0xBA, 0xBC, 0xCC, 0xD0, 0xF9, 0x1F,  /* .a...... */
                /* 16B0 */  0xB8, 0x6F, 0x75, 0x1E, 0xA1, 0x0F, 0x11, 0x0C,  /* .ou..... */
                /* 16B8 */  0xE5, 0x3D, 0xCF, 0xA7, 0x30, 0x7E, 0x86, 0xF0,  /* .=..0~.. */
                /* 16C0 */  0x01, 0x93, 0x9D, 0x29, 0xF8, 0x59, 0x13, 0x77,  /* ...).Y.w */
                /* 16C8 */  0x07, 0x30, 0xCA, 0x9B, 0xA7, 0x27, 0xC0, 0xCE,  /* .0...'.. */
                /* 16D0 */  0x9F, 0x46, 0x7E, 0x37, 0x78, 0x17, 0xF0, 0xF4,  /* .F~7x... */
                /* 16D8 */  0x7D, 0x2F, 0xE2, 0x87, 0x04, 0xF6, 0xFF, 0x3F,  /* }/.....? */
                /* 16E0 */  0x51, 0x80, 0x29, 0xD8, 0x9D, 0x0E, 0x0A, 0xF4,  /* Q.)..... */
                /* 16E8 */  0x09, 0x79, 0x44, 0x46, 0xF5, 0x11, 0x81, 0x5F,  /* .yDF..._ */
                /* 16F0 */  0x92, 0xC0, 0x78, 0x24, 0xF1, 0x81, 0x02, 0x08,  /* ..x$.... */
                /* 16F8 */  0xDD, 0x0B, 0x50, 0xA7, 0x0F, 0x7E, 0x78, 0xF6,  /* ..P..~x. */
                /* 1700 */  0x05, 0xD5, 0x98, 0xEF, 0x56, 0x8F, 0x70, 0x9E,  /* ....V.p. */
                /* 1708 */  0x1C, 0xE6, 0x72, 0xC0, 0xE2, 0x5C, 0x93, 0x40,  /* ..r..\.@ */
                /* 1710 */  0x75, 0xDC, 0xE5, 0xA3, 0x83, 0x7B, 0x6D, 0xC5,  /* u....{m. */
                /* 1718 */  0x0F, 0xEE, 0x9D, 0xE5, 0x9D, 0xCF, 0x50, 0x1E,  /* ......P. */
                /* 1720 */  0x24, 0xF8, 0xAE, 0xAD, 0xE0, 0xB8, 0xAA, 0xC1,  /* $....... */
                /* 1728 */  0x38, 0xB6, 0xF0, 0x4B, 0x1E, 0xBC, 0xFF, 0xFF,  /* 8..K.... */
                /* 1730 */  0x25, 0x0F, 0xB0, 0x30, 0x2C, 0x2E, 0xF8, 0xEF,  /* %..0,... */
                /* 1738 */  0x61, 0x20, 0x2A, 0x11, 0x06, 0x45, 0x60, 0x79,  /* a *..E`y */
                /* 1740 */  0xF7, 0x56, 0x0A, 0x7F, 0xC8, 0x60, 0xBC, 0x29,  /* .V...`.) */
                /* 1748 */  0xF0, 0x49, 0x63, 0x47, 0x0D, 0xD8, 0x19, 0x2A,  /* .IcG...* */
                /* 1750 */  0xEE, 0xA6, 0x08, 0xD6, 0xA9, 0x62, 0x86, 0xC0,  /* .....b.. */
                /* 1758 */  0x83, 0x3D, 0x00, 0x7C, 0xBE, 0xF2, 0x19, 0x40,  /* .=.|...@ */
                /* 1760 */  0x51, 0x60, 0xC8, 0xFF, 0x1F, 0x86, 0x1D, 0xDA,  /* Q`...... */
                /* 1768 */  0xE1, 0xDC, 0x86, 0x01, 0x07, 0x23, 0xC6, 0x5D,  /* .....#.] */
                /* 1770 */  0x0A, 0xE1, 0x4E, 0xF9, 0x1D, 0x25, 0xF6, 0x73,  /* ..N..%.s */
                /* 1778 */  0x39, 0x9B, 0x2E, 0xEE, 0x6A, 0xEE, 0xD3, 0x09,  /* 9...j... */
                /* 1780 */  0xBB, 0x20, 0xC3, 0x38, 0x0B, 0x3C, 0x02, 0xBC,  /* . .8.<.. */
                /* 1788 */  0x9A, 0xF3, 0x0B, 0xF2, 0x0B, 0xF1, 0x0B, 0xC1,  /* ........ */
                /* 1790 */  0x1B, 0xB2, 0x6F, 0x4A, 0xCF, 0x06, 0x2F, 0x3B,  /* ..oJ../; */
                /* 1798 */  0x31, 0xDE, 0x8D, 0x7D, 0x4A, 0xF6, 0x79, 0xE7,  /* 1..}J.y. */
                /* 17A0 */  0x05, 0xD9, 0x18, 0x47, 0x13, 0x31, 0xCA, 0xB9,  /* ...G.1.. */
                /* 17A8 */  0x3D, 0x0C, 0xBC, 0x26, 0x1B, 0xE5, 0xFD, 0xE4,  /* =..&.... */
                /* 17B0 */  0x85, 0x20, 0x62, 0x34, 0x43, 0x04, 0x8D, 0x11,  /* . b4C... */
                /* 17B8 */  0xE8, 0x7D, 0xD9, 0x78, 0x2F, 0xC8, 0x4C, 0xE0,  /* .}.x/.L. */
                /* 17C0 */  0x5B, 0x41, 0x07, 0x17, 0x5F, 0x90, 0x01, 0x43,  /* [A.._..C */
                /* 17C8 */  0xFF, 0xFF, 0x0B, 0x32, 0xB0, 0x3F, 0x19, 0x01,  /* ...2.?.. */
                /* 17D0 */  0x3E, 0x4F, 0x1C, 0xB8, 0x4B, 0x35, 0xF8, 0x4E,  /* >O..K5.N */
                /* 17D8 */  0x36, 0xC0, 0xFA, 0xFF, 0x7F, 0xB2, 0x01, 0xFB,  /* 6....... */
                /* 17E0 */  0xD0, 0x7D, 0xB2, 0x01, 0xF7, 0x68, 0xE1, 0x1D,  /* .}...h.. */
                /* 17E8 */  0x4D, 0x10, 0x27, 0x1B, 0x0A, 0xE4, 0xE0, 0xEB,  /* M.'..... */
                /* 17F0 */  0xA2, 0x70, 0x3C, 0xF4, 0x49, 0x84, 0x1E, 0x9D,  /* .p<.I... */
                /* 17F8 */  0x7C, 0x94, 0xC4, 0x9D, 0x19, 0x3C, 0x91, 0x77,  /* |....<.w */
                /* 1800 */  0x16, 0x8F, 0xE2, 0x65, 0xD0, 0xF7, 0x82, 0x13,  /* ...e.... */
                /* 1808 */  0x79, 0x7D, 0xB0, 0x9C, 0x63, 0x24, 0xA8, 0x46,  /* y}..c$.F */
                /* 1810 */  0xE2, 0xE3, 0x03, 0xFC, 0xEB, 0x8B, 0x8F, 0x91,  /* ........ */
                /* 1818 */  0xF0, 0xF9, 0xFC, 0xC3, 0xF2, 0x60, 0x0C, 0xE9,  /* .....`.. */
                /* 1820 */  0x53, 0x24, 0x07, 0x79, 0x76, 0x79, 0x0C, 0xE1,  /* S$.yvy.. */
                /* 1828 */  0x17, 0x48, 0xB8, 0xA7, 0x99, 0x03, 0xC0, 0xC8,  /* .H...... */
                /* 1830 */  0xBA, 0x3C, 0xA2, 0xCF, 0x8E, 0x1C, 0x23, 0xAE,  /* .<....#. */
                /* 1838 */  0x2F, 0x8A, 0xBE, 0x02, 0xFB, 0x20, 0x70, 0x3E,  /* /.... p> */
                /* 1840 */  0xCF, 0x89, 0xE0, 0xFA, 0xFF, 0x9F, 0x13, 0x31,  /* .......1 */
                /* 1848 */  0xA3, 0xE6, 0x47, 0x1B, 0x3E, 0x7E, 0x0E, 0xFE,  /* ..G.>~.. */
                /* 1850 */  0x56, 0xF0, 0x40, 0xE9, 0x63, 0x51, 0x88, 0x47,  /* V.@.cQ.G */
                /* 1858 */  0x24, 0x7E, 0x4E, 0x04, 0x97, 0x89, 0x73, 0x22,  /* $~N...s" */
                /* 1860 */  0x90, 0x38, 0xF4, 0xC2, 0x38, 0x2D, 0xE0, 0x06,  /* .8..8-.. */
                /* 1868 */  0xE2, 0x33, 0x25, 0x76, 0xCA, 0x27, 0xC2, 0xCE,  /* .3%v.'.. */
                /* 1870 */  0x25, 0x98, 0xD1, 0x81, 0xEB, 0x72, 0xEF, 0xD1,  /* %....r.. */
                /* 1878 */  0x81, 0xFF, 0x24, 0x80, 0xC7, 0x7A, 0xBC, 0x03,  /* ..$..z.. */
                /* 1880 */  0xDF, 0x49, 0xDD, 0x77, 0x13, 0x5F, 0x64, 0x7C,  /* .I.w._d| */
                /* 1888 */  0x28, 0x7A, 0x6C, 0x01, 0x56, 0xFF, 0xFF, 0xF3,  /* (zl.V... */
                /* 1890 */  0x1D, 0x60, 0x2A, 0xDC, 0xE1, 0x0E, 0x15, 0xE7,  /* .`*..... */
                /* 1898 */  0x7C, 0x07, 0x50, 0xE3, 0x6C, 0xFD, 0x7C, 0x07,  /* |.P.l.|. */
                /* 18A0 */  0xAE, 0xFF, 0xFF, 0xF9, 0x0E, 0x86, 0xC8, 0xF3,  /* ........ */
                /* 18A8 */  0x1D, 0x40, 0xF6, 0xFF, 0xFF, 0x19, 0x00, 0x73,  /* .@.....s */
                /* 18B0 */  0x46, 0xC3, 0x9D, 0xEF, 0xC0, 0x76, 0xB4, 0x01,  /* F....v.. */
                /* 18B8 */  0xCC, 0x4D, 0xE3, 0xD1, 0x06, 0xDC, 0xC3, 0x85,  /* .M...... */
                /* 18C0 */  0x3D, 0x0C, 0x9E, 0xE1, 0x0D, 0xE5, 0x43, 0x01,  /* =.....C. */
                /* 18C8 */  0x95, 0x74, 0xCA, 0xA6, 0x30, 0x66, 0xF1, 0x91,  /* .t..0f.. */
                /* 18D0 */  0xC1, 0x07, 0x05, 0x7E, 0x64, 0xF0, 0x39, 0xE1,  /* ...~d.9. */
                /* 18D8 */  0xF1, 0xE1, 0x50, 0xD9, 0x11, 0xC6, 0x97, 0x10,  /* ..P..... */
                /* 18E0 */  0x1F, 0x15, 0x58, 0xF4, 0x71, 0xD2, 0x13, 0x14,  /* ..X.q... */
                /* 18E8 */  0x18, 0x87, 0xF8, 0xC8, 0xE7, 0x41, 0x3C, 0xD9,  /* .....A<. */
                /* 18F0 */  0xC0, 0x3A, 0x17, 0xFC, 0xFF, 0x9F, 0x0B, 0x00,  /* .:...... */
                /* 18F8 */  0x33, 0x3A, 0x9F, 0x6F, 0x1A, 0xB9, 0x35, 0x82,  /* 3:.o..5. */
                /* 1900 */  0xC8, 0xC6, 0x51, 0x84, 0x72, 0x38, 0xC9, 0xE2,  /* ..Q.r8.. */
                /* 1908 */  0x74, 0x11, 0xF4, 0x09, 0xC9, 0xD7, 0x8B, 0x53,  /* t......S */
                /* 1910 */  0x39, 0x55, 0xFC, 0x55, 0xC4, 0xCA, 0x21, 0x05,  /* 9U.U..!. */
                /* 1918 */  0xEF, 0xE3, 0x8A, 0x35, 0xC3, 0x28, 0xDE, 0x6B,  /* ...5.(.k */
                /* 1920 */  0x44, 0xA3, 0xF1, 0x08, 0x1C, 0x08, 0x46, 0x70,  /* D.....Fp */
                /* 1928 */  0x06, 0xF1, 0x49, 0xC4, 0xD9, 0x8E, 0x3A, 0x68,  /* ..I...:h */
                /* 1930 */  0x25, 0xE7, 0x3D, 0x32, 0x06, 0x76, 0xD0, 0xC1,  /* %.=2.v.. */
                /* 1938 */  0x04, 0xB9, 0x9E, 0xD0, 0x99, 0xFB, 0x72, 0xC0,  /* ......r. */
                /* 1940 */  0x35, 0x40, 0xE8, 0x00, 0x62, 0x70, 0x5F, 0x52,  /* 5@..bp_R */
                /* 1948 */  0x60, 0x5C, 0xA8, 0x7C, 0x49, 0xC1, 0x9C, 0x8D,  /* `\.|I... */
                /* 1950 */  0x3C, 0x1B, 0xAB, 0x01, 0x45, 0x0D, 0xC0, 0x68,  /* <...E..h */
                /* 1958 */  0x98, 0x73, 0xC0, 0xC3, 0x09, 0xB8, 0x72, 0x5D,  /* .s....r] */
                /* 1960 */  0xF8, 0xD0, 0x2F, 0x09, 0xDF, 0x2D, 0x1E, 0x6C,  /* ../..-.l */
                /* 1968 */  0xD8, 0xDC, 0xC0, 0xF5, 0xFF, 0x9F, 0x1B, 0xCC,  /* ........ */
                /* 1970 */  0xF1, 0x7B, 0x6E, 0xB0, 0xD0, 0x3C, 0x37, 0xF8,  /* .{n..<7. */
                /* 1978 */  0xF7, 0x3D, 0xEC, 0xE1, 0x10, 0x8F, 0xCC, 0xE6,  /* .=...... */
                /* 1980 */  0xF6, 0x1C, 0x10, 0xE1, 0x15, 0xC1, 0x97, 0x1C,  /* ........ */
                /* 1988 */  0x8F, 0x0E, 0x38, 0x00, 0x7A, 0x74, 0xB0, 0x90,  /* ..8.zt.. */
                /* 1990 */  0x3C, 0x3A, 0xB0, 0x25, 0x1C, 0x1D, 0x5A, 0x0F,  /* <:.%..Z. */
                /* 1998 */  0x88, 0x5C, 0x9E, 0xB1, 0xC8, 0xC9, 0xE4, 0xF4,  /* .\...... */
                /* 19A0 */  0x4E, 0xE6, 0x99, 0xE0, 0xEC, 0x9E, 0x2E, 0x82,  /* N....... */
                /* 19A8 */  0x04, 0x8A, 0x13, 0xFD, 0xD9, 0xC4, 0x13, 0x04,  /* ........ */
                /* 19B0 */  0x0E, 0x03, 0xF0, 0x04, 0x61, 0xA1, 0x79, 0x82,  /* ....a.y. */
                /* 19B8 */  0x60, 0x8B, 0x78, 0xCD, 0x40, 0xDF, 0x3C, 0x61,  /* `.x.@.<a */
                /* 19C0 */  0x60, 0xFF, 0xFF, 0x5F, 0xE7, 0x98, 0xF7, 0xDB,  /* `.._.... */
                /* 19C8 */  0x0D, 0xB9, 0x11, 0x00, 0x8F, 0x4B, 0xA1, 0x47,  /* .....K.G */
                /* 19D0 */  0x08, 0x0B, 0xCD, 0x47, 0x0D, 0xB0, 0xC5, 0x1B,  /* ...G.... */
                /* 19D8 */  0x21, 0x7A, 0x58, 0xBE, 0x95, 0x9C, 0xDF, 0xC9,  /* !zX..... */
                /* 19E0 */  0x1D, 0x1F, 0xB0, 0x02, 0xF6, 0xF8, 0x60, 0xA1,  /* ......`. */
                /* 19E8 */  0x78, 0x7C, 0x60, 0xD3, 0x77, 0x37, 0x02, 0x05,  /* x|`.w7.. */
                /* 19F0 */  0x90, 0x4F, 0x42, 0x3E, 0x9F, 0xBC, 0x0C, 0xB1,  /* .OB>.... */
                /* 19F8 */  0x31, 0xBC, 0x4D, 0x19, 0xCD, 0xE8, 0x3C, 0xD3,  /* 1.M...<. */
                /* 1A00 */  0x96, 0x74, 0xBE, 0xE1, 0x29, 0x60, 0x74, 0x76,  /* .t..)`tv */
                /* 1A08 */  0x31, 0x88, 0x6F, 0x24, 0x56, 0x08, 0xA2, 0x63,  /* 1.o$V..c */
                /* 1A10 */  0x08, 0xFE, 0xBA, 0xEB, 0x19, 0xBD, 0x29, 0x78,  /* ......)x */
                /* 1A18 */  0xB6, 0x26, 0xA8, 0x07, 0x52, 0x27, 0x4F, 0x38,  /* .&..R'O8 */
                /* 1A20 */  0xB7, 0x0B, 0xF6, 0xFF, 0x3F, 0x48, 0xB1, 0xBB,  /* ....?H.. */
                /* 1A28 */  0xB5, 0xCF, 0xD8, 0xF0, 0x0F, 0x99, 0x1E, 0x8F,  /* ........ */
                /* 1A30 */  0x6D, 0x1C, 0x8C, 0xE8, 0x09, 0xCB, 0x87, 0x6C,  /* m......l */
                /* 1A38 */  0x7E, 0x98, 0x78, 0x52, 0x62, 0xE7, 0xC9, 0x04,  /* ~.xRb... */
                /* 1A40 */  0x6F, 0x94, 0x09, 0x7A, 0x3B, 0x5F, 0xD3, 0x9B,  /* o..z;_.. */
                /* 1A48 */  0xB6, 0x21, 0xA3, 0x32, 0x58, 0x43, 0x3C, 0xF3,  /* .!.2XC<. */
                /* 1A50 */  0x32, 0x7D, 0xEB, 0xD3, 0x71, 0x1B, 0xAE, 0x1E,  /* 2}..q... */
                /* 1A58 */  0x40, 0x8D, 0x85, 0x2B, 0x81, 0xD1, 0xA0, 0xC3,  /* @..+.... */
                /* 1A60 */  0x3D, 0x5D, 0xBD, 0x5D, 0xF9, 0xB2, 0xE0, 0x0B,  /* =].].... */
                /* 1A68 */  0x83, 0x2F, 0x54, 0x3E, 0x7C, 0x1A, 0xEC, 0xBC,  /* ./T>|... */
                /* 1A70 */  0x22, 0xBC, 0x30, 0xF8, 0x36, 0xC5, 0x8E, 0xD7,  /* ".0.6... */
                /* 1A78 */  0x0C, 0x32, 0x54, 0x9C, 0xC0, 0x6F, 0xD7, 0x1C,  /* .2T..o.. */
                /* 1A80 */  0x2C, 0xEC, 0x63, 0xC0, 0xE3, 0x86, 0xEF, 0x65,  /* ,.c....e */
                /* 1A88 */  0xEC, 0x26, 0x10, 0xEB, 0x31, 0xC9, 0x23, 0xE6,  /* .&..1.#. */
                /* 1A90 */  0xF7, 0xA9, 0x03, 0x8A, 0xF4, 0xFC, 0xE3, 0x09,  /* ........ */
                /* 1A98 */  0xF8, 0x92, 0xE5, 0xFB, 0xE3, 0x49, 0xF9, 0xAC,  /* .....I.. */
                /* 1AA0 */  0x6A, 0xF4, 0x57, 0x09, 0x5F, 0xCA, 0x8C, 0xEC,  /* j.W._... */
                /* 1AA8 */  0x13, 0x18, 0xBB, 0x49, 0xB2, 0x41, 0xF1, 0xAB,  /* ...I.A.. */
                /* 1AB0 */  0xA9, 0x0F, 0x21, 0x9E, 0x0A, 0xBB, 0x3F, 0x61,  /* ..!...?a */
                /* 1AB8 */  0xC0, 0x8E, 0xC0, 0xA7, 0x43, 0x7E, 0x74, 0x09,  /* ....C~t. */
                /* 1AC0 */  0x14, 0xA5, 0x78, 0x4C, 0xDD, 0x1C, 0x3C, 0x43,  /* ..xL..<C */
                /* 1AC8 */  0x83, 0x62, 0xE0, 0x0F, 0x92, 0xCD, 0x2E, 0xAE,  /* .b...... */
                /* 1AD0 */  0xB1, 0x7C, 0x2F, 0x31, 0x22, 0x76, 0x40, 0x0C,  /* .|/1"v@. */
                /* 1AD8 */  0xE5, 0x3D, 0xD2, 0xEA, 0x51, 0xC8, 0x1C, 0x3C,  /* .=..Q..< */
                /* 1AE0 */  0x22, 0xCF, 0xC6, 0xD3, 0x61, 0xA7, 0x0E, 0xFC,  /* "...a... */
                /* 1AE8 */  0x24, 0x7C, 0x6A, 0xF2, 0xC1, 0xCE, 0x03, 0xF2,  /* $|j..... */
                /* 1AF0 */  0x50, 0xF8, 0x14, 0x19, 0xB0, 0xFF, 0xFF, 0xC0,  /* P....... */
                /* 1AF8 */  0x78, 0x98, 0x97, 0x00, 0x06, 0xED, 0xE1, 0x33,  /* x......3 */
                /* 1B00 */  0xF4, 0x17, 0x23, 0xA3, 0xF3, 0xF3, 0xCE, 0xE9,  /* ..#..... */
                /* 1B08 */  0xF8, 0x1C, 0xEA, 0xA3, 0x86, 0xEF, 0x01, 0x98,  /* ........ */
                /* 1B10 */  0x33, 0x99, 0x4F, 0x00, 0x3E, 0xB3, 0x31, 0xA0,  /* 3.O.>.1. */
                /* 1B18 */  0x47, 0x7B, 0x06, 0xF2, 0xBE, 0xCA, 0x2E, 0x3F,  /* G{.....? */
                /* 1B20 */  0x18, 0xA4, 0x77, 0x5D, 0x9F, 0x7E, 0x30, 0xF7,  /* ..w].~0. */
                /* 1B28 */  0x33, 0x0E, 0x16, 0xE8, 0x58, 0xF9, 0x64, 0xE2,  /* 3...X.d. */
                /* 1B30 */  0x79, 0xC2, 0x1E, 0x29, 0x9C, 0xDB, 0x26, 0x8C,  /* y..)..&. */
                /* 1B38 */  0x2B, 0x2F, 0xBF, 0x06, 0xF2, 0x5B, 0x39, 0xB8,  /* +/...[9. */
                /* 1B40 */  0xAE, 0x18, 0x3E, 0x99, 0x80, 0x19, 0x1E, 0x13,  /* ..>..... */
                /* 1B48 */  0xE8, 0x3C, 0x43, 0x65, 0x8D, 0x0B, 0x75, 0xA4,  /* .<Ce..u. */
                /* 1B50 */  0xF1, 0x35, 0x95, 0x61, 0x3F, 0x0C, 0x78, 0xD2,  /* .5.a?.x. */
                /* 1B58 */  0x87, 0x79, 0x82, 0x2F, 0x6B, 0x18, 0x58, 0x5F,  /* .y./k.X_ */
                /* 1B60 */  0x4A, 0x38, 0xAC, 0xD1, 0xC2, 0xBE, 0x0E, 0x18,  /* J8...... */
                /* 1B68 */  0xF6, 0x11, 0x10, 0x77, 0xFD, 0x05, 0x0B, 0x20,  /* ...w...  */
                /* 1B70 */  0xFE, 0x92, 0xF0, 0x60, 0xE0, 0x09, 0x18, 0x90,  /* ...`.... */
                /* 1B78 */  0xC5, 0x59, 0x15, 0x15, 0xB1, 0x1C, 0x05, 0x80,  /* .Y...... */
                /* 1B80 */  0x41, 0xFD, 0xFF, 0x47, 0xE7, 0xFB, 0x37, 0xE0,  /* A..G..7. */
                /* 1B88 */  0xE4, 0xB2, 0x8D, 0xBF, 0x47, 0xBC, 0x1E, 0x78,  /* ....G..x */
                /* 1B90 */  0xB0, 0xEC, 0xB2, 0xFD, 0x20, 0xF3, 0x80, 0xF0,  /* .... ... */
                /* 1B98 */  0x1C, 0xF3, 0x0E, 0xF3, 0x50, 0xF0, 0x2E, 0x13,  /* ....P... */
                /* 1BA0 */  0x21, 0xC8, 0x53, 0xF6, 0x3B, 0x42, 0x84, 0x50,  /* !.S.;B.P */
                /* 1BA8 */  0x81, 0x5E, 0xB6, 0x8D, 0x17, 0xF4, 0x65, 0x22,  /* .^....e" */
                /* 1BB0 */  0x4A, 0x9C, 0x28, 0x11, 0x42, 0x19, 0xE3, 0x5C,  /* J.(.B..\ */
                /* 1BB8 */  0x9E, 0x0E, 0x5E, 0x6A, 0xC2, 0x3D, 0x26, 0x04,  /* ..^j.=&. */
                /* 1BC0 */  0x7E, 0x72, 0x88, 0x12, 0xD8, 0x63, 0x7C, 0xD9,  /* ~r...c|. */
                /* 1BC8 */  0x66, 0xE2, 0x2F, 0x32, 0xBA, 0x27, 0xF9, 0xB2,  /* f./2.'.. */
                /* 1BD0 */  0x0D, 0x38, 0xFF, 0xFF, 0x5F, 0xB6, 0xC1, 0x75,  /* .8.._..u */
                /* 1BD8 */  0x71, 0x06, 0xF3, 0x8D, 0x16, 0x30, 0x77, 0x71,  /* q....0wq */
                /* 1BE0 */  0x06, 0xFB, 0x70, 0x61, 0x0F, 0x83, 0x87, 0x79,  /* ..pa...y */
                /* 1BE8 */  0x4F, 0xF8, 0x50, 0x42, 0xE5, 0xC3, 0xA0, 0xCE,  /* O.PB.... */
                /* 1BF0 */  0x25, 0xC0, 0xF1, 0xFF, 0x7F, 0x2E, 0x01, 0x46,  /* %......F */
                /* 1BF8 */  0x33, 0x7A, 0x03, 0x78, 0x15, 0x38, 0xED, 0x47,  /* 3z.x.8.G */
                /* 1C00 */  0x91, 0x87, 0x92, 0x43, 0x88, 0xF1, 0x3E, 0x12,  /* ...C..>. */
                /* 1C08 */  0xC4, 0x08, 0x87, 0xFE, 0x5C, 0xE2, 0xEB, 0xC8,  /* ....\... */
                /* 1C10 */  0x93, 0x5B, 0x88, 0x28, 0xEF, 0x27, 0x4F, 0x28,  /* .[.(.'O( */
                /* 1C18 */  0x86, 0x88, 0x12, 0x2C, 0x46, 0xB0, 0xD0, 0x4F,  /* ...,F..O */
                /* 1C20 */  0x25, 0xC6, 0x60, 0x87, 0x94, 0x20, 0xE1, 0x9E,  /* %.`.. .. */
                /* 1C28 */  0x4B, 0x98, 0xF4, 0xEF, 0x9D, 0xCE, 0xB9, 0x3E,  /* K......> */
                /* 1C30 */  0x97, 0x00, 0xFC, 0x08, 0x77, 0xB7, 0x45, 0x9F,  /* ....w.E. */
                /* 1C38 */  0x1B, 0x7C, 0x4C, 0xF0, 0xF9, 0xC0, 0x10, 0x8D,  /* .|L..... */
                /* 1C40 */  0x5F, 0x0C, 0xC8, 0xF5, 0xCD, 0x77, 0x04, 0x1F,  /* _....w.. */
                /* 1C48 */  0x13, 0x5E, 0xE0, 0x18, 0x81, 0xFF, 0xFF, 0x01,  /* .^...... */
                /* 1C50 */  0x86, 0x4E, 0xCF, 0x9D, 0xE0, 0x18, 0x94, 0x87,  /* .N...... */
                /* 1C58 */  0x07, 0xFE, 0x03, 0x19, 0x3E, 0xFC, 0x75, 0x12,  /* ....>.u. */
                /* 1C60 */  0x75, 0x4C, 0xE0, 0xC3, 0x83, 0x77, 0xFA, 0x73,  /* uL...w.s */
                /* 1C68 */  0xC8, 0xA3, 0x18, 0x1D, 0x1C, 0x38, 0x9E, 0xEF,  /* .....8.. */
                /* 1C70 */  0x1A, 0x1C, 0x08, 0x0E, 0x27, 0x0F, 0x1E, 0xD8,  /* ....'... */
                /* 1C78 */  0xC3, 0x19, 0x9B, 0x38, 0x1F, 0xC2, 0xD1, 0xF8,  /* ...8.... */
                /* 1C80 */  0x08, 0x00, 0x8E, 0xB3, 0x03, 0xF8, 0xA2, 0x0E,  /* ........ */
                /* 1C88 */  0x17, 0x7D, 0x38, 0xF0, 0x1D, 0x13, 0x06, 0xFA,  /* .}8..... */
                /* 1C90 */  0x6B, 0x86, 0x6F, 0x6F, 0x46, 0xE7, 0x71, 0x06,  /* k.ooF.q. */
                /* 1C98 */  0x0C, 0xAA, 0xC1, 0x7A, 0xC0, 0xF0, 0xFF, 0xFF,  /* ...z.... */
                /* 1CA0 */  0x67, 0x40, 0xFC, 0x0C, 0x5E, 0x2E, 0x9E, 0x2C,  /* g@..^.., */
                /* 1CA8 */  0xF8, 0x28, 0xC1, 0x77, 0xE2, 0xF3, 0x89, 0x02,  /* .(.w.... */
                /* 1CB0 */  0x37, 0x18, 0x9F, 0xEA, 0x31, 0x67, 0x09, 0xB0,  /* 7...1g.. */
                /* 1CB8 */  0x5D, 0x57, 0x7D, 0x96, 0x00, 0x3E, 0xF2, 0x0E,  /* ]W}..>.. */
                /* 1CC0 */  0x58, 0xA0, 0x39, 0x20, 0xC1, 0x38, 0x59, 0x01,  /* X.9 .8Y. */
                /* 1CC8 */  0x76, 0xC6, 0xF1, 0x64, 0x05, 0xE6, 0xFF, 0xFF,  /* v..d.... */
                /* 1CD0 */  0xF0, 0x7C, 0x04, 0xC7, 0x8F, 0x81, 0x2B, 0xB4,  /* .|....+. */
                /* 1CD8 */  0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65, 0x6A,  /* .S.Q..ej */
                /* 1CE0 */  0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6, 0x8C,  /* .iP.O... */
                /* 1CE8 */  0x09, 0x3B, 0x55, 0x29, 0xE0, 0xB3, 0x41, 0x03,  /* .;U)..A. */
                /* 1CF0 */  0xB3, 0x3C, 0x0A, 0x81, 0x58, 0xCC, 0x9B, 0x42,  /* .<..X..B */
                /* 1CF8 */  0x20, 0x0E, 0x0B, 0x42, 0x23, 0x1D, 0x8E, 0x04,  /*  ..B#... */
                /* 1D00 */  0x62, 0xC9, 0x47, 0x2C, 0x81, 0x58, 0xAE, 0x07,  /* b.G,.X.. */
                /* 1D08 */  0x10, 0x16, 0xF0, 0x4D, 0x22, 0x70, 0xF2, 0x46,  /* ...M"p.F */
                /* 1D10 */  0x12, 0x38, 0x79, 0x26, 0x08, 0xC4, 0x91, 0x41,  /* .8y&...A */
                /* 1D18 */  0xA8, 0x50, 0x1D, 0x20, 0x2C, 0x26, 0x08, 0x0D,  /* .P. ,&.. */
                /* 1D20 */  0xE5, 0x03, 0x84, 0x49, 0x7F, 0x1A, 0x08, 0x90,  /* ...I.... */
                /* 1D28 */  0x18, 0x01, 0x61, 0xE1, 0x1E, 0x12, 0x02, 0xB1,  /* ..a..... */
                /* 1D30 */  0xB4, 0xE7, 0x83, 0x40, 0x2C, 0xC4, 0x0A, 0x08,  /* ...@,... */
                /* 1D38 */  0x8B, 0x0B, 0x42, 0xC3, 0x69, 0x01, 0x61, 0x92,  /* ..B.i.a. */
                /* 1D40 */  0xCC, 0x80, 0xB0, 0x40, 0x20, 0x54, 0xFE, 0x2B,  /* ...@ T.+ */
                /* 1D48 */  0x5D, 0x20, 0x16, 0xE9, 0x06, 0x90, 0x2E, 0x5D,  /* ] .....] */
                /* 1D50 */  0x20, 0x0E, 0xA2, 0x07, 0x84, 0xC9, 0xF0, 0x03,  /*  ....... */
                /* 1D58 */  0xC2, 0x42, 0x83, 0xD0, 0x68, 0xEF, 0x09, 0x01,  /* .B..h... */
                /* 1D60 */  0x12, 0x43, 0x20, 0x2C, 0xBE, 0x23, 0x10, 0x26,  /* .C ,.#.& */
                /* 1D68 */  0xFE, 0x69, 0x22, 0x10, 0xE7, 0xB7, 0x04, 0x71,  /* .i"....q */
                /* 1D70 */  0x53, 0x1A, 0x62, 0x4D, 0x40, 0x4C, 0x83, 0x27,  /* S.bM@L.' */
                /* 1D78 */  0x20, 0xA6, 0x08, 0x44, 0x40, 0x8E, 0xFD, 0xD2,  /*  ..D@... */
                /* 1D80 */  0x10, 0x90, 0x35, 0x98, 0x02, 0x62, 0xD1, 0x41,  /* ..5..b.A */
                /* 1D88 */  0x04, 0x64, 0x21, 0xAA, 0x80, 0x58, 0x5E, 0x57,  /* .d!..X^W */
                /* 1D90 */  0x40, 0x2C, 0x3C, 0x88, 0x80, 0x9C, 0xF9, 0xCD,  /* @,<..... */
                /* 1D98 */  0x2A, 0x20, 0x2B, 0x78, 0x74, 0x3D, 0x04, 0xB0,  /* * +xt=.. */
                /* 1DA0 */  0xAF, 0xBC, 0x80, 0x9C, 0x1C, 0x44, 0x40, 0x0E,  /* .....D@. */
                /* 1DA8 */  0xEC, 0x0B, 0x88, 0xC5, 0x07, 0x11, 0x90, 0xB3,  /* ........ */
                /* 1DB0 */  0xFE, 0xC1, 0x05, 0xE4, 0xE0, 0x20, 0x1A, 0x04,  /* ..... .. */
                /* 1DB8 */  0xF9, 0x68, 0x08, 0xC8, 0xE9, 0x41, 0x04, 0x44,  /* .h...A.D */
                /* 1DC0 */  0x7E, 0xE4, 0x02, 0xB1, 0xDA, 0x2F, 0xB9, 0x40,  /* ~..../.@ */
                /* 1DC8 */  0xAC, 0xE7, 0x4F, 0xAE, 0xA1, 0x10, 0x10, 0xAA,  /* ..O..... */
                /* 1DD0 */  0x5C, 0xDD, 0x49, 0x85, 0xFD, 0xFF, 0x73, 0x80,  /* \.I...s. */
                /* 1DD8 */  0xD0, 0x5C, 0x20, 0x02, 0xB3, 0x0A, 0x77, 0x40,  /* .\ ...w@ */
                /* 1DE0 */  0x4C, 0x15, 0x88, 0x80, 0x9C, 0x00, 0x88, 0xA6,  /* L....... */
                /* 1DE8 */  0x02, 0xA1, 0x29, 0xC1, 0xA8, 0xAE, 0x37, 0x88,  /* ..)...7. */
                /* 1DF0 */  0x80, 0x9C, 0x00, 0x84, 0xA6, 0x02, 0xA1, 0x29,  /* .......) */
                /* 1DF8 */  0x41, 0x04, 0x68, 0x55, 0xF6, 0x80, 0x98, 0x52,  /* A.hU...R */
                /* 1E00 */  0x10, 0xAA, 0x1C, 0x84, 0xA6, 0x03, 0xA1, 0xB2,  /* ........ */
                /* 1E08 */  0xDF, 0xFD, 0x3A, 0x2C, 0x10, 0x10, 0x01, 0x39,  /* ..:,...9 */
                /* 1E10 */  0x3A, 0x08, 0x15, 0xEE, 0x0F, 0x84, 0xE9, 0x7D,  /* :......} */
                /* 1E18 */  0x66, 0x08, 0xD0, 0xE9, 0x40, 0x04, 0xE4, 0xC4,  /* f...@... */
                /* 1E20 */  0x20, 0x54, 0xC1, 0x0F, 0x23, 0x08, 0x11, 0x0B,  /*  T..#... */
                /* 1E28 */  0x42, 0x15, 0xFC, 0x30, 0x82, 0x12, 0x2D, 0x2F,  /* B..0..-/ */
                /* 1E30 */  0x0E, 0x01, 0x59, 0x1F, 0x08, 0xD5, 0x0B, 0x22,  /* ..Y...." */
                /* 1E38 */  0x30, 0x67, 0x03, 0xA2, 0x79, 0x41, 0x68, 0x7E,  /* 0g..yAh~ */
                /* 1E40 */  0x30, 0xAA, 0xD5, 0x28, 0x10, 0xD3, 0x0F, 0x42,  /* 0..(...B */
                /* 1E48 */  0xF3, 0x80, 0x08, 0xCC, 0x0A, 0xDE, 0x1E, 0x07,  /* ........ */
                /* 1E50 */  0xCC, 0x40, 0xA8, 0x4A, 0x10, 0x81, 0x39, 0x17,  /* .@.J..9. */
                /* 1E58 */  0x10, 0xCD, 0x0A, 0x42, 0xB3, 0x83, 0x51, 0xED,  /* ...B..Q. */
                /* 1E60 */  0x9F, 0x10, 0x0D, 0x80, 0x80, 0xD0, 0x7C, 0x20,  /* ......|  */
                /* 1E68 */  0x3A, 0x0C, 0x90, 0xE7, 0xA0, 0x80, 0xAC, 0x11,  /* :....... */
                /* 1E70 */  0x84, 0x6A, 0x06, 0xD1, 0xF1, 0x80, 0x00, 0xD1,  /* .j...... */
                /* 1E78 */  0xFC, 0x20, 0x54, 0xCF, 0xC7, 0x24, 0x18, 0xC9,  /* . T..$.. */
                /* 1E80 */  0x00, 0x22, 0x20, 0x6B, 0xF9, 0xF2, 0x07, 0x22,  /* ." k..." */
                /* 1E88 */  0xFA, 0x41, 0x04, 0xE4, 0x4C, 0x20, 0x34, 0x23,  /* .A..L 4# */
                /* 1E90 */  0x18, 0x55, 0xFB, 0x2E, 0xD2, 0x71, 0x80, 0x80,  /* .U...q.. */
                /* 1E98 */  0xD0, 0x44, 0x20, 0x1A, 0x1E, 0x79, 0xED, 0x1C,  /* .D ..y.. */
                /* 1EA0 */  0x1E, 0x03, 0xA1, 0x2A, 0x41, 0x04, 0x66, 0x8D,  /* ...*A.f. */
                /* 1EA8 */  0x0F, 0x4C, 0x81, 0x38, 0x21, 0x08, 0x55, 0x6F,  /* .L.8!.Uo */
                /* 1EB0 */  0xF7, 0xC0, 0x40, 0xF5, 0x82, 0xB0, 0xFF, 0xBF,  /* ..@..... */
                /* 1EB8 */  0x5A, 0xC1, 0x83, 0xA0, 0x20, 0x34, 0x11, 0x88,  /* Z... 4.. */
                /* 1EC0 */  0x0E, 0x19, 0xE4, 0xD5, 0x12, 0x88, 0xE8, 0x02,  /* ........ */
                /* 1EC8 */  0xA1, 0x3A, 0x41, 0x34, 0x64, 0x02, 0x44, 0xB3,  /* .:A4d.D. */
                /* 1ED0 */  0x82, 0xD0, 0xEC, 0x60, 0x34, 0xFB, 0xF3, 0x45,  /* ...`4..E */
                /* 1ED8 */  0xC3, 0x20, 0x5F, 0x25, 0x1D, 0x18, 0xC8, 0xE3,  /* . _%.... */
                /* 1EE0 */  0x31, 0x08, 0x51, 0xF4, 0x6D, 0x12, 0x88, 0x73,  /* 1.Q.m..s */
                /* 1EE8 */  0x3F, 0x80, 0x34, 0x50, 0xF2, 0x29, 0x0A, 0x42,  /* ?.4P.).B */
                /* 1EF0 */  0xB4, 0x81, 0x08, 0xCC, 0x39, 0x80, 0x68, 0x36,  /* ....9.h6 */
                /* 1EF8 */  0x10, 0x9A, 0x15, 0x8C, 0x66, 0x55, 0x7D, 0xC4,  /* ....fU}. */
                /* 1F00 */  0xA0, 0x4F, 0x9F, 0x43, 0x63, 0x2F, 0x3D, 0x81,  /* .O.Cc/=. */
                /* 1F08 */  0x58, 0xC9, 0xCB, 0xE6, 0xD1, 0x82, 0xFD, 0xBC,  /* X....... */
                /* 1F10 */  0x82, 0xB0, 0x4F, 0x59, 0x60, 0xF6, 0x32, 0xD2,  /* ..OY`.2. */
                /* 1F18 */  0x31, 0x80, 0x80, 0x50, 0x3D, 0xCF, 0x33, 0x1D,  /* 1..P=.3. */
                /* 1F20 */  0x01, 0x08, 0x88, 0x8E, 0x00, 0x04, 0x84, 0x66,  /* .......f */
                /* 1F28 */  0x04, 0xA1, 0xD9, 0x41, 0xA8, 0xAE, 0xA7, 0xA3,  /* ...A.... */
                /* 1F30 */  0x40, 0xAD, 0xED, 0xBF, 0x13, 0x84, 0x24, 0x03,  /* @.....$. */
                /* 1F38 */  0xA1, 0xAA, 0x7F, 0xF3, 0x41, 0x88, 0xE2, 0xB7,  /* ....A... */
                /* 1F40 */  0xA3, 0x86, 0x49, 0x9E, 0x6A, 0x0F, 0x01, 0xEC,  /* ..I.j... */
                /* 1F48 */  0xA5, 0x28, 0x70, 0xEB, 0x06, 0xA1, 0x39, 0x40,  /* .(p...9@ */
                /* 1F50 */  0x34, 0x50, 0x02, 0x44, 0xB5, 0xFC, 0x2E, 0x35,  /* 4P.D...5 */
                /* 1F58 */  0x50, 0x02, 0x22, 0x30, 0x67, 0x02, 0xA2, 0x39,  /* P."0g..9 */
                /* 1F60 */  0x41, 0xA8, 0x0A, 0xFD, 0xC3, 0xA0, 0x20, 0x02,  /* A..... . */
                /* 1F68 */  0x72, 0x0A, 0x10, 0x9A, 0x0A, 0x8C, 0xEA, 0xF0,  /* r....... */
                /* 1F70 */  0x3F, 0x00, 0x0A, 0x42, 0xB5, 0x82, 0xE8, 0x70,  /* ?..B...p */
                /* 1F78 */  0x41, 0x12, 0x80, 0xB0, 0xA4, 0x20, 0x34, 0x45,  /* A.... 4E */
                /* 1F80 */  0x83, 0x83, 0x09, 0x8D, 0x00, 0x48, 0x2B, 0x1C,  /* .....H+. */
                /* 1F88 */  0x6E, 0x68, 0x08, 0x70, 0x16, 0x0A, 0x84, 0x06,  /* nh.p.... */
                /* 1F90 */  0x05, 0xD1, 0xB1, 0xC5, 0xA9, 0x41, 0x04, 0x68,  /* .....A.h */
                /* 1F98 */  0x81, 0x25, 0x0E, 0x20, 0x14, 0x84, 0xFE, 0xFF,  /* .%. .... */
                /* 1FA0 */  0x03, 0x80, 0x08, 0xD0, 0x69, 0x40, 0x74, 0x44,  /* ....i@tD */
                /* 1FA8 */  0x20, 0x60, 0x54, 0x47, 0x8A, 0x21, 0x51, 0x10,  /*  `TG.!Q. */
                /* 1FB0 */  0x01, 0x5A, 0x28, 0x88, 0x8E, 0x3E, 0xA4, 0x05,  /* .Z(..>.. */
                /* 1FB8 */  0x18, 0x13, 0x05, 0x42, 0xC5, 0x83, 0x50, 0xAD,  /* ...B..P. */
                /* 1FC0 */  0x31, 0x40, 0x99, 0x72, 0x10, 0x81, 0x3A, 0x39,  /* 1@.r..:9 */
                /* 1FC8 */  0x88, 0x8E, 0x04, 0xA4, 0xC6, 0xA1, 0x82, 0x82,  /* ........ */
                /* 1FD0 */  0x50, 0xD5, 0x20, 0x54, 0x4E, 0x0E, 0x10, 0x26,  /* P. TN..& */
                /* 1FD8 */  0x0D, 0x84, 0xCA, 0x05, 0xD1, 0x00, 0xAC, 0x1D,  /* ........ */
                /* 1FE0 */  0x44, 0xC7, 0x26, 0x02, 0x46, 0xE3, 0x83, 0x50,  /* D.&.F..P */
                /* 1FE8 */  0x49, 0x3D, 0x00, 0x99, 0x3E, 0x10, 0x01, 0x3A,  /* I=..>..: */
                /* 1FF0 */  0x3D, 0x88, 0x0E, 0x03, 0x24, 0xC8, 0x41, 0x84,  /* =...$.A. */
                /* 1FF8 */  0x82, 0x50, 0x89, 0x45, 0x40, 0x99, 0x60, 0x10,  /* .P.E@.`. */
                /* 2000 */  0x1D, 0x7F, 0x08, 0x88, 0xC0, 0x2C, 0x23, 0x09,  /* .....,#. */
                /* 2008 */  0x08, 0x13, 0x07, 0x42, 0xC5, 0x82, 0x50, 0x21,  /* ...B..P! */
                /* 2010 */  0x51, 0x40, 0x59, 0x0C, 0x10, 0x1A, 0x24, 0x0B,  /* Q@Y...$. */
                /* 2018 */  0x18, 0x0B, 0x07, 0x42, 0xC3, 0x82, 0xE8, 0x78,  /* ...B...x */
                /* 2020 */  0x45, 0xBA, 0x00, 0x31, 0xC9, 0x20, 0x34, 0x02,  /* E..1. 4. */
                /* 2028 */  0x08, 0x0D, 0x0B, 0x22, 0x40, 0x12, 0x06, 0x90,  /* ..."@... */
                /* 2030 */  0x82, 0xD0, 0x08, 0x20, 0x34, 0x2B, 0x08, 0xD5,  /* ... 4+.. */
                /* 2038 */  0x5E, 0x06, 0x94, 0x25, 0x06, 0xD1, 0x91, 0x81,  /* ^..%.... */
                /* 2040 */  0xA4, 0x39, 0x9C, 0x50, 0x10, 0x81, 0x39, 0x0D,  /* .9.P..9. */
                /* 2048 */  0x10, 0x4D, 0x08, 0x42, 0x13, 0x83, 0x50, 0x79,  /* .M.B..Py */
                /* 2050 */  0x6D, 0x40, 0x58, 0x7A, 0x10, 0x1D, 0x1F, 0xC8,  /* m@Xz.... */
                /* 2058 */  0x83, 0x51, 0xC7, 0x07, 0x02, 0x42, 0x53, 0x81,  /* .Q...BS. */
                /* 2060 */  0xE8, 0xC0, 0x43, 0xEA, 0x1C, 0x78, 0x28, 0x08,  /* ..C..x(. */
                /* 2068 */  0x55, 0x0F, 0xA2, 0xC3, 0x03, 0x29, 0x04, 0xC2,  /* U....).. */
                /* 2070 */  0x74, 0x26, 0x3A, 0xD6, 0xD0, 0x46, 0x07, 0x03,  /* t&:..F.. */
                /* 2078 */  0xFA, 0x08, 0x16, 0xA8, 0xFF, 0xFF, 0x6A, 0x2A,  /* ......j* */
                /* 2080 */  0x81, 0x30, 0x75, 0x20, 0x54, 0x3F, 0x08, 0xCD,  /* .0u T?.. */
                /* 2088 */  0x0A, 0x22, 0x50, 0xEB, 0xCB, 0x74, 0x10, 0xA0,  /* ."P..t.. */
                /* 2090 */  0x20, 0x34, 0x03, 0x88, 0x06, 0x40, 0x80, 0xA8,  /*  4...@.. */
                /* 2098 */  0x9A, 0x4E, 0x03, 0xA0, 0x20, 0x3A, 0xA4, 0x90,  /* .N.. :.. */
                /* 20A0 */  0x54, 0xC7, 0x12, 0xDA, 0x0A, 0x84, 0xA5, 0x05,  /* T....... */
                /* 20A8 */  0xA1, 0xC2, 0x7A, 0x81, 0x32, 0x91, 0x20, 0x54,  /* ..z.2. T */
                /* 20B0 */  0x38, 0x88, 0x8E, 0x06, 0x4E, 0x01, 0xA2, 0xA3,  /* 8...N... */
                /* 20B8 */  0x0A, 0x01, 0xA3, 0xD9, 0x41, 0xA8, 0x9E, 0x60,  /* ....A..` */
                /* 20C0 */  0x80, 0x4C, 0x1C, 0x88, 0x00, 0x9D, 0x04, 0x44,  /* .L.....D */
                /* 20C8 */  0x83, 0x25, 0x20, 0x34, 0x29, 0x20, 0x8D, 0x0D,  /* .% 4) .. */
                /* 20D0 */  0x48, 0xA5, 0x16, 0x3B, 0x46, 0x51, 0x10, 0x1A,  /* H..;FQ.. */
                /* 20D8 */  0x05, 0x44, 0x80, 0xCE, 0x05, 0xA2, 0xC3, 0x1C,  /* .D...... */
                /* 20E0 */  0x49, 0x76, 0xCA, 0xA4, 0x20, 0x54, 0x2C, 0x88,  /* Iv.. T,. */
                /* 20E8 */  0x0E, 0x17, 0x04, 0x44, 0x80, 0x8E, 0x0A, 0x46,  /* ...D...F */
                /* 20F0 */  0x63, 0x83, 0x50, 0x29, 0xCD, 0x00, 0x99, 0x2E,  /* c.P).... */
                /* 20F8 */  0x10, 0x01, 0x3A, 0x35, 0x88, 0xC0, 0xAC, 0x21,  /* ..:5...! */
                /* 2100 */  0xDA, 0x21, 0x81, 0x82, 0xD0, 0x68, 0xD9, 0x40,  /* .!...h.@ */
                /* 2108 */  0x59, 0x50, 0x10, 0x1D, 0xED, 0x48, 0x37, 0x30,  /* YP...H70 */
                /* 2110 */  0x26, 0x1F, 0x84, 0x86, 0x02, 0xA1, 0x21, 0x41,  /* &.....!A */
                /* 2118 */  0x68, 0x80, 0x72, 0x87, 0x38, 0x0A, 0x42, 0xE5,  /* h.r.8.B. */
                /* 2120 */  0xD4, 0x03, 0x61, 0x61, 0x40, 0xA8, 0xD0, 0x7C,  /* ..aa@..| */
                /* 2128 */  0x47, 0x3B, 0xDA, 0x0F, 0x90, 0x06, 0x04, 0x61,  /* G;.....a */
                /* 2130 */  0xF1, 0x40, 0xE8, 0xFF, 0x1F                     /* .@... */
            })
            OperationRegion (CMS1, SystemIO, 0x72, 0x02)
            Field (CMS1, ByteAcc, NoLock, Preserve)
            {
                CMSI,   8, 
                CMSD,   8
            }

            IndexField (CMSI, CMSD, ByteAcc, NoLock, Preserve)
            {
                Offset (0xF7), 
                HSDC,   8, 
                HSDS,   8, 
                HBUC,   8, 
                HBUS,   8
            }

            Method (CMSW, 2, NotSerialized)
            {
                CMSI = Arg0
                CMSD = Arg1
            }

            Method (CMSR, 1, NotSerialized)
            {
                CMSI = Arg0
                Return (CMSD) /* \_SB_.WMID.CMSD */
            }

            OperationRegion (EXCO, SystemIO, 0x72, 0x02)
            Field (EXCO, ByteAcc, NoLock, Preserve)
            {
                INDX,   8, 
                DATA,   8
            }

            IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
            {
                Offset (0xC0), 
                WTCP,   8, 
                WTGP,   8, 
                WTSP,   8, 
                WTFP,   8, 
                WTBP,   8, 
                WTHP,   8, 
                Offset (0xC7), 
                BTLS,   1, 
                WLAN,   1, 
                BLTH,   1, 
                WWAN,   1
            }

            Name (WMIE, Zero)
            Name (WMIR, Zero)
            Name (SUBC, Zero)
            Name (SIZE, Zero)
            Name (TDA0, Zero)
            Name (RCDS, Package (0x3A)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                One, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WCDS, Package (0x3A)
            {
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                0x0C, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x08, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x04, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x80, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x80, 
                0x04, 
                Zero, 
                0x04
            })
            Name (RTCC, Zero)
            Method (GHWI, 2, NotSerialized)
            {
                HWCT = Arg0
                HWBC = Arg1
                If (CondRefOf (\SSMP))
                {
                    \SSMP = 0xC3
                }
                Else
                {
                }

                If ((HWRC != Zero))
                {
                    RTCC = HWRC /* \_SB_.WMID.HWRC */
                }

                Return (Zero)
            }

            Method (RDCF, 2, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = Arg0
                    If ((_T_0 == 0x04))
                    {
                        RTCC = Zero
                        Return (GDKS ())
                    }
                    ElseIf ((_T_0 == 0x07))
                    {
                        CreateByteField (Arg1, 0x10, GTDA)
                        RTCC = Zero
                        Return (BATT (GTDA))
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        RTCC = Zero
                        Return (GBBT ())
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        RTCC = Zero
                        Return (GHKS ())
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        If (\_SB.PCI0.LPC0.ECOK)
                        {
                            RTCC = Zero
                        }

                        Return (GHKF ())
                    }
                    ElseIf ((_T_0 == 0x0C))
                    {
                        If (\_SB.PCI0.LPC0.ECOK)
                        {
                            RTCC = Zero
                        }

                        Return (GBBV ())
                    }
                    ElseIf ((_T_0 == 0x0D))
                    {
                        RTCC = Zero
                        Return (GFRT ())
                    }
                    ElseIf ((_T_0 == 0x0F))
                    {
                        RTCC = Zero
                        Return (GADP ())
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        RTCC = Zero
                        Return (GWSD ())
                    }
                    ElseIf ((_T_0 == 0x1B))
                    {
                        RTCC = Zero
                        Return (GWDS ())
                    }
                    ElseIf ((_T_0 == 0x1D))
                    {
                        RTCC = Zero
                        Return (GDLC ())
                    }
                    ElseIf ((_T_0 == 0x1E))
                    {
                        RTCC = Zero
                        Return (GBUS ())
                    }
                    ElseIf ((_T_0 == 0x28))
                    {
                        CreateDWordField (Arg1, 0x10, DDWD)
                        RTCC = Zero
                        Return (GTDC (DDWD))
                    }
                    ElseIf ((_T_0 == 0x29))
                    {
                        RTCC = Zero
                        Return (GFCC ())
                    }
                    ElseIf ((_T_0 == 0x2A))
                    {
                        RTCC = Zero
                        Return (GPES ())
                    }
                    ElseIf ((_T_0 == 0x2B))
                    {
                        RTCC = Zero
                        Return (GBCO ())
                    }
                    ElseIf ((_T_0 == 0x2C))
                    {
                        RTCC = Zero
                        Return (GTCS ())
                    }
                    ElseIf ((_T_0 == 0x2E))
                    {
                        RTCC = Zero
                        Return (GHTP ())
                    }
                    ElseIf ((_T_0 == 0x35))
                    {
                        RTCC = Zero
                        Return (GJVS ())
                    }
                    ElseIf ((_T_0 == 0x36))
                    {
                        RTCC = Zero
                        Return (GPST ())
                    }
                    ElseIf ((_T_0 == 0x37))
                    {
                        RTCC = Zero
                        Return (GBCT ())
                    }
                    ElseIf ((_T_0 == 0x38))
                    {
                        RTCC = Zero
                        Return (GBST ())
                    }
                    Else
                    {
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x04, 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           /* .... */
                                }
                            }
                        RTCC = 0x04
                        Return (Local0)
                    }

                    Break
                }
            }

            Method (WRCF, 2, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                CreateDWordField (Arg1, 0x10, DDWD)
                While (One)
                {
                    _T_0 = Arg0
                    If ((_T_0 == 0x09))
                    {
                        RTCC = Zero
                        Return (SHKS (DDWD))
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        RTCC = Zero
                        Return (SHKF (DDWD))
                    }
                    ElseIf ((_T_0 == 0x0B))
                    {
                        RTCC = Zero
                        Return (SHKS (DDWD))
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        CreateDWordField (Arg1, 0x10, DAB0)
                        CreateWordField (Arg1, 0x14, DAB1)
                        CreateWordField (Arg1, 0x16, DAB2)
                        RTCC = Zero
                        Return (SWSD (DAB0, DAB1, DAB2))
                    }
                    ElseIf ((_T_0 == 0x1B))
                    {
                        RTCC = Zero
                        Return (SWDS (DDWD))
                    }
                    ElseIf ((_T_0 == 0x1D))
                    {
                        RTCC = Zero
                        Return (SDLC (DDWD))
                    }
                    ElseIf ((_T_0 == 0x1E))
                    {
                        RTCC = Zero
                        Return (SBUS (DDWD))
                    }
                    ElseIf ((_T_0 == 0x1F))
                    {
                        RTCC = Zero
                        Return (SBCR (DDWD))
                    }
                    ElseIf ((_T_0 == 0x27))
                    {
                        RTCC = Zero
                        Return (0xFF)
                    }
                    ElseIf ((_T_0 == 0x28))
                    {
                        RTCC = Zero
                        Return (STDC (DDWD))
                    }
                    ElseIf ((_T_0 == 0x29))
                    {
                        RTCC = Zero
                        Return (SFCC (DDWD))
                    }
                    ElseIf ((_T_0 == 0x2A))
                    {
                        RTCC = Zero
                        Return (SPES (DDWD))
                    }
                    ElseIf ((_T_0 == 0x2B))
                    {
                        RTCC = Zero
                        Return (SBCO (DDWD))
                    }
                    ElseIf ((_T_0 == 0x2C))
                    {
                        RTCC = Zero
                        Return (STCS (DDWD))
                    }
                    ElseIf ((_T_0 == 0x35))
                    {
                        RTCC = Zero
                        Return (SJVS (DDWD))
                    }
                    ElseIf ((_T_0 == 0x36))
                    {
                        RTCC = Zero
                        Return (SPST (Arg1))
                    }
                    ElseIf ((_T_0 == 0x37))
                    {
                        RTCC = Zero
                        Return (SBCT (Arg1))
                    }
                    ElseIf ((_T_0 == 0x38))
                    {
                        RTCC = Zero
                        Return (SBST (Arg1))
                    }
                    Else
                    {
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x04, 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           /* .... */
                                }
                            }
                        RTCC = 0x04
                        Return (Local0)
                    }

                    Break
                }
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                Concatenate (WEI1, WED1, Local0)
                Return (Local0)
            }

            Method (GDKS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x04 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        One, 
                        Buffer (One)
                        {
                             0x00                                             /* . */
                        }
                    }
                Return (Local0)
            }

            Mutex (BTMX, 0x00)
            Method (BATT, 1, NotSerialized)
            {
                Debug = "Get Battery Information-----"
                If ((Arg0 != Zero))
                {
                    Local0 = Package (0x02)
                        {
                            0x06, 
                            Zero
                        }
                }
                ElseIf (\_SB.PCI0.LPC0.ECOK)
                {
                    If ((\_SB.PCI0.LPC0.EC0.BOL0 == Zero))
                    {
                        Local0 = Package (0x02)
                            {
                                0x34, 
                                Zero
                            }
                    }
                    Else
                    {
                        Acquire (BTMX, 0xFFFF)
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x80, 
                                Buffer (0x80) {}
                            }
                        If ((\_SB.PCI0.LPC0.EC0.BAM0 == Zero))
                        {
                            Local2 = (\_SB.PCI0.LPC0.EC0.BDC0 * 0x2710)
                            Divide (Local2, \_SB.PCI0.LPC0.EC0.BDV0, Local1, Local2)
                        }
                        Else
                        {
                            Local2 = \_SB.PCI0.LPC0.EC0.BDC0 /* External reference */
                        }

                        DerefOf (Local0 [0x02]) [Zero] = Local2
                        DerefOf (Local0 [0x02]) [One] = (Local2 >> 0x08
                            )
                        If ((\_SB.PCI0.LPC0.EC0.BAM0 == Zero))
                        {
                            Local3 = (\_SB.PCI0.LPC0.EC0.BFC0 * 0x2710)
                            Divide (Local3, \_SB.PCI0.LPC0.EC0.BDV0, Local1, Local3)
                        }
                        Else
                        {
                            Local3 = \_SB.PCI0.LPC0.EC0.BFC0 /* External reference */
                        }

                        DerefOf (Local0 [0x02]) [0x02] = Local3
                        DerefOf (Local0 [0x02]) [0x03] = (Local3 >> 0x08
                            )
                        If ((\_SB.PCI0.LPC0.EC0.BAM0 == Zero))
                        {
                            Local2 = (\_SB.PCI0.LPC0.EC0.BRC0 * 0x2710)
                            Divide (Local2, \_SB.PCI0.LPC0.EC0.BDV0, Local1, Local2)
                        }
                        Else
                        {
                            Local2 = \_SB.PCI0.LPC0.EC0.BRC0 /* External reference */
                        }

                        DerefOf (Local0 [0x02]) [0x04] = Local2
                        DerefOf (Local0 [0x02]) [0x05] = (Local2 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x06] = \_SB.PCI0.LPC0.EC0.MXER /* External reference */
                        DerefOf (Local0 [0x02]) [0x07] = (\_SB.PCI0.LPC0.EC0.MXER >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x08] = \_SB.PCI0.LPC0.EC0.CYC0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x09] = (\_SB.PCI0.LPC0.EC0.CYC0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x0A] = \_SB.PCI0.LPC0.EC0.BAT0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x0C] = \_SB.PCI0.LPC0.EC0.BPV0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x0D] = (\_SB.PCI0.LPC0.EC0.BPV0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x0E] = \_SB.PCI0.LPC0.EC0.BPC0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x0F] = (\_SB.PCI0.LPC0.EC0.BPC0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x10] = \_SB.PCI0.LPC0.EC0.BDV0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x11] = (\_SB.PCI0.LPC0.EC0.BDV0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x12] = \_SB.PCI0.LPC0.EC0.BSSB /* External reference */
                        DerefOf (Local0 [0x02]) [0x13] = (\_SB.PCI0.LPC0.EC0.BSSB >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x14] = \_SB.PCI0.LPC0.EC0.BCV1 /* External reference */
                        DerefOf (Local0 [0x02]) [0x15] = (\_SB.PCI0.LPC0.EC0.BCV1 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x16] = \_SB.PCI0.LPC0.EC0.BCV2 /* External reference */
                        DerefOf (Local0 [0x02]) [0x17] = (\_SB.PCI0.LPC0.EC0.BCV2 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x18] = \_SB.PCI0.LPC0.EC0.BCV3 /* External reference */
                        DerefOf (Local0 [0x02]) [0x19] = (\_SB.PCI0.LPC0.EC0.BCV3 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x1A] = \_SB.PCI0.LPC0.EC0.BCV4 /* External reference */
                        DerefOf (Local0 [0x02]) [0x1B] = (\_SB.PCI0.LPC0.EC0.BCV4 >> 0x08
                            )
                        Local7 = \_SB.PCI0.LPC0.EC0.BSN0 /* External reference */
                        Name (SERN, Buffer (0x06)
                        {
                             0x30, 0x30, 0x30, 0x30, 0x30, 0x20               /* 00000  */
                        })
                        Local6 = 0x04
                        While (Local7)
                        {
                            Divide (Local7, 0x0A, Local5, Local7)
                            SERN [Local6] = (Local5 + 0x30)
                            Local6--
                        }

                        CreateField (DerefOf (Local0 [0x02]), 0xE0, (SizeOf (SERN) * 0x08), 
                            BSNO)
                        BSNO = SERN /* \_SB_.WMID.BATT.SERN */
                        Local7 = \_SB.PCI0.LPC0.EC0.BMD0 /* External reference */
                        Name (BMDN, Buffer (0x0A)
                        {
                            /* 0000 */  0x30, 0x30, 0x2F, 0x30, 0x30, 0x2F, 0x20, 0x20,  /* 00/00/   */
                            /* 0008 */  0x20, 0x20                                       /*    */
                        })
                        Local4 = ((Local7 >> 0x05) & 0x0F)
                        Local6 = One
                        While (Local4)
                        {
                            Divide (Local4, 0x0A, Local5, Local4)
                            BMDN [Local6] = (Local5 + 0x30)
                            Local6--
                        }

                        Local4 = (Local7 & 0x1F)
                        Local6 = 0x04
                        While (Local4)
                        {
                            Divide (Local4, 0x0A, Local5, Local4)
                            BMDN [Local6] = (Local5 + 0x30)
                            Local6--
                        }

                        Local4 = (Local7 >> 0x09)
                        Local4 += 0x07BC
                        Local6 = 0x09
                        While (Local4)
                        {
                            Divide (Local4, 0x0A, Local5, Local4)
                            BMDN [Local6] = (Local5 + 0x30)
                            Local6--
                        }

                        CreateField (DerefOf (Local0 [0x02]), 0x0110, (SizeOf (BMDN) * 0x08), 
                            BMNO)
                        BMNO = BMDN /* \_SB_.WMID.BATT.BMDN */
                        Local1 = \_SB.PCI0.LPC0.EC0.BMNN /* External reference */
                        Local2 = Buffer (0x09)
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x00                                             /* . */
                            }
                        CreateField (DerefOf (Local0 [0x02]), 0x0160, (SizeOf (Local1) * 0x08), 
                            BMA0)
                        CreateField (DerefOf (Local0 [0x02]), 0x01A8, 0x48, BMA1)
                        BMA0 = Local1
                        BMA1 = Local2
                        Local3 = \_SB.PCI0.LPC0.EC0.BCTL /* External reference */
                        Local2 = 0x3E
                        Local4 = Zero
                        Local1 = 0x0F
                        While (Local1)
                        {
                            Local5 = DerefOf (Local3 [Local4])
                            DerefOf (Local0 [0x02]) [Local2] = Local5
                            Local1--
                            Local2++
                            Local4++
                        }

                        DerefOf (Local0 [0x02]) [Local2] = Zero
                        Local3 = \_SB.PCI0.LPC0.EC0.BDVN /* External reference */
                        Local2 = 0x4F
                        Local4 = Zero
                        Local1 = 0x07
                        While (Local1)
                        {
                            Local5 = DerefOf (Local3 [Local4])
                            DerefOf (Local0 [0x02]) [Local2] = Local5
                            Local1--
                            Local2++
                            Local4++
                        }

                        Local3 = \_SB.PCI0.LPC0.EC0.BTDC /* External reference */
                        Local2 = 0x56
                        Local4 = Zero
                        Local1 = 0x04
                        While (Local1)
                        {
                            Local5 = DerefOf (Local3 [Local4])
                            DerefOf (Local0 [0x02]) [Local2] = Local5
                            Local1--
                            Local2++
                            Local4++
                        }

                        DerefOf (Local0 [0x02]) [0x5A] = \_SB.PCI0.LPC0.EC0.MUAC /* External reference */
                        DerefOf (Local0 [0x02]) [0x5B] = (\_SB.PCI0.LPC0.EC0.MUAC >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x5C] = \_SB.PCI0.LPC0.EC0.BMD0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x5D] = (\_SB.PCI0.LPC0.EC0.BMD0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x5E] = \_SB.PCI0.LPC0.EC0.BCG0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x5F] = (\_SB.PCI0.LPC0.EC0.BCG0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x60] = \_SB.PCI0.LPC0.EC0.BACV /* External reference */
                        DerefOf (Local0 [0x02]) [0x61] = (\_SB.PCI0.LPC0.EC0.BACV >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x62] = \_SB.PCI0.LPC0.EC0.BAC0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x63] = (\_SB.PCI0.LPC0.EC0.BAC0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x64] = \_SB.PCI0.LPC0.EC0.RTTE /* External reference */
                        DerefOf (Local0 [0x02]) [0x65] = (\_SB.PCI0.LPC0.EC0.RTTE >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x66] = \_SB.PCI0.LPC0.EC0.ATTE /* External reference */
                        DerefOf (Local0 [0x02]) [0x67] = (\_SB.PCI0.LPC0.EC0.ATTE >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x68] = \_SB.PCI0.LPC0.EC0.ATTF /* External reference */
                        DerefOf (Local0 [0x02]) [0x69] = (\_SB.PCI0.LPC0.EC0.ATTF >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x6A] = One
                        Release (BTMX)
                    }
                }

                Debug = Local0
                Return (Local0)
            }

            Method (GBBT, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80)
                        {
                            /* 0000 */  0x31, 0x01, 0x9B, 0x01, 0xFF, 0x01, 0x63, 0x02,  /* 1.....c. */
                            /* 0008 */  0xAE, 0x01, 0x64, 0x02, 0x9D, 0x01, 0xB6, 0x01,  /* ..d..... */
                            /* 0010 */  0xB7, 0x01, 0x65, 0x02, 0x66, 0x02, 0x67, 0x02,  /* ..e.f.g. */
                            /* 0018 */  0x68, 0x02, 0xFF, 0xFF, 0x9A, 0x21, 0x9B, 0x21,  /* h....!.! */
                            /* 0020 */  0x00, 0x00                                       /* .. */
                        }
                    }
                Return (Local0)
            }

            Method (GHKS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }
                If (\_SB.PCI0.LPC0.ECOK)
                {
                    DerefOf (Local0 [0x02]) [Zero] = \_SB.PCI0.LPC0.EC0.WMIM /* External reference */
                }

                Return (Local0)
            }

            Method (SHKS, 1, Serialized)
            {
                If (\_SB.PCI0.LPC0.ECOK)
                {
                    \_SB.PCI0.LPC0.EC0.WMIM = Arg0
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (HKFR, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }
                If (\_SB.PCI0.LPC0.ECOK)
                {
                    Local1 = \_SB.PCI0.LPC0.EC0.REC1 /* External reference */
                    \_SB.PCI0.LPC0.EC0.REC1 = Zero
                    DerefOf (Local0 [0x02]) [Zero] = Local1
                    Local2 = \_SB.PCI0.LPC0.EC0.REC2 /* External reference */
                    \_SB.PCI0.LPC0.EC0.REC2 = Zero
                    DerefOf (Local0 [0x02]) [One] = Local2
                }

                If (((Local1 == 0xB6) && (Local2 == One)))
                {
                    Sleep (0x01F4)
                    DerefOf (Local0 [0x02]) [0x02] = \_SB.PCI0.LPC0.EC0.BRTS /* External reference */
                    DerefOf (Local0 [0x02]) [0x03] = 0x0A
                }

                If (((Local1 == 0xB7) && (Local2 == One)))
                {
                    Sleep (0x01F4)
                    DerefOf (Local0 [0x02]) [0x02] = \_SB.PCI0.LPC0.EC0.BRTS /* External reference */
                    DerefOf (Local0 [0x02]) [0x03] = 0x0A
                }

                Return (Local0)
            }

            Method (GHKF, 0, NotSerialized)
            {
                Local1 = HKFR ()
                Return (Local1)
            }

            Method (SHKF, 1, NotSerialized)
            {
                Local0 = (Local0 = Arg0 & 0xFF)
                Local1 = ((Local1 = (Local1 = Arg0 >> 0x08)) & 0xFF)
                If (\_SB.PCI0.LPC0.ECOK)
                {
                    \_SB.PCI0.LPC0.EC0.WEC1 = Local0
                    \_SB.PCI0.LPC0.EC0.WEC2 = Local1
                    \_SB.PCI0.LPC0.EC0.REC1 = Local0
                    \_SB.PCI0.LPC0.EC0.REC2 = Local1
                }

                Return (HKFR ())
            }

            Method (GBBV, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                DerefOf (Local0 [0x02]) [0x02] = Zero
                DerefOf (Local0 [0x02]) [0x03] = Zero
                Return (Local0)
            }

            Method (GFRT, 0, NotSerialized)
            {
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                Local3 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }
                Local0 |= 0x02
                Local0 |= 0x10
                Local0 |= 0x20
                Local0 |= 0x80
                Local1 |= One
                Local1 |= 0x08
                Local1 |= 0x10
                Local1 |= 0x40
                Local1 |= 0x80
                Local2 |= One
                Local2 |= 0x02
                DerefOf (Local3 [0x02]) [Zero] = Local0
                DerefOf (Local3 [0x02]) [One] = Local1
                DerefOf (Local3 [0x02]) [0x02] = Local2
                Return (Local3)
            }

            Method (GADP, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }
                DerefOf (Local0 [0x02]) [Zero] = One
                If (\_SB.PCI0.LPC0.ECOK)
                {
                    Local1 = \_SB.PCI0.LPC0.EC0.SADP /* External reference */
                    Local1 &= 0xF0
                    Local2 = \_SB.PCI0.LPC0.EC0.SAD2 /* External reference */
                    Local2 &= 0x02
                    If ((Local1 == 0x80))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x03
                    }

                    If ((Local1 == 0x20))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x02
                    }

                    If ((Local1 == 0x10))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = One
                    }

                    If ((Local2 == 0x02))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x04
                    }
                }

                Return (Local0)
            }

            Method (GWSD, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x08, 
                        Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        }
                    }
                GHWI (0x10, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x40, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateQWordField (Local1, Zero, HWQ1)
                BUFS = HWQ1 /* \_SB_.WMID.GWSD.HWQ1 */
                Return (Local0)
            }

            Method (SWSD, 3, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                CreateWordField (Local0, 0x04, HWW1)
                CreateWordField (Local0, 0x06, HWW2)
                HWD1 = Arg0
                HWW1 = Arg1
                HWW2 = Arg2
                HWBF = Local0
                GHWI (0x10, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GWDS, 0, NotSerialized)
            {
                WMIE = One
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                If ((OSYS >= 0x07DC))
                {
                    Local0 = Package (0x03)
                        {
                            0x04, 
                            0x80, 
                            Buffer (0x80) {}
                        }
                    Return (Local0)
                }
                Else
                {
                    Local0 = Package (0x03)
                        {
                            Zero, 
                            0x80, 
                            Buffer (0x80) {}
                        }
                }

                DerefOf (Local0 [0x02]) [Zero] = One
                DerefOf (Local0 [0x02]) [One] = Zero
                DerefOf (Local0 [0x02]) [0x02] = Zero
                DerefOf (Local0 [0x02]) [0x03] = Zero
                DerefOf (Local0 [0x02]) [0x04] = Zero
                DerefOf (Local0 [0x02]) [0x05] = Zero
                DerefOf (Local0 [0x02]) [0x06] = 0x02
                DerefOf (Local0 [0x02]) [0x07] = Zero
                DerefOf (Local0 [0x02]) [0x08] = Zero
                DerefOf (Local0 [0x02]) [0x09] = Zero
                DerefOf (Local0 [0x02]) [0x0A] = Zero
                DerefOf (Local0 [0x02]) [0x0B] = Zero
                DerefOf (Local0 [0x02]) [0x0C] = Zero
                DerefOf (Local0 [0x02]) [0x0D] = Zero
                DerefOf (Local0 [0x02]) [0x0E] = Zero
                DerefOf (Local0 [0x02]) [0x0F] = Zero
                Local1 = Zero
                If ((WLVD != Zero))
                {
                    Local1 += One
                    DerefOf (Local0 [0x02]) [0x07] = Local1
                    DerefOf (Local0 [0x02]) [(Local1 * 0x10)] = 
                        Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        One)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x02)] = (WLVD & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x03)] = ((WLVD >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x04)] = (WLDD & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x05)] = ((WLDD >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x06)] = (WLSV & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x07)] = ((WLSV >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x08)] = (WLSS & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x09)] = ((WLSS >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local2 * 0x10) + 
                        0x0A)] = Zero
                    Local2 = Zero
                    If ((GP15 && One))
                    {
                        Local2 |= One
                    }

                    If (WLAN)
                    {
                        Local2 |= 0x02
                    }

                    Local2 |= 0x04
                    If (BTLS)
                    {
                        Local2 |= 0x08
                    }

                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0B)] = Local2
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0C)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0D)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0E)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0F)] = Zero
                }

                If ((BTVD != Zero))
                {
                    Local1 += One
                    DerefOf (Local0 [0x02]) [0x07] = Local1
                    DerefOf (Local0 [0x02]) [(Local1 * 0x10)] = 
                        One
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        One)] = One
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x02)] = (BTVD & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x03)] = ((BTVD >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x04)] = (BTDD & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x05)] = ((BTDD >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x06)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x07)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x08)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x09)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0A)] = One
                    Local2 = Zero
                    If (!GP68)
                    {
                        Local2 |= One
                    }

                    If (BLTH)
                    {
                        Local2 |= 0x02
                    }

                    Local2 |= 0x04
                    If (BTLS)
                    {
                        Local2 |= 0x08
                    }

                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0B)] = Local2
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0C)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0D)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0E)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0F)] = Zero
                }

                Return (Local0)
            }

            Method (SWDS, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                WMIE = One
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                Local3 = Zero
                WMIR = One
                While (One)
                {
                    _T_0 = (Arg0 & Ones)
                    If ((_T_0 == 0x01000001))
                    {
                        GP15 = One
                        WLAN = One
                    }
                    ElseIf ((_T_0 == One))
                    {
                        GP15 = Zero
                        WLAN = Zero
                    }
                    ElseIf ((_T_0 == 0x01010001))
                    {
                        GP68 = One
                        BLTH = One
                    }
                    ElseIf ((_T_0 == 0x00010001))
                    {
                        GP68 = Zero
                        BLTH = Zero
                    }
                    ElseIf ((_T_0 == 0x01FE0001))
                    {
                        GP15 = One
                        WLAN = One
                        GP68 = One
                        BLTH = One
                    }
                    ElseIf ((_T_0 == 0x00FE0001))
                    {
                        GP15 = Zero
                        WLAN = Zero
                        GP68 = Zero
                        BLTH = Zero
                    }
                    ElseIf ((_T_0 == 0x01FF0001))
                    {
                        GP68 = One
                        GP15 = One
                        WLAN = One
                        BLTH = One
                        BTLS = One
                    }
                    ElseIf ((_T_0 == 0x00FF0001))
                    {
                        GP68 = Zero
                        GP15 = Zero
                        WLAN = Zero
                        BLTH = Zero
                        BTLS = Zero
                    }
                    ElseIf ((_T_0 == 0x01FF0000))
                    {
                        GP68 = One
                        GP15 = One
                        WLAN = One
                        BLTH = One
                        BTLS = One
                    }
                    Else
                    {
                        WMIR = Zero
                    }

                    Break
                }

                Sleep (0xC8)
                WEI1 = 0x05
                WED1 = Zero
                Notify (WMID, 0x80) // Status Change
                If ((OSYS >= 0x07DC))
                {
                    Return (Package (0x02)
                    {
                        0x04, 
                        Zero
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }
            }

            Method (GDLC, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x1D, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GDLC.HWD1 */
                Return (Local0)
            }

            Method (SDLC, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x1D, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBUS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x1E, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GBUS.HWD1 */
                Return (Local0)
            }

            Method (SBUS, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x1E, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCR, 0, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (GBAC, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x01, 0x02, 0x03, 0x04                           /* .... */
                        }
                    }
                CreateByteField (GBAC, Zero, GBL0)
                CreateByteField (GBAC, One, GBL1)
                CreateByteField (GBAC, 0x02, GBL2)
                CreateByteField (GBAC, 0x03, GBL3)
                If (\_SB.PCI0.LPC0.EC0.BOL0)
                {
                    GBL0 = \_SB.PCI0.LPC0.EC0.BST0 /* External reference */
                    GBL0 &= 0x03 /* \_SB_.WMID.GBCR.GBL0 */
                    While (One)
                    {
                        _T_0 = GBL0 /* \_SB_.WMID.GBCR.GBL0 */
                        If ((_T_0 == Zero))
                        {
                            GBL0 = Zero
                        }
                        ElseIf ((_T_0 == One))
                        {
                            GBL0 = 0x02
                        }
                        ElseIf ((_T_0 == 0x02))
                        {
                            GBL0 = One
                        }

                        Break
                    }
                }
                Else
                {
                    GBL0 = 0xFF
                }

                GBL1 = 0xFF
                DerefOf (Local0 [0x02]) [Zero] = GBL0 /* \_SB_.WMID.GBCR.GBL0 */
                DerefOf (Local0 [0x02]) [One] = GBL1 /* \_SB_.WMID.GBCR.GBL1 */
                Return (Local0)
            }

            Method (SBCR, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = (Arg0 & 0x0302)
                    If ((_T_0 == Zero))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                    }
                    ElseIf ((_T_0 == 0x0100))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                    }
                    ElseIf ((_T_0 == 0x0200))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = One
                    }

                    Break
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GTDC, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }
                If ((Arg0 == Zero))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.CPUT /* External reference */
                }

                If ((Arg0 == One))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.GPTP /* External reference */
                }

                If ((Arg0 == 0x02))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.PHTP /* External reference */
                }

                If ((Arg0 == 0x03))
                {
                    Local1 = Zero
                    Local2 = Zero
                    DerefOf (Local0 [0x02]) [Zero] = One
                    Divide ((\_SB.PCI0.LPC0.EC0.FRPM * 0x64), 0x17D4, Local2, Local1)
                    Local2 = (Local1 * 0x64)
                    DerefOf (Local0 [0x02]) [One] = Local2
                }

                If ((Arg0 == 0x04))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.BTTP /* External reference */
                }

                If ((Arg0 == 0x06))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    If (((\_SB.PCI0.LPC0.EC0.CPTR & 0x3F) == Zero))
                    {
                        DerefOf (Local0 [0x02]) [One] = Zero
                    }
                    Else
                    {
                        DerefOf (Local0 [0x02]) [One] = One
                    }
                }

                If ((Arg0 == 0x10))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTCP /* \_SB_.WMID.WTCP */
                }

                If ((Arg0 == 0x11))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTGP /* \_SB_.WMID.WTGP */
                }

                If ((Arg0 == 0x12))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTSP /* \_SB_.WMID.WTSP */
                }

                If ((Arg0 == 0x13))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTFP /* \_SB_.WMID.WTFP */
                }

                If ((Arg0 == 0x14))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTBP /* \_SB_.WMID.WTBP */
                }

                If ((Arg0 == 0x15))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTHP /* \_SB_.WMID.WTHP */
                }

                If ((Arg0 == 0x20))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.CPTV /* External reference */
                }

                If ((Arg0 == 0x21))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.GPTV /* External reference */
                }

                If ((Arg0 == 0x22))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.PHTV /* External reference */
                }

                If ((Arg0 == 0x23))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.FNTV /* External reference */
                }

                If ((Arg0 == 0x24))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.BTTV /* External reference */
                }

                If ((Arg0 == 0xAA))
                {
                    DerefOf (Local0 [0x02]) [Zero] = \_SB.PCI0.LPC0.EC0.RSTV /* External reference */
                }

                Return (Local0)
            }

            Method (STDC, 1, NotSerialized)
            {
                Local1 = Arg0
                SUBC = (Local1 & 0xFF)
                Local1 >>= 0x08
                SIZE = (Local1 & 0xFF)
                Local1 >>= 0x08
                TDA0 = (Local1 & 0xFF)
                If ((SIZE >= 0x02))
                {
                    Return (Package (0x02)
                    {
                        0x06, 
                        Zero
                    })
                }

                If ((SUBC == 0x10))
                {
                    WTCP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x11))
                {
                    WTGP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x12))
                {
                    WTSP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x13))
                {
                    WTFP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x14))
                {
                    WTBP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x15))
                {
                    WTHP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x20))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.CPTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x21))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.GPTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x22))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.PHTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x23))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.FNTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x24))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.BTTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0xAA))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = TDA0 /* \_SB_.WMID.TDA0 */
                    \_SB.PCI0.LPC0.EC0.CPTV = 0xFF
                    \_SB.PCI0.LPC0.EC0.GPTV = 0xFF
                    \_SB.PCI0.LPC0.EC0.PHTV = 0xFF
                    \_SB.PCI0.LPC0.EC0.FNTV = 0xFF
                    \_SB.PCI0.LPC0.EC0.BTTV = 0xFF
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                Return (Package (0x02)
                {
                    0x06, 
                    Zero
                })
            }

            Method (GFCC, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x29, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GFCC.HWD1 */
                Return (Local0)
            }

            Method (SFCC, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x29, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPES, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x2A, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GPES.HWD1 */
                Return (Local0)
            }

            Method (SPES, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x2A, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCO, 0, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (GBAC, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x01, 0x02, 0x03, 0x04                           /* .... */
                        }
                    }
                CreateByteField (GBAC, Zero, GBL0)
                CreateByteField (GBAC, One, GBL1)
                CreateByteField (GBAC, 0x02, GBL2)
                CreateByteField (GBAC, 0x03, GBL3)
                If (\_SB.PCI0.LPC0.EC0.BOL0)
                {
                    If (\_SB.PCI0.LPC0.EC0.BTNO)
                    {
                        GBL0 = \_SB.PCI0.LPC0.EC0.BST0 /* External reference */
                        GBL0 &= 0x07 /* \_SB_.WMID.GBCO.GBL0 */
                        While (One)
                        {
                            _T_0 = GBL0 /* \_SB_.WMID.GBCO.GBL0 */
                            If ((_T_0 == Zero))
                            {
                                GBL0 = Zero
                            }
                            ElseIf ((_T_0 == One))
                            {
                                GBL0 = 0x02
                            }
                            ElseIf ((_T_0 == 0x02))
                            {
                                GBL0 = One
                            }
                            ElseIf ((_T_0 == 0x03))
                            {
                                GBL0 = Zero
                            }
                            ElseIf ((_T_0 == 0x04))
                            {
                                GBL0 = Zero
                            }

                            Break
                        }

                        If (\_SB.PCI0.LPC0.EC0.SBTC)
                        {
                            If (\_SB.PCI0.LPC0.EC0.GBTC)
                            {
                                GBL0 = 0x03
                                \_SB.PCI0.LPC0.EC0.SBTC = Zero
                            }
                        }

                        If (\_SB.PCI0.LPC0.EC0.SBIS)
                        {
                            If ((\_SB.PCI0.LPC0.EC0.GBIS == Zero))
                            {
                                GBL0 = 0x04
                                \_SB.PCI0.LPC0.EC0.SBIS = Zero
                            }
                        }
                    }
                    Else
                    {
                        GBL0 = Zero
                    }
                }
                Else
                {
                    GBL0 = 0xFF
                }

                GBL1 = 0xFF
                DerefOf (Local0 [0x02]) [Zero] = GBL0 /* \_SB_.WMID.GBCO.GBL0 */
                DerefOf (Local0 [0x02]) [One] = GBL1 /* \_SB_.WMID.GBCO.GBL1 */
                Return (Local0)
            }

            Method (SBCO, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = (Arg0 & 0x0702)
                    If ((_T_0 == Zero))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = Zero
                    }
                    ElseIf ((_T_0 == 0x0100))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = One
                    }
                    ElseIf ((_T_0 == 0x0200))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = One
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = One
                    }
                    ElseIf ((_T_0 == 0x0300))
                    {
                        \_SB.PCI0.LPC0.EC0.SBTC = One
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = One
                    }
                    ElseIf ((_T_0 == 0x0400))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = Zero
                    }
                    ElseIf ((_T_0 == 0x0500))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                        \_SB.PCI0.LPC0.EC0.SBIS = One
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = One
                    }

                    Break
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GTCS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                Local1 = Zero
                Local1 |= One
                If ((\_SB.PCI0.LPC0.EC0.MBSS == One))
                {
                    Local1 |= 0x02
                }

                Local1 |= 0x04
                DerefOf (Local0 [0x02]) [Zero] = Local1
                DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.MBMS /* External reference */
                DerefOf (Local0 [0x02]) [0x02] = \_SB.PCI0.LPC0.EC0.STMS /* External reference */
                Return (Local0)
            }

            Method (STCS, 1, NotSerialized)
            {
                Local1 = Zero
                Local2 = Zero
                Local3 = Zero
                Local3 = Arg0
                Local1 = (Local3 >> 0x08)
                \_SB.PCI0.LPC0.EC0.MBMS = (Local1 & 0xFF)
                Local2 = (Local3 >> 0x10)
                \_SB.PCI0.LPC0.EC0.STMS = (Local2 & 0xFF)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GHTP, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                Local1 = Zero
                DerefOf (Local0 [0x02]) [Zero] = Local1
                Return (Local0)
            }

            Method (CSTA, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                IAOR = One
                If (CondRefOf (\SSMP))
                {
                    \SSMP = 0xC6
                }
                Else
                {
                }

                If ((IAOR == One))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                    DerefOf (Local0 [0x02]) [Zero] = (CDAT & 0xFF
                        )
                }

                Return (Local0)
            }

            Method (CACT, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                IAOR = 0x02
                CDAT = Arg0
                If (CondRefOf (\SSMP))
                {
                    \SSMP = 0xC6
                }
                Else
                {
                }

                If ((IAOR == 0x02))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                CDAT = Zero
                Return (Local0)
            }

            Method (CDAC, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                IAOR = 0x03
                CDAT = Arg0
                If (CondRefOf (\SSMP))
                {
                    \SSMP = 0xC6
                }
                Else
                {
                }

                If ((IAOR == 0x03))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                CDAT = Zero
                Return (Local0)
            }

            Method (CAIP, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                IAOR = 0x06
                CreateDWordField (Arg0, Zero, CMTK)
                CDAT = CMTK /* \_SB_.WMID.CAIP.CMTK */
                EHWB = Arg0
                If (CondRefOf (\SSMP))
                {
                    \SSMP = 0xC6
                }
                Else
                {
                }

                If ((IAOR == 0x06))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                HWBF = Zero
                Return (Local0)
            }

            Method (GJVS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x35, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GJVS.HWD1 */
                Return (Local0)
            }

            Method (SJVS, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x35, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPST, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                HWBF = BUFS /* \_SB_.WMID.GPST.BUFS */
                GHWI (0x36, One)
                BUFS = HWBF /* \_SB_.WMID.HWBF */
                Return (Local0)
            }

            Method (SPST, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateField (Arg0, 0x80, 0x0400, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SPST.BUFS */
                HWBF = Local0
                GHWI (0x36, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCT, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                HWBF = BUFS /* \_SB_.WMID.GBCT.BUFS */
                GHWI (0x37, One)
                BUFS = HWBF /* \_SB_.WMID.HWBF */
                Return (Local0)
            }

            Method (SBCT, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateField (Arg0, 0x80, 0x0400, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SBCT.BUFS */
                HWBF = Local0
                GHWI (0x37, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBST, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x38, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GBST.HWD1 */
                Return (Local0)
            }

            Method (SBST, 1, NotSerialized)
            {
                Local0 = Buffer (0x04) {}
                CreateDWordField (Arg0, 0x10, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SBST.BUFS */
                HWBF = Local0
                GHWI (0x38, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (CPST, 3, NotSerialized)
            {
                CreateField (Arg0, (0x08 * Arg1), (0x08 * Arg2), BUFF)
                Return (BUFF) /* \_SB_.WMID.CPST.BUFF */
            }

            Method (ECMT, 2, Serialized)
            {
                Local0 = (Arg0 * 0x3C)
                Local0 += Arg1
                Local2 = HLSW (Local0)
                Return (Local2)
            }

            Method (HLSW, 1, Serialized)
            {
                Divide (Arg0, 0x0100, Local0, Local1)
                Local0 *= 0x0100
                Local0 += Local1
                Return (Local0)
            }

            Method (ESDT, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPC0.ECOK)
                {
                    Local0 = \_SB.RTC.RTCW /* External reference */
                    If (Local0)
                    {
                        Local0--
                        \_SB.PCI0.LPC0.EC0.PRDT = (One << Local0)
                    }
                    Else
                    {
                        \_SB.PCI0.LPC0.EC0.PRDT = 0x40
                    }

                    \_SB.PCI0.LPC0.EC0.PRTM = ECMT (FromBCD (\_SB.RTC.RTCH), FromBCD (\_SB.RTC.RTCM))
                }
            }

            Method (WHCM, 2, Serialized)
            {
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                CreateDWordField (Arg1, Zero, SNIN)
                CreateDWordField (Arg1, 0x04, COMD)
                CreateDWordField (Arg1, 0x08, CMTP)
                CreateDWordField (Arg1, 0x0C, DASI)
                While (One)
                {
                    _T_0 = Arg0
                    If ((_T_0 == One))
                    {
                        Local0 = Zero
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Local0 = 0x04
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Local0 = 0x80
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Local0 = 0x0400
                    }
                    ElseIf ((_T_0 == 0x05))
                    {
                        Local0 = 0x1000
                    }

                    Break
                }

                Local1 = Buffer ((0x08 + Local0)) {}
                CreateDWordField (Local1, Zero, SNOU)
                CreateDWordField (Local1, 0x04, RTCD)
                SNOU = 0x4C494146
                If ((DASI > 0x2000))
                {
                    RTCD = 0x05
                    Release (MSMT)
                    Return (Local1)
                }

                Local5 = DASI /* \_SB_.WMID.WHCM.DASI */
                CreateField (Arg1, Zero, ((Local5 + 0x10) * 0x08), DAIN)
                RTCD = 0x02
                If ((SNIN == 0x55434553))
                {
                    RTCD = 0x03
                    Sleep (0x32)
                    Sleep (0x32)
                    Sleep (0x32)
                    Sleep (0x32)
                    While (One)
                    {
                        _T_1 = COMD /* \_SB_.WMID.WHCM.COMD */
                        If ((_T_1 == One))
                        {
                            If (((CMTP > Zero) && (CMTP <= 0x3A)))
                            {
                                If ((DASI < DerefOf (RCDS [(CMTP - One)])))
                                {
                                    RTCD = 0x05
                                }
                                Else
                                {
                                    Local2 = RDCF (CMTP, Arg1)
                                    RTCD = RTCC /* \_SB_.WMID.RTCC */
                                }
                            }
                        }
                        ElseIf ((_T_1 == 0x02))
                        {
                            If (((CMTP > Zero) && (CMTP <= 0x3A)))
                            {
                                If ((DASI < DerefOf (WCDS [(CMTP - One)])))
                                {
                                    RTCD = 0x05
                                }
                                Else
                                {
                                    Local2 = WRCF (CMTP, Arg1)
                                    RTCD = RTCC /* \_SB_.WMID.RTCC */
                                }
                            }
                        }
                        ElseIf ((_T_1 == 0x00020002))
                        {
                            While (One)
                            {
                                _T_2 = CMTP /* \_SB_.WMID.WHCM.CMTP */
                                If ((_T_2 == One))
                                {
                                    Local2 = CSTA ()
                                    RTCD = Zero
                                }
                                ElseIf ((_T_2 == 0x02))
                                {
                                    Local2 = CACT (DAIN)
                                    RTCD = Zero
                                }
                                ElseIf ((_T_2 == 0x03))
                                {
                                    Local2 = CDAC (DAIN)
                                    RTCD = Zero
                                }
                                ElseIf ((_T_2 == 0x06))
                                {
                                    CreateField (Arg1, 0x80, (Local5 * 0x08), DANH)
                                    Local2 = CAIP (DANH)
                                    RTCD = Zero
                                }

                                Break
                            }
                        }

                        Break
                    }
                }

                If ((RTCD == Zero))
                {
                    RTCD = DerefOf (Local2 [Zero])
                    If ((RTCD == Zero))
                    {
                        If ((DerefOf (Local2 [One]) <= Local0))
                        {
                            Local0 = Zero
                            While ((Local0 < DerefOf (Local2 [One])))
                            {
                                Local1 [(Local0 + 0x08)] = DerefOf (DerefOf (
                                    Local2 [0x02]) [Local0])
                                Local0++
                            }

                            SNOU = 0x53534150
                        }
                        Else
                        {
                            RTCD = 0x05
                        }
                    }
                }

                Release (MSMT)
                Return (Local1)
            }

            OperationRegion (HSMI, SystemIO, \SSMP (0x02), Field (HSMI, ByteAcc, NoLock, Preserve)
                {
                    HSMC,   8, 
                    HSMS,   8
                })
            Method (HTS3, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    HSMS = Zero
                    HSMC = 0xD6
                }

                If ((Arg0 == One))
                {
                    HSMS = One
                    HSMC = 0xD6
                }
            }

            Method (WMAA, 3, Serialized)
            {
                Acquire (MSMT, 0xFFFF)
                Return (WHCM (Arg1, Arg2))
            }

            Name (S001, Buffer (0x32) {})
            Name (S002, Buffer (0x8C) {})
            Name (S003, Buffer (0x8C) {})
            Name (S014, Buffer (0x32) {})
            Name (BF01, Buffer (0x32) {})
            Name (BF02, Buffer (0x32) {})
            Name (BF03, Buffer (0x96) {})
            Name (TMP0, Buffer (0x32) {})
            Name (TMP1, Buffer (0x1E) {})
            Name (TMP2, Buffer (0x1E) {})
            Name (S004, "serial port")
            Name (S010, "Parallel Port")
            Name (S015, "My asset tag")
            Name (S006, "Enable")
            Name (S007, "Disable")
            Name (S008, " Disable, *Enable")
            Name (S009, "*Disable,  Enable")
            Name (S020, Buffer (0x1F) {})
            Name (S019, " 0, 5, 10, 15, 20, 25, 30, 35")
            Name (BF3C, "   ")
            Name (BF2S, "                                                                                             ")
            Name (BSTR, "                                                                                             ")
            Method (STCP, 3, NotSerialized)
            {
                Name (ST01, Buffer (0x80) {})
                Name (ST02, Buffer (0x80) {})
                ST01 = Arg0
                ST02 = Arg1
                Local0 = Arg2
                Local1 = Zero
                While ((Local1 < Local0))
                {
                    Local2 = DerefOf (ST01 [Local1])
                    Local3 = DerefOf (ST02 [Local1])
                    If ((Local2 != Local3))
                    {
                        Return (Zero)
                    }

                    Local1++
                }

                Return (One)
            }

            Method (WMBH, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (WMBA, 3, NotSerialized)
            {
                Name (DBUF, Buffer (0x0200) {})
                If ((Arg1 == One))
                {
                    Local0 = Arg2
                    Local1 = SizeOf (Local0)
                    Local4 = DerefOf (Local0 [Zero])
                    Local2 = 0x02
                    Local3 = Zero
                    Local5 = Zero
                    While ((Local3 != Local4))
                    {
                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    Local3 = Zero
                    Local4 = DerefOf (Local0 [Local2])
                    Local2 += 0x02
                    Local5++
                    While ((Local3 != Local4))
                    {
                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    Local3 = Zero
                    Local4 = DerefOf (Local0 [Local2])
                    Local2 += 0x02
                    Local5++
                    While ((Local3 != Local4))
                    {
                        If ((Local5 >= 0x0200))
                        {
                            Return (0x02)
                        }

                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    EHWB = DBUF /* \_SB_.WMID.WMBA.DBUF */
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFD
                    If (CondRefOf (\SSMP))
                    {
                        \SSMP = 0xD7
                    }
                    Else
                    {
                    }

                    Return (HWRC) /* \_SB_.WMID.HWRC */
                }
                ElseIf ((Arg1 == 0x02))
                {
                    Local0 = Arg2
                    Local4 = DerefOf (Local0 [Zero])
                    Local2 = 0x02
                    Local3 = Zero
                    Local5 = Zero
                    While ((Local3 != Local4))
                    {
                        If ((Local5 >= 0x0200))
                        {
                            Return (0x02)
                        }

                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    EHWB = DBUF /* \_SB_.WMID.WMBA.DBUF */
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFC
                    If (CondRefOf (\SSMP))
                    {
                        \SSMP = 0xD7
                    }
                    Else
                    {
                    }

                    Return (HWRC) /* \_SB_.WMID.HWRC */
                }

                Return (One)
            }

            Method (WQBC, 1, NotSerialized)
            {
                Local0 = Arg0
                HWBF = Local0
                HWRC = 0x02
                HWCT = Zero
                HWBC = 0xFE
                If (CondRefOf (\SSMP))
                {
                    \SSMP = 0xD7
                }
                Else
                {
                }

                If ((Zero == HWRC))
                {
                    Local1 = Buffer (0x80) {}
                    Local1 = HWBF /* \_SB_.WMID.HWBF */
                    CreateWordField (Local1, Zero, NSTL)
                    CreateField (Local1, 0x10, (0x08 * NSTL), NSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBC.NSTL */
                    CreateWordField (Local1, Local0, VSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * VSTL), VSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBC.NSTL */
                    Local0 += 0x02
                    Local0 += VSTL /* \_SB_.WMID.WQBC.VSTL */
                    CreateWordField (Local1, Local0, CSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * CSTL), CSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBC.NSTL */
                    Local0 += 0x02
                    Local0 += VSTL /* \_SB_.WMID.WQBC.VSTL */
                    Local0 += 0x02
                    Local0 += CSTL /* \_SB_.WMID.WQBC.CSTL */
                    CreateWordField (Local1, Local0, NOPV)
                    Local0 += 0x02
                    CreateWordField (Local1, Local0, PBL1)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL1), PBV1)
                    Local0 += PBL1
                    CreateWordField (Local1, Local0, PBL2)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL2), PBV2)
                    Local0 += PBL2
                    CreateWordField (Local1, Local0, PBL3)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL3), PBV3)
                    Local0 += PBL3
                    CreateWordField (Local1, Local0, PBL4)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL4), PBV4)
                    Local0 += PBL4
                    CreateWordField (Local1, Local0, PBL5)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL5), PBV5)
                    Local0 += PBL5
                    Name (BERP, Package (0x18)
                    {
                        "Name", 
                        "Value", 
                        "System Configuration", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        "Enable", 
                        0x0C, 
                        "Enable", 
                        "Disable", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " "
                    })
                    Name (BF2S, Buffer (0x46) {})
                    Name (STRB, "                                                                      ")
                    BF2S = NSTR /* \_SB_.WMID.WQBC.NSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [Zero] = STRB /* \_SB_.WMID.WQBC.STRB */
                    If (STCP (BF2S, "Manufacturing Programming Mode", 0x1E))
                    {
                        BERP [0x04] = Zero
                    }

                    BF2S = VSTR /* \_SB_.WMID.WQBC.VSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [One] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = CSTR /* \_SB_.WMID.WQBC.CSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0A] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV1 /* \_SB_.WMID.WQBC.PBV1 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0C] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV2 /* \_SB_.WMID.WQBC.PBV2 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0D] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV3 /* \_SB_.WMID.WQBC.PBV3 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0E] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV4 /* \_SB_.WMID.WQBC.PBV4 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0F] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV5 /* \_SB_.WMID.WQBC.PBV5 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x10] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BERP [0x06] = Arg0
                    Return (BERP) /* \_SB_.WMID.WQBC.BERP */
                }

                Return (Package (0x18)
                {
                    "", 
                    "", 
                    "", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    " ", 
                    Zero, 
                    " ", 
                    0x0C, 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " "
                })
            }

            Method (WQBD, 1, NotSerialized)
            {
                Local0 = Arg0
                EHWB = Local0
                HWRC = 0x02
                HWCT = Zero
                HWBC = 0xF9
                \SSMP = 0xD7
                If ((Zero == HWRC))
                {
                    Local1 = Buffer (0x0200) {}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                    CreateWordField (Local1, Zero, NSTL)
                    CreateField (Local1, 0x10, (0x08 * NSTL), NSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBD.NSTL */
                    CreateWordField (Local1, Local0, VSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * VSTL), VSTR)
                    Name (BERP, Package (0x0C)
                    {
                        "", 
                        "", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        0x0200, 
                        Zero
                    })
                    If ((NSTL != Zero))
                    {
                        BERP [Zero] = ToString (NSTR, NSTL)
                    }

                    If ((VSTL != Zero))
                    {
                        Name (CONL, Zero)
                        Local3 = Zero
                        Local4 = Zero
                        Local6 = Zero
                        Divide (VSTL, 0xC8, Local7, Local6)
                        While ((Local4 <= Local6))
                        {
                            If ((Local4 == Local6))
                            {
                                If ((Local7 == Zero))
                                {
                                    Break
                                }
                                Else
                                {
                                    CONL = Local7
                                }
                            }
                            Else
                            {
                                CONL = 0xC8
                            }

                            CopyObject (CPST (VSTR, Local3, CONL), Local0)
                            Concatenate (DerefOf (BERP [One]), ToString (Local0, CONL), BERP [
                                One])
                            Local4++
                            Local3 = (Local4 * 0xC8)
                        }
                    }

                    BERP [0x06] = Arg0
                    Return (BERP) /* \_SB_.WMID.WQBD.BERP */
                }
                Else
                {
                    Return (Package (0x0C)
                    {
                        "", 
                        "", 
                        "", 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        Zero, 
                        Zero
                    })
                }
            }

            Method (WQBE, 1, NotSerialized)
            {
                EHWB = Zero
                Local0 = Arg0
                EHWB = Local0
                HWRC = 0x02
                HWCT = Zero
                HWBC = 0xFB
                If (CondRefOf (\SSMP))
                {
                    \SSMP = 0xD7
                }
                Else
                {
                }

                If ((Zero == HWRC))
                {
                    Name (BPTR, Zero)
                    Name (BF2S, Buffer (0xC8) {})
                    Name (STB1, "                                                                                                    ")
                    Name (STB2, "                                                                                                    ")
                    Concatenate (STB1, STB2, STB1) /* \_SB_.WMID.WQBE.STB1 */
                    Local1 = Buffer (0x0200) {}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                    CreateByteField (Local1, BPTR, CNSL)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * CNSL), CNST)
                    BPTR += CNSL /* \_SB_.WMID.WQBE.CNSL */
                    CreateByteField (Local1, BPTR, CVSL)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * CVSL), CVST)
                    BPTR += CVSL /* \_SB_.WMID.WQBE.CVSL */
                    CreateByteField (Local1, BPTR, TSL1)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL1), TSR1)
                    BPTR += TSL1 /* \_SB_.WMID.WQBE.TSL1 */
                    CreateByteField (Local1, BPTR, TSL2)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL2), TSR2)
                    BPTR += TSL2 /* \_SB_.WMID.WQBE.TSL2 */
                    CreateByteField (Local1, BPTR, TSL3)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL3), TSR3)
                    BPTR += TSL3 /* \_SB_.WMID.WQBE.TSL3 */
                    CreateByteField (Local1, BPTR, TSL4)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL4), TSR4)
                    BPTR += TSL4 /* \_SB_.WMID.WQBE.TSL4 */
                    CreateByteField (Local1, BPTR, TSL5)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL5), TSR5)
                    BPTR += TSL5 /* \_SB_.WMID.WQBE.TSL5 */
                    CreateByteField (Local1, BPTR, TSL6)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL6), TSR6)
                    BPTR += TSL6 /* \_SB_.WMID.WQBE.TSL6 */
                    CreateByteField (Local1, BPTR, TSL7)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL7), TSR7)
                    BPTR += TSL7 /* \_SB_.WMID.WQBE.TSL7 */
                    CreateByteField (Local1, BPTR, TSL8)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL8), TSR8)
                    BPTR += TSL8 /* \_SB_.WMID.WQBE.TSL8 */
                    Name (OLRP, Package (0x13)
                    {
                        "Name", 
                        "Value", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        0x08, 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " "
                    })
                    BF2S = CNST /* \_SB_.WMID.WQBE.CNST */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [Zero] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = CVST /* \_SB_.WMID.WQBE.CVST */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [One] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR1 /* \_SB_.WMID.WQBE.TSR1 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0B] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR2 /* \_SB_.WMID.WQBE.TSR2 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0C] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR3 /* \_SB_.WMID.WQBE.TSR3 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0D] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR4 /* \_SB_.WMID.WQBE.TSR4 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0E] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR5 /* \_SB_.WMID.WQBE.TSR5 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0F] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR6 /* \_SB_.WMID.WQBE.TSR6 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x10] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR7 /* \_SB_.WMID.WQBE.TSR7 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x11] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR8 /* \_SB_.WMID.WQBE.TSR8 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x12] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    OLRP [0x06] = Arg0
                    Return (OLRP) /* \_SB_.WMID.WQBE.OLRP */
                }

                Return (HWRC) /* \_SB_.WMID.HWRC */
            }

            Method (WQBF, 1, NotSerialized)
            {
                Local0 = Arg0
                If ((Local0 == Zero))
                {
                    HWBF = Local0
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFA
                    If (CondRefOf (\SSMP))
                    {
                        \SSMP = 0xD7
                    }
                    Else
                    {
                    }

                    If ((Zero == HWRC))
                    {
                        Local0 = Buffer (0x80) {}
                        Local0 = HWBF /* \_SB_.WMID.HWBF */
                        CreateDWordField (Local0, Zero, PSET)
                        Name (PWDP, Package (0x10)
                        {
                            "Setup Password", 
                            " ", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            One, 
                            0x10, 
                            "utf-16", 
                            "", 
                            Zero, 
                            One
                        })
                        Name (BF2S, Buffer (0x46) {})
                        Name (STRB, "                                                                      ")
                        PWDP [0x0E] = PSET /* \_SB_.WMID.WQBF.PSET */
                        PWDP [0x06] = Arg0
                        Return (PWDP) /* \_SB_.WMID.WQBF.PWDP */
                    }
                    Else
                    {
                        Return (Package (0x10)
                        {
                            "Setup Password", 
                            " ", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            One, 
                            0x10, 
                            "utf-16", 
                            "", 
                            One, 
                            One
                        })
                    }
                }

                Return (Package (0x10)
                {
                    "", 
                    "", 
                    "", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    "0", 
                    Zero, 
                    Zero, 
                    Zero, 
                    "", 
                    "", 
                    Zero, 
                    Zero
                })
            }

            Method (WQBG, 0, NotSerialized)
            {
            }

            Method (WQBH, 0, NotSerialized)
            {
            }

            Method (WQBI, 0, NotSerialized)
            {
            }
        }
    }
}


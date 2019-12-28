; var_6 <=> var_34_input
; var_8 <=> var_5C
; var_27 <=> var_44 ???

;;;  Private Sub Text1_Change()
  loc_00401F80: push ebp
  loc_00401F81: mov ebp, esp
  loc_00401F83: sub esp, 0000000Ch
  loc_00401F86: push 00401106h ; __vbaExceptHandler
  loc_00401F8B: mov eax, fs:[00000000h]
  loc_00401F91: push eax
  ;;; Reference to '__except_list'
  loc_00401F92: mov fs:[00000000h], esp
  loc_00401F99: sub esp, 000001E0h
  loc_00401F9F: push ebx
  loc_00401FA0: push esi
  loc_00401FA1: push edi
  loc_00401FA2: mov var_C, esp
  loc_00401FA5: mov var_8, 004010E8h
  loc_00401FAC: mov esi, arg_8
  loc_00401FAF: mov eax, esi
  loc_00401FB1: and eax, 00000001h
  loc_00401FB4: mov var_4, eax
  loc_00401FB7: and esi, FFFFFFFEh
  loc_00401FBA: push esi
  loc_00401FBB: mov arg_8, esi
  loc_00401FBE: mov ecx, [esi]
  loc_00401FC0: call [ecx+00000004h]

  loc_00401FC3: mov edx, [esi]  ; ???

  ; Zero all variables
  loc_00401FC5: xor edi, edi
  loc_00401FC7: push esi        ; ???
  loc_00401FC8: mov var_24, edi
  loc_00401FCB: mov var_34_input, edi
  loc_00401FCE: mov var_44, edi
  loc_00401FD1: mov var_48, edi
  loc_00401FD4: mov var_4C, edi
  loc_00401FD7: mov var_5C, edi
  loc_00401FDA: mov var_6C_mid1, edi
  loc_00401FDD: mov var_7C, edi
  loc_00401FE0: mov var_8C, edi
  loc_00401FE6: mov var_9C_mid2, edi
  loc_00401FEC: mov var_AC, edi
  loc_00401FF2: mov var_BC, edi
  loc_00401FF8: mov var_CC, edi
  loc_00401FFE: mov var_DC_mid3, edi
  loc_00402004: mov var_EC, edi
  loc_0040200A: mov var_FC, edi
  loc_00402010: mov var_10C, edi
  loc_00402016: mov var_11C_mid4, edi
  loc_0040201C: mov var_12C, edi
  loc_00402022: mov var_13C, edi
  loc_00402028: mov var_14C, edi
  loc_0040202E: mov var_15C, edi
  loc_00402034: mov var_16C, edi
  loc_0040203A: mov var_17C, edi
  loc_00402040: mov var_19C, edi
  loc_00402046: mov var_1BC, edi
  loc_0040204C: mov var_1D4, edi
  loc_00402052: mov var_1E4, edi
  loc_00402058: call [edx+000002FCh]  ; ???

  ; var_4C = var_4 (eax)  (???)
  loc_0040205E: push eax
  loc_0040205F: lea eax, var_4C
  loc_00402062: push eax
  loc_00402063: call [00401040h] ; __vbaObjSet

  loc_00402069: mov esi, eax
  loc_0040206B: lea edx, var_48
  loc_0040206E: push edx
  loc_0040206F: push esi
  loc_00402070: mov ecx, [esi]
  loc_00402072: call [ecx+000000A0h]

  ; if (var_48 < 0)

  loc_00402078: cmp eax, edi
  loc_0040207A: fnclex
  loc_0040207C: jge 00402090h

  ; then: do some error checking ???

  loc_0040207E: push 000000A0h
  loc_00402083: push 00401B0Ch
  loc_00402088: push esi
  loc_00402089: push eax
  loc_0040208A: call [0040102Ch] ; __vbaHresultCheckObj

  ; endif

  ; var_34_input = 8  (via var_5C + __vbaVarMove)  ???
  ; var_48 = 0  (edi)
  ; var_54 = var_48 (eax)
  loc_00402090: mov eax, var_48
  loc_00402093: lea edx, var_5C
  loc_00402096: lea ecx, var_34_input
  loc_00402099: mov var_48, edi
  loc_0040209C: mov var_54, eax
  loc_0040209F: mov var_5C, 00000008h
  loc_004020A6: call [0040100Ch] ; __vbaVarMove

  ; free var_4C
  loc_004020AC: lea ecx, var_4C
  loc_004020AF: call [004010C8h] ; __vbaFreeObj

  ; var_54 = 1
  ; var_5C = 2 (ebx)
  ; var_6C_mid1 = Mid(var_34_input, 1, var_5C /* 2 */)
  loc_004020B5: mov esi, [00401054h] ; rtcMidCharVar
  loc_004020BB: lea eax, var_5C
  loc_004020BE: push eax        ; var_5C
  loc_004020BF: lea ecx, var_34_input
  loc_004020C2: push 00000001h  ; 1
  loc_004020C4: lea edx, var_6C_mid1
  loc_004020C7: mov ebx, 00000002h
  loc_004020CC: push ecx        ; var_34_input
  loc_004020CD: push edx        ; var_6C_mid1
  loc_004020CE: mov var_54, 00000001h
  loc_004020D5: mov var_5C, ebx
  loc_004020D8: call rtcMidCharVar

  ; var_154_unused = 0x401B20
  ; var_15C = 0x8008
  ; var_84 = 1
  ; var_8C = 2 (ebx)
  ; var_9C_mid2 = Mid(var_34_input, 2, var_8C /* 2 */)
  loc_004020DA: lea eax, var_8C
  loc_004020E0: lea ecx, var_34_input
  loc_004020E3: push eax        ; var_8C
  loc_004020E4: push ebx        ; 2
  loc_004020E5: lea edx, var_9C_mid2
  loc_004020EB: push ecx                      ; var_34_input
  loc_004020EC: push edx                      ; var_9C_mid2
  loc_004020ED: mov var_154_unused, 00401B20h ; "H"  (??? unneeded)
  loc_004020F7: mov var_15C, 00008008h
  loc_00402101: mov var_84, 00000001h
  loc_0040210B: mov var_8C, ebx
  loc_00402111: call rtcMidCharVar

  ; var_174_unused = 0x401B28
  ; var_17C = 8008
  ; var_C4 = 1
  ; var_CC = 2 (ebx)
  ; var_DC_mid3 = Mid(var_34_input, 3, var_CC /* 2 */)
  loc_00402113: lea eax, var_CC
  loc_00402119: lea ecx, var_34_input
  loc_0040211C: push eax
  loc_0040211D: push 00000003h
  loc_0040211F: lea edx, var_DC_mid3
  loc_00402125: push ecx
  loc_00402126: push edx
  loc_00402127: mov var_174_unused, 00401B28h ; (??? unneeded)
  loc_00402131: mov var_17C, 00008008h
  loc_0040213B: mov var_C4, 00000001h
  loc_00402145: mov var_CC, ebx
  loc_0040214B: call rtcMidCharVar

  ; var_194_unused = 0x401B30
  ; var_19C = 0x8008
  ; var_104 = 1
  ; var_10C = 2 (ebx)
  ; var_11C_mid4 = Mid(var_34_input, 4, var_10C /* 2 */)
  loc_0040214D: lea eax, var_10C
  loc_00402153: lea ecx, var_34_input
  loc_00402156: push eax
  loc_00402157: push 00000004h
  loc_00402159: lea edx, var_11C_mid4
  loc_0040215F: push ecx
  loc_00402160: push edx
  loc_00402161: mov var_194_unused, 00401B30h ; (??? unneeded)
  loc_0040216B: mov var_19C, 00008008h
  loc_00402175: mov var_104, 00000001h
  loc_0040217F: mov var_10C, ebx
  loc_00402185: call rtcMidCharVar

  ; var_1B4_unused = 0x401B38
  ; var_1BC = 0x8008
  ; var_7C = cmpeq(var_15C /* 8008 */, var_6C_mid1)   (???)
  loc_00402187: lea eax, var_6C_mid1
  loc_0040218A: lea ecx, var_15C
  loc_00402190: push eax
  loc_00402191: lea edx, var_7C
  loc_00402194: push ecx
  loc_00402195: push edx
  loc_00402196: mov var_1B4_unused, 00401B38h ; (??? unneeded)
  loc_004021A0: mov var_1BC, 00008008h
  loc_004021AA: call [004010ACh] ; __vbaVarCmpEq

  ; var_AC = cmpeq(var_17C /* 8008 */, var_9C_mid2)   (???)
  loc_004021B0: push eax
  loc_004021B1: lea eax, var_9C_mid2
  loc_004021B7: lea ecx, var_17C
  loc_004021BD: push eax
  loc_004021BE: lea edx, var_AC
  loc_004021C4: push ecx
  loc_004021C5: push edx
  loc_004021C6: call [004010ACh] ; __vbaVarCmpEq

  ; var_9C_mid2 &= var_BC  (???)
  loc_004021CC: push eax
  loc_004021CD: lea eax, var_BC
  loc_004021D3: push eax
  loc_004021D4: call [00401070h] ; __vbaVarAnd

  ; var_EC = cmpeq(var_19C /* 8008 */, var_DC_mid3)   (???)
  loc_004021DA: lea ecx, var_DC_mid3
  loc_004021E0: push eax
  loc_004021E1: push ecx
  loc_004021E2: lea edx, var_19C
  loc_004021E8: lea eax, var_EC
  loc_004021EE: push edx
  loc_004021EF: push eax
  loc_004021F0: call [004010ACh] ; __vbaVarCmpEq

  ; var_EC &= var_FC   (???)
  loc_004021F6: lea ecx, var_FC
  loc_004021FC: push eax
  loc_004021FD: push ecx
  loc_004021FE: call [00401070h] ; __vbaVarAnd

  ; var_12C = cmpeq(var_1BC /* 8008 */, var_11C_mid4)   (???)
  loc_00402204: push eax
  loc_00402205: lea edx, var_11C_mid4
  loc_0040220B: lea eax, var_1BC
  loc_00402211: push edx
  loc_00402212: lea ecx, var_12C
  loc_00402218: push eax
  loc_00402219: push ecx
  loc_0040221A: call [004010ACh] ; __vbaVarCmpEq

  ; var_1BC &= var_13C
  loc_00402220: lea edx, var_13C
  loc_00402226: push eax
  loc_00402227: push edx
  loc_00402228: call [00401070h] ; __vbaVarAnd

  ; ???
  loc_0040222E: push eax
  loc_0040222F: call [0040104Ch] ; __vbaBoolVarNull

  ; ???
  loc_00402235: mov var_1C0, ax

  ; free var_11C_mid4, var_10C, var_DC_mid3, var_CC, var_9C_mid2, var_8C, var_6C_mid1, var_5C
  loc_0040223C: lea eax, var_11C_mid4
  loc_00402242: lea ecx, var_10C
  loc_00402248: push eax
  loc_00402249: lea edx, var_DC_mid3
  loc_0040224F: push ecx
  loc_00402250: lea eax, var_CC
  loc_00402256: push edx
  loc_00402257: lea ecx, var_9C_mid2
  loc_0040225D: push eax
  loc_0040225E: lea edx, var_8C
  loc_00402264: push ecx
  loc_00402265: lea eax, var_6C_mid1
  loc_00402268: push edx
  loc_00402269: lea ecx, var_5C
  loc_0040226C: push eax
  loc_0040226D: push ecx
  loc_0040226E: push 00000008h
  loc_00402270: call [00401018h] ; __vbaFreeVarList

  loc_00402276: add esp, 00000024h
  loc_00402279: cmp var_1C0, di
  loc_00402280: jz 004024B2h
  ;;; If (CBool(#NOT SUPPORTED#) <> 0) Then

  ; var_5C = len(var_34_input)
  ; var_144 = 0x21
  ; var_14C = 0x8002
  loc_00402286: lea edx, var_34_input
  loc_00402289: lea eax, var_5C
  loc_0040228C: push edx
  loc_0040228D: push eax
  loc_0040228E: mov var_144, 00000021h
  loc_00402298: mov var_14C, 00008002h
  loc_004022A2: call [00401030h] ; __vbaLenVar

  ; if (var_5C      == var_144)
  ; ---> if (len(var_34_input) == 33)
  loc_004022A8: lea ecx, var_14C
  loc_004022AE: push eax
  loc_004022AF: push ecx
  loc_004022B0: call [00401060h] ; __vbaVarTstEq
  loc_004022B6: test ax, ax
  loc_004022B9: jz 00402486h

  ; then
      ; var_14C = 2 (ebx)
      ; var_15C = 2 (ebx)
      ; var_16C = 2 (ebx)
      ; var_164 = 6
      ; var_144 = 1 (eax)
      ; var_154 = 1 (eax)
      ; var_5C = len(var_34_input)
      loc_004022BF: mov eax, 00000001h
      loc_004022C4: lea edx, var_15C
      loc_004022CA: mov var_154, eax
      loc_004022D0: mov var_144, eax
      loc_004022D6: lea eax, var_34_input
      loc_004022D9: push edx
      loc_004022DA: lea ecx, var_5C
      loc_004022DD: push eax
      loc_004022DE: push ecx
      loc_004022DF: mov var_15C, ebx
      loc_004022E5: mov var_14C, ebx
      loc_004022EB: mov var_164, 00000006h
      loc_004022F5: mov var_16C, ebx
      loc_004022FB: call [00401030h] ; __vbaLenVar

      ;; var_6C = var_34_input - var_14C (??? andersrum?)
      loc_00402301: push eax
      loc_00402302: lea edx, var_14C
      loc_00402308: lea eax, var_6C
      loc_0040230B: push edx
      loc_0040230C: push eax
      loc_0040230D: call [00401000h] ; __vbaVarSub

      loc_00402313: lea ecx, var_16C
      loc_00402319: push eax    ; var_6C
      loc_0040231A: lea edx, var_1E4
      loc_00402320: push ecx    ; var_16C
      loc_00402321: lea eax, var_1D4
      loc_00402327: push edx    ; var_1E4
      loc_00402328: lea ecx, var_24
      loc_0040232B: push eax    ; var_1D4
      loc_0040232C: push ecx    ; var_24
      loc_0040232D: call [0040103Ch] ; __vbaVarForInit
      ;;; For var_24 = var_25 To #NOT SUPPORTED# Step 1

      ; var_54 = 1
      ; var_5C = 2 (ebx)
      loc_00402339: test eax, eax
      loc_0040233B: jz 0040240Bh
      loc_00402341: lea edx, var_5C
      loc_00402344: lea eax, var_24
      loc_00402347: push edx    ; var_5C
      loc_00402348: push eax    ; var_24
      loc_00402349: mov var_54, 00000001h
      loc_00402350: mov var_5C, ebx
      loc_00402353: call edi

      ; ??? Only three things pushed?!
      ; var_24 = Mid(var_34_input, var_6c)   // ???
      ;;; WRONG: var_26 = Mid(var_6, CLng(var_24), var_8)
      loc_00402355: lea ecx, var_34_input
      loc_00402358: push eax    ; var_24
      loc_00402359: lea edx, var_6C
      loc_0040235C: push ecx    ; var_34_input
      loc_0040235D: push edx    ; var_6C
      loc_0040235E: call rtcMidCharVar

      ; ??? var_6C = __vbaStrVarVal(var_48)
      loc_00402360: lea eax, var_6C
      loc_00402363: lea ecx, var_48
      loc_00402366: push eax
      loc_00402367: push ecx
      loc_00402368: call [0040108Ch] ; __vbaStrVarVal

      ; ??? rtcAnsiValueBstr(var_6C)
      loc_0040236E: push eax
      loc_0040236F: call [00401024h] ; rtcAnsiValueBstr

      ; var_15C = 2 (ebx)
      ; var_7C = var_15C ^ var_24
      loc_00402375: mov var_154, ax
      loc_0040237C: lea edx, var_24
      loc_0040237F: lea eax, var_15C
      loc_00402385: push edx    ; var_24
      loc_00402386: lea ecx, var_7C
      loc_00402389: push eax    ; var_15C
      loc_0040238A: push ecx    ; var_7C
      loc_0040238B: mov var_15C, ebx
      loc_00402391: call [00401038h] ; __vbaVarXor

      ; ???
      loc_00402397: push eax
      loc_00402398: call edi

      ; ???
      loc_0040239A: lea edx, var_8C
      loc_004023A0: push eax
      loc_004023A1: push edx
      loc_004023A2: call [00401084h] ; rtcVarBstrFromAnsi

      ; var_9C = var_8C + var_44
      loc_004023A8: lea eax, var_44
      loc_004023AB: lea ecx, var_8C
      loc_004023B1: push eax    ; var_44
      loc_004023B2: lea edx, var_9C
      loc_004023B8: push ecx    ; var_8C
      loc_004023B9: push edx    ; var_9C
      loc_004023BA: call [004010B0h] ; __vbaVarAdd

      ; ??? var_44 = var_44
      loc_004023C0: mov edx, eax ; var_44
      loc_004023C2: lea ecx, var_44
      loc_004023C5: call [0040100Ch] ; __vbaVarMove

      ; free var_48
      loc_004023CB: lea ecx, var_48
      loc_004023CE: call [004010CCh] ; __vbaFreeStr

      ; free var_8C, var_6C, var_5C
      loc_004023D4: lea eax, var_8C
      loc_004023DA: lea ecx, var_6C
      loc_004023DD: push eax
      loc_004023DE: lea edx, var_5C
      loc_004023E1: push ecx
      loc_004023E2: push edx
      loc_004023E3: push 00000003h
      loc_004023E5: call [00401018h] ; __vbaFreeVarList

      loc_004023EB: add esp, 00000010h
      loc_004023EE: lea eax, var_1E4
      loc_004023F4: lea ecx, var_1D4
      loc_004023FA: lea edx, var_24
      loc_004023FD: push eax
      loc_004023FE: push ecx
      loc_004023FF: push edx
      loc_00402400: call [004010C0h] ; __vbaVarForNext

      loc_00402406: jmp 00402339h
      loc_0040240B: lea eax, var_44
      loc_0040240E: lea ecx, var_14C
      loc_00402414: push eax
      loc_00402415: push ecx
      loc_00402416: mov var_144, 00401B40h ; "6klzic<=bPBtdvff'yFI~on//N"
      loc_00402420: mov var_14C, 00008008h
      loc_0040242A: call [00401060h] ; __vbaVarTstEq

      loc_00402430: test ax, ax
      loc_00402433: jz 00402477h
      ;;; If (((var_27) = ("6klzic<=bPBtdvff'yFI~on//N"))) Then
      loc_00402435: mov eax, arg_8
      loc_00402438: push eax
      loc_00402439: mov edx, [eax]
      loc_0040243B: call [edx+00000300h]

      ; var_4C = arg_8 (eax)  (???)
      loc_00402441: push eax
      loc_00402442: lea eax, var_4C
      loc_00402445: push eax
      loc_00402446: call [00401040h] ; __vbaObjSet

      loc_0040244C: mov esi, eax
      loc_0040244E: push 00401B7Ch ; "Status: correct"
      loc_00402453: push esi
      loc_00402454: mov ecx, [esi]
      loc_00402456: call [ecx+00000054h]

      loc_00402459: test eax, eax
      loc_0040245B: fnclex
      loc_0040245D: jge 0040246Eh
      loc_0040245F: push 00000054h
      loc_00402461: push 00401B9Ch
      loc_00402466: push esi
      loc_00402467: push eax
      loc_00402468: call [0040102Ch] ; __vbaHresultCheckObj


      ; free var_4C
      loc_0040246E: lea ecx, var_4C
      loc_00402471: call [004010C8h] ; __vbaFreeObj

      ;;; End If

      loc_00402477: xor edi, edi
      loc_00402479: mov var_4, edi
      ;; var_4 = (empty)

      loc_0040247C: push 004025A3h
      loc_00402481: jmp 00402574h

  ; endif (len(var_34_input) == 33)

  loc_00402486: mov eax, arg_8
  loc_00402489: push eax
  loc_0040248A: mov edx, [eax]
  loc_0040248C: call [edx+00000300h]

  ; var_4C = arg_8 (eax)  (???)
  loc_00402492: push eax
  loc_00402493: lea eax, var_4C
  loc_00402496: push eax
  loc_00402497: call [00401040h] ; __vbaObjSet

  loc_0040249D: mov esi, eax
  loc_0040249F: push 00401BB0h ; "Status: wrong"
  loc_004024A4: push esi
  loc_004024A5: mov ecx, [esi]
  loc_004024A7: call [ecx+00000054h]

  loc_004024AA: cmp eax, edi
  loc_004024AC: fnclex
  loc_004024AE: jge 004024EBh
  ;;; If (var_48 < 0) Then
  loc_004024B0: jmp 004024DCh
  ;;; End If
  loc_004024B2: mov eax, arg_8
  loc_004024B5: push eax
  loc_004024B6: mov edx, [eax]
  loc_004024B8: call [edx+00000300h]

  ; var_4C = arg_8 (eax)  (???)
  loc_004024BE: push eax
  loc_004024BF: lea eax, var_4C
  loc_004024C2: push eax
  loc_004024C3: call [00401040h] ; __vbaObjSet

  loc_004024C9: mov esi, eax
  loc_004024CB: push 00401BB0h ; "Status: wrong"
  loc_004024D0: push esi
  loc_004024D1: mov ecx, [esi]
  loc_004024D3: call [ecx+00000054h]

  loc_004024D6: cmp eax, edi
  loc_004024D8: fnclex
  loc_004024DA: jge 004024EBh
  ;;; If (var_48 < 0) Then
  loc_004024DC: push 00000054h
  loc_004024DE: push 00401B9Ch
  loc_004024E3: push esi
  loc_004024E4: push eax
  loc_004024E5: call [0040102Ch] ; __vbaHresultCheckObj
  ;;; End If

  ; free var_4C
  loc_004024EB: lea ecx, var_4C
  loc_004024EE: call [004010C8h] ; __vbaFreeObj

  loc_004024F4: jmp 00402479h
  loc_004024F6: lea ecx, var_48
  loc_004024F9: call [004010CCh] ; __vbaFreeStr

  ; free var_4C
  loc_004024FF: lea ecx, var_4C
  loc_00402502: call [004010C8h] ; __vbaFreeObj

  ; free var_13C, var_12C, var_11C, var_10C, var_FC, var_EC, var_DC, var_CC,
  ; var_BC, var_AC, var_9C, var_8C, var_7C, var_6C, var_5C
  loc_00402508: lea edx, var_13C
  loc_0040250E: lea eax, var_12C
  loc_00402514: push edx
  loc_00402515: lea ecx, var_11C
  loc_0040251B: push eax
  loc_0040251C: lea edx, var_10C
  loc_00402522: push ecx
  loc_00402523: lea eax, var_FC
  loc_00402529: push edx
  loc_0040252A: lea ecx, var_EC
  loc_00402530: push eax
  loc_00402531: lea edx, var_DC
  loc_00402537: push ecx
  loc_00402538: lea eax, var_CC
  loc_0040253E: push edx
  loc_0040253F: lea ecx, var_BC
  loc_00402545: push eax
  loc_00402546: lea edx, var_AC
  loc_0040254C: push ecx
  loc_0040254D: lea eax, var_9C
  loc_00402553: push edx
  loc_00402554: lea ecx, var_8C
  loc_0040255A: push eax
  loc_0040255B: lea edx, var_7C
  loc_0040255E: push ecx
  loc_0040255F: lea eax, var_6C
  loc_00402562: push edx
  loc_00402563: lea ecx, var_5C
  loc_00402566: push eax
  loc_00402567: push ecx
  loc_00402568: push 0000000Fh
  loc_0040256A: call [00401018h] ; __vbaFreeVarList

  loc_00402570: add esp, 00000040h
  loc_00402573: ret

  ; free var_1E4 and var_1D4
  loc_00402574: lea edx, var_1E4
  loc_0040257A: lea eax, var_1D4
  loc_00402580: push edx
  loc_00402581: push eax
  loc_00402582: push 00000002h
  loc_00402584: call [00401018h] ; __vbaFreeVarList

  ; free var_24
  loc_0040258A: mov esi, [00401010h] ; __vbaFreeVar
  loc_00402590: add esp, 0000000Ch
  loc_00402593: lea ecx, var_24
  loc_00402596: call __vbaFreeVar

  ; free var_34_input
  loc_00402598: lea ecx, var_34_input
  loc_0040259B: call __vbaFreeVar

  ; free var_44
  loc_0040259D: lea ecx, var_44
  loc_004025A0: call __vbaFreeVar

  loc_004025A2: ret
  loc_004025A3: mov eax, arg_8
  loc_004025A6: push eax
  loc_004025A7: mov ecx, [eax]
  loc_004025A9: call [ecx+00000008h]

  loc_004025AC: mov eax, var_4
  loc_004025AF: mov ecx, var_14
  loc_004025B2: pop edi
  loc_004025B3: pop esi
  ;;; Reference to '__except_list'
  loc_004025B4: mov fs:[00000000h], ecx
  loc_004025BB: pop ebx
  loc_004025BC: mov esp, ebp
  loc_004025BE: pop ebp
  loc_004025BF: retn 0004h

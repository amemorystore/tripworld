SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    nop
    add b
    inc e
    ld b, b
    nop
    adc b
    rst $30
    ld b, a
    nop
    sub b
    call $004e
    adc b
    db $f4
    ld d, l
    nop
    add b
    xor [hl]
    ld e, d
    nop
    adc b
    ld [hl], a
    ld h, d
    nop
    adc b
    jr nz, jr_003_4086

    rst $38
    ld bc, $280a
    inc de
    ld de, $3c6a
    ld b, b
    rst $38
    ld [hl], b
    add b
    db $30, $c0
    ld [hl], c
    add b
    push bc
    ld [bc], a

jr_003_402e:
    rst $38
    add $08
    add h
    ld [$10cd], sp
    sbc c
    nop
    rst $38
    adc d
    db $10
    sbc b
    nop
    sbc h
    nop
    ret z

    nop
    rst $38
    call z, $c800
    nop
    ret nz

    add b
    ld h, b
    ret nz

    rst $38
    ret nc

    ld h, b
    jr nc, jr_003_402e

    pop hl
    or b
    pop de
    ld [hl], b
    rst $38
    reti


    ld [hl], b
    ld hl, sp+$29
    rst $20
    jr c, @+$61

    or h
    rst $38
    db $ec
    ld e, $4e
    cp e
    ld c, [hl]
    cp a
    or h
    rst $38
    cp a
    jr @+$06

    jr c, jr_003_40da

    add b
    ld hl, sp-$01
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    rst $38
    cp a
    ld a, a
    ld b, c
    nop
    ld [de], a
    inc c
    ld a, [hl-]
    ld b, c
    rst $38
    ldh [rP1], a
    ld h, b
    add c
    jp nz, $0601

jr_003_4086:
    nop
    rst $38
    rla
    nop
    ld d, [hl]
    ld [$2098], sp
    jr c, jr_003_4090

jr_003_4090:
    rst $38
    jr nc, @+$42

    jr nc, @+$42

    ld [hl], b
    nop
    ldh a, [rP1]
    rst $38
    ld [hl], b
    add b
    ld [hl], c
    add b
    ld h, c
    add b
    ld h, c
    add b
    rst $38
    ld h, c
    add b
    ld [c], a
    nop
    ld h, d
    add b
    ldh [rSC], a
    rst $38
    jp nz, $c600

    nop
    add b
    inc b
    ld h, d
    inc e
    rst $38
    ld bc, $94c2
    ld bc, $15b7
    sub $bf
    add c
    nop
    add b
    rst $38
    nop
    add b
    nop
    add b
    nop
    ret nz

    ld b, b
    add b
    db $dd
    ld b, b
    add b
    ld b, b
    jr nz, jr_003_40cf

jr_003_40cf:
    jr nc, @+$01

    ld [$2040], sp
    ld [$00e8], sp
    ld h, b
    ld [hl], b
    rst $38

jr_003_40da:
    ret c

    ld [hl], b
    ld l, b
    inc [hl]
    jr jr_003_40e2

    db $10
    ld a, [hl+]

jr_003_40e2:
    rst $38
    add hl, bc
    ld b, h
    adc h
    ld b, c
    add b
    ld b, l
    add d
    dec b
    rst $38
    inc b
    add c
    nop
    add l
    inc b
    add c
    ld b, $81
    rst $38
    rlca
    add b
    ld b, $81
    ld [bc], a
    inc b
    ld [$ff06], sp
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    jr z, jr_003_410a

    xor h
    ld [bc], a
    rst $38
    cp c
    ld b, $ad

jr_003_410a:
    ld [de], a
    or [hl]
    ld e, c
    ld a, h
    or [hl]
    or a
    nop
    ld bc, $0100
    inc bc
    inc b
    rst $38
    add d
    ld a, h
    ld c, [hl]
    add b
    ld b, b
    or b
    nop
    ld e, b
    rst $38
    jr z, jr_003_4162

    add hl, de
    jr nz, jr_003_418d

    ld de, $4130
    rst $38
    ld [hl], c
    nop
    jr nz, jr_003_416e

    ld sp, $3040
    ld b, c
    rst $38
    jr nc, jr_003_4175

    inc sp
    ld b, b
    ld sp, $3142
    ld b, d
    rst $38
    add hl, de
    ld h, d
    dec de
    jr nz, @+$1a

    ld hl, $2019
    rst $38
    dec e
    jr nz, @+$1e

    jr nz, jr_003_4156

    jr nc, @+$0f

    jr nc, @+$01

    rrca
    jr nc, jr_003_415f

    db $10
    rlca
    ld [$0601], sp
    rst $38

jr_003_4156:
    ld bc, $0106
    ld [bc], a
    nop
    ld bc, $0100
    rst $38

jr_003_415f:
    ld bc, $0702

jr_003_4162:
    ld [$0601], sp
    nop
    ld bc, $0080
    add a
    nop
    ld b, b
    nop
    and b

jr_003_416e:
    rst $38
    nop
    sub b
    ld b, c
    or h
    nop
    pop bc

jr_003_4175:
    add c
    nop
    rst $38
    jr nc, jr_003_4186

    dec d
    ld h, d
    pop hl
    nop
    ret nz

    ld [bc], a
    rst $38
    ldh [rSB], a
    pop bc
    ld [bc], a
    pop bc

jr_003_4186:
    ld [bc], a
    rlc h
    rst $38
    jp $8b04


jr_003_418d:
    inc b
    sub e
    inc b
    sub e
    inc b
    rst $38
    sub e
    nop
    sub c
    ld [bc], a
    ld bc, $a122
    nop
    rst $38
    ld b, b
    ld bc, $0140
    nop
    ld bc, $0140
    rst $38
    ret nz

    inc bc
    pop bc

jr_003_41a8:
    ld [bc], a
    ld b, c
    ld [bc], a
    ld b, c
    ld [bc], a
    rst $38
    ld h, c
    ld [bc], a
    add l
    ld [bc], a
    push bc
    ld [bc], a
    rst $00
    nop
    rst $38
    add $01
    xor $00
    ld a, l
    add d
    or h
    ld c, e
    rst $38
    ldh a, [rTMA]
    ret z

    inc b

jr_003_41c4:
    and b
    jr jr_003_41c7

jr_003_41c7:
    ldh [$80], a
    nop
    cp a
    nop
    ld [hl-], a
    dec a
    ld hl, $777f
    ld a, c
    rst $38
    ld [hl], a
    ld hl, sp+$7b
    db $fc
    db $fd
    cp $f1
    rst $38
    rst $38
    ld [hl], b
    rst $38

jr_003_41de:
    ld h, b
    ld a, a
    jr nz, jr_003_4221

    ld bc, $bf0e
    nop
    jr nz, jr_003_41a8

    jr nc, jr_003_41ea

jr_003_41ea:
    and b
    db $10
    rst $38
    xor b
    ld d, b
    ld h, d
    db $ec
    xor d
    pop af
    ret c

    db $e4
    db $fd
    ret nc

    ld c, $86
    add hl, bc
    inc bc
    ld [$ff04], sp

jr_003_41fe:
    ld [bc], a
    inc b
    nop
    ld a, [bc]
    dec b
    ld a, [bc]
    add hl, bc
    inc b
    rst $38
    nop
    inc b
    add b
    inc b
    add a
    nop
    add [hl]
    dec c
    rst $38
    jp c, $c012

    ld de, $2df9
    db $e4
    dec b
    rst $38
    and [hl]
    ld b, h
    rst $20
    ld c, b
    ld h, a
    ld b, b
    ld c, a
    ld b, b

jr_003_4221:
    rst $38
    ld l, [hl]
    ld b, c
    ld h, l
    pop bc
    inc hl
    ld [c], a
    ld a, e
    sbc h
    rst $38
    cp $00
    and b
    rra
    and b
    ld c, b
    ld b, h
    cp b
    add b
    nop
    add b
    nop
    sub e
    nop
    add b
    ld b, b
    add b
    rst $38
    ret nz

    nop
    ldh [rP1], a
    ret nz

    jr nz, jr_003_41c4

    ldh [$fe], a
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    rst $38
    ld [bc], a
    add b
    nop
    ld b, h
    ret nz

    inc a
    jr nc, jr_003_41de

    rst $38
    ld b, b
    jr nc, jr_003_425e

    jr jr_003_4275

    ld h, $a4

jr_003_425e:
    jr @+$01

    ld [$2404], sp
    jr jr_003_4275

    rrca
    ld [$ff82], sp
    inc b
    add a
    db $10
    ld c, l
    ld b, $4b
    jr jr_003_42c7

    rst $38
    call nc, Call_003_7008

jr_003_4275:
    sbc b
    nop
    or b
    ld [$ff80], sp
    nop
    jr c, jr_003_41fe

    ld b, b
    nop
    add b
    nop
    add b
    xor a
    nop
    ld bc, $0706
    ld [$ff0f], sp
    add hl, bc
    ld c, $11
    ld e, $13
    inc e
    add hl, de
    ld e, $fe
    ld [$0d0f], sp
    ld c, $06
    rlca
    inc bc
    add b
    nop
    sub a
    nop
    ld bc, $0e03

jr_003_42a2:
    rlca
    rst $38
    ld [$090e], sp
    rrca
    dec de
    dec e
    rla
    dec sp
    rst $38
    and $fb
    adc d
    ld a, [c]
    ld [hl], $c6
    adc h
    inc a
    sbc l
    ld [hl], b
    ret nc

    jr jr_003_42a2

    ld [$b8fe], sp
    ld c, b
    ld d, b
    or b
    jr nz, jr_003_42a2

    ret nz

    add b
    nop
    xor a
    nop

jr_003_42c7:
    ld b, $0e
    ld a, [bc]
    inc c
    ld c, $f7
    inc e
    inc d
    inc h
    jr c, jr_003_42fa

    ld e, b
    ld [hl], b
    rst $38
    ld d, b
    ld [hl], b
    ldh [$b0], a
    jr nc, @-$1e

    ret nz

    ld h, b
    db $e4
    ld b, b
    ret nz

    add b
    nop
    add e
    nop
    ld bc, $ff00
    inc bc
    nop
    ld [$1007], sp
    rrca
    jr nz, jr_003_430b

    rst $38
    ld d, c
    jr nz, @+$70

    nop
    ret nc

    nop
    ldh [rP1], a
    rst $38
    ld b, b

jr_003_42fa:
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    inc bc
    nop
    ccf
    nop
    rst $28
    db $10
    cp $38

jr_003_430b:
    ret nz

    rst $38
    nop
    ld h, b
    add b
    nop
    rst $38
    ret nz

    ccf
    inc b
    inc bc
    ccf
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    db $fc
    nop
    add b
    nop
    ldh a, [rP1]
    add b
    nop
    rst $38
    nop
    add b
    nop
    ldh a, [rTMA]
    ld hl, sp-$30
    jr nz, @+$01

    ldh [rNR32], a
    ldh a, [$08]
    jp nz, $f83c

    rlca
    add e
    nop
    ld bc, $ff00
    ld [bc], a
    ld bc, $0304
    add hl, bc
    ld b, $18
    nop
    rst $38
    ld bc, $0f00
    nop
    ld e, $00
    ld a, h
    nop
    rst $38
    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    adc a
    nop
    ld sp, $840e
    ld a, b
    db $fc
    ld c, $f0
    ld b, e
    cp h
    ldh [rP1], a
    rst $38
    cp $01
    add a
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $18
    nop
    add b
    ld [hl], b
    ldh a, [$08]
    ld [c], a
    inc e
    rst $38
    ld hl, sp+$07
    cp $01
    ld hl, sp+$07
    cp $00
    add b
    nop
    cp $00
    add b
    nop
    db $f4
    nop
    ret nz

    nop
    add b
    nop
    ldh a, [$03]
    nop
    inc c
    nop
    rst $18
    nop
    ld bc, $070e
    jr jr_003_43ad

    ld a, b
    rst $38
    rrca
    ld [hl], b
    rrca
    ldh a, [$1f]

jr_003_43ad:
    ldh [$1f], a
    ldh [$83], a
    nop
    ld a, b
    rlca
    ldh a, [$8e]
    nop

jr_003_43b7:
    jr nc, jr_003_43b9

jr_003_43b9:
    rst $38
    ld a, a
    add b
    pop hl
    nop
    ret nz

    nop
    ret nz

    nop
    rst $38
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    add c
    nop
    jr nz, @-$7e

    nop
    di
    add b
    nop
    ldh [rP1], a
    ld a, $00
    rst $38
    ld [$0700], sp
    nop
    inc c
    nop
    rra
    nop
    rst $38
    nop
    ld bc, $0f00
    nop
    rra
    ld bc, $ff7e
    ld bc, $037e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    inc bc
    db $fc
    jr nz, jr_003_43b7

    db $fc
    nop
    cp $00
    rst $38
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    ld [hl], b
    nop
    ld [$1e00], sp
    nop
    or b
    nop
    rlca
    nop

jr_003_4411:
    add b
    nop
    cp a
    inc bc
    ld b, $07
    dec c
    ld c, $08
    rrca
    rst $38
    add hl, de
    ld e, $13
    inc e
    ld de, $091e

jr_003_4423:
    ld c, $fa
    ld [$060f], sp
    rlca
    ld bc, $8000
    nop
    cp a
    ret nz

    jr nz, jr_003_4411

    ld d, b
    or b
    cp b
    ld c, b
    rst $38
    add sp, $09
    jr jr_003_4423

    ld [hl], c
    jp nc, Jump_003_7671

    rst $38
    adc l
    ld a, $36
    rst $00
    adc d
    di
    and $fb
    rst $38
    rla
    dec sp
    dec de
    dec e
    add hl, bc
    rrca
    ld [$ff0e], sp
    ld c, $07
    dec b
    dec bc
    ld c, $09
    rrca
    ld [$0bff], sp
    inc b
    rrca
    inc b
    dec b
    ld c, $23
    inc e
    rst $38
    inc de
    inc h
    dec l
    ld b, d
    jr c, jr_003_44b0

    ld e, a
    cp a
    add d
    nop
    ld bc, $019f
    rlca
    inc b
    add hl, bc
    ld [bc], a
    ld [$08ff], sp
    rlca
    ld [$0807], sp

Call_003_447b:
    rlca
    ld [$ff07], sp
    nop
    rlca
    nop
    rlca
    inc b
    inc bc
    inc b
    inc bc
    rst $38
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0102
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $0102
    rst $38
    nop
    rlca
    ld [$0807], sp
    rlca
    ld [$ff07], sp
    ld [$0807], sp
    rlca
    nop
    rlca
    nop
    rlca
    rst $38
    nop
    rlca
    inc b
    inc bc

jr_003_44b0:
    inc b
    inc bc
    inc b
    inc bc
    rst $38
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0102
    rst $38
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    rst $38
    inc b
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rst $38
    ld [$0807], sp
    rlca
    ld [$0007], sp
    rrca
    rst $38
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    rst $38
    inc b
    inc bc
    inc b

jr_003_44e5:
    inc bc
    nop
    inc bc
    nop
    inc bc
    rst $38
    ld [bc], a
    ld bc, $0102
    nop
    ld bc, $0100
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $0102
    rst $38
    ld [bc], a
    ld bc, $0300
    inc b

Jump_003_4502:
    inc bc
    ld [$8007], sp
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $18
    add b
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

    rst $38
    ld b, b
    and b
    ld [$00f0], sp
    db $fc
    nop
    cp $b7
    nop
    add b
    nop
    add b
    jr nz, jr_003_44e5

    rst $38
    ld [$00f0], sp
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    cp $ff
    nop
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [rIE]
    nop
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rIE], a
    nop
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    rst $18
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    rst $38
    ld b, b
    add b
    nop
    ldh [$08], a
    ldh a, [rSC]
    db $fc
    rst $18
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rIE]
    nop

jr_003_456d:
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    ld [bc], a
    db $fc
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    inc b
    ld hl, sp-$01
    nop
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [rP1]
    ldh a, [rIE]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIE]
    db $10
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    nop
    add b
    rst $18
    add b
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

    rst $38
    ld h, b
    add b
    nop
    ldh [rP1], a
    ldh a, [rDIV]
    ld hl, sp-$41
    nop
    jr nz, jr_003_456d

    nop
    ldh a, [rP1]
    ld hl, sp-$01
    inc b
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    rst $38
    inc b
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$01
    nop
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rIE], a
    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    rst $38
    add b
    nop
    ld b, b
    add b
    nop
    ret nz

    jr nz, @-$3e

    rst $38
    ld b, b
    and b
    db $10
    ldh [rP1], a
    ldh a, [$08]
    ldh a, [rIE]
    inc b
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc a
    nop
    jr @-$1e

    ld [bc], a
    db $fc
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $ff
    ld [bc], a
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rIE]
    nop
    ldh a, [rP1]
    ldh [rNR41], a
    ret nz

    jr nz, @-$3e

    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    rst $38
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub a
    nop
    dec c
    ld [de], a
    dec b
    ld a, [bc]
    rst $38
    inc c
    add e
    ld bc, $0084
    ld b, h
    inc b
    ld l, b
    rst $38
    inc b
    ld l, e
    nop
    ld l, $04
    sbc c
    inc b
    db $db
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    sub l
    nop
    add b
    ld b, b
    add b
    db $fc
    nop
    add b
    ld b, b
    add b
    ld b, b
    nop
    rst $38
    ld b, h
    add e
    nop
    rrca
    ld bc, $001e
    ld a, $ff
    ld b, d
    inc a
    add b
    ld a, h
    ld [$00f0], sp
    ldh [$9f], a
    nop
    inc c
    inc b
    ld [bc], a
    ld [hl+], a
    dec b
    rst $38
    ld bc, $2022
    ld b, e
    jr nz, jr_003_46d8

    ld [$ff64], sp
    nop
    ld l, e
    nop
    ld l, $04
    sbc c
    inc b
    db $db
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    sbc l
    nop
    ld b, b
    nop
    ret nz

    nop
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    rst $38
    ld b, h
    add e
    jr nz, jr_003_46c8

    ld bc, $001e
    ld a, $ff
    ld b, d
    inc a
    add b
    ld a, h
    ld [$00f0], sp
    ldh [$81], a
    nop

jr_003_46c8:
    ld bc, $00ff
    add hl, bc
    ld bc, $0010
    inc sp
    ld [bc], a
    inc [hl]
    rst $38
    inc b
    jr z, jr_003_46da

    dec hl
    nop

jr_003_46d8:
    sbc l
    inc b

jr_003_46da:
    db $db
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add a
    nop
    ret nz

    add b
    ld b, b
    rst $38
    ret nz

    jr nc, jr_003_46fd

    add sp, $00

jr_003_46ef:
    ld e, b
    nop
    jr nz, @+$01

    inc b
    inc bc
    add b
    rrca
    ld hl, $00de
    ld a, $ff
    ld b, d

jr_003_46fd:
    inc a
    add b
    ld a, h
    ld [$00f0], sp
    ldh [$80], a
    nop
    rst $38
    ld b, $00
    db $10
    ld [$1000], sp
    nop
    ld sp, $04ff
    ld [hl-], a
    nop
    inc l
    inc b
    sbc e
    inc b
    db $db
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    nop
    rst $38
    nop
    jr nc, @+$22

    ld e, b
    nop
    ld h, b
    jr nz, @-$26

    rst $38
    inc h
    inc de
    nop
    rrca
    ld b, c
    sbc [hl]
    nop
    ld a, $ff
    ld b, d
    inc a
    add b
    ld a, h
    ld [$00f0], sp
    ldh [$81], a
    nop
    inc bc
    rst $38
    inc bc
    inc c
    rlca
    ld [$100f], sp
    rrca
    db $10
    add l
    nop
    inc bc
    inc c
    rst $38
    rrca
    db $10
    rrca
    db $10
    rra
    jr nz, jr_003_4775

    jr nz, jr_003_46ef

    nop
    inc bc
    inc c
    rrca
    db $10
    rst $38
    rra
    jr nz, jr_003_4780

    jr nz, @+$41

    ld b, b
    ccf
    ld b, b
    rst $18
    nop
    inc bc
    inc e
    rrca
    jr nc, jr_003_478c

    ld h, b
    rst $38
    ccf
    ld b, b
    ccf
    ld b, b
    ld a, a
    add b

jr_003_4775:
    ld a, a
    add b
    add b
    nop
    rst $18
    nop
    rlca
    jr c, jr_003_479d

    ldh [$7f], a

jr_003_4780:
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_003_478c:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld bc, $0102
    ld b, $03
    inc b
    rst $38

jr_003_479d:
    inc bc
    inc b
    rlca
    ld [$0807], sp
    rlca
    ld [$0081], sp
    inc bc
    rst $38
    ld bc, $0706
    ld [$1807], sp
    rrca
    db $10
    rst $38
    rra
    jr nz, jr_003_47d4

    jr nz, jr_003_47f6

    ld b, b
    ccf
    ld b, b
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rrca
    inc bc
    inc a
    ccf
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_003_47d4:
    nop
    adc a
    nop
    ld bc, $0100
    nop
    rst $38
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_003_47f6:
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    cp [hl]
    rst $38
    rst $38
    ld hl, sp-$01
    ld [hl], h
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    adc h
    ld [hl], e
    rst $38
    or d
    dec c
    ld b, c
    ld a, $c0
    ccf
    or b
    ld c, a
    rst $38
    rst $38
    nop
    db $fd
    nop
    cp $00
    db $fd
    nop
    rst $38
    ld sp, $0400
    nop
    jr nc, jr_003_4845

jr_003_4845:
    ret nz

    nop
    add e
    rst $38
    ld a, l
    rst $38
    rst $38
    inc bc
    rst $38
    jr @+$01

    and b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    pop bc
    ld a, $06
    ld hl, sp+$70
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    rlca
    nop
    ldh a, [$c7]
    nop
    ld bc, $f000
    ei
    rst $38
    db $fc
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $82fe
    ld a, h
    rst $08
    inc e
    nop
    jr nc, jr_003_4890

jr_003_4890:
    rra
    nop
    rst $38
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    db $fd
    nop
    ld a, [c]
    nop
    ld bc, $bf00
    rst $38
    rst $30
    rst $38
    ld c, $ff
    or c
    rst $38
    rst $38
    ccf
    rst $38
    ld c, $ff
    db $10
    rst $38
    ld h, b
    rst $38
    rst $38
    ld [$10f7], sp
    rst $28
    ret nz

    rra
    jr jr_003_48c3

    rst $38
    rlca
    nop
    jr nz, jr_003_48c1

jr_003_48c1:
    ldh a, [rP1]

jr_003_48c3:
    rst $28
    db $10
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    sbc $00
    pop hl
    nop
    rst $08
    cp b
    nop
    add e
    nop
    ld a, [hl]
    nop
    db $fc
    rlca
    rrca
    dec de
    inc a
    db $f4
    rst $38
    ret nz

    cp $ff
    rst $38
    cp a
    rst $38
    jp $f9ff


    rst $38
    db $fc
    rst $38
    rst $08
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
    xor a
    nop
    ldh a, [$ce]
    ld a, $5f
    ei
    rst $38
    ccf
    ldh [$d9], a
    cp $f6
    rst $38
    ld hl, sp-$01
    rst $38
    ld hl, sp-$01
    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    rst $38
    ld a, b
    rst $38
    rrca
    ldh a, [rIE]
    rlca
    nop
    rst $38
    add d
    nop
    add b
    cp a
    ret nz

    ldh [$60], a
    ret nc

    jr nc, @+$12

    ld hl, sp-$01
    db $fc
    ld c, $ff
    inc bc
    ld e, $e1
    db $e3
    rst $38
    rst $38
    rra
    db $fc
    ldh a, [$1f]
    ld bc, $feff
    rst $38
    cp a
    nop
    rrca
    rra
    rst $38
    pop af
    db $fc
    inc bc
    rst $38
    db $e3
    inc e
    rlca
    ld hl, sp-$18
    rst $30
    and b
    ld a, a
    rst $38
    ld c, [hl]
    cp a
    xor a
    rst $18
    rst $10
    rst $28
    db $db
    rst $20
    rst $38
    jp hl


    rst $30
    pop af
    rst $38
    di
    rst $38
    ei
    rst $38
    adc d
    nop
    add b
    ldh [rIE], a
    ldh a, [$30]
    ldh a, [rNR23]
    ld a, [hl]
    adc [hl]
    inc hl
    rst $18
    rst $38
    rrca
    pop af
    sbc [hl]
    pop hl
    rst $00
    ld hl, sp-$20
    rst $38
    rst $38
    rst $30
    db $fc
    call $b8f2
    rst $20
    ld b, a
    rst $38
    add b
    nop
    cp a
    nop
    ld [$4407], sp
    jr c, jr_003_4992

    and $ff
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    ld hl, sp+$3f
    inc c
    rst $38
    ld a, [hl]
    add a
    rra
    db $e3
    add b
    nop
    add a
    nop
    ret nz

    nop

jr_003_4992:
    jr nz, @+$01

    ld c, b
    sub b
    jp nz, $203c

    jp $b04d


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    nop
    jr nz, jr_003_49c5

    ld [$34f3], sp
    ret z

    rst $38
    ld b, $f9

jr_003_49b0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    nop
    ld b, b
    add b
    rst $38
    ld [$2070], sp
    rst $00
    ld l, a
    sub b
    nop
    rst $38
    add e
    nop

jr_003_49c5:
    inc bc
    nop
    rst $38
    rra
    nop
    ld a, a
    add b
    inc bc
    db $fc
    and b
    ld e, a
    add b
    nop
    rst $38
    ret nz

    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    nop
    rrca
    rst $38
    ld [$0807], sp
    rlca
    nop
    rlca
    nop
    rlca
    rst $38
    jr nz, jr_003_49b0

    nop
    ldh a, [$80]
    ld a, b
    nop
    ld a, h
    rst $38
    ld b, d

jr_003_49f8:
    inc a
    nop
    ld a, $10
    rrca
    nop
    rlca
    rst $38
    nop
    inc bc
    nop
    inc bc
    inc b
    inc bc
    nop
    rlca
    rst $38
    ld [$0007], sp
    rrca
    nop
    rrca
    nop
    rrca
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    ld [hl+], a
    sbc h
    ld b, c
    sbc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rrca
    jr jr_003_4a2f

    inc d
    dec bc
    nop
    rra
    rst $38
    nop
    rra

jr_003_4a2f:
    nop
    rra
    db $10
    rrca
    ld [$ff07], sp
    jr nz, jr_003_49f8

    db $10
    ldh [rP1], a
    ldh a, [$08]
    ldh a, [rIE]
    inc b
    ld hl, sp+$00
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    db $fd
    dec b
    inc bc
    ld de, $4e0e
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    db $fc
    rst $00
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    add b
    nop
    cp a
    ret nz

    ld hl, sp+$30
    ld [hl], h
    adc a
    dec e
    db $e3
    di
    pop bc
    cp $e6
    rst $38
    call $f0ff
    db $e3
    rst $38
    rst $30
    rst $38
    add b
    nop

jr_003_4a8a:
    cp a
    nop
    ld e, h
    jr c, jr_003_4b06

    xor $fd
    ei
    rst $38
    ld [hl], a
    cp $f5
    cp $f8
    rst $38
    ld hl, sp-$01
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    ldh [rIE], a
    and b
    rst $38
    add b
    nop
    adc a
    nop
    jr jr_003_4a8a

    ld b, e
    cp h
    rst $38
    db $ed
    di
    call c, $ff3f
    rra
    rst $38
    rrca
    rst $38
    ld a, a
    add a
    scf
    rst $08
    rrca
    rst $38
    rrca
    rst $38
    db $fc
    sub [hl]
    rrca
    ld a, [hl-]
    db $fd
    ld b, h
    rst $38
    rst $38
    db $e3
    rst $38
    rrca
    db $fd
    ld sp, hl
    cp $f8
    rst $38
    rst $38
    adc c
    ld b, $f1
    rst $38
    sub a
    rst $38
    db $eb
    db $fc
    rst $30
    ldh a, [rIE]
    adc h
    rst $38
    ld a, a
    ccf
    rst $38
    rst $30
    sub [hl]
    rrca
    sub l
    ei
    db $fc
    ld sp, hl
    cp $ff
    call c, $f63f
    rra
    xor [hl]
    rst $18
    rst $10
    rst $38
    rst $30
    dec l
    ld e, $de
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rra
    ld e, $e7
    call z, $e7f7
    rst $38
    xor b
    nop
    rlca
    rrca
    add e

jr_003_4b06:
    rrca
    rlca
    rrca
    db $e3
    rlca
    rrca
    rlca
    inc bc
    rlca
    adc b
    inc bc
    ld bc, $009a
    add b
    ret nz

    ldh a, [$aa]
    ld hl, sp-$04
    cp $ff
    adc b
    rst $38
    ld a, a
    cp d
    ccf
    rra
    ccf
    rra
    rrca
    xor a
    rlca
    inc bc
    ld bc, $0003
    ld bc, $0080
    xor d
    add b
    ret nz

    ldh [$f0], a
    sub d
    ld hl, sp-$04
    cp $80
    rst $38
    rst $28
    ld a, a
    rst $38
    ld a, a
    rra
    ccf
    rrca
    rra
    xor d
    rrca
    rlca
    inc bc
    ld bc, $01aa
    inc bc
    rlca
    rrca
    adc b
    rra
    ccf
    add d
    ld a, a
    rst $38
    add b
    nop
    cp d
    nop
    jr jr_003_4b8f

    ld c, $07
    adc e
    inc bc
    ld bc, $0100
    cp e
    nop
    inc e
    ld a, $7f
    rlca
    add a
    xor a
    ld bc, $0600
    add [hl]
    add l
    add a
    rst $38
    add h
    rst $00
    call nz, $c4c7
    rst $00
    and $e7
    rst $38
    ld [c], a
    db $e3
    ld a, [c]
    di
    ld a, [c]
    di
    ld a, [$93fb]
    ei
    rst $38
    db $fd
    rst $38
    xor l
    nop
    inc bc
    rlca
    rrca
    rra
    ld a, [$1f1e]
    inc e
    ld e, $1c

jr_003_4b8f:
    ld [$80a4], sp
    ret nz

    ldh [rIE], a
    ldh [$f0], a
    jr nc, jr_003_4c09

    jr nc, jr_003_4bd4

    call z, $fbdd
    and $e7
    ccf
    ld a, a
    rrca
    ld [hl], $37
    rst $38
    call Call_003_4bff
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    di
    ld a, h
    ld a, a
    rst $18
    rst $38
    ld a, [hl]
    rst $38
    rst $08
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [hl]

jr_003_4bcd:
    cp $ff
    inc a
    ld a, $04
    ld c, $04

jr_003_4bd4:
    inc c
    ld [$ee0c], sp
    ld [$1018], sp
    jr nz, jr_003_4c0d

    jr nz, jr_003_4bcd

    ld b, c
    ld h, c
    ld b, e
    inc bc
    rst $00
    add a
    rst $38
    rlca
    adc a
    inc c
    adc [hl]
    inc c
    sbc h
    or e
    cp e
    ei
    and a
    rst $20
    ld a, h
    cp $f0
    ld l, h
    db $ec
    rst $38
    or e
    rst $38
    jp nc, $eeff

    rst $38
    cp $ff

Call_003_4bff:
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38

jr_003_4c09:
    cp $ff
    cp $ff

jr_003_4c0d:
    cp $ff
    db $fc
    rst $38
    rst $20
    ldh a, [$f8]
    db $fc
    cp $7c
    cp $f8
    inc a
    ld a, h
    nop
    jr c, jr_003_4c1e

jr_003_4c1e:
    add b
    nop
    cp d
    nop
    jr jr_003_4c40

    ld [hl], b
    ldh [$8b], a
    ret nz

    add b
    nop
    add b
    cp e
    nop
    jr c, jr_003_4cab

    cp $e0
    pop hl
    xor a
    add b
    nop
    ld h, b
    ld h, c
    and c
    pop hl
    rst $38
    ld hl, $23e3
    db $e3
    inc hl
    db $e3

jr_003_4c40:
    ld h, a
    rst $20
    rst $38
    ld b, a
    rst $00
    ld c, a
    rst $08
    ld c, a
    rst $08
    ld e, a
    rst $18
    sub e
    rst $18
    rst $38
    cp a
    rst $38
    xor d
    ld bc, $0703
    rrca
    sub d
    rra
    ccf
    ld a, a
    add b
    rst $38
    rst $28
    cp $ff
    cp $f8
    db $fc
    ldh a, [$f8]
    xor d
    ldh a, [$e0]
    ret nz

    add b
    xor d
    add b
    ret nz

    ldh [$f0], a
    adc b
    ld hl, sp-$04
    add d
    cp $ff
    sbc d
    nop
    ld bc, $0f03
    xor d
    rra
    ccf
    ld a, a
    rst $38
    adc b
    rst $38
    cp $ba
    db $fc
    ld hl, sp-$04
    ld hl, sp-$10
    xor a
    ldh [$c0], a
    add b
    ret nz

    nop
    add b
    add b
    nop
    xor b
    nop
    ldh [$f0], a
    add e
    ldh a, [$e0]
    ldh a, [$e3]
    ldh [$f0], a
    ldh [$c0], a
    ldh [$88], a
    ret nz

    add b
    add b
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $08
    rst $18
    rst $00
    rst $08

jr_003_4cab:
    cp a
    jp $c180


    add b
    ret nz

    add b
    ret nz

    db $fc
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    adc $c0
    ldh [$f0], a
    ld hl, sp-$01
    add b
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    rrca
    ccf
    jp $1f0f


    ccf
    rra
    rst $38
    rra
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    db $fc
    cp $80
    rst $38
    adc a
    rst $38
    db $fc
    rst $38
    ldh a, [$fc]
    jp $f8f0


    db $fc
    ld hl, sp-$01
    ld hl, sp-$04
    cp $fc
    cp $ff
    ccf
    ld a, a
    add b
    rst $38
    add b
    rst $38
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    ei
    db $e3
    di
    cp a
    jp $8301


    ld bc, $0103
    inc bc
    db $fc
    ld bc, $0103
    inc bc
    ld bc, $ce03
    inc bc
    rlca
    rrca
    rra
    rst $38
    add b
    rst $38
    add d
    nop
    ld bc, $0190
    inc bc
    adc b
    rlca
    rrca
    ret nz

    rrca
    rra
    ret nz

    rra
    ccf
    add e
    ccf
    rst $18
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rlca
    db $fd
    dec de
    rst $38
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    add b
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld [hl], a
    rst $38
    adc a
    ld bc, $0203
    inc bc
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rst $38
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    add hl, bc
    rst $38
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    dec c
    ei
    ld b, $05
    rlca
    ld b, $07
    ld b, $07
    rst $38
    inc b
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    rst $38
    inc c
    rrca
    inc c
    rrca
    ld [$080f], sp
    rrca
    rst $38
    ld [$080f], sp
    rra
    jr @+$21

    jr jr_003_4da1

    rst $38
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    rst $38
    ld de, $111f
    rra
    ld de, $111f
    ccf
    rst $38
    ld sp, $313f
    ccf
    ld hl, $213f
    ccf
    rst $38
    ld hl, $213f

jr_003_4da1:
    ccf
    ld hl, $213f
    ccf
    rst $38
    ld hl, $213f
    ccf
    ld hl, $213f
    ccf
    rst $38
    ld hl, $213f
    ccf
    ld hl, $213f
    ccf
    rst $38
    ld hl, $213f
    ccf
    ld hl, $213f
    ccf
    rst $38
    ld hl, $213f
    ccf
    ld hl, $417f
    ld a, a
    rst $38
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    rst $38
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    rst $38
    ld b, e
    ld a, a
    ld b, e
    ld a, a
    ld b, e
    ld a, a
    ld b, e
    ld a, a
    rst $38
    ld b, e
    rst $38
    jp $83ff


    rst $38
    add e
    rst $38
    add d
    nop
    add b
    sub b
    add b
    ret nz

    adc b
    ldh [$f0], a
    ret nz

    ldh a, [$f8]
    ret nz

    ld hl, sp-$04
    add e
    db $fc
    ei
    rst $38
    sbc a
    rst $38
    ldh a, [rIE]
    ldh [$bf], a
    ret c

    rst $38
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    add b
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    xor $ff
    adc a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    rst $38
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$90]
    rst $38
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh [$b0], a
    ei

jr_003_4e3e:
    ld h, b
    and b
    ldh [$60], a
    ldh [$60], a
    ldh [rIE], a
    jr nz, @-$0e

    jr nc, @-$0e

    jr nc, @-$0e

    jr nc, jr_003_4e3e

    rst $38
    jr nc, @-$0e

    jr nc, @-$0e

    db $10
    ldh a, [rNR10]
    ldh a, [rIE]
    db $10
    ldh a, [rNR10]
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp-$01
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$01
    adc b
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    db $fc
    rst $38
    adc h
    db $fc
    adc h
    db $fc
    add h
    db $fc
    add h
    db $fc
    rst $38
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    rst $38
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    rst $38
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    rst $38
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    rst $38
    add h
    db $fc
    add h
    db $fc
    add h
    cp $82
    cp $ff
    add d
    cp $82
    cp $82
    cp $82
    cp $ff
    add d
    cp $82
    cp $82
    cp $82
    cp $ff
    jp nz, $c2fe

    cp $c2
    cp $c2
    cp $ff
    jp nz, $c3ff

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    nop
    add b
    nop
    add b
    nop
    xor a
    rst $38
    nop
    db $fd
    nop
    db $dd
    jr nz, @+$01

    db $dd
    nop
    db $fd
    nop
    call $d530
    jr nz, @-$01

    ld a, c
    cp $63
    cp $fb
    cp $ff
    call z, $fffe
    cp $ff
    add c
    rst $38
    cp $ef
    cp $fd
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    cp [hl]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    rst $38
    add b
    ret nz

    nop
    add b
    ret nz

    add b
    nop
    ret nz

    ret nz

    add b
    ret nz

    ld hl, sp-$80
    ret nz

    nop
    add b
    nop
    add b
    nop
    db $ed
    add b
    nop
    add b
    ret nz

    add b
    ret nz

    db $db
    rst $38
    cp $fc
    cp $fd
    cp $80
    rst $38
    ret nc

    cp a
    ld a, a
    rst $38
    call $ff3f
    ld [hl], c
    rst $38
    rst $20
    adc a
    cp $e0
    db $fc
    ld hl, sp-$04
    ei
    add b
    ld hl, sp-$80
    ld hl, sp-$10
    nop
    ldh [$83], a
    rst $38
    ld hl, sp-$01
    ret nz

    cp $ff
    rst $08
    rst $28
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    ldh [$5f], a
    cp a
    rst $38
    db $dd
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    cp e
    cp $c0
    db $fc
    ld hl, sp+$00
    ld hl, sp-$01
    db $fc
    nop
    cp [hl]
    ret nz

    sub b
    rst $38
    sub b
    rst $38
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    or a
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    ld sp, hl
    cp $9f
    ldh [rIE], a
    nop
    rst $38
    jr nz, @+$01

    rst $30
    jr c, @+$01

    rra
    ei
    rlca
    adc a
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp a
    rst $38
    ret nz

    ld bc, $835d
    cp a
    inc bc
    rst $38
    rst $38
    inc bc
    ld a, l
    add e
    ld h, l
    dec de
    push de
    inc sp
    rst $38
    rst $20
    inc bc
    rst $38
    inc bc
    ccf
    jp $e7db


    or b
    rst $38
    rst $20
    rst $38
    add e
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rst $28
    rra
    ld a, e
    rlca
    adc a
    ccf
    dec sp
    rlca
    dec sp
    rlca
    rst $38
    inc bc
    ccf
    ld bc, $061f

jr_003_4fca:
    add hl, bc
    rra
    ld bc, $3dff
    inc bc
    ld bc, $013f
    ccf
    ld [bc], a
    ccf
    rst $38
    ld a, $1f
    rrca
    rra
    rlca
    rrca
    rlca
    nop
    rst $38
    inc c
    inc bc
    ld [bc], a
    rra
    ld [bc], a
    rra
    nop
    rra
    rst $38
    ld e, $21
    inc a
    ld b, e
    dec b
    ld a, [hl]
    ld b, $7d
    rst $38
    ld [hl], b
    adc a
    xor h
    ld d, e
    ld a, [$9a01]
    ld bc, $8cff
    inc de
    ldh a, [rIF]
    or b
    ld b, a
    jr z, jr_003_4fca

    add b
    rst $38
    adc a
    rst $38
    db $fc
    rst $38
    rst $08
    ldh a, [$fa]
    db $fd
    rst $38
    ld a, h
    ld a, a
    rrca
    rlca
    add b
    nop
    ei
    ldh [$fe], a
    ret nz

    db $fc
    ld hl, sp+$00
    ldh [$fd], a
    ldh a, [rP1]
    ld a, b
    add b
    cp b
    ret nz

    ld hl, sp-$01
    ret nz

    ld hl, sp-$40
    ld hl, sp-$3b
    ld a, [$f1f8]
    rst $38
    add hl, bc
    ldh a, [$e9]
    ldh [$cb], a
    push bc
    add b
    add a
    rst $38
    inc b
    ld [bc], a
    nop
    inc b
    inc bc
    inc b
    nop
    inc bc
    add e
    nop
    ld bc, $ff0e
    rrca
    db $10
    inc bc
    inc b
    ld bc, $0002
    ld bc, $04ff
    inc bc
    dec bc
    inc b
    ld b, $09
    inc de
    rrca
    rst $38
    inc bc
    ld [de], a
    inc bc
    ld [bc], a
    add d
    ld bc, $01c1
    rst $38
    ld bc, $01e1
    pop hl
    ld bc, $01e1
    pop hl
    db $fc
    ei
    rlca
    rst $18
    ccf
    ld a, a
    rst $38
    call z, $ff3f
    db $fd

jr_003_5072:
    rst $38
    add b
    rst $38
    ret nc

    db $fd
    ld hl, sp-$10
    rst $38
    ld sp, hl
    ldh a, [$f9]
    ldh a, [$f1]
    ld hl, sp-$0f
    ld hl, sp-$22
    db $fd
    ld hl, sp-$04
    cp $fc
    cp $bf
    rst $38
    ld a, a
    rst $38
    inc bc
    ld a, a
    nop
    rra
    adc [hl]
    ld bc, $0100
    nop
    add a
    nop
    jr c, @+$2a

    ld b, h
    rst $38
    nop
    add h
    nop
    inc b
    nop
    inc b
    ld [$fd04], sp
    nop
    ld [$0800], sp
    jr jr_003_50ab

jr_003_50ab:
    db $10
    cp $30
    nop
    ld b, b
    jr nz, jr_003_5072

    ld b, b
    add b
    rst $38
    ld hl, $f0c1
    nop
    ld hl, sp+$00
    call nc, $ff28
    ld sp, hl
    ld e, $f4
    ld l, $cf
    ld h, $c7
    ld h, $ff
    rst $08
    ld h, $df
    ld a, [hl+]
    rst $30
    ld a, [hl-]
    reti


jr_003_50ce:
    ld a, $ff
    db $e4
    jr jr_003_50ce

    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    rst $38
    nop
    cp $01
    ldh [$1f], a
    cp $ff
    rst $38
    rst $20
    rra
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$fc], a
    ld hl, sp-$04
    add b
    ld hl, sp-$20
    ldh a, [$80]
    nop
    call c, Call_003_7fff
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    ld d, b
    jr nz, jr_003_50ab

    nop
    db $10
    adc b
    dec h
    sbc d
    rst $38
    xor b
    pop af
    ld h, d
    sub c
    ld [hl], h
    adc d
    ldh a, [$9c]
    rst $38
    db $10
    db $e4
    and h
    ld b, b
    ld [$04e4], sp
    cp b
    rst $38
    db $10
    ld [$0800], sp
    nop
    ld [$0800], sp
    rst $38
    db $10
    adc b
    adc d
    ld d, c
    and l
    ld d, d
    adc e
    ld [hl], h
    rst $38
    inc b
    ei
    jp $2c3c


    db $d3
    rst $38
    db $fd
    rst $38
    di
    cp $f4
    ld hl, sp-$06
    db $fd
    jp hl


    ld [hl], b
    rst $38
    jp hl


    ld [hl], b
    jp hl


    ld [hl], b
    jp hl


    ld [hl], b
    ld h, [hl]
    ld sp, hl
    rst $38
    cp $ff
    db $fd
    cp $ff
    db $fc
    ld_long a, $fffd
    rst $30
    rst $38
    cp a
    db $db
    rst $28
    di
    ld l, [hl]
    sbc l
    add b
    rst $38
    xor [hl]
    rst $38
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    sbc a
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    db $ec
    ld a, [de]
    db $eb
    dec de
    db $eb
    dec de
    ld a, d
    add hl, bc
    add e
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    rlca
    rrca
    rlca
    nop
    inc c
    inc bc
    ld bc, $ff1f
    ld [bc], a
    rra
    ld [bc], a
    rra

jr_003_519b:
    ld [bc], a
    rra
    ld [bc], a
    rra
    xor a
    rrca
    rlca
    nop
    inc bc
    ld bc, $e003
    nop
    ld bc, $9f00
    nop
    add b
    nop
    ld b, b
    ld h, b
    nop
    rst $30
    nop
    jr nz, jr_003_51e5

    nop
    db $10
    jr jr_003_51b9

jr_003_51b9:
    rst $38
    nop
    ld [$008c], sp
    ret nz

    inc b
    add b
    inc b
    rst $38
    ld b, $00
    ret nz

    ld [bc], a
    ldh [rSC], a
    ldh [rSC], a
    rst $38
    ldh [rSC], a
    ldh [rSC], a
    ldh [rDIV], a
    ret nc

    inc c
    rst $38
    ret nz

    inc a
    jr nc, jr_003_519b

    ldh [rSB], a
    ld [hl], d
    add c
    cp a
    rst $38
    ld a, a
    rst $38
    rst $20
    rra
    cp $01

jr_003_51e5:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_003_51ee:
    rst $38
    db $fc
    inc bc
    ldh a, [$03]
    db $ec
    ld [de], a
    adc e
    inc d
    rst $38
    ccf
    add b
    ld a, [bc]
    pop af
    rra
    ldh [rNR31], a
    call nz, $0087
    ld [hl], b
    ld d, b
    adc b
    rst $38
    nop
    add h
    nop
    add d
    inc bc
    add b
    ld b, b
    add c
    db $fd
    ld bc, $0040
    ld b, b
    ld h, b
    nop
    jr nz, @+$01

    jr nc, jr_003_5219

jr_003_5219:
    ld [$0c10], sp
    ld [$0406], sp
    sub a
    rst $38
    ld a, a
    ccf
    rra
    ccf
    cp a
    rra
    rrca
    rra
    adc a
    rrca
    adc a
    rrca
    rst $38
    add d
    ld [hl], c
    ld a, [c]
    inc c
    ret nz

    jr z, @-$66

    ld b, b
    rst $38
    nop
    sub b
    add b
    ld d, b
    ret z

    jr nc, jr_003_51ee

    ret c

    rst $38
    ld b, c
    db $fc
    adc c
    ld c, [hl]
    ld b, h
    add a
    inc bc
    add c
    rst $38
    ld bc, $0080
    add c
    nop
    add d
    ld bc, $fe82
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    rra
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc [hl]
    rst $38
    db $fc
    cp $fc
    adc e
    rst $38
    cp a
    rst $38
    ld e, a
    rst $20
    rst $20
    db $eb
    ei
    cp e
    xor e
    inc de
    ld hl, sp+$07
    ld a, a
    rlca
    ccf
    nop
    add b
    nop
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ldh a, [$f7]
    rst $38
    rst $20
    rst $38
    rst $08
    rst $28
    rst $38
    ld a, [hl]
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld h, e
    rst $38
    rlca
    rst $38
    cp $07
    cp $07
    rst $18
    rst $38
    rlca
    rst $38
    ld a, a
    rlca
    ld bc, $eb7f
    nop
    ccf
    rra
    rlca
    dec b
    inc bc
    rst $18
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    rra
    nop
    rst $38
    ccf
    nop
    ld bc, $013f
    ccf
    ld bc, $ff3f
    ld bc, $3e3f
    ld bc, $017f
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rra
    rst $38
    rra
    rst $38
    add e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $20
    rra
    cp $01
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    cp a
    rst $38
    ld sp, hl
    rst $38
    ldh a, [$fe]
    xor $f0
    add b
    rst $38
    rst $38
    db $fc
    rst $38
    rst $08
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    inc hl
    add b
    inc b
    or e
    add b
    ld l, h
    nop
    ld h, c
    rst $38
    rrca
    ld h, e
    ld c, c
    dec h
    dec bc
    daa
    cpl
    inc de
    cp a
    ld [bc], a
    nop
    inc b
    ld [$1800], sp
    nop
    rst $38
    ld [bc], a
    ld de, $0130
    inc bc
    ld hl, $0167
    ld hl, sp+$13
    db $ed
    ld b, $01
    nop
    rst $38
    dec c
    nop
    ld e, e
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    ld a, a
    nop
    cp a
    nop
    ccf
    ret nz

    rlca
    ld hl, sp-$01
    ld b, b
    rst $38
    jr c, jr_003_5346

    dec de
    rlca
    add hl, sp
    rlca
    or b
    rst $38
    cp $ff
    add b
    rst $38
    add b
    rst $38
    adc e
    rst $38
    ccf
    rrca
    rra
    db $fd
    cp $ff
    ld hl, sp-$04
    ld hl, sp-$10
    ldh [rIE], a
    db $e3
    ret nz

    add a
    ret nz

    adc a

jr_003_5346:
    add b
    sbc a
    nop
    add d
    rst $38
    ld a, a
    rst $38
    dec sp
    rlca
    dec sp
    rlca
    inc bc
    ccf
    ld bc, $801f
    rst $38
    cp l
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    ld a, a
    add b
    rst $38
    adc a
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    jp $fffe


    ld sp, hl
    rst $38
    ldh [$fd], a
    ei
    rst $38
    rst $38
    rrca
    rst $38
    ld a, a
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    db $fc
    rst $30
    rst $08
    rst $28
    sbc a
    adc a
    rst $38
    ret nz

    ccf

jr_003_538a:
    rst $38
    add b

jr_003_538c:
    rst $38
    cp a
    rst $38
    ld a, a

jr_003_5390:
    rst $38
    rst $20
    rra
    cp $01
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    cp $fc
    cp $f8
    ret nz

    db $fc
    add sp, -$10
    nop
    add b
    nop
    sbc l
    nop
    ld bc, $0003
    ld [bc], a
    rst $38
    ld [de], a
    inc b
    add b
    inc [hl]
    inc b
    ret c

    jr nz, jr_003_53cd

    rst $38
    jr nz, jr_003_5390

    jr z, jr_003_538a

    jr nz, jr_003_538c

    ld de, $ffe0
    inc de
    rrca
    ccf
    nop
    ld a, a
    nop
    xor a
    ld d, b
    rst $38
    ld a, a
    ldh [$bf], a
    ret nc

    rst $08

jr_003_53cd:
    sub b
    adc a
    sub b
    rst $38
    rst $08
    sub b
    ld l, a
    ret nc

    sbc h
    ld [hl], e
    dec b
    add hl, bc
    rst $38
    call nz, $f803
    inc bc
    cp $01
    cp $01
    rst $38
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    cp $71
    adc a
    ld [bc], a
    rst $38
    dec c
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    rst $28
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    db $fc
    db $fd
    cp $ff
    cp $c0
    cp $ff
    rst $20
    rst $38
    cp $fc
    ld hl, sp-$10
    ld hl, sp-$01
    ld hl, sp-$10
    pop af
    ldh a, [$e1]
    ldh a, [$e1]
    ldh [rIE], a
    pop bc
    ldh [$e3], a
    ret nz

    jp $e7c0


    ret nz

    rst $38
    ld [$7443], a
    ld a, [$fc70]
    ld [hl], c
    db $fc
    rst $38
    ld [hl], a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ld_long a, $ff04
    ld sp, hl
    inc b
    di
    ld [$08f3], sp
    rst $20
    db $10
    add e
    rst $38
    rst $10
    adc a
    rst $38
    dec b
    add e
    ld bc, $0081
    add b
    ld hl, sp-$80
    rst $38
    cp [hl]
    ret nz

    rst $18
    ldh [rIE], a
    ldh a, [$fb]
    db $fc
    add b
    rst $38
    rst $28
    cp $ff
    cp $fc
    cp $fd
    cp $ff
    ld a, [$e1fd]
    ldh a, [$c3]
    ldh [$cf], a
    ldh [$bf], a
    rrca
    add a
    rlca
    jp $e307


    inc bc
    rst $38
    pop hl
    inc bc
    di
    ld bc, $01f1
    ld hl, sp-$7f
    rst $38
    ld sp, hl
    ret nz

    ld a, h
    ld h, b
    inc c
    sub b
    ld d, [hl]
    adc b
    rst $38
    ld e, e
    adc h
    ld l, [hl]
    sub b
    inc e
    ldh [rIE], a
    nop
    adc a
    rst $38
    ld sp, hl
    cp $9f
    ldh [rIE], a
    rst $38
    nop
    rst $38
    ld [bc], a
    cp $03
    db $fd
    inc bc
    rst $38
    ei
    rst $00
    add b
    pop bc
    add b
    ret nz

    db $ec
    ret nz

    rst $38
    rst $18
    ldh [$ef], a
    ldh a, [rIE]
    ld hl, sp-$02
    rst $38
    add b
    rst $38
    rst $28
    cp $ff
    cp $fc
    cp $fc
    cp $83
    rst $38
    ld hl, sp-$04
    rst $28
    ldh a, [$f8]
    ldh a, [$e1]
    ldh a, [$f3]
    ldh [rIE], a
    db $e3
    ldh [$e7], a
    ldh [$e7], a
    ldh [$e7], a
    ldh [rIE], a
    and $e1
    rst $20
    pop hl
    push bc
    db $e3
    dec c
    inc bc
    rst $38
    ldh [rSB], a
    ld hl, sp+$00
    db $fc
    nop
    ld a, $c0
    rst $38
    ld e, a
    jr nz, jr_003_5516

    db $10
    adc a
    db $10
    adc a
    db $10
    ldh a, [rSC]
    ld b, $03
    ld bc, $81fa
    ld bc, $c262
    inc a
    rst $38
    rst $38
    ld a, b
    ld [$08b1], sp
    dec a
    add b
    cp e
    inc b
    rst $38
    ld e, $01
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_003_5516:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ld bc, $077b
    rst $38
    rrca
    rst $18
    ccf
    rst $38
    cp a
    ld a, a
    sbc a
    ccf
    rst $18
    rra
    rst $18
    rrca
    rst $38
    add a
    ld a, a
    ld c, e
    add a
    dec b
    inc bc
    ld [hl], l
    inc bc
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    rst $38
    db $fd
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $d3
    rst $38
    cp $ff
    ld a, h
    ld a, [hl]
    rst $38
    ld sp, $9735
    inc sp
    ret nz

    inc d
    db $e3
    rla
    rst $38
    ld l, e
    sub a
    or e

jr_003_555c:
    rst $08
    sbc e
    add a
    ccf
    nop
    rst $38

jr_003_5562:
    ld a, a

jr_003_5563:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, b
    ld h, a
    jr jr_003_5563

    inc c
    db $e3
    inc e
    rst $18
    rst $38
    rra
    rrca
    rra
    rrca
    rst $08
    rra
    cp $ff
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    rrca
    rra
    rst $38
    add a
    rrca
    add a
    rlca
    jp $c307


    inc bc
    rst $38
    pop hl
    inc bc
    pop hl
    inc bc
    pop hl
    ld bc, $01e1
    adc d
    rst $38
    ld a, a
    ccf
    cp a
    rra
    sbc a
    rrca
    db $eb
    rlca
    ld hl, sp+$00
    rst $38
    rst $30
    ret nz

    cp a
    ret nz

    ccf
    add b
    ld a, h
    inc bc
    rst $38
    ld a, b
    ld b, $73
    inc c
    di
    inc c
    di
    inc c
    add e
    rst $38
    ld a, a
    rst $38
    adc a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
    nop
    xor a
    nop
    ld h, b
    jr nc, jr_003_5562

    jr jr_003_555c

    cp $08
    adc b
    ld b, h
    adc h
    ld c, $c6
    ld b, l
    cp $44
    ld h, h
    ld h, $24
    dec d
    ld d, $13
    ei
    jr nc, jr_003_5607

    nop
    ld h, b
    ld b, b
    inc c
    ret nz

    db $eb
    sbc [hl]
    adc h
    sbc [hl]
    ld a, [c]
    inc l
    inc e
    nop
    add e
    nop
    ld [$bf00], sp
    nop
    ld [$0900], sp
    ld bc, $029f
    cp [hl]
    ld [bc], a
    inc b
    ld b, $4e
    ld c, h
    or h

jr_003_5607:
    cp $0c
    inc b
    inc a
    ld b, h
    dec [hl]
    dec c
    ld sp, hl
    jp $0001


    ld b, $00
    db $eb
    rrca
    ld b, $0f
    add hl, bc
    inc bc
    nop
    ldh [$e0], a
    ld b, b
    nop
    cp [hl]
    nop
    ld bc, $0400
    inc bc
    rst $38
    add b
    rst $38
    jp $fcfd


    cp $fc
    rst $00
    ld a, h
    ld a, [hl]
    ld a, a
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $fd
    cp $fc
    db $d3
    ld hl, sp-$04
    ld hl, sp+$78
    ld hl, sp-$01
    ld hl, sp+$78
    db $fc
    ld a, b
    ld hl, sp+$7c
    ld a, a
    db $fd
    or $fb
    cp $92
    add hl, sp
    db $10
    rst $38
    or d
    nop
    ld [$0600], sp
    rst $38
    inc c
    add hl, bc
    jr jr_003_566f

    db $10
    ld de, $31a2
    rst $28
    ld [hl], b
    ld h, e
    and d
    ld h, d
    ld h, $e4
    inc h
    db $ec
    xor b
    ld l, b
    ret z

    inc c

jr_003_566f:
    inc b
    rst $38
    ld h, [hl]
    ld h, d
    or $f2
    cp l
    sub e
    inc sp
    ld bc, $e0fc
    pop hl
    or c
    db $10
    jr @+$0a

    or a
    ld [$0809], sp
    add hl, bc
    adc a
    dec b
    cp $47
    add e
    or d
    call z, Call_003_78e4
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ccf
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $00
    rst $38
    rst $38
    inc a
    dec bc
    db $10
    rrca
    nop
    rra
    nop
    rra
    rst $38
    jr nz, jr_003_56b4

    add b
    ld b, e
    ld b, b
    add e
    ld b, b
    add e
    rst $38

jr_003_56b4:
    ld a, a
    ld [$0837], sp
    rlca
    jr c, @+$03

    ld a, $ff
    ld b, b
    rrca
    nop
    add a
    add b
    rlca
    add b
    rlca
    rst $38
    ld a, h
    dec bc
    dec a
    dec bc
    inc sp
    ld bc, $0120
    rst $38
    ld h, b
    ld bc, $20d1
    dec de
    ldh [rSC], a
    sbc l
    add b
    rst $38
    adc h
    rst $38
    cp a
    ccf
    or h
    ccf
    ld a, a
    ccf
    ld a, a
    ret nz

    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, b
    ld a, c

jr_003_56eb:
    jr nc, jr_003_575d

    cp a
    jr nc, jr_003_5700

    jr nc, jr_003_56eb

    db $10
    jr nc, jr_003_570e

    rst $38
    jr c, jr_003_5711

    jr c, jr_003_5717

    ld e, $3d
    ld a, a
    ld a, $be
    ld a, a

jr_003_5700:
    ld c, h
    sbc [hl]
    ld e, $0c
    rst $38
    add b
    nop
    or e
    add b
    ret nz

    ld b, b
    ld a, [hl-]
    ld h, b
    db $eb

jr_003_570e:
    ld [hl], d
    ld [hl-], a
    dec l

jr_003_5711:
    jr nz, jr_003_5744

    ld [hl+], a
    db $ec
    add hl, hl
    or b

jr_003_5717:
    sbc a
    add b
    nop
    xor a
    jr nc, jr_003_5795

    add sp, $48
    ld h, b
    nop
    cp $3f
    ld a, [hl-]
    ld l, a
    ld b, a
    rst $00
    add d

jr_003_5728:
    add b
    cp a
    add b
    add a
    add d
    add l
    add a
    adc a
    dec b
    cp $15
    dec c
    ld l, b
    sbc b
    jr c, jr_003_5728

    rst $38
    add b
    rst $38
    add e
    rst $38
    rst $20
    rst $00
    rst $00
    jp $0383


    add a

jr_003_5744:
    inc bc
    call nz, $8783
    adc a
    db $fc
    adc a
    sbc a
    rst $38
    sbc a
    cp a
    rst $38
    or [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    db $10
    ret


    add hl, bc
    add [hl]
    dec b
    adc d

jr_003_575d:
    add hl, bc
    add b
    rst $38
    nop
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    rst $38
    ld c, $f0
    inc b
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    rst $38
    ld [bc], a
    ldh a, [rP1]
    pop hl
    ld bc, $01e0
    ldh [rIE], a
    rst $18
    ldh [$9e], a
    ldh [$a6], a
    ret nz

    ld [bc], a
    ret nz

    rst $38
    inc bc
    ret nz

    push bc
    ld [bc], a
    db $ec
    inc bc
    ld d, b
    cp h
    rst $38
    db $f4
    ld a, [bc]
    db $f4
    ld [$08c4], sp
    add h
    nop

jr_003_5795:
    rst $38
    add [hl]
    nop
    add e
    inc b
    ret z

    rlca
    adc b
    pop af
    cp a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    ld b, b
    ld a, $80
    inc a
    ret nz

    inc c
    nop
    add h
    rst $38
    ld b, $80
    adc e
    inc b
    ret c

    rlca
    jr nz, jr_003_57da

    rst $38
    ld d, b
    adc c
    add hl, bc
    add [hl]
    dec b
    adc d
    add hl, bc
    add b
    rst $38
    nop
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    rst $38
    ld [bc], a
    nop
    db $fc
    nop
    ldh a, [$0c]

jr_003_57da:
    ldh [rNR32], a
    rst $38
    jp nz, $c030

    ld hl, $6081
    add c
    ld h, b
    rst $38
    ld [bc], a
    pop af
    ld [$00f0], sp
    ldh a, [rP1]
    ldh a, [rIE]
    nop
    ldh a, [rSB]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    rst $38
    ld c, $f1
    dec [hl]
    jp z, $805f

    ld e, c
    add b
    rst $38
    ld sp, $0fc8
    ldh a, [$0d]
    ld [c], a
    inc d
    db $e3
    rst $38
    and b
    ld b, d
    ret z

    inc b
    nop
    add h
    add b
    inc b
    rst $38
    ld b, $00
    ld c, b
    ld bc, $6011
    ld hl, $ffc0
    ld bc, $1200
    ldh [rTMA], a
    ld hl, sp+$02
    db $fc
    rst $38
    inc bc
    ldh a, [rP1]
    pop hl
    ld bc, $01e0
    ldh [rIE], a

jr_003_582e:
    ld [de], a
    ld h, c
    add hl, bc
    jr nc, jr_003_5833

jr_003_5833:
    jr nc, jr_003_5835

jr_003_5835:
    jr nc, jr_003_582e

    nop
    ld [hl], b
    ld c, c
    add b

jr_003_583b:
    rlca
    add b
    rlca
    rst $38
    ld [$04e4], sp
    jp Jump_003_4502


    inc b
    ld b, b
    rst $38
    nop
    add sp, $00
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, h
    rst $38
    db $10
    xor $00
    db $fc
    nop
    call z, $8004
    rst $38
    ld b, $80
    dec bc
    add h
    jr @-$37

    jr nz, jr_003_583b

    rst $38
    ld [bc], a
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    ld a, [c]
    nop
    ldh [rSB], a
    pop hl
    nop
    pop hl
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    rst $38
    nop
    ld a, [c]
    nop
    pop hl
    ld bc, $01e0
    ldh [rIE], a
    ld bc, $0200
    nop
    inc a
    nop
    ld l, h
    nop
    rst $38
    ld b, [hl]
    nop
    ld b, e
    inc b
    jr z, jr_003_589d

    jr nz, jr_003_58b1

    cp a
    rst $38
    ld a, a
    rst $38
    ccf

jr_003_589d:
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld bc, $d3ff
    ld a, a
    ccf
    rra
    sbc a
    rrca
    rst $30
    rrca

jr_003_58b1:
    adc a
    add a
    adc a
    rst $00
    rst $20
    rst $00
    pop de
    rst $38
    cp $fc
    ld hl, sp-$49
    ld hl, sp-$10
    ld hl, sp-$0f
    di
    pop af
    rst $38
    ld b, b
    nop
    ccf
    nop
    rrca
    jr nc, jr_003_58d2

    jr c, @+$01

    ld b, e
    inc c
    inc bc
    add h
    add c

jr_003_58d2:
    ld b, $81
    ld b, $ff
    ld b, b
    adc a
    nop
    rra
    nop
    rrca
    nop
    rrca
    rst $38
    nop
    rrca
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    ld a, h
    ld bc, $033c
    jr nc, jr_003_58ef

jr_003_58ef:
    ld hl, $60ff
    ld bc, $20d1
    dec de
    ldh [rDIV], a
    sbc b
    rst $38
    ld a, [bc]
    sub c
    sub b
    ld h, c
    and b
    ld d, c
    sub b
    ld bc, $00ff
    dec bc
    nop
    rrca
    nop
    rrca
    nop
    sbc a
    rst $38
    ld b, c
    ld a, $82
    inc a

jr_003_5910:
    ret nz

    inc c
    nop
    add h
    rst $38
    ld b, $80
    adc e
    inc b
    ret c

    rlca
    jr nz, jr_003_5936

    rst $38
    ld [$0077], sp
    ccf
    nop
    inc sp
    jr nz, jr_003_5927

    rst $38

jr_003_5927:
    ld h, b
    ld bc, $21d0
    jr jr_003_5910

    inc b
    sbc e
    rst $38
    rra
    ld h, b
    inc b
    dec sp
    nop
    ccf

jr_003_5936:
    nop
    ccf
    rst $38
    nop
    ld c, a
    nop
    add a
    add b
    rlca
    add b
    rlca
    rst $38
    ld c, b
    add [hl]
    sub b
    inc c
    nop
    inc c
    nop
    inc c
    rst $38
    nop
    ld c, $90
    inc bc
    nop
    pop hl
    nop
    pop hl
    rst $38
    add b
    nop
    ld b, b
    nop
    ld [hl+], a
    ld bc, $0738
    rst $38
    ld b, b
    rrca
    nop
    add a
    add b
    rlca
    add b
    rlca
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf

jr_003_596e:
    rst $38
    nop
    ld c, a
    nop
    add a
    add b
    rlca
    add b
    rlca
    rst $38
    ld d, b
    nop
    cpl
    db $10
    inc sp
    nop
    ld hl, $ff00
    ld h, c
    nop
    pop de
    jr nz, jr_003_59a1

    ldh [rTAC], a
    sbc b
    rst $38
    add b
    nop
    ld b, b
    nop
    inc a
    nop
    ld [hl], $00
    rst $38
    ld h, d
    nop
    jp nz, $1620

    ldh [rDIV], a
    sbc b
    rst $38
    nop
    rst $20
    jr jr_003_59c7

    ld l, b

jr_003_59a1:
    inc d
    ld a, [hl]
    add b
    rst $38
    jr z, jr_003_596e

    ld a, h
    add e
    ld l, h
    ld de, $3900
    rst $18
    ld d, b
    add hl, bc
    add [hl]
    dec b
    adc d
    add hl, bc
    add b
    rst $38
    nop
    ret nc

    nop
    ldh a, [rNR41]
    ret nc

    ld e, b
    add c
    add b
    rst $38
    add e
    rst $38
    cp $fc
    jp $f8fc


jr_003_59c7:
    ld a, [$b6fc]
    rst $38
    cp $ff
    cp $ff
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$ffff], sp
    ld [$f7ff], sp
    ld [$08ff], sp
    ld e, c
    cp [hl]
    rst $38
    ld bc, $fe00
    ld bc, $03ff
    cp $0f
    rst $38
    ld hl, sp+$1f
    pop af
    ld a, $e7
    ld a, b
    rst $08
    ld [hl], b
    rst $38
    rst $18
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    ccf
    ret nz

    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    inc l
    rst $18
    rst $38
    stop
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $38
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    db $10
    ei
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    inc l
    rst $18
    cp a
    nop
    rst $38
    nop
    cp a
    ret nz

    cpl
    ldh a, [rIE]
    rrca
    ld hl, sp-$31
    inc a
    ld sp, hl
    ld c, $fb
    ld c, $de
    nop
    ld bc, $0703
    inc bc
    rlca
    call nz, $0f07
    rra
    db $d3
    ccf
    rra
    ccf
    ld a, a
    ccf
    di
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    call c, Call_003_7fff
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    sbc $00
    add b
    ret nz

    ldh [$c0], a
    ldh [$c4], a
    ldh [$f0], a
    ld hl, sp-$2d
    db $fc
    ld hl, sp-$04
    cp $fc
    di
    db $fc
    cp $fc
    cp $ff
    cp $dc
    rst $38
    cp $ff
    cp $ff
    add b
    rst $38
    add b
    nop
    add e
    nop
    db $d3
    inc c
    rst $18
    nop
    ld [$0800], sp
    nop
    ld [$c300], sp
    ld [$0800], sp
    nop
    cp h
    nop
    ld [$0800], sp
    nop
    rst $30
    ld [$0800], sp
    nop
    ld [$18a6], sp
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    db $fd
    sbc b
    nop
    add c
    nop
    add b
    nop
    add b
    sbc $c0
    add b
    ld h, b
    inc h
    jr @+$01

    xor a
    nop
    stop
    db $10
    jr c, jr_003_5af0

    db $fc
    cp d
    add $38
    jr z, jr_003_5ace

jr_003_5ace:
    db $10
    adc e
    nop
    ld bc, $0100
    rst $38
    ld bc, $0300
    ld [bc], a
    ld bc, $0302
    nop
    rst $38
    rlca
    inc b
    inc bc
    inc b
    rlca
    ld bc, $0107
    db $fd
    rlca
    ld bc, $0107
    inc bc
    dec b
    rlca
    rst $38
    ld [bc], a

jr_003_5af0:
    inc bc
    add hl, de
    ld a, [de]
    ld e, $27
    ld a, e
    ld b, a
    cp $6b
    ld d, a
    ld [hl], c
    ld e, a
    ld d, c
    ld a, a
    ccf
    cp a
    nop
    inc bc
    dec b
    rrca
    ld [$090e], sp
    rst $38
    add hl, de
    rrca
    ld e, $27
    rra
    dec h
    rrca
    dec e
    add b
    nop
    adc a
    nop
    ld e, d
    ld h, [hl]
    cp $81
    rst $38
    ccf
    jr nz, jr_003_5b3b

    jr nz, jr_003_5b3d

    jr nz, jr_003_5b4d

    inc sp
    add b
    nop
    rst $38
    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $d3
    inc [hl]
    sub e
    ld e, b
    add e
    inc b
    xor a
    ld [hl], b
    rst $38
    rlca
    inc b
    inc bc
    inc b
    rrca

jr_003_5b3b:
    add hl, bc
    dec b

jr_003_5b3d:
    dec bc
    rst $38
    ld c, $03
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rst $38
    rlca
    ld a, [bc]
    dec de
    ld e, $1d

jr_003_5b4d:
    ld h, $7a
    ld b, a
    cp $6b
    ld d, a
    ld [hl], c
    ld e, a
    ld d, c
    ld a, a
    ccf
    add b
    nop
    sbc a
    ld bc, $0f02
    ld [$101f], sp
    rst $38
    ccf
    jr nz, jr_003_5b84

    ld hl, $437d
    ld a, a
    ld b, d
    rst $38
    ld a, a
    ld b, [hl]
    ld hl, $033a
    nop
    inc bc
    dec b
    rst $38
    rrca
    ld [$000f], sp
    dec e
    inc de
    ld a, [bc]
    rla
    rst $38
    dec e
    ld b, $1f
    inc b
    rra
    inc b
    rrca

jr_003_5b84:
    inc d
    rst $38
    rra
    inc d
    rra
    inc e
    dec de
    inc l
    ld [hl], a
    ld e, b
    cp $6b
    ld e, h
    ld [hl], h
    ld e, a
    ld d, e
    ld a, a
    ccf
    add b
    nop
    rst $38
    nop
    ld h, b
    ld [hl], b
    add b
    ld [hl], b
    adc b
    ld a, b
    add b
    rst $38
    ld a, h
    add h
    ld a, b
    add h
    ld hl, sp-$7c
    ld a, h
    ld b, $ff
    dec a
    ld b, a
    ld a, h
    ld b, a
    inc e
    daa
    inc e
    rlca
    rst $38
    inc e

jr_003_5bb5:
    rla
    inc c
    rlca
    ld b, $0f
    inc bc
    rrca
    rst $38
    rla
    jr jr_003_5bff

    jr nz, jr_003_5c41

    ld b, b

jr_003_5bc3:
    ld h, a
    inc b
    rst $38
    rst $08
    add d
    adc l
    ld b, b
    call $c14c
    ld b, b
    rst $38
    sub c
    ld b, b
    pop bc
    ld [bc], a
    rst $38
    inc e
    rst $38
    nop
    rst $38
    or $7a
    xor l
    call c, $867a
    rst $38
    ld bc, $faff
    rlca
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    rst $30
    inc c
    rst $30
    inc c
    db $eb
    inc e
    rra
    ld hl, sp-$02
    rst $30
    ld hl, sp-$79
    ld hl, sp-$20
    rst $38
    rst $18
    add d
    nop
    add b
    rst $38
    ret nz

jr_003_5bff:
    nop
    ret nz

    jr nz, jr_003_5bc3

    jr nz, jr_003_5bb5

    ldh a, [$8f]
    nop
    ld [bc], a
    inc bc
    ld hl, $bf33
    cpl
    ld h, b
    ld h, h
    ld b, h
    ld l, d
    ld c, [hl]
    ld [hl], c
    rst $38
    ld sp, hl
    ld e, $e9
    ld e, $f8
    rrca
    cp b
    rst $08
    rst $38
    dec b
    ld a, $3f
    scf
    rra
    jr nz, jr_003_5c64

    ld b, b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cpl
    or b
    ld c, a
    ld l, b
    rlca
    add h
    jp nz, $ff25

    rst $38
    nop
    db $ec
    db $f4
    ld e, d
    cp b
    db $f4
    inc c

jr_003_5c41:
    rst $38
    rst $38
    inc bc
    push af
    ld c, $ff
    inc c
    ei
    inc c
    rst $38
    ei
    inc c
    db $eb
    inc e
    db $eb
    inc e
    rst $18

jr_003_5c52:
    jr c, jr_003_5c52

    scf
    ld hl, sp-$19
    ld hl, sp-$20
    rst $38
    rst $18
    rst $38
    ld [hl], $34
    daa
    jr nc, jr_003_5c88

    jr c, jr_003_5cca

    ld a, d

jr_003_5c64:
    rst $38
    ld h, e
    cp l
    or $3b
    di
    inc e
    xor a

jr_003_5c6c:
    ld e, a
    rst $38

jr_003_5c6e:
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_003_5c78:
    nop
    rst $18
    add hl, sp
    ld c, a
    ret


    ld e, a
    ld h, b
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ret z

    or l
    ld [hl], c

jr_003_5c88:
    rst $38
    jp hl


    add hl, de
    rst $38
    ld b, $ef
    add hl, de
    rst $30
    jr @+$01

    rst $30
    jr jr_003_5c6c

    jr c, jr_003_5c6e

    jr c, jr_003_5c78

jr_003_5c99:
    jr nc, jr_003_5c99

    cp a
    ld [hl], b
    ld l, a
    ldh a, [$c0]
    rst $38
    rst $18
    add d
    nop
    ld bc, $10fc
    add hl, de
    dec e
    rra
    nop
    db $10
    add e
    nop
    ld b, b
    ld [bc], a
    rst $38
    ld e, d
    cp a
    di
    rrca
    di
    rrca
    di
    ld c, a
    rst $38
    ld [hl], e
    xor a
    ld d, e
    rst $28
    rst $30
    rrca
    db $fd
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20

jr_003_5cca:
    jr nz, @+$01

    db $db

jr_003_5ccd:
    ld b, b
    sbc c
    ld [bc], a
    sbc e
    ld a, [de]
    add e
    ld [bc], a
    rst $38
    and c
    ld [bc], a
    add d
    ld b, c
    rst $38
    jr c, @+$01

    nop
    rst $38
    cpl
    ld e, a

jr_003_5ce0:
    ld d, [hl]
    ld a, c
    ld e, a
    ld h, b
    rst $38
    add b
    rst $38
    rst $28
    ld [hl], b
    cp a

jr_003_5cea:
    ld [hl], b
    rst $18
    jr nc, jr_003_5ccd

    jr nc, @+$01

    rst $10
    jr c, jr_003_5cea

    jr jr_003_5ce0

    inc e
    db $ec
    rra
    db $fc
    rst $30
    rrca
    ldh a, [rIF]
    inc bc
    rst $38
    rst $38
    dec b
    rrca
    ld a, [de]
    rla
    rra
    ld [de], a
    nop
    dec c
    add b
    nop
    add e
    nop
    add b
    and b
    rst $38
    or b
    ldh a, [$e0]
    ldh a, [$30]
    ld [hl], c
    add hl, de
    ld a, [$e7ff]
    rra
    rst $20
    sbc a
    and $5f
    and a
    sbc $ff
    rst $28
    inc e
    rst $30
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38

jr_003_5d2a:
    cp $01

jr_003_5d2c:
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    cp a
    ld b, b
    rst $38
    rst $38
    nop
    rst $18
    ld a, $ed
    di
    cp [hl]
    pop bc
    rst $38
    rst $38
    nop
    rst $18
    ldh [$7f], a
    ldh [$bf], a
    ld h, b
    rst $38
    cp a
    ld h, b
    xor a
    ld [hl], b
    rst $28

jr_003_5d53:
    jr nc, jr_003_5d2c

    jr c, jr_003_5d53

    ret c

    ccf
    rst $28
    rra
    rlca
    rst $38

jr_003_5d5d:
    rst $38
    ld d, [hl]
    ld a, [hl]
    adc $fe
    sbc [hl]
    ld a, [hl]
    sbc a
    ld a, [hl]
    rst $38
    db $dd
    ld a, $cf
    inc a
    rst $18
    jr c, jr_003_5d5d

    ldh a, [rIE]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp a
    ret nz

    cpl
    jr nc, jr_003_5d2a

    ld l, l
    rst $38
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    inc a
    db $db
    and $ff
    ld a, [hl]
    add e
    db $fd
    inc bc
    cp a
    pop bc
    rst $38
    pop bc
    rst $38
    ld a, a
    pop bc
    ld a, a
    pop bc
    rst $18
    ld h, c
    sbc $61
    db $fc
    xor a
    ld [hl], b
    or c
    ld a, a
    rra
    rst $38
    add c
    nop
    add b
    cp $d0
    ret c

    call z, $f8fc
    db $fc
    ld a, h
    rst $38
    nop
    ld bc, $0203
    inc bc
    nop
    inc bc
    inc b
    rst $38
    adc a
    adc b
    adc a
    add b
    sbc a
    add b
    sbc a
    and b
    rst $38
    cp a
    ret nz

    rst $38
    add c
    db $fc
    nop
    ld_long a, $ff06
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
    and b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    add b

jr_003_5de9:
    ld a, a
    ret nz

    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $38
    rst $38
    jr c, jr_003_5de9

    rra
    rst $10
    jr c, jr_003_5e6d

    ldh a, [$fe]
    db $eb
    db $f4
    db $e4
    rst $38
    db $f4
    rst $38
    rst $18
    rst $38
    add sp, -$08
    ret z

    ld c, h
    add h
    ld b, [hl]
    pop bc
    ld b, e
    rst $38
    inc de
    rra
    ld [bc], a
    ccf
    ld b, b
    ld [hl], c
    ld de, $8051
    nop
    cp a

jr_003_5e1c:
    nop
    or h
    call z, $02fc
    rst $38
    ld bc, $7fff
    add b
    rst $38
    nop
    rst $38
    nop
    push af
    ld c, $ff
    db $fc
    inc e
    jp nz, $f93e

    rlca
    db $fc
    inc bc
    rst $38
    nop
    add b
    ld b, b
    ret nz

    jr nz, jr_003_5e1c

    nop
    ldh [rIE], a
    db $10
    ldh a, [$88]
    ld a, b
    add b
    ld a, b
    call nz, $ff3c

jr_003_5e48:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add b

jr_003_5e5c:
    xor a
    rst $18
    ld [hl], a
    ld hl, sp-$51
    ld [hl], b
    cp $eb
    db $f4
    db $e4
    rst $38
    db $f4
    rst $38
    rst $18
    add e
    nop
    and b

jr_003_5e6d:
    ld h, b
    rst $38
    add sp, $18
    db $fc
    inc b
    db $fc
    ld [bc], a
    ld a, [hl]

jr_003_5e76:
    add c
    rst $38
    cp a
    ld b, b
    rst $38
    jr nz, jr_003_5e5c

    jr nc, jr_003_5e76

    jr @+$01

    ei
    inc c
    db $fc
    rlca
    db $fd
    inc bc
    cp a
    ld b, b
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    rst $38
    rrca
    ld d, a
    cp b
    rst $28

jr_003_5ea3:
    ldh a, [$fe]
    ld l, e
    db $f4
    db $e4
    rst $38
    db $f4
    rst $38

jr_003_5eab:
    rst $18
    add b
    nop
    rst $38
    inc d
    jr jr_003_5ece

    ld [hl+], a
    inc a
    ld b, d
    ld a, [hl]
    add d
    rst $38
    db $fc
    nop
    ld hl, sp+$04
    db $fc
    inc b
    ldh a, [$08]
    rst $38
    ldh a, [rP1]
    ldh a, [rNR10]
    ret nz

    jr nz, jr_003_5e48

    ld b, b
    and b
    add b
    nop
    xor a
    nop

jr_003_5ece:
    add b
    nop
    add b
    nop
    ret nz

    rst $38
    and b
    ld h, b
    add b
    ld h, b
    ret nc

    jr nc, jr_003_5ea3

    jr c, @+$01

    ret nz

    jr c, @-$1a

    inc e
    ldh [rNR32], a
    ld a, [c]
    ld c, $ff
    ld a, [c]

jr_003_5ee7:
    ld c, $f0

jr_003_5ee9:
    ld c, $f1
    rrca
    pop af
    rrca
    rst $38
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    rst $38
    add c
    ld a, a
    pop hl
    rst $38
    cp e
    ld a, a
    rst $28
    rra
    db $fc
    ld h, a
    sbc a
    add e
    rst $38
    add d
    cp $bf
    nop
    ld h, d
    ld a, [hl]
    add b
    ldh a, [rNR41]
    ldh [$fc], a
    ld d, b
    ret c

    xor h
    cp h
    jr c, jr_003_5f52

    add e
    nop
    ld c, b
    ld a, b
    rst $38
    ld [hl], b
    adc h
    ld a, [$f806]
    ld b, $f8
    ld b, $ff
    ret nz

    jr nz, jr_003_5ee7

    jr nz, jr_003_5ee9

    jr nz, jr_003_5eab

    ld b, b
    add d
    nop
    add b
    rst $38
    ld hl, sp+$06
    ld hl, sp+$06
    ld a, b
    add [hl]
    ld [hl], d
    adc [hl]
    rst $38
    ld a, [c]
    adc [hl]
    ld [c], a
    sbc [hl]
    call nz, $84bc
    db $fc
    rst $38
    ret nz

    inc a
    ld [c], a
    ld e, $e0
    ld e, $e1
    rra
    rst $38
    pop hl
    rra
    ldh [$1f], a
    ret nz

    ccf
    ret nz

jr_003_5f52:
    ccf
    rst $38
    ld bc, $e1ff
    rst $38
    cp e
    ld a, a
    rst $28
    rra
    cp $67
    sbc a
    add e
    rst $38
    add e
    rst $38
    cp $ff
    nop
    ld bc, $0003
    rlca
    nop
    rlca
    ld [$1fff], sp
    db $10
    rrca
    db $10
    ccf
    jr nz, jr_003_5ff4

    ld b, b
    sbc a
    add b
    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    rst $38
    ld h, b
    ldh [$d0], a
    ldh a, [$88]
    ld hl, sp-$80
    ld a, b
    rst $38
    ret nz

    inc a
    ret nz

    inc a
    ldh [rNR34], a
    ldh [rNR34], a
    rst $38
    pop hl
    rra
    pop bc
    ccf
    pop bc
    ccf
    add c
    ld a, a
    cp $88
    ld hl, sp-$68
    ld hl, sp+$30
    ldh a, [$e0]
    and b
    ret nz

    nop
    rst $30
    rst $30
    db $e3
    ldh [$f0], a
    ldh [$c4], a
    ldh [rIE], a
    call nz, $cace
    adc b
    adc d
    adc b
    ld c, $8e
    db $fd
    or h
    ld c, $8d
    nop
    add b
    nop
    add b
    sbc $c0
    add b
    ld h, b
    inc h
    jr @+$01

    rst $30
    rst $30
    db $e3
    ldh [$f0], a
    ldh [$c0], a
    ldh [$9b], a
    ret nz

    adc h
    sbc [hl]
    ld a, d
    sub d
    add e
    nop
    inc h
    inc a
    rst $38
    ld a, b
    ld b, [hl]
    ld a, l
    inc bc
    db $fc
    add e
    ld a, h
    add e
    rst $38
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, b
    add a
    rst $38
    ld sp, hl
    add a
    pop af
    adc a
    ldh [$9e], a
    add d
    cp $ff
    add b
    db $fc
    add h

jr_003_5ff4:
    db $fc
    ld [$30f8], sp
    ldh a, [$a8]
    ldh [$80], a
    nop
    rst $38
    inc c
    rla
    inc c
    rlca
    ld b, $0f
    inc bc
    rrca
    rst $38
    rla
    jr @+$41

    jr nz, @+$81

    ld b, b
    ld a, a
    nop
    rst $38
    rst $38
    add b
    jp $8120


    ld c, h
    pop bc
    ld c, h
    rst $38
    pop bc
    ld b, b
    add e
    ld d, d
    rst $10
    inc [hl]
    rst $38
    nop
    adc l
    nop
    ld [$110e], sp
    rst $38
    ld a, $21
    ld a, $01
    ccf
    ld b, c
    cp $80
    rst $38
    inc bc
    nop
    rlca
    inc b
    rlca
    nop
    rlca
    ld [$9fff], sp
    sub b
    adc a

jr_003_603c:
    sub b
    cp a
    and b
    cp a
    add b
    rst $38
    cp a
    pop bc
    cp $82
    ld hl, sp+$04
    ld_long a, $ff06

jr_003_604b:
    db $fd
    inc bc

jr_003_604d:
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld e, a
    and b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    ldh a, [$c8]
    jr c, jr_003_604b

    jr jr_003_604d

    jr @+$01

    ldh [rNR23], a
    ret nz

    jr c, jr_003_603c

    jr c, @-$7e

    ld [hl], b
    rst $38
    cp a
    ret nz

    inc e
    db $e3
    nop
    rst $38
    ld bc, $eaff
    adc a
    rst $38
    db $fc
    ldh [rP1], a
    add b
    nop
    xor a
    nop

jr_003_608a:
    ld bc, $1c1b
    ld c, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    sbc a
    ldh [$1f], a
    ldh [rP1], a
    rst $38
    ld a, [c]
    add b
    rst $38
    pop hl
    rst $38
    ld a, [hl]
    rst $30
    rst $30
    db $e3
    inc bc
    rlca
    inc bc
    ld de, $fe03
    ld de, $2939
    jr nz, @+$2a

    jr nz, jr_003_60e6

    ld hl, sp+$16
    jr c, jr_003_608a

    add b
    nop
    sbc $01
    nop
    inc bc
    ld [de], a
    inc c
    rst $38
    rst $30
    rst $30
    db $e3
    inc bc
    rlca
    inc bc
    ld bc, $9b03
    ld bc, $3c18
    cpl
    inc h
    add c
    nop
    ld h, b
    rst $38
    ld [hl], b
    add b
    ld a, b
    add b
    ld a, b
    add h
    cp $82
    rst $38
    rlca
    inc b
    ld bc, $0302
    ld [bc], a
    ld bc, $a000
    ld bc, $ff00
    ldh [rNR10], a
    ld hl, sp+$08

jr_003_60e6:
    ldh a, [$08]
    ldh a, [$0a]
    rst $38
    db $fd
    rlca
    db $fc
    add a
    ld a, h
    ld b, a

jr_003_60f1:
    inc e
    daa
    rst $38
    ld [hl], e
    xor a
    ld d, e
    rst $28
    rst $30
    rrca
    db $fd
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    jp $8104


    ld a, [de]
    add e
    ld a, [de]

jr_003_610e:
    rst $38
    add e
    ld [bc], a
    pop bc
    ld d, d
    ld_long $ff2d, a
    nop
    ld hl, sp+$0c
    nop
    ret nz

    add b
    nop
    sbc $01
    nop
    inc bc
    ld [de], a
    inc c
    rst $38
    rst $38
    ldh a, [$08]
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rNR10]
    cp $c0
    jr nz, jr_003_60f1

    nop
    add b
    nop
    add b
    add b
    nop
    xor a
    nop
    add b
    nop
    add b
    nop
    ret nz

    rst $38
    and b
    ld h, b
    add b
    ld h, b
    ret nc

    jr nc, jr_003_610e

    jr c, @+$01

    ret nz

    jr c, @-$19

    dec e
    ldh [rNR33], a
    ld a, [c]
    rrca
    rst $38
    ld a, [c]
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    rst $38
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    cp $00
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    add b
    nop
    cp a
    nop
    ld l, b
    sbc b
    db $f4
    inc c
    ldh a, [$0c]
    rst $38
    ldh a, [$0c]
    ldh [rNR32], a
    add h
    ld a, h
    inc c
    db $fc
    ld [$f838], a
    ldh a, [$c0]
    nop
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    adc b
    rst $30
    adc b
    cp e
    call nz, Call_003_447b
    cp $5f
    ld h, b
    cpl
    jr nc, jr_003_61b3

    inc e
    rlca
    xor a
    nop
    ld b, $07
    dec b
    rlca
    inc b
    rst $38
    rlca
    inc b
    ld h, e
    ld h, d
    or a
    call nc, $9ceb
    rst $38
    rst $28
    sbc b
    rst $30
    sbc b
    cp a
    ret nc

    ld a, a
    ld d, b

jr_003_61b3:
    cp $5f
    ld [hl], a
    ld a, [hl+]
    dec a
    rra
    jr jr_003_61ca

    cp a
    ld b, $07
    dec b
    rlca
    dec b
    ld b, $05
    rst $38
    rlca
    inc b
    dec bc
    inc c
    dec c
    dec bc

jr_003_61ca:
    rla
    ld a, [de]
    rst $38
    rra
    inc de
    inc e
    inc de
    rra
    db $10
    rla

jr_003_61d4:
    jr jr_003_61d4

    rrca
    ld [$1e17], sp
    dec e
    inc de
    rra
    sbc a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld h, d
    ld h, e
    or a
    call nc, $98ef
    rst $30
    sbc b
    rst $38
    rst $38
    sub b
    cp a
    ret nc

    ld l, a
    ld d, b
    ld c, a
    ld [hl], b
    ld a, [$3837]
    rrca
    dec c
    inc bc
    nop
    add b
    nop
    adc e
    nop
    jr nc, jr_003_627b

    ld c, b
    rst $38
    ld a, l
    ld b, l
    ld e, e
    ld h, [hl]
    ccf
    ld [hl+], a
    ld e, $13
    rst $38
    rrca
    add hl, bc
    rla
    jr jr_003_6240

    inc sp
    ccf
    ld [hl+], a
    rst $38
    ld e, l
    ld a, a
    ld e, l
    ld h, e
    cp a
    ret nz

    rst $38
    add b
    cp $ff
    add b
    ld e, e
    ld a, h
    ccf
    inc hl
    ccf
    rst $38
    ld a, l
    ld b, l
    ld e, e
    ld h, [hl]
    ccf
    ld [hl+], a
    rra
    ld de, $1fff
    jr jr_003_6263

    jr nc, @+$61

    ld h, b
    ld a, a
    ld b, b
    rst $38
    cp a
    pop bc
    cp $87
    ei
    adc h

jr_003_6240:
    rst $20
    sbc b
    cp $ef
    sub b
    cp a
    ret nz

    ld e, c
    ld h, a
    ccf
    add b
    nop
    xor a
    nop
    jr jr_003_628c

    inc h
    ccf
    inc hl
    rst $38
    ccf
    ld [hl+], a
    cpl
    ld [hl-], a
    ld e, $13
    rrca
    add hl, bc
    rst $38
    rla
    jr @+$2d

    ld [hl], $3f
    inc h

jr_003_6263:
    ld e, e
    ld a, [hl]
    rst $38
    or a
    adc $fd
    add e
    rst $38
    add c
    cp a
    pop bc
    cp $7d
    ld h, e
    ld a, a
    ld e, [hl]
    ld e, e
    ld h, a
    inc a
    nop
    xor a
    nop
    jr jr_003_6297

jr_003_627b:
    inc d
    sbc h
    sub h
    rst $38
    ld l, d
    or $fe
    ld [bc], a
    db $fd
    inc bc
    rst $38
    ld bc, $ffff
    ld bc, $01ff

jr_003_628c:
    rst $38
    ld bc, $01ff
    cp $ff
    dec e
    ld [$be36], a

jr_003_6296:
    ld h, d

jr_003_6297:
    cp $af
    nop
    jr jr_003_62b8

    inc d
    sbc h
    sub h
    rst $38
    ld l, d
    or $fe
    ld [bc], a
    db $fd
    inc bc
    ld [hl], a
    call $ffff
    adc c
    rst $38
    call $cd33
    rst $38
    ld de, $fdfe
    inc bc
    cp $82
    rst $30
    adc l

jr_003_62b8:
    rst $38
    cp a
    inc c
    inc e
    inc d
    inc e
    inc d
    db $ec
    db $f4
    rst $38
    db $fc
    inc b
    ld a, [$de06]
    ld [hl-], a
    db $fd
    inc hl
    rst $38
    rst $38
    ld sp, $31cf
    rst $38
    add c
    rst $38
    rrca
    cp $fd
    inc de
    rst $30
    add hl, de
    pop af
    rst $38
    ld c, $bf
    jr nc, jr_003_6296

    xor b
    ld hl, sp+$68
    xor h
    ld [hl], h
    rst $38
    ld a, [$fe06]
    ld [bc], a
    db $ed
    dec de
    rst $38
    ld de, $ffff
    add hl, de
    rst $20
    add hl, de
    rst $38
    inc bc
    db $fd
    ld [hl], e
    cp $be
    jp z, $8c7c

    sbc h
    ld [hl], h
    db $fc
    add b
    nop
    adc e
    nop
    jr @+$36

    inc l
    rst $38
    inc a
    inc h
    db $fc
    call nc, $14fc
    call c, $ff34
    ld a, [$fee6]
    ld [bc], a
    db $ed
    dec de
    rst $38
    ld de, $efff
    add hl, de
    rst $20
    sbc c
    ld a, a
    pop hl
    db $fd
    ld b, e
    cp $fe
    ld b, d
    ld a, h
    call nz, $9aee
    cp $ff
    ldh a, [$90]
    ld hl, sp-$78
    cp b
    ret z

    ld hl, sp-$38
    rst $38
    call nc, $fc2c
    inc b
    ld a, [$fe06]
    ld [bc], a
    cp a
    cp $fa
    ld b, $ff
    ld bc, $01ff
    cp $fd
    inc bc
    ld [hl], d
    cp $fc
    adc h
    ld hl, sp-$80
    nop
    xor a
    nop
    inc c
    ld d, $1a
    ld a, $32
    rst $38
    cp $d2
    ld a, [$dc16]
    inc [hl]
    ld_long a, $ffe6
    cp $02
    db $dd
    inc sp
    rst $38
    ld hl, $31df
    rst $38
    rst $08
    ld sp, $41ff
    db $fd
    inc bc
    cp $02
    cp $fe
    ld b, $ef
    add hl, de
    ld sp, hl
    rst $30
    ld e, $af
    nop
    inc e
    ld a, [hl]
    ld h, d
    ld_long a, $ff86
    rst $28

jr_003_637e:
    sub c
    rst $28
    sub c
    ld sp, hl
    rst $00
    xor $f2
    add b
    nop
    xor a
    nop
    inc e
    ld a, [hl+]
    ld [hl], $3f
    inc hl
    rst $38
    dec a
    inc hl
    cpl
    ld sp, $111f
    rla
    add hl, de
    ld a, [$0d0b]
    inc b
    rlca
    inc bc
    nop
    cp a
    cp $5c
    xor h
    cp b
    ld c, b
    jr z, jr_003_637e

    rst $38
    db $fc
    db $e4
    cp $02
    push af
    dec bc
    ld d, a
    cp c
    add b
    nop
    cp a
    jr c, jr_003_6408

    ld l, h
    ld a, h
    ld b, h
    ld a, e
    ld b, a
    rst $38
    ld e, l
    ld h, e
    ccf
    ld hl, $111f
    dec bc
    dec c
    add sp, $06
    rlca
    ld bc, $ff00
    inc bc
    ld [bc], a
    dec b
    ld b, $1c
    rra
    ld l, $33
    rst $38
    ld a, a
    ld b, c
    ei
    add h
    rst $30
    ld [$0ff3], sp
    add b
    nop
    xor a
    nop
    inc e
    ld a, [hl+]
    ld [hl], $3e
    ld [hl+], a
    rst $38
    dec a
    inc hl
    ld l, $31
    rra
    db $10
    rrca
    ld [$05e8], sp
    ld b, $03
    nop
    xor e
    nop
    ld bc, $3f1f
    ld hl, $7ffe
    ld b, c
    ld a, a
    ld b, c
    ld e, l
    ld h, e
    ccf
    add b
    nop
    xor a
    nop
    ld h, b
    ldh a, [$90]
    ld sp, hl
    adc c
    rst $38

jr_003_6408:
    cp a
    add $7b
    ld b, [hl]
    ld l, $33
    rra
    add hl, de
    rst $38
    rla
    jr jr_003_6442

    ld sp, $213f
    ld e, [hl]
    ld a, a
    rst $38
    ld e, [hl]
    ld h, c
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp $af
    rst $18
    ld [hl], a
    ld a, b
    inc e
    inc de
    rrca
    add b
    nop
    xor a
    nop
    inc c
    rra
    inc de
    rra
    ld de, $17ff
    jr jr_003_6442

    inc c
    dec b
    ld b, $0b
    inc c
    rst $38
    rla
    jr jr_003_646f

    jr nc, jr_003_6481

jr_003_6442:
    jr nz, jr_003_64a3

    ld l, a
    rst $38
    ld [hl], a
    ld a, b
    ld e, a
    ld h, b
    cp a
    ret nz

    rst $38
    add b
    cp $b7
    rst $08
    ld [hl], l
    ld a, [hl]
    rrca
    inc c
    inc bc
    add b
    nop
    xor a
    nop
    dec c
    rst $08
    jp z, $adea

    rst $38
    ld hl, sp-$61
    ld hl, sp-$71
    ld a, a
    ld b, a
    ccf
    jr nz, @+$01

    ld e, e
    ld h, [hl]
    cp a
    call nz, $86fb

jr_003_646f:
    ld a, a
    add b
    rst $38
    rst $38
    ld c, $f7
    add hl, de
    rst $38
    db $10
    rst $38
    db $10
    cp $fe
    ld h, c
    rst $38
    sbc a
    db $f4
    adc a

jr_003_6481:
    rst $38
    add b
    nop
    cp a
    dec c
    ld l, a
    ld l, d
    ld a, d
    ld e, l
    ld a, b
    ld c, a
    rst $38
    ld a, [hl]
    ld b, a
    dec a
    inc hl
    rla
    jr jr_003_64d3

    jr nz, @+$01

    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_003_64a3:
    rst $38
    nop
    ld a, a
    add a
    cp $ff
    adc b
    rst $38
    ret nc

    jr c, @+$39

    rrca
    add b
    nop
    xor a
    nop
    dec c
    ld l, a
    ld l, e
    rst $38
    sbc h
    rst $38
    rst $38
    adc h
    ld a, e
    ld c, [hl]
    ld l, $37
    rla
    jr @+$01

    ccf
    jr nz, jr_003_6544

    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    ld a, a
    add b
    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop

jr_003_64d3:
    cp $ff
    nop
    cp a
    pop bc
    ld e, [hl]
    ld h, e
    ccf
    rst $38
    ld l, a
    sub b
    rst $38
    rst $20
    ld a, e
    adc h
    rst $38
    ld [$effe], sp
    ld hl, sp+$7f
    sub b
    ld hl, sp+$1f
    rst $38
    add b
    nop
    xor a
    nop
    jr nc, jr_003_655a

    ld e, b
    ld a, b
    ld l, b
    rst $38
    db $f4
    call c, $14fc
    call c, $fa34
    and $ff
    cp $02
    push af
    adc a
    rst $38
    add hl, bc
    rst $30
    adc l
    rst $38
    di
    call Call_003_71bf
    db $fd
    inc hl
    cp $22
    or $bc
    ld h, h
    db $ec
    call c, $38e4
    add b
    nop
    xor a
    nop
    ret nz

    or b
    ld [hl], b
    ld hl, sp-$18
    rst $38
    ld hl, sp-$78
    ld l, b
    ret c

    cp h
    ld [hl], h
    ld_long a, $ff06
    cp $02
    db $dd
    inc sp
    rst $38
    inc hl
    db $dd
    di
    rst $38
    cp l
    ld [hl], e
    rst $28
    dec e
    db $fd
    dec bc
    cp $0a
    or $ac
    call c, $3cfc
    db $e4
    ld hl, sp-$80
    nop

jr_003_6544:
    xor a
    nop
    ld h, b
    ld hl, sp-$48
    ld hl, sp+$28
    rst $38
    ld hl, sp+$28
    cp b
    ld l, b
    ld hl, sp-$38
    db $f4
    inc c
    rst $38
    or h
    ld l, h
    db $fc
    ld b, h
    cp d

jr_003_655a:
    ld h, [hl]
    ld_long a, $ff06
    cp $b2
    cp $ca
    cp $8a
    ld a, [$fe0e]
    cp h
    call nz, $7afe
    ld a, $f2
    cp $80
    nop
    cp a
    ld h, b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rNR41], a
    rst $38
    and b
    ld h, b
    ldh a, [$d0]
    add sp, $18
    ld [hl], h
    call z, $fcff
    adc h
    db $76
    adc $fe
    ld [bc], a
    cp $76
    rst $38
    cp l
    set 7, a
    add c
    rst $30
    adc c
    db $e3
    dec e
    cp $f2
    xor $84
    db $fc
    call c, Call_003_78e4
    add b
    nop
    xor a
    nop
    ld h, b
    ldh [$a0], a
    ld h, b
    ldh [rIE], a
    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_003_6614

    sbc b
    rst $38
    call nc, $fc3c
    inc h
    jp c, $fe36

    ld [bc], a
    rst $38
    cp $06
    db $fd
    dec bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    cp $fd
    ld [hl], e
    xor $9e
    db $fc
    inc c
    ld hl, sp-$01
    rst $38
    dec b
    cp d
    ld e, [hl]
    cp $e6
    cp l
    ld b, a
    cp $fd
    rlca
    ld e, a
    db $e3
    rst $20
    cp l
    rst $38
    rst $38
    ld e, $30
    db $76
    rrca
    add hl, sp
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    rrca
    ld a, a
    ld e, d
    ld a, [hl]
    rst $38
    jr c, jr_003_6633

    cp [hl]
    jp hl


    or $5f
    rst $18
    ccf
    cp $9f
    rst $38
    rra
    rst $38
    ld c, $7f
    inc a
    rst $38
    ld a, $40
    ld a, d
    sub [hl]
    ld a, [bc]
    rst $30
    ccf
    rst $20
    rst $08
    daa
    rst $38
    ld e, $fe
    ld a, b
    ld a, h
    rst $38
    jr nc, @+$0e

    xor $1e
    rst $28
    ccf
    cpl
    rst $38

jr_003_6614:
    rst $38
    rst $18
    cpl
    scf
    rst $28
    and $ff
    ld b, [hl]
    ld a, [hl]
    adc a
    ld bc, $1817
    ld d, $19
    rst $38
    ld d, $19
    db $76
    ld e, c
    ld a, $49
    inc d
    ld l, a
    xor $c0
    ld b, b
    ret nz

    add h
    ld a, h
    db $fc

jr_003_6633:
    cp a
    db $fc
    rst $38
    db $fd
    cp $f9
    db $f4
    ei
    cp a
    nop
    ld a, $22
    ld a, $41
    pop af
    adc [hl]
    rst $38
    ld h, b
    sbc a
    ld l, b
    sbc e
    ld c, d
    cp e
    ret nz

    cp e
    rst $38
    ld c, h
    cp e
    ld [hl], l
    ld a, e
    jr @+$18

jr_003_6653:
    dec bc
    rla
    rst $38
    inc d
    dec c
    inc d
    dec c
    nop
    dec e
    dec de
    rla
    rst $38
    ld bc, $080f
    ld c, $00
    ld b, $05
    inc bc
    rst $18
    ld bc, $0507
    nop
    inc bc
    ld [bc], a
    inc bc
    rst $38
    dec b
    ld c, $07
    ld e, $1f
    jr nz, jr_003_6653

    db $e3
    rst $38
    ld [hl], b
    rst $08
    ld h, e
    call c, $d06f
    ld c, $b1
    rst $38
    or d
    rst $08
    dec sp
    rst $08

jr_003_6686:
    inc l
    rst $18
    inc sp
    call c, Call_003_6fff
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rst $38
    ld a, [hl]
    add c
    ld a, b
    add a
    ld a, d
    add a
    ld [hl], e
    adc a
    rst $38
    inc [hl]
    rst $08
    and l
    sbc $95
    cp $58
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld h, d
    rst $38
    daa
    ld hl, sp-$72
    db $db
    add sp, $1a
    ld e, a
    rrca
    nop
    rst $38

jr_003_66b4:
    ld l, l
    sub d
    rst $38
    nop
    rst $38
    nop
    ld a, h
    add e
    rst $38
    jr c, jr_003_6686

    sub e
    ld l, h
    cp e
    ld l, h
    jr c, jr_003_66b4

    rst $38
    xor d
    rst $18
    db $76
    rst $38
    ld [hl], c
    rst $38
    ld h, $f9
    rst $38
    rst $38
    nop
    rst $38
    jr nz, jr_003_66eb

    ld hl, sp+$53
    db $fc
    rst $38
    db $eb
    call c, $dfa8
    xor d
    rst $18
    db $76
    adc a
    rst $38
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    or l
    ld c, e
    db $10
    rst $28
    rst $38
    dec hl

jr_003_66eb:
    rst $38
    push af
    cp $fd
    ld a, [hl]
    ld e, h
    rst $38
    rst $38
    sbc $ff
    xor a
    rst $38
    sub [hl]
    cp $86
    cp $fa
    db $10
    ld hl, sp-$68
    ld hl, sp+$60
    nop
    add b
    nop
    rst $30
    ld b, b
    ldh [$c0], a
    ldh a, [$08]
    ld [hl], h
    adc h
    rst $38
    inc e
    db $e4
    adc d
    db $76
    db $ec
    ld [de], a
    db $e4
    ld a, [de]
    rst $38
    ld l, d
    sub [hl]
    ld [$a896], a
    sub $7b
    rst $10
    rst $38
    ld a, $f2
    add b
    ld a, [hl]
    push hl
    dec de
    db $e3
    rra
    rst $38
    ldh a, [$0e]
    ld a, [c]
    inc c
    ld [hl], e
    adc l
    ld [hl], e
    adc l
    rst $38
    ld h, c
    sbc a
    add hl, hl
    rst $18
    ld c, e
    rst $38
    jp c, $fffe

    ccf
    rst $38
    adc $fe
    jp z, $a83a

    ld hl, sp-$18
    or b
    ldh a, [$e0]
    nop
    or a
    nop
    ld [$100f], sp
    ccf
    jr nz, @+$01

    rra
    jr nz, jr_003_6771

jr_003_6752:
    jr nz, jr_003_6773

    jr nz, @+$41

    jr nz, jr_003_6752

    rrca
    db $10
    dec bc
    inc c
    ld bc, $ff00
    rla
    jr jr_003_6781

    jr nz, jr_003_67e3

    ld b, b
    ccf
    ld b, b
    rst $38
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ld [c], a

jr_003_6771:
    dec c
    inc de

jr_003_6773:
    nop
    ld bc, $5cff
    and h
    jr z, jr_003_67ce

    ld c, [hl]
    ld [hl], d
    inc [hl]
    ld c, d
    rst $38
    ld d, [hl]
    ld l, b

jr_003_6781:
    ld [bc], a
    dec a
    inc bc
    inc e
    ld bc, $ff0e
    db $10
    rra
    ld [$840f], sp
    add a
    ldh [rNR42], a
    rst $38
    ld h, b
    sub c
    db $10
    add sp, $40
    cp h
    inc bc
    db $fd
    cp $40
    ld a, a
    db $10
    rra
    ld b, $07
    nop
    add b
    nop
    rst $38
    ld [hl], h
    ld a, a
    and c
    pop hl
    and c
    pop hl
    and c
    pop hl
    rst $38
    and c
    pop hl
    and c
    pop hl
    and c
    pop hl
    ld hl, $f761
    jr @+$12

    inc c
    inc b
    inc c
    ld [$f70c], sp
    inc b
    nop
    ld [bc], a
    ld b, $04

jr_003_67c3:
    ld bc, $bf03
    nop
    jr z, jr_003_6801

    inc b
    ld a, [bc]
    inc bc
    inc b
    db $ec

jr_003_67ce:
    inc bc
    nop
    ld bc, $0100
    rst $38
    rla
    inc e
    inc bc
    inc e
    inc de
    inc c
    rla
    inc c
    rst $38
    ld de, $100a
    ld [$1800], sp

jr_003_67e3:
    db $10
    jr @-$6f

    nop
    ld bc, $0702
    ld [$01e0], sp
    ld de, $bf00
    nop
    ldh [rNR41], a
    db $fc
    inc b
    db $fc
    ld [bc], a
    ldh [$a0], a
    ld h, c
    nop
    rst $38

jr_003_67fc:
    inc bc
    ld [bc], a
    ld bc, $0502

jr_003_6801:
    ld b, $00
    rlca
    rst $38
    ld [bc], a
    dec b
    ld bc, $010e
    ld c, $11
    ld e, $ff
    nop
    rra
    dec b
    dec de
    ld h, $3a
    nop
    jr c, @+$01

    ld e, b
    ld l, b
    db $10
    ld [hl], c
    add b
    jp $8700


    cp $02
    dec c
    add hl, bc
    rla
    ld c, b
    ld a, b
    ret nz

    rst $38
    and b
    ld h, b
    jr nz, jr_003_67fc

    db $10
    add sp, -$04
    add h
    rst $38
    dec hl
    ld d, h
    rra
    jr nz, jr_003_67c3

    sub d
    rrca
    adc b
    rst $38
    pop bc
    ld b, d
    push hl
    daa
    db $fd
    ld e, $f7
    ld c, $ff
    ld c, $09
    add a
    adc b
    adc a
    ld c, b
    rst $00
    jr nz, @+$01

    rst $20
    nop
    rst $30
    db $10
    rst $20
    db $10
    srl h
    rst $38
    adc b
    ld a, a
    sbc b
    ld a, a
    ld a, [bc]
    rst $30
    ld e, a
    ld h, c
    rst $38
    ld e, l
    ld [c], a

jr_003_6860:
    ld e, $e1
    dec l
    ld a, [c]
    adc d
    ld [hl], l
    rst $30
    call nz, $802b
    ld b, a
    rst $08
    ldh a, [rIE]
    rst $38
    ld l, b
    ld [hl], a
    rst $28
    ldh a, [rIE]
    ldh [$df], a
    ldh [$f2], a
    inc bc
    ld [bc], a
    nop
    ld bc, $af00
    nop
    add b
    nop
    add b
    ld b, b
    ret nz

    rst $38
    nop
    ret nz

    add b
    ld b, b
    nop
    ldh [rP1], a
    ldh [rIE], a
    jr nz, jr_003_6860

    add b
    ldh a, [rP1]
    jr c, @+$12

    inc e
    cp a
    add a
    ld [hl+], a
    db $e3
    ld [$41f8], sp
    ld a, a
    rst $38
    inc bc
    ld [bc], a
    inc b
    inc bc
    ld [$1a07], sp
    inc b
    rst $38
    or $0a
    cp [hl]
    add $b8
    call z, $b5c9
    rst $38
    ld e, a
    rst $20
    sbc [hl]
    rst $20
    sub a
    xor $9b
    db $ec
    rst $38
    ld e, a
    ld h, c
    ld a, [hl]
    ld b, c
    cp a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add d
    nop
    add b
    rst $38
    add b
    nop
    ld b, b
    and b
    or b
    ld d, b
    ldh a, [rP1]
    rst $38
    db $fc
    nop
    ld hl, sp+$04
    ld hl, sp+$00
    ldh [rNR10], a
    ldh [$a0], a
    ld h, b
    nop
    cp a
    nop
    ld a, [hl-]
    ld b, [hl]

jr_003_68e8:
    rst $20
    jr jr_003_6923

    rst $00
    cp $f6
    adc c
    dec l
    ld [hl-], a
    inc b
    rlca
    ld bc, $0083
    ld [$ff0f], sp
    ld [hl], $2a
    inc a
    ld b, h
    ld e, b
    and b
    ld hl, sp+$08
    rst $38
    or b

jr_003_6903:
    ld b, b
    ld h, b
    add b
    ld h, b

jr_003_6907:
    and b
    ret nz

    jr nz, jr_003_6907

    ldh [rNR41], a
    add b
    ld b, b
    add b
    nop
    cp a
    add b
    dec b
    ld b, $1f
    db $10
    ld a, h
    ld b, e
    rst $38
    daa
    ret c

    sbc l
    ld h, e
    jr nc, jr_003_68e8

    ret nc

    jr nc, jr_003_6903

jr_003_6923:
    ld b, b
    ret nz

    nop
    add b
    nop
    rst $38
    ld hl, sp+$06
    ld b, a
    cp a
    ld b, a
    cp a
    ld b, a
    cp a
    rst $38
    ld b, a
    cp a
    rst $00
    cp a
    ld b, a
    cp a
    ld b, [hl]
    cp [hl]
    cp a
    add b
    ret nz

    ld b, b
    add b
    ld b, b
    ret nz

    jr nz, @+$01

    ldh [rNR10], a
    ldh a, [rP1]
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    ldh a, [rP1]
    ld h, b
    sub b
    ld b, b
    and b
    ld d, d
    sbc $ff
    sbc $e1
    rra
    ldh [rVBK], a
    ldh a, [$4e]
    pop af
    rst $38
    rra
    pop hl
    sbc [hl]
    ldh [$3e], a
    ld b, b
    cp $c0
    rst $38
    ld a, $a0
    call z, $9052
    ld e, h
    ret nz

    nop

jr_003_696f:
    and a
    nop
    add b
    nop
    ld b, b
    ret nz

    ei
    ret nz

    add b
    nop
    ld b, b
    ld h, b
    jr nz, jr_003_697d

jr_003_697d:
    db $e3
    nop
    jr nz, jr_003_69b1

jr_003_6981:
    nop
    db $10
    call c, RST_10
    stop
    db $10
    ld [$1100], a
    sub d
    ld d, h
    ld bc, $2cfa
    rst $28
    ld b, b
    pop bc
    add b
    nop
    rst $38
    ld [bc], a
    inc bc
    ld bc, $0b02
    ld b, $1c
    ld de, $12ff
    rra
    ld a, [bc]
    dec bc
    inc bc
    dec b
    inc bc
    inc b
    ldh [rDIV], a
    rlca
    nop
    cp a
    nop
    ld c, b
    ld a, b
    ld [de], a

jr_003_69b1:
    ld e, $01
    rlca
    rst $38
    ld [de], a
    rra
    db $10
    ld [hl], $4a
    ld c, e
    dec b
    ld b, $fe
    dec b
    ld b, $05
    ld b, $05
    ld b, $03
    sbc a
    add b
    jr nc, jr_003_6981

    ret z

    jr nz, @+$52

    rst $38
    jr nz, jr_003_696f

    ld h, b
    ret nc

    ldh a, [$80]
    ret nc

    ldh a, [$be]
    jr nz, jr_003_69d8

jr_003_69d8:
    jr nz, jr_003_69da

jr_003_69da:
    jr nz, jr_003_6a3c

    rst $38
    nop
    ld b, b
    jp nz, $08ce

    cp b
    or b
    ldh a, [rIE]
    ret z

    ld hl, sp-$70
    call c, $fa5a
    or b
    ld [hl], b
    cp $b0
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    ldh [$80], a
    nop
    ret nz

    stop
    add c
    nop
    db $10
    ld hl, sp+$10
    jr z, jr_003_6a02

jr_003_6a02:
    stop
    xor a
    nop
    add b
    inc b
    ld b, h
    jr nc, @+$1a

    cp $38
    jr z, @+$1a

    jr nc, @+$42

    ld b, h
    ld [bc], a
    add a
    nop
    db $10
    jr c, jr_003_6a18

jr_003_6a18:
    or $38
    ld b, h
    jr c, jr_003_6a1d

jr_003_6a1d:
    stop
    nop
    add e
    rst $38
    ld hl, sp-$10
    rst $38
    rst $30
    ldh [$eb], a
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $38
    rst $28
    rst $20
    rst $28
    rst $20
    db $e3
    rst $20
    ldh a, [$e0]
    ldh [rIE], a
    ldh a, [rIE]
    add e
    rst $38

jr_003_6a3c:
    rra
    rrca
    rst $38
    rst $38
    rlca
    rst $08
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $38
    rst $28
    rst $20
    rst $28
    rst $20
    rst $08
    rst $20
    rra
    rlca
    ldh [rIE], a
    rrca
    rst $38
    add d
    rst $38
    nop
    ldh [rIE], a
    nop
    rst $38
    rst $38
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $38
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    add b
    rst $38
    cp a
    rst $38
    cp l
    jr @+$17

    and l
    ld bc, $ffa5
    ld bc, $3991
    sub c
    add hl, de
    cp c
    cp l
    jr @-$7e

    rst $38
    add b
    rst $38
    cp h
    rst $38
    rst $20
    jp $99db


    adc a
    sbc c
    db $db
    sbc c
    rst $20
    jp $ff80


    add b
    rst $38
    cp b
    rst $38
    jp $c983


    di
    pop bc
    jp $c9cb


    pop bc
    adc b
    add b
    rst $38
    add b
    rst $38
    cp b
    rst $38
    rst $08
    add a
    rst $08
    and a
    rst $08
    call $c1c9
    add c
    add b
    rst $38
    add b
    rst $38
    cp h
    rst $38
    rst $00
    add e
    set 1, c
    adc a
    ret


    set 1, c
    rst $00
    add e
    add b
    rst $38
    or a
    nop
    jr jr_003_6ae9

    ld b, d
    ld l, [hl]
    ld [$6eff], sp
    nop
    halt
    inc [hl]
    ld d, d
    jr jr_003_6af5

    cp a
    nop
    jr jr_003_6ad5

jr_003_6ad5:
    jr c, jr_003_6ad7

jr_003_6ad7:
    jr jr_003_6ad9

jr_003_6ad9:
    rst $38
    jr jr_003_6adc

jr_003_6adc:
    jr jr_003_6ade

jr_003_6ade:
    jr jr_003_6ae0

jr_003_6ae0:
    inc a
    nop
    cp a
    nop
    inc e
    jr nz, jr_003_6b0d

    ld b, b
    ld l, h

jr_003_6ae9:
    ld a, [bc]
    rst $38
    jr jr_003_6b01

    jr jr_003_6b17

    ld [hl], $44
    ld a, h
    ld [bc], a
    cp a
    nop

jr_003_6af5:
    inc a

jr_003_6af6:
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    rst $38
    inc c
    nop
    ld h, h
    ld [bc], a
    ld h, [hl]

jr_003_6b01:
    nop
    inc a
    nop
    cp a
    nop
    inc e
    nop
    inc a
    jr nz, jr_003_6b37

    nop
    rst $38

jr_003_6b0d:
    ld l, h
    nop
    ld a, [hl]
    nop
    inc c
    nop
    ld e, $00
    cp a
    nop

jr_003_6b17:
    ld a, h
    nop
    ld h, b
    nop
    ld a, b
    inc b
    rst $38
    ld h, h
    ld [bc], a
    ld b, $00
    ld h, h
    ld [bc], a
    ld a, b
    ld b, h
    or a
    nop
    jr jr_003_6b4e

    ld b, d
    ld h, b
    nop
    rst $38
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, $40
    inc e
    jr nz, jr_003_6af6

jr_003_6b37:
    nop
    ld a, [hl]
    nop
    ld b, h
    ld [hl+], a
    ld [$ff0c], sp
    inc c
    inc b
    jr jr_003_6b53

    ld [$1810], sp
    nop
    cp a
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, [hl]

jr_003_6b4e:
    nop
    rst $38
    inc a
    nop
    ld h, [hl]

jr_003_6b53:
    nop
    ld h, [hl]
    nop
    inc a
    nop
    cp a
    nop
    jr c, jr_003_6b60

    ld h, h
    ld [bc], a
    ld h, [hl]
    nop

jr_003_6b60:
    rst $38
    ld a, $00
    ld b, $00
    ld b, h
    ld [hl+], a
    ld a, b
    ld b, h
    cp a
    nop
    ld [$1c04], sp
    db $10
    ld d, $02
    rst $38
    inc d
    ld [bc], a
    ld e, $20
    inc hl
    ld bc, $0077
    cp a
    nop
    inc a
    ld b, b
    ld [hl], $00
    ld [hl], $00
    rst $38
    inc a
    nop
    inc [hl]
    ld [bc], a
    ld [hl], $00
    ld a, $42
    or a
    nop
    jr jr_003_6bb3

    ld b, d
    ld h, [hl]
    nop
    rst $38
    ld h, b
    nop
    ld h, [hl]
    nop
    inc h
    ld b, d
    jr jr_003_6bbf

    cp a
    nop
    jr c, jr_003_6be3

    inc [hl]
    ld [bc], a
    ld [hl], $00
    rst $38
    ld [hl], $00
    ld [hl], $00
    inc [hl]
    ld [bc], a
    jr c, jr_003_6bf0

    cp a
    nop
    ld a, $40
    ld [hl-], a
    nop
    inc [hl]

jr_003_6bb3:
    inc b
    rst $38
    inc a
    nop
    jr nc, jr_003_6bbd

    inc sp
    ld [bc], a
    ld a, $41

jr_003_6bbd:
    cp a
    nop

jr_003_6bbf:
    ld a, $40
    jr nc, jr_003_6bc5

    inc [hl]
    inc b

jr_003_6bc5:
    rst $38
    inc a
    nop
    jr nc, jr_003_6bce

    jr nc, jr_003_6bcc

jr_003_6bcc:
    jr nc, jr_003_6c16

jr_003_6bce:
    cp a
    nop
    ld a, $49
    ld [hl], $00
    ld [hl], $00
    rst $38
    ld a, $00
    ld [hl], $00
    ld [hl], $00
    ld a, $49
    cp a
    nop
    jr jr_003_6c07

jr_003_6be3:
    jr jr_003_6be5

jr_003_6be5:
    jr jr_003_6be7

jr_003_6be7:
    rst $38
    jr jr_003_6bea

jr_003_6bea:
    jr jr_003_6bec

jr_003_6bec:
    jr jr_003_6bee

jr_003_6bee:
    jr jr_003_6c14

jr_003_6bf0:
    cp a
    nop
    jr nc, jr_003_6c3c

    jr nc, jr_003_6bf6

jr_003_6bf6:
    jr nc, jr_003_6bf8

jr_003_6bf8:
    rst $38
    jr nc, jr_003_6bfb

jr_003_6bfb:
    ld [hl-], a
    nop
    ld [hl-], a
    inc b
    ld a, $40
    cp a
    nop
    ld b, d
    and l
    ld h, a
    dec b

jr_003_6c07:
    ld h, e
    dec d
    rst $38
    ld a, a
    add hl, bc
    ld a, a
    dec h
    ld d, a
    dec c
    ld b, d
    and l
    cp a
    nop

jr_003_6c14:
    ld [hl-], a
    ld d, l

jr_003_6c16:
    ld [hl-], a
    nop
    ld [hl-], a
    ld [$2aff], sp
    inc d
    ld h, $08
    ld h, $00
    ld h, $55
    cp a
    nop
    jr c, jr_003_6c6b

    inc [hl]
    ld [bc], a
    ld [hl], $00
    rst $38
    inc [hl]
    ld [bc], a
    jr c, jr_003_6c34

    jr nc, jr_003_6c32

jr_003_6c32:
    jr nc, jr_003_6c7c

jr_003_6c34:
    cp a
    nop
    inc a
    ld b, b
    ld [hl], $00
    ld [hl], $00

jr_003_6c3c:
    rst $38
    ld a, $02
    inc [hl]
    ld [bc], a
    ld [hl], $00
    ld a, $49
    cp a
    nop
    inc a
    nop
    ld h, [hl]
    nop
    jr nz, @+$42

    rst $38
    jr jr_003_6c74

    inc b
    ld [bc], a
    ld h, [hl]
    nop
    ld a, [hl]
    ld b, d

jr_003_6c56:
    cp a
    nop
    ld a, [hl]
    nop
    jr jr_003_6c9e

    jr jr_003_6c5e

jr_003_6c5e:
    rst $38
    jr jr_003_6c61

jr_003_6c61:
    jr jr_003_6c63

jr_003_6c63:
    jr jr_003_6c65

jr_003_6c65:
    jr jr_003_6c8b

    cp a
    nop
    ld a, [hl-]
    ld c, l

jr_003_6c6b:
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    rst $38
    ld [hl-], a
    nop
    ld [hl-], a
    nop

jr_003_6c74:
    ld a, [de]
    jr z, @+$0e

    db $10
    cp a
    nop
    ld [hl], e
    inc b

jr_003_6c7c:
    ld [hl-], a
    db $10
    inc b
    ld [hl], $ff
    ld a, [hl-]
    ld l, $0c
    db $10
    inc e
    inc d
    ld [$b700], sp
    nop

jr_003_6c8b:
    db $10
    jr z, @+$46

jr_003_6c8e:
    jr z, @+$46

    rst $38
    ld a, b
    ld b, b
    xor $b4
    add [hl]
    ld c, d
    db $fd
    add [hl]
    add e
    rst $38
    ld [hl], c
    ld a, e
    rst $18

jr_003_6c9e:
    ld [hl], c
    ld a, e
    ld [hl], l
    dec [hl]
    ld [hl], l
    ld sp, $ff71
    db $e4
    dec [hl]
    xor $35
    ccf
    and h
    inc h
    xor [hl]
    ret z

    and h
    xor [hl]
    rst $38
    add d
    rst $38
    ccf
    or $fe
    rst $38
    cp $ff
    cp $7e
    rst $30
    db $fc
    cp $fd
    cp $fd
    db $fc
    db $fd
    ld hl, sp-$07
    db $fd
    inc a
    jr @+$01

    rst $08
    inc h
    nop
    add c
    nop
    db $10
    ld [$08f3], sp
    jr jr_003_6c56

    nop
    inc h
    nop
    ei
    ld [$4000], sp
    ld bc, $1000
    ld [$88e7], sp
    add hl, de
    nop
    ld [bc], a
    ld b, b
    ld [$02fb], sp
    inc bc
    ld bc, $0011
    ld d, d
    ld a, [bc]
    xor $08
    jr jr_003_6cfb

    add b
    jr nz, jr_003_6cf6

jr_003_6cf6:
    sbc a
    nop
    ld bc, $0800

jr_003_6cfb:
    ld [de], a
    ld a, [bc]
    cp $28
    ld e, b
    nop
    ld [$4080], sp
    nop
    add a
    nop
    ld bc, $0c10
    ldh a, [$28]
    jr jr_003_6c8e

    nop
    add e
    nop
    db $10
    ld [$a8e0], sp
    dec e
    nop
    adc a
    nop
    add b
    nop
    jr nc, jr_003_6d25

    ld hl, sp+$00
    inc e
    nop
    ld bc, $bf00
    nop

jr_003_6d25:
    add b
    ld b, b
    nop
    ld [$4830], sp
    cp $08
    ld a, [de]
    nop
    ld [$0100], sp
    nop
    cp a
    nop
    add b
    jr nz, jr_003_6d38

jr_003_6d38:
    ld [$0818], sp
    rst $28
    ld e, b
    ld a, [de]
    nop
    ld bc, $0211
    inc bc
    ei
    ld b, b
    ld [$0200], sp
    nop
    sub b
    add hl, bc
    rst $28
    ld [$0018], sp
    ld b, b
    ld bc, $0008
    add d
    rst $38
    dec b
    rst $38
    ld b, l
    ld l, l
    dec c
    ld e, l
    add hl, de
    dec a
    jr c, @+$7e

    rst $30
    ld a, a
    ld a, c
    ld a, a
    ld a, c
    ld a, e
    ld a, c
    ld a, e
    adc b
    ld a, e
    rst $38
    add e
    rst $38
    db $e4
    db $f4
    rst $28
    call $dded
    sbc l
    cp l
    sbc h
    call c, $e5ff
    db $ed
    push hl
    push af
    push hl
    db $ed
    db $fd
    call $9df8
    db $dd
    inc a
    cp h
    rst $38
    add d
    rst $38
    rla
    or a
    ld d, a
    rst $10
    ld d, a
    rst $10
    ld d, a
    rst $10
    add e
    rst $10
    jp nc, $f8d4

    jp nc, $1bd1

    rla
    rst $38
    add e
    rst $38
    ld h, b
    ld b, b
    add b
    ld [hl], a
    add b
    ld [hl], a
    adc b
    rst $30
    rst $38
    cp a
    nop
    ld h, d
    sub l
    ld [hl-], a
    ld d, b
    ld h, $12
    rst $38
    jr @+$2e

    inc a
    inc h
    jr jr_003_6db3

jr_003_6db3:
    jr @+$26

    add b
    nop
    add b
    nop
    nop

Jump_003_6dba:
    ld a, $01
    ldh [$97], a

jr_003_6dbe:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_003_6dbe

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_003_7179

    ldh a, [$99]
    and $07
    jr nz, jr_003_6df7

    ld a, [$c202]
    inc a
    and $03
    ld [$c202], a
    ld a, [$c203]
    inc a
    cp $08
    jr c, jr_003_6de7

    ld a, $04

jr_003_6de7:
    ld [$c203], a
    ld a, [$c204]
    inc a
    cp $0c
    jr c, jr_003_6df4

    ld a, $08

jr_003_6df4:
    ld [$c204], a

jr_003_6df7:
    ldh a, [$99]
    and $03
    jp nz, Jump_003_6e7f

    ld a, [$c2e7]
    cp $0b
    jr nc, jr_003_6e1b

    ld a, [$c205]
    inc a
    cp $10
    jr c, jr_003_6e16

    ld a, [$c2e7]
    inc a
    ld [$c2e7], a
    ld a, $0c

jr_003_6e16:
    ld [$c205], a
    jr jr_003_6e7f

jr_003_6e1b:
    ldh a, [$99]
    and $07
    jr nz, jr_003_6e7f

    ld a, [$c205]
    cp $10
    jr nc, jr_003_6e2d

    ld a, $10
    ld [$c205], a

jr_003_6e2d:
    ld a, [$c205]
    inc a
    cp $13
    jr nc, jr_003_6e3a

    ld [$c205], a
    jr jr_003_6e7f

jr_003_6e3a:
    ldh a, [$99]
    and $0f
    jr nz, jr_003_6e7f

    ld a, [$c0eb]
    sla a
    sla a
    ld [$c0eb], a
    ld a, [$c0ec]
    sla a
    sla a
    ld [$c0ec], a
    ld a, [$c0ea]
    sla a
    sla a
    ld [$c0ea], a
    and a
    jr nz, jr_003_6e7f

    ld a, $28
    ld [$c0f1], a

jr_003_6e66:
    ld a, $01
    ldh [$97], a

jr_003_6e6a:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_003_6e6a

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_003_6e66

    jr jr_003_6ebe

Jump_003_6e7f:
jr_003_6e7f:
    ld a, [$c202]
    ld e, a
    ld b, $40
    ld c, $70
    xor a
    call Call_003_7b81
    ld a, [$c203]
    ld e, a
    ld b, $60
    ld c, $68
    xor a
    call Call_003_7b81
    ld a, [$c204]
    ld e, a
    ld b, $58
    ld c, $80
    xor a
    call Call_003_7b81
    ld b, $58
    ld c, $68
    ld a, [$c205]
    ld e, a
    cp $10
    jr c, jr_003_6eb3

    ld b, $50
    ld c, $60

jr_003_6eb3:
    ld a, $10
    call Call_003_7b81
    call $3be8
    jp Jump_003_6dba


jr_003_6ebe:
    call $368e
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$c0ea], a
    ld [$c0eb], a
    ld [$c0ec], a
    call $2961
    ld a, $0a
    call $3572
    ld a, $05
    ld [$c0f3], a
    ld a, $a0
    ld [$c119], a
    ld a, $48
    ld [$c207], a
    ld a, $f0
    ld [$c118], a
    ld a, $17
    ld [$c203], a
    ld a, $e4
    ldh [rBGP], a
    ld [$c0ea], a
    ld a, $90
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $e4
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$9d], a
    ldh [$9e], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $90
    ldh [rWY], a
    ld [$c0e9], a
    ld a, $e3
    ldh [rLCDC], a

Jump_003_6f23:
    ld a, $01
    ldh [$97], a

jr_003_6f27:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_003_6f27

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_003_7179

    ld a, [$c119]
    cp $a0
    jr nz, jr_003_6f4c

    ldh a, [$9e]
    sub $20
    ldh [$9e], a
    ldh a, [$9d]
    sbc $00
    ldh [$9d], a
    jr jr_003_6f58

jr_003_6f4c:
    ldh a, [$9e]
    sub $10
    ldh [$9e], a
    ldh a, [$9d]
    sbc $00
    ldh [$9d], a

jr_003_6f58:
    ld a, [$c118]
    cp $30
    jr z, jr_003_6f82

    sub $01
    ld [$c118], a
    ldh a, [$99]
    and $03
    jr nz, jr_003_6f77

    ld a, [$c203]
    inc a
    cp $1b
    jr c, jr_003_6f74

    ld a, $17

jr_003_6f74:
    ld [$c203], a

jr_003_6f77:
    ld a, [$c118]
    cp $60
    jp nc, Jump_003_706f

    jp Jump_003_704e


jr_003_6f82:
    ld a, [$c119]
    sub $01
    cp $7a
    jr z, jr_003_6ffb

    ld [$c119], a
    add $10
    ld [$c11d], a
    sub $20
    ld [$c11c], a
    ldh a, [$99]
    and $01
    ld b, a
    ld a, [$c207]
    sub b
    ld [$c207], a
    sub $08
    ld [$c209], a
    add $20
    ld [$c20a], a
    ldh a, [$9e]
    and $f0
    swap a
    ld c, a
    ldh a, [$9d]
    and $0f
    swap a
    or c
    ld [$c201], a
    ld c, a
    ld a, [$c119]
    sub c
    ld c, a
    ld e, $14
    ld a, [$c207]
    ld b, a
    xor a
    call Call_003_7b81
    ld a, [$c201]
    ld c, a
    ld a, [$c11d]
    sub c
    ld c, a
    ld e, $15
    ld a, [$c209]
    ld b, a
    xor a
    call Call_003_7b81
    ld a, [$c201]
    ld c, a
    ld a, [$c11c]
    sub c
    ld c, a
    ld e, $16
    ld a, [$c20a]
    ld b, a
    xor a
    call Call_003_7b81
    call $3be8
    jp Jump_003_6f23


jr_003_6ffb:
    ld a, $01
    ldh [$97], a

Call_003_6fff:
jr_003_6fff:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_003_6fff

    xor a
    ldh [$98], a

Call_003_7008:
    ldh a, [$99]
    and $0f
    jr nz, jr_003_6ffb

    ld a, [$c0eb]
    sla a
    sla a
    ld [$c0eb], a
    ld a, [$c0ec]
    sla a
    sla a
    ld [$c0ec], a
    ld a, [$c0ea]
    sla a
    sla a
    ld [$c0ea], a
    and a
    jr nz, jr_003_6ffb

    ld a, $28
    ld [$c0f1], a

jr_003_7034:
    ld a, $01
    ldh [$97], a

jr_003_7038:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_003_7038

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_003_7034

    jp Jump_003_7083


Jump_003_704e:
    ldh a, [$9e]
    and $f0
    swap a
    ld c, a
    ldh a, [$9d]
    and $0f
    swap a
    or c
    ld [$c201], a
    ld c, a
    ld a, [$c119]
    sub c
    ld c, a
    ld e, $13
    ld a, [$c207]
    ld b, a
    xor a
    call Call_003_7b81

Jump_003_706f:
    ld a, [$c118]
    ld c, a
    ld a, [$c203]
    ld e, a
    ld b, $60
    xor a
    call Call_003_7b81
    call $3be8
    jp Jump_003_6f23


Jump_003_7083:
    call $368e
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$c0ea], a
    ld [$c0eb], a
    ld [$c0ec], a
    call $2961
    call $3302
    ld a, $0b
    call $3572
    jp $029c


    ld a, $78
    ld [$c207], a
    ld a, $04
    ld [$c0f3], a
    ld a, $e4
    ldh [rBGP], a
    ld [$c0ea], a
    ld a, $90
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $e4
    ldh [rOBP1], a
    ld [$c0ec], a
    ld a, $40
    ldh [rSCY], a
    ld a, $04
    ldh [$9f], a
    xor a
    ldh [rSCX], a
    ldh [$9d], a
    ldh [$9e], a
    ld [$c2e0], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    xor a
    ldh [rWY], a
    ld [$c0e9], a
    ld a, $e3
    ldh [rLCDC], a
    ld a, [$c2e0]
    and $f0
    swap a
    ld b, a
    ldh a, [$9f]
    and $0f
    swap a
    or b
    ld b, a
    ld a, [$c207]
    sub b
    ld b, a
    ld e, $1b
    ld c, $48
    xor a
    call Call_003_7b81
    call $3be8
    ld a, $80
    ld [$c0f1], a

jr_003_710c:
    ld a, $01
    ldh [$97], a

jr_003_7110:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_003_7110

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_003_710c

Jump_003_7123:
    ld a, $01
    ldh [$97], a

jr_003_7127:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_003_7127

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_003_7179

    ld a, [$c2e0]
    sub $02
    ld [$c2e0], a
    ld b, a
    ldh a, [$9f]
    sbc $00
    ldh [$9f], a
    or b
    jr z, jr_003_7195

    ldh a, [$99]
    and $0f
    jr nz, jr_003_7156

    ld a, [$c207]
    dec a
    ld [$c207], a

jr_003_7156:
    ld a, [$c2e0]
    and $f0
    swap a
    ld b, a
    ldh a, [$9f]
    and $0f
    swap a
    or b
    ld b, a
    ld a, [$c207]
    sub b
    ld b, a
    ld e, $1b
    ld c, $48
    xor a
    call Call_003_7b81
    call $3be8
    jp Jump_003_7123


Jump_003_7179:
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$c0ea], a
    ld [$c0eb], a
    ld [$c0ec], a

jr_003_718a:
    call $368e
    ld e, $02
    call $2a4a
    jp $02ab


jr_003_7195:
    ld a, $d0
    ld [$c0f1], a

jr_003_719a:
    ld a, $01
    ldh [$97], a

jr_003_719e:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_003_719e

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_003_719a

    ld a, $10
    call $3e24
    jr jr_003_718a

Jump_003_71b8:
    ld a, $01
    ldh [$97], a

jr_003_71bc:
    db $76
    ldh a, [$98]

Call_003_71bf:
    and a
    jr z, jr_003_71bc

    xor a
    ldh [$98], a
    ld a, [$c2e2]
    inc a
    ld [$c2e2], a
    cp $06
    jr c, jr_003_71e1

    xor a
    ld [$c2e2], a
    ld a, [$c202]
    inc a
    cp $26
    jr c, jr_003_71de

    ld a, $1c

jr_003_71de:
    ld [$c202], a

jr_003_71e1:
    ld a, [$c207]
    cp $01
    jr z, jr_003_7208

    cp $02
    jr z, jr_003_7224

    ldh a, [$8b]
    bit 3, a
    jp nz, $03fd

    ldh a, [$8c]
    bit 6, a
    jr nz, jr_003_723d

    bit 7, a
    jr nz, jr_003_724d

    bit 0, a
    jr nz, jr_003_7258

    bit 1, a
    jr nz, jr_003_7266

    jp Jump_003_72da


jr_003_7208:
    ldh a, [$8b]
    bit 3, a
    jp nz, $03fd

    ldh a, [$8c]
    bit 6, a
    jr nz, jr_003_723d

    bit 7, a
    jr nz, jr_003_724d

    bit 0, a
    jr nz, jr_003_7272

    bit 1, a
    jr nz, jr_003_727d

    jp Jump_003_72da


jr_003_7224:
    ldh a, [$8c]
    bit 6, a
    jr nz, jr_003_723d

    bit 7, a
    jr nz, jr_003_724d

    bit 0, a
    jr nz, jr_003_7288

    bit 1, a
    jr nz, jr_003_7296

    bit 3, a
    jr nz, jr_003_72a2

    jp Jump_003_72da


jr_003_723d:
    ld a, [$c207]
    dec a
    cp $03
    jr c, jr_003_7247

    ld a, $02

jr_003_7247:
    ld [$c207], a
    jp Jump_003_72da


jr_003_724d:
    ld a, [$c207]
    inc a
    cp $03
    jr c, jr_003_7247

    xor a
    jr jr_003_7247

jr_003_7258:
    ld a, [$c0e0]
    inc a
    cp $05
    jr c, jr_003_7261

    xor a

jr_003_7261:
    ld [$c0e0], a
    jr jr_003_72da

jr_003_7266:
    ld a, [$c0e0]
    dec a
    cp $05
    jr c, jr_003_7261

    ld a, $04
    jr jr_003_7261

jr_003_7272:
    ld a, [$c0e7]
    inc a
    and $03
    ld [$c0e7], a
    jr jr_003_72da

jr_003_727d:
    ld a, [$c0e7]
    dec a
    and $03
    ld [$c0e7], a
    jr jr_003_72da

jr_003_7288:
    ld a, [$c2e1]
    inc a
    cp $11
    jr c, jr_003_7291

    xor a

jr_003_7291:
    ld [$c2e1], a
    jr jr_003_72da

jr_003_7296:
    ld a, [$c2e1]
    dec a
    cp $11
    jr c, jr_003_7291

    ld a, $10
    jr jr_003_7291

jr_003_72a2:
    ld a, [$c2e1]
    sla a
    ld c, a
    ld b, $00
    ld hl, $72b8
    add hl, bc
    ld a, [hl+]
    ld [$c0f5], a
    ld e, [hl]
    call $2a30
    jr jr_003_72da

    inc c
    add hl, bc
    inc c
    ld a, [bc]
    dec c
    nop
    inc c
    nop
    inc c
    ld bc, $020c
    inc c
    inc bc
    dec c
    ld bc, $020d
    dec c
    inc bc
    inc c
    inc b
    inc c
    dec b
    dec c
    inc b
    dec c
    rlca
    inc c
    rlca
    inc c
    ld [$060c], sp

Jump_003_72da:
jr_003_72da:
    ld a, [$c0e0]
    add $27
    ld [$c203], a
    ld a, [$c0e7]
    add $26
    ld [$c204], a
    ld a, [$c2e1]
    add $26
    ld [$c205], a
    ld a, [$c202]
    ld e, a
    ld b, $54
    ld a, [$c207]
    and a
    jr z, jr_003_7306

    ld b, $60
    cp $01
    jr z, jr_003_7306

    ld b, $80

jr_003_7306:
    ld c, $28
    xor a
    call Call_003_7b81
    ld a, [$c203]
    ld e, a
    ld b, $54
    ld c, $70
    xor a
    call Call_003_7b81
    ld a, [$c204]
    ld e, a
    ld b, $60
    ld c, $70
    xor a
    call Call_003_7b81
    ld a, [$c205]
    ld e, a
    ld b, $80
    ld c, $70
    xor a
    call Call_003_7b81
    call $3be8
    jp Jump_003_71b8


    ld b, [hl]
    ld [hl], e
    ld h, b
    sbc b
    di
    ld [hl], e
    ld h, b
    sbc b
    push bc
    ld [hl], h
    ld h, b
    sbc b
    cp b
    ld [hl], l
    jr nz, @-$66

    rst $38
    add e
    add [hl]
    adc c
    adc h
    add e
    add [hl]
    adc c
    adc h
    rst $38
    add e
    add [hl]
    adc c
    adc h
    add e
    add [hl]
    adc c
    adc h
    ld hl, sp-$7d
    add [hl]
    adc c
    adc h
    add b
    add b
    add b
    rst $38
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    rst $38
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    ld hl, sp-$7c
    add a
    adc d
    adc l
    add b
    add b
    add b
    rst $38
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    rst $38
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    ld hl, sp-$7b
    adc b
    adc e
    adc [hl]
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    adc h
    add b
    and d
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    adc a
    add b
    and e
    and h
    and [hl]
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    adc a
    add b
    and l
    add c
    and a
    add b
    add b
    add b
    add b
    add b
    ldh a, [$8f]
    sub c
    sub e
    add b
    adc l
    add b
    and c
    add c
    add b
    add b
    add b
    add b
    add b
    rst $38
    sub b
    sub d
    sub h
    sub l
    sub a
    sbc c
    sbc e
    add b
    add h
    add b
    add c
    add b
    add b
    add b
    add b
    sbc a
    add d
    sub [hl]
    sbc b
    sbc d
    sbc h
    sbc l
    db $fc
    sbc [hl]
    sbc a
    and b
    xor b
    sbc [hl]
    add c
    ld hl, sp-$62
    sbc a
    and b
    xor b
    add b
    add b
    add b
    nop
    rst $38
    adc c
    adc h
    add e
    add [hl]
    adc c
    adc h
    add e
    add [hl]
    rst $38
    adc c
    adc h
    add e
    add [hl]
    adc c
    adc h
    add e
    add [hl]
    rst $38
    adc c
    adc h
    add e
    add [hl]
    adc c
    adc h
    add e
    add [hl]
    rst $38
    adc c
    adc h
    add e
    add [hl]
    adc c
    adc h
    add e
    add [hl]
    rst $38
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    add h
    add a
    rst $38
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    add h
    add a
    rst $38
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    add h
    add a
    rst $38
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    add h
    add a
    rst $38
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    rst $38
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    rst $38
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    rst $38
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    cp a
    add b
    xor b
    xor d
    xor h
    xor [hl]
    xor b
    xor d
    db $e3
    xor h
    xor [hl]
    add b
    xor b
    xor d
    ldh [$ac], a
    xor [hl]
    add b
    cp [hl]
    add b
    xor b
    xor d
    xor h
    xor [hl]
    add b
    rst $38
    or d
    or e
    xor c
    xor e
    xor l
    xor a
    xor c
    xor e
    rst $38
    xor l
    xor a
    or b
    or c
    or d
    or e
    xor c
    xor e
    rst $38
    xor l
    xor a
    or b
    or c
    or d
    or e
    or b
    or c
    rst $38
    or d
    or e
    xor c
    xor e
    xor l
    xor a
    or b
    or c
    nop
    add a
    add b
    or l
    add d
    cp c
    rst $38
    cp [hl]
    jp nz, $ccc7

    rst $08
    add d
    rst $10
    add b
    add b
    add b
    add b
    add b
    add e
    add b
    or a
    add d
    cp $bf
    jp $cdc8


    add d
    call nc, $8080
    add b
    add b
    add b
    add e
    add b
    cp b
    cp d
    cp $c0
    call nz, $cec9
    ret nc

    push de
    add b
    add b
    add b
    add b
    add b
    add c
    add b
    cp e
    adc h
    add d
    pop de
    add b
    add b
    add b
    add b
    add b
    add c
    add b
    cp h
    call c, $82d8
    rst $18
    jp nc, $8080

    add b
    add b
    add b
    add e
    add b
    ld [c], a
    add d
    cp $d9
    db $db
    db $dd
    ldh [$82], a
    pop af
    add b
    add b
    add b
    add b
    add b
    add e
    add b
    db $e3
    add d
    cp $da
    call c, $e1de
    add d
    ld a, [c]
    add b
    add b
    add b
    add b
    add b
    add e
    add b
    db $e4
    add d
    add [hl]
    add d
    di
    add b
    add b
    add b
    add b
    add b
    add a
    add b
    rst $20
    push hl
    add d
    add a
    add d
    db $f4
    or $80
    add b
    add b
    add b
    add b
    add a
    add b
    add sp, -$1a
    add d
    add a
    add d
    push af
    rst $30
    add b
    add b
    add b
    add b
    add b
    add [hl]
    add b
    jp hl


    add d
    add e
    add d
    ld hl, sp-$80
    add b
    add b
    add b
    add b
    add [hl]
    add b
    ld [$8382], a
    add d
    ld sp, hl
    add b
    add b
    add b
    add b
    add b
    add [hl]
    add b
    db $eb
    add d
    add e
    add d
    ld a, [$8080]
    add b
    add b
    add b
    add [hl]
    add b
    db $ec
    add d
    add e
    add d
    ei
    add b
    add b
    add b
    add b
    add b
    add [hl]
    add b
    db $ed
    add d
    add e
    add d
    db $fc
    add b
    add b
    add b
    add b
    add b
    add [hl]
    add b
    xor $82
    add e
    add d
    db $fd
    add b
    add b
    add b
    add b
    add b
    add [hl]
    add b
    rst $28
    add d
    add e
    add d
    cp $80
    add b
    add b
    add b
    add b
    add [hl]
    add b
    ldh a, [$82]
    add e
    add d
    rst $38
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    db $10
    cp h
    db $10
    ld [$2818], sp
    db $10
    adc b
    stop
    add b
    nop
    add b
    db $10
    cp $38
    inc c
    inc e
    inc l
    inc a
    ld c, h
    db $10
    adc b
    stop
    add b
    nop
    add e
    db $10
    add hl, de
    add hl, hl
    cp $39
    dec c
    dec e
    dec l
    dec a
    ld c, l
    db $10
    adc b
    stop
    add b
    nop
    add a
    db $10
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    rst $38
    ld a, [hl-]
    ld c, $1e
    ld l, $3e
    ld c, [hl]
    add hl, bc
    db $10
    adc b
    stop
    add b
    nop
    add a
    db $10
    dec bc
    dec de
    dec hl
    rst $38
    dec sp
    rrca
    rra
    cpl
    ccf
    ld c, a
    dec d
    db $10
    adc b
    stop
    add b
    nop
    add b
    db $10
    add b
    db $10
    adc b
    stop
    add b
    nop
    rst $28
    db $10
    add b
    add h
    ld h, d
    ld h, e
    ld d, b
    ld d, [hl]
    rst $38
    ld d, h
    db $10
    ld h, d
    ld d, h
    ld e, e
    ld d, h
    ld d, d
    ld h, e
    cp b
    add h
    add d
    stop
    add b
    nop
    db $e3
    db $10
    add l
    db $10
    add [hl]
    adc b
    ldh a, [$8a]
    adc h
    adc [hl]
    db $10
    cp b
    db $10
    add l
    stop
    add b
    nop
    db $e3
    db $10
    add l
    db $10
    add a
    adc c
    ldh a, [$8b]
    adc l
    adc a
    db $10
    cp b
    db $10
    add l
    stop
    add b
    nop
    db $e3
    db $10
    add l
    db $10
    ld d, c
    ld h, c
    ldh a, [rHDMA4]
    ld d, b
    ld e, d
    db $10
    cp b
    db $10
    add l
    stop
    add b
    nop
    ldh [rNR10], a
    add c
    add h
    add b
    add h
    cp b
    add h
    add e
    stop
    add b
    nop
    rst $20
    db $10

Jump_003_7671:
    add b
    add h
    ld h, d
    ld e, [hl]
    ld h, h
    rst $38
    ld e, l
    ld d, e
    db $10
    ld h, e
    ld d, h
    ld h, d
    ld h, e
    add h
    cp b
    add h
    add d
    stop
    add b
    nop
    ldh [rNR10], a
    add l
    db $10
    add b
    db $10
    cp b
    db $10
    add l
    stop
    add b
    nop
    db $e3
    db $10
    add l
    db $10
    ld e, l
    ld h, h
    ld hl, sp+$5c
    ld d, c
    ld d, h
    ld h, c
    db $10
    cp b
    db $10
    add l
    stop
    add b
    nop
    ldh [rNR10], a
    add c
    add h
    add b
    add h
    cp b
    add h
    add e
    stop
    add b
    nop
    nop
    ld [hl+], a
    ld [hl], a
    inc sp
    ld [hl], a
    ld b, h
    ld [hl], a
    ld d, l
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld l, a
    ld [hl], a
    ld a, b
    ld [hl], a
    add c
    ld [hl], a
    adc d
    ld [hl], a
    sbc a
    ld [hl], a
    or h
    ld [hl], a
    ret


    ld [hl], a
    sbc $77
    rst $28
    ld [hl], a
    nop
    ld a, b
    ld de, $2278
    ld a, b
    ld h, e
    ld a, b
    and h
    ld a, b
    push hl
    ld a, b
    ld a, [hl-]
    ld a, c
    add a
    ld a, c
    sbc b
    ld a, c
    or l
    ld a, c
    and $79
    rla
    ld a, d
    ld c, b
    ld a, d
    ld h, c
    ld a, d
    or [hl]
    ld a, d
    cp e
    ld a, d
    ret nz

    ld a, d
    push bc
    ld a, d
    jp z, $cf7a

    ld a, d
    call nc, $d97a
    ld a, d
    sbc $7a
    db $e3
    ld a, d
    add sp, $7a
    pop af
    ld a, d
    ld a, [$037a]
    ld a, e
    inc c
    ld a, e
    dec d
    ld a, e
    ld e, $7b
    daa
    ld a, e
    jr nc, jr_003_778d

    add hl, sp
    ld a, e
    ld b, d
    ld a, e
    ld c, e
    ld a, e
    ld d, h
    ld a, e
    ld e, l
    ld a, e
    ld h, [hl]
    ld a, e
    ld l, a
    ld a, e
    ld a, b
    ld a, e
    nop
    nop
    ld h, h
    stop
    ld [$1066], sp
    ld [$6500], sp
    db $10
    ld [$6708], sp
    db $10
    rst $38
    nop
    nop
    ld l, b
    stop
    ld [$106a], sp
    ld [$6900], sp
    db $10
    ld [$6b08], sp
    db $10
    rst $38
    nop
    nop
    ld l, h
    stop
    ld [$106e], sp
    ld [$6d00], sp
    db $10
    ld [$6f08], sp
    db $10
    rst $38
    nop
    nop
    ld [hl], b
    stop
    ld [$1072], sp
    ld [$7100], sp
    db $10
    ld [$7308], sp
    db $10
    rst $38
    ld [$4800], sp
    db $10
    stop
    ld c, c
    db $10
    rst $38
    ld [$4a00], sp
    ld d, b
    stop
    ld c, e
    db $10
    rst $38
    ld [$4c00], sp
    db $10
    stop
    ld c, l
    db $10
    rst $38
    ld [$4e00], sp
    db $10
    stop
    ld c, a
    db $10
    rst $38
    nop
    nop
    ld d, d

jr_003_778d:
    db $10
    ld [$8100], sp
    db $10
    ld [$5308], sp
    db $10
    db $10
    ld [$1054], sp
    jr @+$0a

    ld d, l
    db $10
    rst $38
    nop
    nop
    ld d, [hl]
    db $10
    ld [$8100], sp
    db $10
    ld [$5708], sp
    db $10
    db $10
    ld [$1058], sp
    jr @+$0a

    ld e, c
    db $10
    rst $38
    nop
    nop
    ld e, d
    db $10
    ld [$8100], sp
    db $10
    ld [$5b08], sp
    db $10
    db $10
    ld [$105c], sp
    jr @+$0a

    ld e, l
    db $10
    rst $38
    nop
    nop
    ld e, [hl]
    db $10
    ld [$5f00], sp
    db $10
    ld [$6008], sp
    db $10
    db $10
    ld [$1061], sp
    jr jr_003_77e3

    ld h, d
    db $10
    rst $38
    nop
    nop
    ld [hl], h
    nop
    nop

jr_003_77e3:
    ld [$2074], sp
    ld [$7400], sp
    ld b, b
    ld [$7408], sp
    ld h, b
    rst $38
    nop
    nop
    ld [hl], l
    nop
    nop
    ld [$2075], sp
    ld [$7500], sp
    ld b, b
    ld [$7508], sp
    ld h, b
    rst $38
    nop
    nop
    halt
    nop
    ld [$2076], sp
    ld [$7600], sp
    ld b, b
    ld [$7608], sp
    ld h, b
    rst $38
    nop
    nop
    ld [hl], a
    nop
    nop
    ld [$2077], sp
    ld [$7700], sp
    ld b, b
    ld [$7708], sp
    ld h, b
    rst $38
    nop
    nop
    add b
    nop
    nop
    ld [$0078], sp
    ld [$7a00], sp
    nop
    ld [$7908], sp
    nop
    nop
    db $10
    ld a, b
    jr nz, jr_003_7837

jr_003_7837:
    jr @-$7e

    jr nz, jr_003_7843

    db $10
    ld a, c
    jr nz, jr_003_7847

    jr jr_003_78bb

    jr nz, jr_003_7853

jr_003_7843:
    nop
    ld a, d
    ld b, b
    db $10

jr_003_7847:
    ld [$4079], sp
    jr jr_003_784c

jr_003_784c:
    add b
    ld b, b
    jr @+$0a

    ld a, b
    ld b, b
    db $10

jr_003_7853:
    db $10
    ld a, c
    ld h, b
    db $10
    jr jr_003_78d3

    ld h, b
    jr @+$12

    ld a, b
    ld h, b
    jr jr_003_7878

    add b
    ld h, b
    rst $38
    nop
    nop
    ld a, e
    nop
    nop
    ld [$007d], sp
    ld [$7c00], sp
    nop
    ld [$7908], sp
    nop
    nop
    db $10
    ld a, l
    jr nz, jr_003_7878

jr_003_7878:
    jr jr_003_78f5

    jr nz, jr_003_7884

    db $10
    ld a, c
    jr nz, jr_003_7888

    jr @+$7e

    jr nz, jr_003_7894

jr_003_7884:
    nop
    ld a, h
    ld b, b
    db $10

jr_003_7888:
    ld [$4079], sp
    jr jr_003_788d

jr_003_788d:
    ld a, e
    ld b, b
    jr @+$0a

    ld a, l
    ld b, b
    db $10

jr_003_7894:
    db $10
    ld a, c
    ld h, b
    db $10
    jr jr_003_7916

    ld h, b
    jr @+$12

    ld a, l
    ld h, b
    jr jr_003_78b9

    ld a, e
    ld h, b
    rst $38
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld [$0063], sp
    ld [$7f00], sp
    nop
    ld [$7908], sp
    nop
    nop
    db $10
    ld h, e
    jr nz, jr_003_78b9

jr_003_78b9:
    jr jr_003_7939

jr_003_78bb:
    jr nz, jr_003_78c5

    db $10
    ld a, c
    jr nz, jr_003_78c9

    jr jr_003_7942

    jr nz, jr_003_78d5

jr_003_78c5:
    nop
    ld a, a
    ld b, b
    db $10

jr_003_78c9:
    ld [$4079], sp
    jr jr_003_78ce

jr_003_78ce:
    ld a, [hl]
    ld b, b
    jr @+$0a

    ld h, e

jr_003_78d3:
    ld b, b
    db $10

jr_003_78d5:
    db $10
    ld a, c
    ld h, b
    db $10
    jr jr_003_795a

    ld h, b
    jr jr_003_78ee

    ld h, e
    ld h, b
    jr @+$1a

    ld a, [hl]
    ld h, b

Call_003_78e4:
    rst $38
    nop
    db $10
    ld b, a
    stop
    jr jr_003_78f0

    stop

jr_003_78ee:
    jr nz, jr_003_78f9

jr_003_78f0:
    db $10
    ld [$4100], sp
    db $10

jr_003_78f5:
    ld [$4308], sp
    db $10

jr_003_78f9:
    ld [$0010], sp
    db $10
    ld [$0518], sp
    db $10
    ld [$0a20], sp
    db $10
    stop
    ld b, d
    db $10
    db $10
    ld [$1044], sp
    db $10
    db $10
    ld bc, $1010
    jr @+$08

    db $10
    db $10

jr_003_7916:
    jr nz, jr_003_7923

    db $10
    jr jr_003_7923

    ld b, l
    db $10
    jr jr_003_792f

    ld [bc], a
    db $10
    jr jr_003_793b

jr_003_7923:
    rlca
    db $10
    jr @+$22

    inc c
    db $10
    jr nz, jr_003_7933

    ld b, [hl]
    db $10
    jr nz, @+$12

jr_003_792f:
    inc bc
    db $10
    jr nz, @+$1a

jr_003_7933:
    ld [$2010], sp
    jr nz, jr_003_7945

    db $10

jr_003_7939:
    rst $38
    nop

jr_003_793b:
    ld [$1013], sp
    ld [$0e00], sp
    db $10

jr_003_7942:
    ld [$1408], sp

jr_003_7945:
    db $10
    ld [$1b10], sp
    db $10
    stop
    rrca
    db $10
    db $10
    ld [$1015], sp
    db $10
    db $10
    inc e
    db $10
    db $10
    jr @+$24

    db $10

jr_003_795a:
    jr jr_003_795c

jr_003_795c:
    db $10
    db $10
    jr jr_003_7968

    ld d, $10
    jr jr_003_7974

    dec e
    db $10
    jr jr_003_7980

jr_003_7968:
    inc hl
    db $10
    jr nz, jr_003_796c

jr_003_796c:
    ld de, $2010
    ld [$1017], sp
    jr nz, jr_003_7984

jr_003_7974:
    ld e, $10
    jr nz, @+$1a

    inc h
    db $10
    jr z, jr_003_797c

jr_003_797c:
    ld [de], a
    db $10
    jr z, jr_003_7988

jr_003_7980:
    jr jr_003_7992

    jr z, @+$12

jr_003_7984:
    rra
    db $10
    rst $38
    nop

jr_003_7988:
    nop
    add hl, de
    stop
    ld [$1020], sp
    ld [$1a00], sp

jr_003_7992:
    db $10
    ld [$2108], sp
    db $10
    rst $38
    nop
    db $10
    ld a, [hl+]
    db $10
    ld [$2708], sp
    db $10
    ld [$2b10], sp
    db $10
    stop
    dec h
    db $10
    db $10
    ld [$1028], sp
    jr jr_003_79ae

jr_003_79ae:
    ld h, $10
    jr @+$0a

    add hl, hl
    db $10
    rst $38
    ldh a, [rP1]
    inc l
    db $10
    ldh a, [$08]
    ld l, $10
    ldh a, [rNR10]
    jr nc, jr_003_79d1

    ld hl, sp+$00
    dec l
    db $10
    ld hl, sp+$08
    cpl
    db $10
    ld hl, sp+$10
    ld sp, $0010
    nop
    dec l
    ld d, b

jr_003_79d1:
    nop
    ld [$502f], sp
    nop
    db $10
    ld sp, $0850
    nop
    inc l
    ld d, b
    ld [$2e08], sp
    ld d, b
    ld [$3010], sp
    ld d, b
    rst $38
    ldh a, [rP1]
    ld [hl-], a
    db $10
    ldh a, [$08]
    inc [hl]
    db $10
    ld hl, sp+$00
    inc sp
    db $10
    ld hl, sp+$08
    dec [hl]
    db $10
    ld hl, sp+$10
    ld [hl], $10
    ld hl, sp+$18
    scf
    stop
    nop
    inc sp
    ld d, b
    nop
    ld [$5035], sp
    nop
    db $10
    ld [hl], $50
    nop
    jr @+$39

    ld d, b
    ld [$3200], sp
    ld d, b
    ld [$3408], sp
    ld d, b
    rst $38
    ldh a, [rP1]
    jr c, jr_003_7a2b

    ldh a, [$08]
    ld a, [hl-]
    db $10
    ldh a, [rNR10]
    inc a
    db $10
    ld hl, sp+$00
    add hl, sp
    db $10
    ld hl, sp+$08
    dec sp
    db $10

jr_003_7a2b:
    ld hl, sp+$10
    dec a
    stop
    nop
    add hl, sp
    ld d, b
    nop
    ld [$503b], sp
    nop
    db $10
    dec a
    ld d, b
    ld [$3800], sp
    ld d, b
    ld [$3a08], sp
    ld d, b
    ld [$3c10], sp
    ld d, b
    rst $38
    ld hl, sp+$00
    ld a, $10
    ld hl, sp+$08
    ccf
    db $10
    ld hl, sp+$10
    ld b, b
    stop
    nop
    ld a, $50
    nop
    ld [$503f], sp
    nop
    db $10
    ld b, b
    ld d, b
    rst $38
    jr nz, @-$06

    nop
    nop
    jr jr_003_7a67

jr_003_7a67:
    ld [hl], b
    nop
    jr nz, jr_003_7a6b

jr_003_7a6b:
    ld [hl], c
    nop
    nop
    ld [$0072], sp
    ld [$7308], sp
    nop
    db $10
    ld [$0074], sp
    jr jr_003_7a83

    ld [hl], l
    nop
    jr nz, jr_003_7a87

    halt
    jr z, jr_003_7a8b

jr_003_7a83:
    ld [hl], a
    nop
    jr nc, jr_003_7a8f

jr_003_7a87:
    ld a, b
    nop
    jr c, @+$0a

jr_003_7a8b:
    ld a, c
    nop
    nop
    db $10

jr_003_7a8f:
    ld a, d
    nop
    ld [$7b10], sp
    nop
    db $10
    db $10
    ld a, h
    nop
    jr jr_003_7aab

    ld a, l
    nop
    jr nz, @+$12

    ld a, [hl]
    nop
    jr z, @+$12

    ld [hl], a
    jr nz, jr_003_7ad6

    db $10
    ld a, a
    nop
    jr jr_003_7ac3

jr_003_7aab:
    ld [hl], b
    jr nz, jr_003_7ace

    jr jr_003_7b21

    jr nz, jr_003_7ad2

    jr nz, jr_003_7ab4

jr_003_7ab4:
    jr nz, @+$01

    nop
    nop
    or b
    db $10
    rst $38
    nop
    nop
    or c
    db $10
    rst $38
    nop
    nop
    or d

jr_003_7ac3:
    db $10
    rst $38
    nop
    nop
    or e
    db $10
    rst $38
    nop
    nop
    or h
    db $10

jr_003_7ace:
    rst $38
    nop
    nop
    or l

jr_003_7ad2:
    db $10
    rst $38
    nop
    nop

jr_003_7ad6:
    or [hl]
    db $10
    rst $38
    nop
    nop
    or a
    db $10
    rst $38
    nop
    nop
    cp b
    db $10
    rst $38
    nop
    nop
    cp c
    db $10
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1090], sp
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1091], sp
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1092], sp
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1093], sp
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1094], sp
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1095], sp
    rst $38
    nop
    nop
    sub b

jr_003_7b21:
    stop
    ld [$1096], sp
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1097], sp
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1098], sp
    rst $38
    nop
    nop
    sub b
    stop
    ld [$1099], sp
    rst $38
    nop
    nop
    sub c
    stop
    ld [$1090], sp
    rst $38
    nop
    nop
    sub c
    stop
    ld [$1091], sp
    rst $38
    nop
    nop
    sub c
    stop
    ld [$1092], sp
    rst $38
    nop
    nop
    sub c
    stop
    ld [$1093], sp
    rst $38
    nop
    nop
    sub c
    stop
    ld [$1094], sp
    rst $38
    nop
    nop
    sub c
    stop
    ld [$1095], sp
    rst $38
    nop
    nop
    sub c
    stop
    ld [$1096], sp
    rst $38

Call_003_7b81:
    ldh [$dc], a
    ld a, $03
    ldh [$9b], a
    ld [$2000], a
    sla e
    ld d, $00
    rl d
    ld hl, $76b4
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ldh a, [$92]
    ld l, a
    ld h, $c0
    ldh a, [$91]
    and a
    jr nz, jr_003_7bca

jr_003_7ba1:
    ld a, l
    cp $a0
    jr c, jr_003_7bad

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_003_7bad:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$dc]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, [de]
    cp $ff
    jr nz, jr_003_7ba1

    ld a, l
    ldh [$92], a
    ret


jr_003_7bca:
    ld a, l
    cp $a0
    jr c, jr_003_7bd6

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_003_7bd6:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$dc]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, l
    sub $08
    ld l, a
    ld a, [de]
    cp $ff
    jr nz, jr_003_7bca

    ld a, l
    ldh [$92], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_003_7fff:
    nop

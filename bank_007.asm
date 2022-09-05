SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    ld a, $02
    ldh [$cd], a
    ldh a, [$ee]
    cp $01
    jr z, jr_007_4010

    cp $07
    jr z, jr_007_4018

    jr jr_007_4026

jr_007_4010:
    ldh a, [$c6]
    set 7, a
    ldh [$c6], a
    jr jr_007_4026

jr_007_4018:
    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$c6]
    or b
    ldh [$c6], a
    jr jr_007_4026

jr_007_4026:
    ldh a, [$ef]
    cp $01
    jr z, jr_007_4032

    cp $07
    jr z, jr_007_403a

    jr jr_007_4048

jr_007_4032:
    ldh a, [$c6]
    set 7, a
    ldh [$c6], a
    jr jr_007_4048

jr_007_403a:
    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$c6]
    or b
    ldh [$c6], a
    jr jr_007_4048

jr_007_4048:
    ldh a, [$bd]
    cp $2c
    jp nz, Jump_007_4142

    ldh a, [$f0]
    ld b, a
    ldh a, [$f1]
    or b
    cp $10
    jp c, Jump_007_417d

    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $4068
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_007_4067:
    jp hl


    ld a, l
    ld b, c
    ld a, l
    ld b, c
    ld a, l
    ld b, c
    ld a, h
    ld b, b
    sub a
    ld b, b
    jp nz, $c240

    ld b, b
    dec b
    ld b, c
    ld a, l
    ld b, c
    ld a, l
    ld b, c
    ldh a, [$c5]
    sub $20
    ldh [$c5], a
    ldh a, [$c4]
    sbc $02
    ldh [$c4], a
    ld a, $0d
    ldh [$c7], a
    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    jp Jump_007_5d76


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $08
    jr nc, jr_007_40af

    ld b, $0d
    cp $04
    jr c, jr_007_40a9

    inc b

jr_007_40a9:
    ld a, b
    ldh [$c7], a
    jp Jump_007_5d76


jr_007_40af:
    ld a, $05
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    res 2, a
    ldh [$cb], a
    jp Jump_007_5d76


    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_40ca

    cpl
    inc a

jr_007_40ca:
    ld b, a
    and a
    jr nz, jr_007_40dd

    xor a
    ld [$c2d0], a
    ld a, $07
    ldh [$c7], a
    ld a, $10
    ldh [$be], a
    jp Jump_007_5d76


jr_007_40dd:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $40fd
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    ld a, $10
    ldh [$be], a
    jp Jump_007_5d76


    rlca
    ld [$0907], sp
    rlca
    ld [$0907], sp
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $0c
    jr nc, jr_007_411d

    ld b, $0e
    cp $04
    jr c, jr_007_4117

    dec b

jr_007_4117:
    ld a, b
    ldh [$c7], a
    jp Jump_007_5d76


jr_007_411d:
    ld a, $08
    ldh [$ca], a
    ldh a, [$c5]
    add $20
    ldh [$c5], a
    ldh a, [$c4]
    adc $02
    ldh [$c4], a
    ld a, $0c
    ldh [$c7], a
    ldh a, [$cf]
    add $17
    ld l, a
    ld h, $c1
    ld a, $12
    ld [hl+], a
    inc l
    ld a, $2e
    ld [hl], a
    jp Jump_007_5d76


Jump_007_4142:
    ldh a, [$f0]
    ld b, a
    cp $01
    jr z, jr_007_4177

    ldh a, [$f1]
    cp $01
    jr z, jr_007_4177

    xor b
    jr nz, jr_007_417d

    ld a, b
    cp $09
    jr nz, jr_007_417d

    ld a, [$c2cf]
    and a
    jr nz, jr_007_417d

    ldh a, [$cb]
    bit 2, a
    jp nz, Jump_007_417d

    ldh a, [$ce]
    and a
    jr nz, jr_007_417d

    ldh a, [$bf]
    dec a
    ldh [$bf], a
    ldh a, [$cb]
    set 1, a
    res 0, a
    ldh [$cb], a
    ret


jr_007_4177:
    ldh a, [$c6]
    set 7, a
    ldh [$c6], a

Jump_007_417d:
jr_007_417d:
    ldh a, [$f2]
    ldh [$be], a
    sla a
    ld hl, $418e
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    adc $41
    adc $41
    adc $41
    adc $41
    adc $41
    adc $41
    adc $41
    adc $41
    ld l, e
    ld l, [hl]
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ld c, l
    ld l, [hl]
    ld e, h
    ld l, [hl]
    ei
    ld c, a
    ld b, l
    ld l, l
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ld [hl], e
    ld c, h
    push bc
    ld c, h
    dec de
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ei
    ld c, a
    adc c
    ld l, a
    adc c
    ld l, a
    adc c
    ld l, a
    adc c
    ld l, a
    adc c
    ld l, a
    adc c
    ld l, a
    adc c
    ld l, a
    adc c
    ld l, a
    ldh a, [$f3]
    ldh [$be], a
    sla a
    ld hl, $41df
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rra
    ld b, d
    rra
    ld b, d
    rra
    ld b, d
    rra
    ld b, d
    rra
    ld b, d
    rra
    ld b, d
    rra
    ld b, d
    rra
    ld b, d
    ld l, e
    ld l, [hl]
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ld c, l
    ld l, [hl]
    ld e, h
    ld l, [hl]
    ei
    ld c, a
    ld b, l
    ld l, l
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ld [hl], e
    ld c, h
    push bc
    ld c, h
    dec de
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ldh a, [$f4]
    ldh [$be], a
    sla a
    ld hl, $4230
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], b
    ld b, d
    ld [hl], b
    ld b, d
    ld [hl], e
    ld c, h
    push bc
    ld c, h
    rla
    ld c, l
    dec de
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    pop bc
    ld c, [hl]
    ld l, e
    ld l, [hl]
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ld c, l
    ld l, [hl]
    ld e, h
    ld l, [hl]
    ei
    ld c, a
    ld b, l
    ld l, l
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ld [hl], e
    ld c, h
    push bc
    ld c, h
    dec de
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld c, a
    ldh a, [$be]
    xor $01
    jr nz, jr_007_427c

    ldh a, [$c6]
    set 7, a
    ldh [$c6], a

Jump_007_427c:
jr_007_427c:
    ldh a, [$cb]
    res 3, a
    ldh [$cb], a
    bit 7, a
    jr z, jr_007_428d

    ld a, $10
    ldh [$be], a
    jp Jump_007_5001


Jump_007_428d:
jr_007_428d:
    ldh a, [$bd]
    sla a
    ld c, a
    ld hl, $429c
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    ret


    ld b, e
    pop bc
    ld b, e
    and $43
    db $eb
    ld b, e
    inc hl
    ld b, h
    ld [hl], b
    ld d, l
    ld b, [hl]
    ld b, h
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    dec c
    ld d, [hl]
    ret nc

    ld b, e
    dec l
    ld b, l
    add d
    ld b, l
    ret nc

    ld b, e
    ret nc

    ld b, e
    adc h
    ld b, l
    ld [hl+], a
    ld b, [hl]
    nop
    ld b, [hl]
    ld d, $46
    ld d, h
    ld [hl], c
    ld c, [hl]
    ld b, [hl]
    sbc l
    ld b, [hl]
    push de
    ld b, [hl]
    rst $18
    ld b, [hl]
    db $eb
    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    ret nc

    ld b, e
    ld e, [hl]
    ld b, a
    ld a, [hl]
    ld b, a
    adc l
    ld b, a
    sbc l
    ld b, a
    and h
    ld b, a
    call nc, $5447
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    rst $38
    ld b, a
    ld d, $48
    dec de
    ld c, b
    ret nc

    ld b, e
    ld h, $48
    add b
    ld h, c
    ret nc

    ld b, e
    call z, $8d61
    ld b, a
    cp d
    ld c, b
    ld b, d
    ld c, c
    ld c, e
    ld c, c
    jr @+$4b

    inc h
    ld c, c
    ld e, c
    ld c, c
    and h
    ld c, c
    cp e
    ld c, c
    call nz, $5449
    ld [hl], c
    call $d749
    ld c, c
    and d
    ld h, a
    db $e3
    ld c, c
    add sp, $49
    ld b, a
    ld l, d
    push af
    ld c, c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld a, a
    ld c, d
    sub e
    ld c, d
    and e
    ld c, d
    ld c, e
    ld c, e
    di
    ld c, e
    di
    ld c, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld [bc], a
    ld c, h
    ld [bc], a
    ld c, h
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld sp, $544c
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc h
    ld l, h
    ld d, h
    ld [hl], c
    call nc, $f047
    jp z, Jump_007_4f07

    ld b, $00
    ld hl, $437c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or d
    ld b, e
    or d
    ld b, e
    or d
    ld b, e
    ld b, l
    ld d, d
    ld b, l
    ld d, d
    adc h
    ld b, e
    ld b, l
    ld d, d
    or d
    ld b, e
    ldh a, [$c7]
    cp $17
    jp c, Jump_007_5245

    ld b, $18
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_43a2

    inc b
    ldh a, [$c1]
    sub $01
    ldh [$c1], a

jr_007_43a2:
    ld a, b
    ldh [$c7], a
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $18
    ld [hl], a
    jp $7154


    ld b, $08
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_43bb

    inc b

jr_007_43bb:
    ld a, b
    ldh [$c7], a
    jp Jump_007_53ba


    ldh a, [$ca]
    and a
    jp nz, Jump_007_548b

    jr jr_007_43d0

    ldh a, [$ca]
    cp $02
    jp z, $541d

Jump_007_43d0:
jr_007_43d0:
    ld b, $05

Jump_007_43d2:
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_43d9

    inc b

jr_007_43d9:
    ld a, b
    ldh [$c7], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


    ld b, $04
    jp Jump_007_5469


    ld a, [$c2d0]
    add $04
    ld [$c2d0], a
    ld a, [$c2d0]
    add $04
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $441b
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


    inc b
    dec b
    ld b, $05
    inc b
    rlca
    ld [$fa07], sp
    ret nc

    jp nz, $10c6

    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $443e
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    inc b
    ld b, $04
    dec b
    inc b
    ld b, $04
    dec b
    ldh a, [$ca]
    cp $01
    jr z, jr_007_4491

    cp $02
    jr z, jr_007_449e

    ld a, [$c2d0]
    and a
    jr z, jr_007_446f

    inc a
    cp $10
    jr z, jr_007_446b

    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jp $7154


jr_007_446b:
    xor a
    ld [$c2d0], a

jr_007_446f:
    ldh a, [$c1]
    bit 7, a
    jp z, Jump_007_4525

    cp $f0
    jr c, jr_007_4486

    ld a, $01
    ld [$c2d0], a
    ld a, $0e
    ldh [$c7], a
    jp $7154


Jump_007_4486:
jr_007_4486:
    ld b, $09
    cp $e0
    jp c, Jump_007_4527

    inc b
    jp Jump_007_4527


jr_007_4491:
    xor a
    ld [$c2d0], a
    ldh a, [$c1]
    bit 7, a
    jp z, Jump_007_4525

    jr jr_007_4486

jr_007_449e:
    ld a, [$c2d0]
    and a
    jr z, jr_007_4512

    inc a
    cp $10
    jr z, jr_007_44bd

    cp $11
    jr z, jr_007_44c5

    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jp $7154


jr_007_44bd:
    ld [$c2d0], a
    ld e, $15
    call $29fb

jr_007_44c5:
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ld a, $34
    ldh [$c1], a
    ld a, $0d
    ldh [$c7], a
    ld hl, $c140
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_44ec

    ldh a, [$c2]
    dec a
    ld [hl+], a
    jr jr_007_44f0

jr_007_44ec:
    ldh a, [$c2]
    inc a
    ld [hl+], a

jr_007_44f0:
    ldh a, [$c5]
    add $30
    ld [hl+], a
    ldh a, [$c4]
    adc $00
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $10
    ld [hl+], a
    inc l
    inc l
    ld a, $08
    ld [hl], a
    jp $7154


jr_007_4512:
    ldh a, [$c1]
    cp $f0
    jp c, Jump_007_4486

    ld a, $01
    ld [$c2d0], a
    ld a, $0b
    ldh [$c7], a
    jp $7154


Jump_007_4525:
    ld b, $07

Jump_007_4527:
    ld a, b
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    cp $01
    jr z, jr_007_453d

    cp $02
    jr z, jr_007_4568

    xor a
    ldh [$c7], a
    jp $7154


jr_007_453d:
    ld a, [$c2d0]
    add $08
    ld [$c2d0], a
    jr z, jr_007_455c

    srl a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $4564
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


jr_007_455c:
    xor a
    ldh [$ca], a
    ldh [$c7], a
    jp $7154


    nop
    inc b
    dec b
    inc b

jr_007_4568:
    ldh a, [$c6]
    res 7, a
    ldh [$c6], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    cp $02
    jp nc, Jump_007_5654

    jp Jump_007_43d0


    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld a, [$c2cf]
    and a
    jp nz, $7154

    ldh a, [$c1]
    bit 7, a
    jr z, jr_007_45a6

    ld a, $0a
    ldh [$c7], a
    jp $7154


jr_007_45a6:
    ld a, $01
    ldh [$ca], a
    ld a, [$c2d0]
    add $08
    ld [$c2d0], a
    and $f0
    swap a
    srl a
    srl a
    ld b, $00
    ld c, a
    ld hl, $45fc
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    ldh a, [$99]
    ld b, a
    bit 7, a
    jr nz, jr_007_45d7

    ldh a, [$c0]
    bit 7, a
    jr nz, jr_007_45e1

    bit 6, b
    jr z, jr_007_45e1

    jr jr_007_45ed

jr_007_45d7:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_45ed

    bit 6, b
    jr z, jr_007_45ed

jr_007_45e1:
    inc a
    bit 7, a
    jr nz, jr_007_45f7

    cp $07
    jp nc, $7154

    jr jr_007_45f7

jr_007_45ed:
    dec a
    bit 7, a
    jr z, jr_007_45f7

    cp $fa
    jp c, $7154

jr_007_45f7:
    ldh [$c0], a
    jp $7154


    rlca
    ld [$0809], sp
    ldh a, [$ca]
    cp $03
    jp z, $57dd

    ld b, $09
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_4610

    inc b

jr_007_4610:
    ld a, b
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    cp $03
    jp nc, Jump_007_583e

    ld b, $0b
    jp Jump_007_43d2


    ldh a, [$ca]
    cp $02
    jr c, jr_007_463f

    cp $03
    jp nz, Jump_007_5998

    ld b, $08
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_4639

    dec b
    xor a
    ldh [$c0], a

jr_007_4639:
    ld a, b
    ldh [$c7], a
    jp $7154


jr_007_463f:
    ld b, $05
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_4648

    dec b

jr_007_4648:
    ld a, b
    ldh [$c7], a
    jp $7154


    ldh a, [$c7]
    cp $0c
    jr nc, jr_007_467c

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_465c

    cpl
    inc a

jr_007_465c:
    ld b, a
    and a
    jr nz, jr_007_4662

    ld b, $02

jr_007_4662:
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5518
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


jr_007_467c:
    ld a, [$c2d0]
    inc a
    cp $20
    jr nc, jr_007_4694

    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jp $7154


jr_007_4694:
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp $7154


    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_46a5

    cpl
    inc a

jr_007_46a5:
    ld b, a
    and a
    jr nz, jr_007_46ab

    ld b, $06

jr_007_46ab:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $46c5
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    ldh a, [$ca]
    cp $01
    jp nz, Jump_007_5a40

    jp Jump_007_43d0


    ldh a, [$ca]
    cp $01
    jp nz, Jump_007_5b3f

    ld b, $09
    jp Jump_007_43d2


    ldh a, [$ca]
    and a
    jp z, Jump_007_43d0

    cp $04
    jp z, Jump_007_43d0

    jp Jump_007_5c05


    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $4707
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec de
    ld b, a
    dec de
    ld b, a
    dec de
    ld e, l
    inc l
    ld b, a
    sub a
    ld b, b
    ld b, c
    ld b, a
    ld b, c
    ld b, a
    dec b
    ld b, c
    inc l
    ld b, a
    ld d, c
    ld e, l
    ldh a, [$cf]
    add $17
    ld l, a
    ld h, $c1
    ld a, $09
    ld [hl+], a
    inc l
    ld a, $0c
    ld [hl], a
    jp Jump_007_43d0


    ld a, $0c
    ldh [$c7], a
    ldh a, [$cf]
    add $17
    ld l, a
    ld h, $c1
    ld a, $12
    ld [hl+], a
    inc l
    ld a, $2e
    ld [hl], a
    jp $7154


    ldh a, [$cf]
    add $17
    ld l, a
    ld h, $c1
    ld a, $09
    ld [hl+], a
    inc l
    ld a, $0c
    ld [hl], a
    ld b, $08
    ldh a, [$c1]
    bit 7, a
    jr z, jr_007_4758

    inc b

jr_007_4758:
    ld a, b
    ldh [$c7], a
    jp $7154


    ldh a, [$c7]
    cp $09
    jp nc, Jump_007_5db6

    ld b, $06
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_476e

    dec b

jr_007_476e:
    ld a, b
    ldh [$c7], a
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $0a
    ld [hl], a
    jp $7154


    ldh a, [$ca]
    cp $02
    jp c, Jump_007_43d0

    cp $05
    jp nc, Jump_007_43d0

    jp Jump_007_5e96


    ldh a, [$c7]
    and a
    jp nz, Jump_007_5f6b

    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


    ld a, $02
    ldh [$c7], a
    jp $7154


    ldh a, [$c7]
    cp $10
    jp nc, Jump_007_5fb5

    ldh a, [$ca]
    cp $03
    jp nc, Jump_007_5fb5

    cp $02
    jr z, jr_007_47bb

    ld b, $0a
    jp Jump_007_43d2


jr_007_47bb:
    ld a, [$c2d0]
    and a
    jp nz, Jump_007_47cd

    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_47c8

jr_007_47c8:
    ld b, $0e
    jp Jump_007_43d2


Jump_007_47cd:
    ld a, $0f
    ldh [$c7], a
    jp $7154


    ldh a, [$cc]
    set 0, a
    set 2, a
    ldh [$cc], a
    ld a, [$c2d0]
    add $0a
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $47f7
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    nop
    ld bc, $0302
    nop
    ld bc, $0302
    ldh a, [$c7]
    cp $0c
    jp nc, Jump_007_6100

    ld b, $04
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_4810

    ld b, $08

jr_007_4810:
    ld a, b
    ldh [$c7], a
    jp $7154


    ld b, $07
    jp Jump_007_43d2


    ldh a, [$ca]
    and a
    jp z, Jump_007_43d0

    ld b, $0a
    jp Jump_007_43d2


    ldh a, [$ca]
    and a
    jr nz, jr_007_4878

    inc a
    ldh [$ca], a
    ld hl, $c120
    ld a, $3c
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ldh a, [$c5]
    add $f0
    ld [hl+], a
    ldh a, [$c4]
    adc $00
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    xor a
    ld [hl+], a
    inc l
    ld a, $04
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0f
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    xor a
    ld [hl], a
    jp $7154


jr_007_4878:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_489d

    cpl
    inc a
    ld b, a
    srl b
    ld a, [$c2d0]
    sub b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


jr_007_489d:
    ld b, a
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    cp $01
    jp nz, Jump_007_627d

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_48d4

    cpl
    inc a
    ld b, a
    srl b
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_48dd

    jr jr_007_48fb

jr_007_48d4:
    ld b, a
    srl b
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_48fb

jr_007_48dd:
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    cp $18
    jp c, $7154

    xor a
    ld [$c2d0], a
    ldh a, [$c7]
    inc a
    cp $0a
    jr c, jr_007_48f6

    ld a, $04

jr_007_48f6:
    ldh [$c7], a
    jp $7154


jr_007_48fb:
    ld a, [$c2d0]
    sub b
    ld [$c2d0], a
    jp nc, $7154

    ld a, $18
    ld [$c2d0], a
    ldh a, [$c7]
    dec a
    cp $04
    jr nc, jr_007_4913

    ld a, $09

jr_007_4913:
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    cp $03
    jp z, Jump_007_638c

jr_007_491f:
    ld b, $07
    jp Jump_007_43d2


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $04
    jp c, $7154

    xor a
    ldh [$bf], a
    ldh [$bd], a
    jp $7154


    ldh a, [$ca]
    cp $01
    jp nz, Jump_007_6427

    jr jr_007_491f

    ldh a, [$ca]
    cp $02
    jp z, $7154

    cp $01
    jp nz, Jump_007_64ca

    jr jr_007_491f

    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ldh a, [rDIV]
    and $03
    ld b, a
    ld a, [$c2d1]
    add b
    ld [$c2d1], a
    and $f0
    swap a
    ld b, a
    ld hl, $4994
    ld a, l
    add b
    ld l, a
    ld a, [hl]
    ldh [$ca], a
    ld a, [$c2d0]
    add $07
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    ld bc, $0300
    ld bc, $0303
    nop
    ld bc, $f000
    jp z, $01fe

    jp nz, Jump_007_655d

jr_007_49ab:
    ld b, $05
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_49b5

    ld b, $08

jr_007_49b5:
    ld a, b
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    cp $01
    jp nz, Jump_007_6604

    jr jr_007_49ab

    ldh a, [$ca]
    cp $01
    jp nz, Jump_007_6640

    jr jr_007_49ab

    ldh a, [$ca]
    cp $02
    jp z, Jump_007_66af

    jp Jump_007_43d0


    ldh a, [$ca]
    cp $02
    jp nc, Jump_007_66f1

    ld b, $05
    jp Jump_007_43d2


    ld b, $05
    jp Jump_007_43d2


    ldh a, [$c7]
    cp $0c
    jp nc, Jump_007_6840

    xor a
    ldh [$c7], a
    jp $7154


    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_4a39

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_4a03

    cpl
    inc a

jr_007_4a03:
    ld b, a
    and a
    jr nz, jr_007_4a0f

    ldh a, [$ca]
    and a
    jr nz, jr_007_4a14

jr_007_4a0c:
    jp $7154


jr_007_4a0f:
    ldh a, [$ca]
    and a
    jr z, jr_007_4a0c

jr_007_4a14:
    ld a, b
    cp $0f
    jr nc, jr_007_4a1b

    ld b, $16

jr_007_4a1b:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5518
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


jr_007_4a39:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_4a41

    cpl
    inc a

jr_007_4a41:
    ld b, a
    and a
    jr nz, jr_007_4a4d

    ldh a, [$ca]
    and a
    jr nz, jr_007_4a52

jr_007_4a4a:
    jp $7154


jr_007_4a4d:
    ldh a, [$ca]
    and a
    jr z, jr_007_4a4a

jr_007_4a52:
    ld a, b
    cp $0f
    jr nc, jr_007_4a59

    ld b, $16

jr_007_4a59:
    srl b
    srl b
    ld a, [$c2d0]
    sub b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $4a77
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    inc de
    ld [de], a
    ld de, $0f10
    ld c, $0d
    inc c
    ldh a, [$ca]
    and a
    jp nz, Jump_007_6add

    ld a, $09
    ldh [$c7], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


    ldh a, [$ca]
    and a
    jp z, $7154

    cp $04
    jp z, Jump_007_6b1c

    ld b, $07
    jp Jump_007_43d2


    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ldh a, [$cc]
    set 3, a
    set 0, a
    ldh [$cc], a
    ldh a, [$c6]
    res 5, a
    ldh [$c6], a
    ldh a, [$ca]
    and a
    jr nz, jr_007_4ad7

    ld a, [$c2d0]
    add $04
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5518
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


jr_007_4ad7:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0e
    jr z, jr_007_4afb

    cp $10
    jp c, $7154

    ld a, $04
    ldh [$c7], a
    xor a
    ldh [$ca], a
    jp $7154


jr_007_4afb:
    ld hl, $c160
    ld a, $57
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$c3]
    ld a, $00
    ld [hl+], a
    ldh a, [$c2]
    adc $02
    ld [hl+], a
    ldh a, [$c5]
    sub $40
    ld [hl+], a
    ldh a, [$c4]
    sbc $01
    ld [hl+], a
    inc l
    xor a
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $f8
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ret


    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ldh a, [$cc]
    set 3, a
    set 0, a
    ldh [$cc], a
    ldh a, [$c6]
    set 5, a
    ldh [$c6], a
    ldh a, [$ca]
    and a
    jr nz, jr_007_4b7f

    ld a, [$c2d0]
    sub $04
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5518
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


jr_007_4b7f:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0e
    jr z, jr_007_4ba3

    cp $10
    jp c, $7154

    ld a, $04
    ldh [$c7], a
    xor a
    ldh [$ca], a
    jp $7154


jr_007_4ba3:
    ld hl, $c180
    ld a, $58
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    ld a, $f8
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$c3]
    sub $c0
    ld [hl+], a
    ldh a, [$c2]
    sbc $01
    ld [hl+], a
    ldh a, [$c5]
    sub $40
    ld [hl+], a
    ldh a, [$c4]
    sbc $01
    ld [hl+], a
    inc l
    xor a
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $fe
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ret


    ld b, $00
    ldh a, [$99]
    bit 3, a
    jr nz, jr_007_4bfc

    inc b

jr_007_4bfc:
    ld a, b
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    and a
    jp z, Jump_007_4c19

    cp $03
    jp z, Jump_007_6b4c

    ld b, $07
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_4c16

    inc b

jr_007_4c16:
    ld a, b
    ldh [$c7], a

Jump_007_4c19:
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_4c28

    ldh a, [$c7]
    set 4, a
    ldh [$c7], a
    jp $7154


jr_007_4c28:
    ldh a, [$c7]
    res 4, a
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    cp $04
    jp z, Jump_007_6bd3

    cp $03
    jp z, Jump_007_4c60

    cp $02
    jr z, jr_007_4c46

    ld b, $07
    jp Jump_007_43d2


jr_007_4c46:
    ld b, $09
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_007_4c5a

    ld a, $38
    ldh [$c1], a
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ld b, $0a

jr_007_4c5a:
    ld a, b
    ldh [$c7], a
    jp $7154


Jump_007_4c60:
    ld a, $01
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ld b, $07
    jp Jump_007_43d2


    ldh a, [$cb]
    res 3, a
    ldh [$cb], a
    ldh a, [$be]
    ld c, a
    ld d, a
    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $718f
    add hl, bc
    ld b, [hl]
    ldh a, [$cb]
    bit 7, a
    jr z, jr_007_4c9b

    ld a, $13
    ldh [$be], a
    jr jr_007_4ca0

jr_007_4c9b:
    ld a, d
    cp $02
    jr z, jr_007_4cb2

jr_007_4ca0:
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr nz, jr_007_4cab

    cp b
    jp nc, Jump_007_5001

jr_007_4cab:
    ld a, c
    inc a
    ldh [$c0], a
    jp Jump_007_5001


jr_007_4cb2:
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr nz, jr_007_4cbd

    cp b
    jp nc, Jump_007_428d

jr_007_4cbd:
    ld a, c
    add $03
    ldh [$c0], a
    jp Jump_007_428d


    ldh a, [$cb]
    res 3, a
    ldh [$cb], a
    ldh a, [$be]
    ld c, a
    ld d, a
    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $728f
    add hl, bc
    ld b, [hl]
    ldh a, [$cb]
    bit 7, a
    jr z, jr_007_4ced

    ld a, $14
    ldh [$be], a
    jr jr_007_4cf2

jr_007_4ced:
    ld a, d
    cp $03
    jr z, jr_007_4d04

jr_007_4cf2:
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr z, jr_007_4cfd

    cp b
    jp c, Jump_007_5001

jr_007_4cfd:
    ld a, c
    dec a
    ldh [$c0], a
    jp Jump_007_5001


jr_007_4d04:
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr z, jr_007_4d0f

    cp b
    jp c, Jump_007_428d

jr_007_4d0f:
    ld a, c
    sub $03
    ldh [$c0], a
    jp Jump_007_428d


    ldh a, [$cb]
    res 3, a
    ldh [$cb], a
    ldh a, [$cb]
    bit 7, a
    jr z, jr_007_4d2a

    ld a, $0f
    ldh [$be], a
    jp Jump_007_6d4b


Jump_007_4d2a:
jr_007_4d2a:
    ld a, $01
    ldh [$cd], a
    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$c6]
    or b
    ldh [$c6], a
    ldh a, [$bd]
    sla a
    ld c, a
    ld hl, $4d49
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    ret


    ld b, e
    pop bc
    ld b, e
    and $43
    di
    ld b, e
    inc hl
    ld b, h
    ld [hl], b
    ld d, l
    ld b, [hl]
    ld b, h
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    dec c
    ld d, [hl]
    ret nc

    ld b, e
    dec l
    ld b, l
    add d
    ld b, l
    ret nc

    ld b, e
    ret nc

    ld b, e
    adc h
    ld b, l
    ld [hl+], a
    ld b, [hl]
    nop
    ld b, [hl]
    ld d, $46
    ld d, h
    ld [hl], c
    ld c, [hl]
    ld b, [hl]
    sbc l
    ld b, [hl]
    push de
    ld b, [hl]
    rst $18
    ld b, [hl]
    db $eb
    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    ret nc

    ld b, e
    ld e, [hl]
    ld b, a
    ld a, [hl]
    ld b, a
    adc l
    ld b, a
    sbc l
    ld b, a
    and h
    ld b, a
    call nc, $5447
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    rst $38
    ld b, a
    ld d, $48
    dec de
    ld c, b
    ret nc

    ld b, e
    ld h, $48
    add b
    ld h, c
    ret nc

    ld b, e
    call z, $8d61
    ld b, a
    cp d
    ld c, b
    ld b, d
    ld c, c
    ld c, e
    ld c, c
    jr @+$4b

    inc h
    ld c, c
    ld e, c
    ld c, c
    and h
    ld c, c
    cp e
    ld c, c
    call nz, $5449
    ld [hl], c
    call $d749
    ld c, c
    and d
    ld h, a
    db $e3
    ld c, c
    add sp, $49
    ld b, a
    ld l, d
    push af
    ld c, c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld a, a
    ld c, d
    sub e
    ld c, d
    and e
    ld c, d
    ld c, e
    ld c, e
    di
    ld c, e
    di
    ld c, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld [bc], a
    ld c, h
    ld [bc], a
    ld c, h
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld sp, $544c
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc h
    ld l, h
    ld d, h
    ld [hl], c
    call nc, $f047
    set 1, e
    sbc a
    ldh [$cb], a
    ldh a, [$be]
    ld c, a
    ld d, a
    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $728f
    add hl, bc
    ld b, [hl]
    ldh a, [$cb]
    bit 7, a
    jr z, jr_007_4e43

    ld a, $15
    ldh [$be], a
    jr jr_007_4e48

jr_007_4e43:
    ld a, d
    cp $05
    jr z, jr_007_4e5b

jr_007_4e48:
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr nz, jr_007_4e53

    cp b
    jp nc, Jump_007_6d4b

jr_007_4e53:
    ld a, c
    add $01
    ldh [$c0], a
    jp Jump_007_6d4b


jr_007_4e5b:
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr nz, jr_007_4e66

    cp b
    jp nc, Jump_007_4d2a

jr_007_4e66:
    ld a, c
    add $01
    ldh [$c0], a
    jp Jump_007_4d2a


    ldh a, [$cb]
    res 3, a
    ldh [$cb], a
    ldh a, [$be]
    ld c, a
    ld d, a
    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $728f
    add hl, bc
    ld b, [hl]
    ldh a, [$cb]
    bit 7, a
    jr z, jr_007_4e96

    ld a, $16
    ldh [$be], a
    jr jr_007_4e9b

jr_007_4e96:
    ld a, d
    cp $06
    jr z, jr_007_4eae

jr_007_4e9b:
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr z, jr_007_4ea6

    cp b
    jp c, Jump_007_6d4b

jr_007_4ea6:
    ld a, c
    sub $01
    ldh [$c0], a
    jp Jump_007_6d4b


jr_007_4eae:
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr z, jr_007_4eb9

    cp b
    jp c, Jump_007_4d2a

jr_007_4eb9:
    ld a, c
    sub $01
    ldh [$c0], a
    jp Jump_007_4d2a


    ldh a, [$c5]
    and $f0
    cp $80
    jr nc, jr_007_4ecf

    xor a
    ldh [$be], a
    jp Jump_007_427c


jr_007_4ecf:
    ldh a, [$cb]
    bit 7, a
    jr z, jr_007_4edc

    ld a, $0f
    ldh [$be], a
    jp Jump_007_6d45


jr_007_4edc:
    ld a, $01
    ldh [$cd], a
    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$c6]
    or b
    ldh [$c6], a
    ldh a, [$bd]
    sla a
    ld c, a
    ld hl, $4efb
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c

Jump_007_4f07:
    ld d, h
    ld [hl], c
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld b, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    ret


    ld b, e
    pop bc
    ld b, e
    and $43
    di
    ld b, e
    inc hl
    ld b, h
    ld [hl], b
    ld d, l
    ld b, [hl]
    ld b, h
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    dec c
    ld d, [hl]
    ret nc

    ld b, e
    dec l
    ld b, l
    add d
    ld b, l
    ret nc

    ld b, e
    ret nc

    ld b, e
    adc h
    ld b, l
    ld [hl+], a
    ld b, [hl]
    nop
    ld b, [hl]
    ld d, $46
    ld d, h
    ld [hl], c
    ld c, [hl]
    ld b, [hl]
    sbc l
    ld b, [hl]
    push de
    ld b, [hl]
    rst $18
    ld b, [hl]
    db $eb
    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    ret nc

    ld b, e
    ld e, [hl]
    ld b, a
    ld a, [hl]
    ld b, a
    adc l
    ld b, a
    sbc l
    ld b, a
    and h
    ld b, a
    call nc, $5447
    ld [hl], c
    ld d, h
    ld [hl], c
    ret nc

    ld b, e
    rst $38
    ld b, a
    ld d, $48
    dec de
    ld c, b
    ret nc

    ld b, e
    ld h, $48
    add b
    ld h, c
    ret nc

    ld b, e
    call z, $8d61
    ld b, a
    cp d
    ld c, b
    ld b, d
    ld c, c
    ld c, e
    ld c, c
    jr @+$4b

    inc h
    ld c, c
    ld e, c
    ld c, c
    and h
    ld c, c
    cp e
    ld c, c
    call nz, $5449
    ld [hl], c
    call $d749
    ld c, c
    and d
    ld h, a
    db $e3
    ld c, c
    add sp, $49
    ld b, a
    ld l, d
    push af
    ld c, c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld a, a
    ld c, d
    sub e
    ld c, d
    and e
    ld c, d
    ld c, e
    ld c, e
    di
    ld c, e
    di
    ld c, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld [bc], a
    ld c, h
    ld [bc], a
    ld c, h
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld sp, $544c
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc h
    ld l, h
    ld d, h
    ld [hl], c
    call nc, $f047
    set 1, e
    ld e, a
    ret nz

    set 3, a
    ldh [$cb], a
    ld hl, $c490

jr_007_4fd9:
    ld a, [hl]
    and a
    jr z, jr_007_4fe6

    ld a, l
    add $05
    ld l, a
    cp $a4
    ret z

    jr jr_007_4fd9

jr_007_4fe6:
    ld a, $29
    ld [hl+], a
    inc l
    ldh a, [$c3]
    and $f0
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl], a
    ld e, $25
    call $29fb
    ret


Jump_007_4ffb:
    ldh a, [$cb]
    res 3, a
    ldh [$cb], a

Jump_007_5001:
    ldh a, [$bd]
    sla a
    ld c, a
    ld hl, $5010
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld [c], a
    ld d, b
    ld [c], a
    ld d, b
    ld d, h
    ld [hl], c
    ld b, l
    ld d, d
    ld b, l
    ld d, d
    ld c, $51
    ld c, $51
    ld c, $51
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    dec e
    ld d, h
    adc e
    ld d, h
    and $43
    di
    ld d, b
    jr nz, jr_007_5093

    ld [hl], b
    ld d, l
    sbc b
    ld d, l
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    dec c
    ld d, [hl]
    pop de
    ld d, e
    dec l
    ld b, l
    ld d, h
    ld d, [hl]
    ld a, [hl+]
    ld d, a
    db $eb
    ld d, l
    inc [hl]
    ld d, a
    sbc b
    ld e, c
    ld a, h
    ld d, a
    ld a, $58
    ld d, h
    ld [hl], c
    ld c, [hl]
    ld b, [hl]
    sbc l
    ld b, [hl]
    ld b, b
    ld e, d
    ccf
    ld e, e
    dec b
    ld e, h
    jp z, $875c

    ld e, l
    or [hl]
    ld e, l
    sub [hl]
    ld e, [hl]
    ld l, e
    ld e, a
    sub c
    ld e, a
    or l
    ld e, a
    call nc, $5447
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    nop
    ld h, c
    db $eb
    ld d, l
    ld sp, $1761
    ld d, [hl]
    ld h, $48
    add b
    ld h, c
    pop de
    ld d, e
    call z, $6b61
    ld e, a
    ld a, l
    ld h, d
    daa

jr_007_5093:
    ld h, h
    jp z, $8c64

    ld h, e
    inc h
    ld c, c
    ld e, c
    ld c, c
    ld e, l
    ld h, l
    inc b
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld d, h
    ld [hl], c
    xor a
    ld h, [hl]
    pop af
    ld h, [hl]
    and d
    ld h, a
    call nc, Call_007_4067
    ld l, b
    ld b, a
    ld l, d
    sbc l
    ld l, c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    db $dd
    ld l, d
    inc e
    ld l, e
    and e
    ld c, d
    ld c, e
    ld c, e
    di
    ld c, e
    di
    ld c, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld c, h
    ld l, e
    ld c, h
    ld l, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    db $d3
    ld l, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc h
    ld l, h
    ld d, h
    ld [hl], c
    call nc, $f047
    sbc c
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    and $07
    ldh [$c7], a
    jp $7154


    xor a
    ldh [$c7], a
    ldh a, [$cc]
    bit 1, a
    jr z, jr_007_5105

    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    jp $7154


jr_007_5105:
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    jp $7154


    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $511c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rst $00
    ld d, e
    rst $00
    ld d, e
    rst $00
    ld d, e
    ld c, l
    ld d, c
    ret


    ld d, c
    adc a
    ld d, e
    inc l
    ld d, c
    rst $00
    ld d, e
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $03
    jp nz, Jump_007_53ba

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $1e
    jp nz, Jump_007_53ba

    xor a
    ldh [$c7], a
    ld [$c2d0], a
    ldh [$ca], a
    jp Jump_007_53ba


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $03
    jp nz, Jump_007_516a

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0d
    jr z, jr_007_5171

    cp $0e
    jp z, Jump_007_5284

    jp Jump_007_53ba


Jump_007_516a:
    ldh a, [$c7]
    cp $0d
    jp nz, Jump_007_53ba

jr_007_5171:
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ld hl, $c100

jr_007_517a:
    ld a, [hl]
    and a
    jr z, jr_007_5184

    ld a, l
    add $20
    ld l, a
    jr jr_007_517a

jr_007_5184:
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_519d

    ldh a, [$c3]
    sub $a0
    ld [hl+], a
    ldh a, [$c2]
    sbc $00
    ld [hl+], a
    jr jr_007_51a7

jr_007_519d:
    ldh a, [$c3]
    add $a0
    ld [hl+], a
    ldh a, [$c2]
    adc $00
    ld [hl+], a

jr_007_51a7:
    ldh a, [$c5]
    sub $a0
    ld [hl+], a
    ldh a, [$c4]
    sbc $00
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $06
    ld [hl+], a
    inc l
    inc l
    ld a, $08
    ld [hl], a
    jp Jump_007_53ba


    ldh a, [$c7]
    cp $12
    jr nc, jr_007_51e3

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $03
    jp nz, Jump_007_53ba

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jp Jump_007_53ba


jr_007_51e3:
    ld b, $12
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    bit 2, a
    jr z, jr_007_51f1

    inc b

jr_007_51f1:
    ld a, b
    ldh [$c7], a
    xor a
    ldh [$c0], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld hl, $c100

jr_007_5200:
    ld a, [hl]
    and a
    jr z, jr_007_520a

    ld a, l
    add $20
    ld l, a
    jr jr_007_5200

jr_007_520a:
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_5223

    ldh a, [$c3]
    sub $70
    ld [hl+], a
    ldh a, [$c2]
    sbc $00
    ld [hl+], a
    jr jr_007_522d

jr_007_5223:
    ldh a, [$c3]
    add $70
    ld [hl+], a
    ldh a, [$c2]
    adc $00
    ld [hl+], a

jr_007_522d:
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl], a
    ld a, l
    add $0d
    ld l, a
    ld a, $0a
    ld [hl+], a
    inc l
    inc l
    ld a, $0e
    ld [hl], a
    jp Jump_007_53ba


Jump_007_5245:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5253
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rst $00
    ld d, e
    rst $00
    ld d, e
    rst $00
    ld d, e
    sbc c
    ld d, d
    inc d
    ld d, e
    adc a
    ld d, e
    ld h, e
    ld d, d
    rst $00
    ld d, e
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_53ba

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $1e
    jp nz, Jump_007_53ba

    xor a
    ldh [$c7], a
    ld [$c2d0], a
    ldh [$ca], a
    jp Jump_007_53ba


Jump_007_5284:
jr_007_5284:
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ld a, $06
    ldh [$ca], a
    ld a, $1a
    ldh [$c7], a
    jp Jump_007_53ba


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_52b5

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0d
    jr z, jr_007_52bc

    cp $0e
    jr z, jr_007_5284

    jp Jump_007_53ba


Jump_007_52b5:
    ldh a, [$c7]
    cp $0d
    jp nz, Jump_007_53ba

jr_007_52bc:
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ld hl, $c100

jr_007_52c5:
    ld a, [hl]
    and a
    jr z, jr_007_52cf

    ld a, l
    add $20
    ld l, a
    jr jr_007_52c5

jr_007_52cf:
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_52e8

    ldh a, [$c3]
    sub $a0
    ld [hl+], a
    ldh a, [$c2]
    sbc $00
    ld [hl+], a
    jr jr_007_52f2

jr_007_52e8:
    ldh a, [$c3]
    add $a0
    ld [hl+], a
    ldh a, [$c2]
    adc $00
    ld [hl+], a

jr_007_52f2:
    ldh a, [$c5]
    sub $a0
    ld [hl+], a
    ldh a, [$c4]
    sbc $00
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $06
    ld [hl+], a
    inc l
    inc l
    ld a, $08
    ld [hl], a
    jp Jump_007_53ba


    ldh a, [$c7]
    cp $12
    jr nc, jr_007_532e

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_53ba

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jp Jump_007_53ba


jr_007_532e:
    ld b, $12
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    bit 2, a
    jr z, jr_007_533c

    inc b

jr_007_533c:
    ld a, b
    ldh [$c7], a
    xor a
    ldh [$c0], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld hl, $c100

jr_007_534b:
    ld a, [hl]
    and a
    jr z, jr_007_5355

    ld a, l
    add $20
    ld l, a
    jr jr_007_534b

jr_007_5355:
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_536e

    ldh a, [$c3]
    sub $70
    ld [hl+], a
    ldh a, [$c2]
    sbc $00
    ld [hl+], a
    jr jr_007_5378

jr_007_536e:
    ldh a, [$c3]
    add $70
    ld [hl+], a
    ldh a, [$c2]
    adc $00
    ld [hl+], a

jr_007_5378:
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl], a
    ld a, l
    add $0d
    ld l, a
    ld a, $0a
    ld [hl+], a
    inc l
    inc l
    ld a, $0e
    ld [hl], a
    jr jr_007_53ba

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jr nz, jr_007_53b4

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $17
    jr c, jr_007_53ba

jr_007_53a3:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $18
    ld [hl], a
    ld a, $17
    ldh [$c7], a
    jp $7154


jr_007_53b4:
    ldh a, [$c7]
    cp $17
    jr nc, jr_007_53a3

Jump_007_53ba:
jr_007_53ba:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $0d
    ld [hl], a
    jp $7154


    ldh a, [$c1]
    bit 7, a
    jp nz, $436e

    jp Jump_007_5446


Jump_007_53d1:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_53d9

    cpl
    inc a

jr_007_53d9:
    ld b, a
    and a
    jr nz, jr_007_53eb

    ldh a, [$ca]
    and a
    jr nz, jr_007_53f0

Jump_007_53e2:
jr_007_53e2:
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp $7154


jr_007_53eb:
    ldh a, [$ca]
    and a
    jr z, jr_007_53e2

jr_007_53f0:
    ld a, b
    cp $0f
    jr nc, jr_007_53f7

    ld b, $16

Jump_007_53f7:
jr_007_53f7:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    inc b
    dec b
    inc b
    ld b, $04
    dec b
    inc b
    ld b, $f0
    jp z, $02fe

    jr nz, jr_007_5446

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $0d
    jr z, jr_007_543b

    ldh [$c7], a
    jp $7154


jr_007_543b:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh [$c7], a
    jp $7154


Jump_007_5446:
jr_007_5446:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_544e

    cpl
    inc a

jr_007_544e:
    ld b, a
    and a
    jr nz, jr_007_5459

    ldh a, [$ca]
    and a
    jr nz, jr_007_545e

    jr jr_007_53e2

jr_007_5459:
    ldh a, [$ca]
    and a
    jr z, jr_007_53e2

jr_007_545e:
    ld a, b
    cp $0f
    jr nc, jr_007_5465

    ld b, $16

jr_007_5465:
    srl b
    srl b

Jump_007_5469:
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5483
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    inc b
    dec b
    ld b, $07
    inc b
    dec b
    ld b, $07

Jump_007_548b:
    ldh a, [$ca]
    and a
    jr z, jr_007_54e6

    cp $02
    jr z, jr_007_54b0

    cp $03
    jr z, jr_007_54c3

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0f
    jr z, jr_007_54b0

    jp $7154


jr_007_54b0:
    ldh a, [$cb]
    set 0, a
    set 2, a
    ldh [$cb], a
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    jp $7154


jr_007_54c3:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    dec a
    ldh [$c7], a
    cp $0b
    jr z, jr_007_54db

    jp $7154


jr_007_54db:
    xor a
    ld [$c2d0], a
    ldh [$ca], a
    ldh [$c7], a
    jp $7154


Jump_007_54e6:
jr_007_54e6:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_54ee

    cpl
    inc a

jr_007_54ee:
    ld b, a
    and a
    jp z, Jump_007_53e2

    ld a, b
    cp $0f
    jr nc, jr_007_54fa

    ld b, $14

jr_007_54fa:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5518
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ldh a, [$ca]
    cp $02
    jr c, jr_007_552a

    ld a, $01
    ldh [$ca], a

jr_007_552a:
    and a
    jr nz, jr_007_5533

    xor a
    ldh [$c7], a
    jp $7154


jr_007_5533:
    ld b, $04
    ld hl, $5560
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5540

    cpl
    inc a

jr_007_5540:
    cp $0c
    jr c, jr_007_5549

    inc b
    inc b
    ld hl, $5568

jr_007_5549:
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    dec c
    rrca
    dec c
    ld c, $0d
    rrca
    dec c
    ld c, $0a
    inc c
    ld a, [bc]
    dec bc
    ld a, [bc]
    inc c
    ld a, [bc]
    dec bc
    ldh a, [$ca]
    and a
    jr nz, jr_007_5580

jr_007_5575:
    xor a
    ldh [$c7], a
    ldh [$ca], a
    ld [$c2d0], a
    jp $7154


jr_007_5580:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $30
    jr z, jr_007_5575

    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jp $7154


    ldh a, [$c7]
    cp $07
    jr c, jr_007_55e7

    cp $0d
    jr z, jr_007_55d4

    ld a, [$c2d0]
    and a
    jr z, jr_007_55c0

    inc a
    ld [$c2d0], a
    cp $08
    jp c, $7154

    xor a
    ld [$c2d0], a
    ld a, $04
    ldh [$c7], a
    ld a, $01
    ldh [$ca], a
    jp $7154


Jump_007_55c0:
jr_007_55c0:
    ld a, $01
    ld [$c2d0], a
    ldh [$ca], a
    ld a, $08
    ldh [$c7], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    jp $7154


jr_007_55d4:
    ldh a, [$cb]
    bit 7, a
    jp z, Jump_007_55c0

    ldh a, [$ad]
    cp $30
    jr z, jr_007_55c0

    set 1, a
    ldh [$ad], a
    jr jr_007_55c0

jr_007_55e7:
    and a
    jp z, $7154

Jump_007_55eb:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_55f3

    cpl
    inc a

jr_007_55f3:
    ld b, a
    and a
    jr nz, jr_007_5602

    xor a
    ld [$c2d0], a
    ld a, $04
    ldh [$c7], a
    jp $7154


jr_007_5602:
    ld a, b
    cp $0f
    jp nc, Jump_007_53f7

    ld b, $16
    jp Jump_007_53f7


    ldh a, [$ca]
    cp $01
    jr z, jr_007_561d

    cp $02
    jr z, jr_007_5646

    xor a
    ldh [$c7], a
    jp $7154


jr_007_561d:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $13
    jr nc, jr_007_5635

    ldh [$c7], a
    jp $7154


jr_007_5635:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    jp $7154


jr_007_5646:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_564e

    cpl
    inc a

jr_007_564e:
    add $08
    ld b, a
    jp Jump_007_53f7


Jump_007_5654:
    ldh a, [$ca]
    cp $04
    jr z, jr_007_56c8

    cp $02
    jp z, Jump_007_56e0

    cp $03
    jp z, Jump_007_5709

    ldh a, [$c7]
    cp $0b
    jr c, jr_007_5686

    ld a, [$c2d0]
    inc a
    cp $20
    jr nc, jr_007_5682

    ld [$c2d0], a
    and $07
    jp nz, Jump_007_56fc

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jp Jump_007_56fc


jr_007_5682:
    xor a
    ld [$c2d0], a

jr_007_5686:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_568e

    cpl
    inc a

jr_007_568e:
    ld b, a
    and a
    jr nz, jr_007_569b

Jump_007_5692:
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp Jump_007_56fc


jr_007_569b:
    ld a, b
    cp $0f
    jr nc, jr_007_56a2

    ld b, $14

jr_007_56a2:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $56c0
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp Jump_007_56fc


    inc b
    dec b
    ld b, $07
    inc b
    ld [$0a09], sp

jr_007_56c8:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_56fc

    ldh a, [$c7]
    inc a
    cp $1f
    jr nc, jr_007_571e

    ldh [$c7], a
    jp Jump_007_56fc


Jump_007_56e0:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_56fc

    ldh a, [$c7]
    inc a
    cp $1b
    jr nc, jr_007_5709

    ldh [$c7], a
    cp $16
    jr nc, jr_007_5711

    jp Jump_007_56fc


Jump_007_56fc:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $0c
    ld [hl], a
    jp $7154


Jump_007_5709:
jr_007_5709:
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a

jr_007_5711:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $12
    ld [hl], a
    jp $7154


jr_007_571e:
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    xor a
    ldh [$ca], a
    jp Jump_007_5692


    ldh a, [$ca]
    cp $01
    jp z, Jump_007_53d1

    jp $7154


    ldh a, [$ca]
    and a
    jp z, Jump_007_55eb

    cp $02
    jr z, jr_007_5755

    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    ld a, $07
    ldh [$c7], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    jp $7154


jr_007_5755:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $0b
    jr nc, jr_007_576d

    ldh [$c7], a
    jp $7154


jr_007_576d:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $7154


    ldh a, [$ca]
    cp $03
    jr z, @+$5d

    cp $04
    jp z, $5815

Jump_007_5787:
    ldh a, [$c1]
    bit 7, a
    jp nz, $7154

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5796

    cpl
    inc a

jr_007_5796:
    ld b, a
    and a
    jr nz, jr_007_57a2

    ldh a, [$ca]
    and a
    jr nz, jr_007_57a8

    jp Jump_007_53e2


jr_007_57a2:
    ldh a, [$ca]
    and a
    jp z, Jump_007_53e2

jr_007_57a8:
    ld a, b
    cp $0f
    jr nc, jr_007_57af

    ld b, $16

jr_007_57af:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $57d5
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    cp $04
    jp nz, $7154

    ld e, $14
    call $29fb
    jp $7154


    inc b
    dec b
    ld b, $05
    inc b
    rlca
    ld [$f007], sp
    ret nz

    and a
    jr nz, jr_007_57e4

    ld a, $18

jr_007_57e4:
    bit 7, a
    jr z, jr_007_57ea

    cpl
    inc a

jr_007_57ea:
    srl a
    srl a
    ld b, a
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    and $f0
    swap a
    srl a
    srl a
    ld c, a
    ld b, $00
    ld hl, $5811
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    jp $7154


    dec bc
    inc c
    dec c
    ld c, $fa
    ret nc

    jp nz, $ea3c

    ret nc

    jp nz, $30fe

    jp c, Jump_007_582c

    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    jp $7154


Jump_007_582c:
    ld a, $04
    ldh [$c7], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ld e, $14
    call $29fb
    jp $7154


Jump_007_583e:
    ldh a, [$ca]
    cp $05
    jr z, jr_007_588e

    cp $04
    jp z, Jump_007_58fe

    cp $03
    jp z, $592b

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5856

    cpl
    inc a

jr_007_5856:
    ld b, a
    and a
    jr nz, jr_007_5863

    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp $7154


jr_007_5863:
    ld a, b
    cp $0f
    jr nc, jr_007_586a

    ld b, $16

jr_007_586a:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5886
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    inc b
    dec b
    ld b, $07
    inc b
    ld [$0a09], sp

jr_007_588e:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $10
    jr c, jr_007_58f7

    jr z, jr_007_58b8

    cp $40
    jr c, jr_007_58d9

    cp $60
    jr c, jr_007_58df

    cp $70
    jr c, jr_007_58e5

    jr z, jr_007_58eb

    cp $80
    jr c, jr_007_58f1

    xor a
    ld [$c2d0], a
    ld a, $01
    ldh [$ca], a
    jp $7154


jr_007_58b8:
    ldh a, [$cb]
    res 0, a
    set 2, a
    ldh [$cb], a
    ld hl, $c116
    ld a, $09
    ld [hl+], a
    ld a, $0b
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld a, $05
    ld [hl], a
    ld e, $2e
    call $29fb
    jr jr_007_58f7

jr_007_58d9:
    bit 0, a
    jr z, jr_007_58f1

    jr jr_007_58f7

jr_007_58df:
    bit 1, a
    jr z, jr_007_58f1

    jr jr_007_58f7

jr_007_58e5:
    bit 2, a
    jr z, jr_007_58f1

    jr jr_007_58f7

jr_007_58eb:
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a

Jump_007_58f1:
jr_007_58f1:
    xor a
    ldh [$c7], a
    jp $7154


Jump_007_58f7:
jr_007_58f7:
    ld a, $0d
    ldh [$c7], a
    jp $7154


Jump_007_58fe:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5906

    cpl
    inc a

jr_007_5906:
    ld b, a
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    and $f0
    swap a
    srl a
    ld c, a
    ld b, $00
    ld hl, $5923
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $fa
    ret nc

    jp nz, $ea3c

    ret nc

    jp nz, $10fe

    jr c, jr_007_58f1

    jr z, jr_007_5972

    cp $40
    jr c, jr_007_5980

    cp $60
    jr c, jr_007_5988

    cp $70
    jr c, jr_007_5990

    cp $80
    jr c, jr_007_58f7

    xor a
    ld [$c2d0], a
    ld a, $04
    ldh [$ca], a
    ldh a, [$cb]
    res 2, a
    set 0, a
    ldh [$cb], a
    ld hl, $c116
    ld a, $09
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ld e, $2d
    call $29fb
    jp $7154


jr_007_5972:
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld e, $2e
    call $29fb
    jp Jump_007_58f1


jr_007_5980:
    bit 0, a
    jp z, Jump_007_58f7

    jp Jump_007_58f1


jr_007_5988:
    bit 1, a
    jp z, Jump_007_58f7

    jp Jump_007_58f1


jr_007_5990:
    bit 2, a
    jp z, Jump_007_58f7

    jp Jump_007_58f1


Jump_007_5998:
    ldh a, [$ca]
    cp $02
    jp c, Jump_007_53d1

    jr z, jr_007_59ec

    cp $04
    jr z, jr_007_5a17

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_59ad

    cpl
    inc a

jr_007_59ad:
    ld b, a
    and a
    jr nz, jr_007_59b9

    ldh a, [$ca]
    and a
    jr nz, jr_007_59bf

    jp Jump_007_53e2


jr_007_59b9:
    ldh a, [$ca]
    and a
    jp z, Jump_007_53e2

jr_007_59bf:
    ld a, b
    cp $0f
    jr nc, jr_007_59c6

    ld b, $16

jr_007_59c6:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $59e4
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    rlca
    ld [$0907], sp
    rlca
    ld [$0907], sp

jr_007_59ec:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $10
    jr nc, jr_007_5a04

    ldh [$c7], a
    jp $7154


jr_007_5a04:
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    res 2, a
    set 0, a
    ldh [$cb], a
    jp $7154


jr_007_5a17:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    dec a
    cp $09
    jr z, jr_007_5a2f

    ldh [$c7], a
    jp $7154


jr_007_5a2f:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 2, a
    res 0, a
    ldh [$cb], a
    jp $7154


Jump_007_5a40:
    ldh a, [$ca]
    and a
    jp z, Jump_007_5ad6

    cp $03
    jr z, jr_007_5a82

    cp $02
    jp z, Jump_007_5ab5

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5a57

    cpl
    inc a

jr_007_5a57:
    ld b, a
    and a
    jr nz, jr_007_5a66

    xor a
    ld [$c2d0], a
    ld a, $04
    ldh [$c7], a
    jp Jump_007_5aff


jr_007_5a66:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp Jump_007_5aff


jr_007_5a82:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_5af9

    ldh a, [$c7]
    dec a
    ldh [$c7], a
    cp $0b
    jr nc, jr_007_5af9

    xor a
    ld [$c2d0], a
    ld [$c2d1], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    ld a, $04
    ldh [$c7], a
    ld a, $01
    ldh [$ca], a
    jp Jump_007_5aff


Jump_007_5ab5:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_5af9

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $15
    jr c, jr_007_5af9

    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ld a, $07
    ldh [$c7], a
    jr jr_007_5b1f

Jump_007_5ad6:
    ld a, [$c2d0]
    add $03
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5af1
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp Jump_007_5b1f


    rlca
    ld [$0a09], sp
    rlca
    ld [$0a09], sp

Jump_007_5af9:
jr_007_5af9:
    ldh a, [$c7]
    cp $10
    jr nc, jr_007_5b1f

Jump_007_5aff:
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $06
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $03
    ld [hl], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


Jump_007_5b1f:
jr_007_5b1f:
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $02
    ld [hl+], a
    ld a, $0e
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $1a
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


Jump_007_5b3f:
    ldh a, [$ca]
    and a
    jp z, $5b89

    cp $03
    jr z, jr_007_5b8f

    cp $02
    jp z, Jump_007_5bbc

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5b56

    cpl
    inc a

jr_007_5b56:
    ld b, a
    and a
    jr nz, jr_007_5b65

    xor a
    ld [$c2d0], a
    ld a, $04
    ldh [$c7], a
    jp Jump_007_5bf1


jr_007_5b65:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5b81
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp Jump_007_5bf1


    inc b
    dec b
    ld b, $06
    inc b
    rlca
    ld [$3e08], sp
    db $10
    ldh [$c7], a
    jr jr_007_5bdd

jr_007_5b8f:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_5bd7

    ldh a, [$c7]
    dec a
    ldh [$c7], a
    cp $0b
    jr nc, jr_007_5bd7

    xor a
    ld [$c2d0], a
    ld [$c2d1], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ld a, $04
    ldh [$c7], a
    ld a, $01
    ldh [$ca], a
    jp Jump_007_5bf1


Jump_007_5bbc:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_5bd7

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $10
    jr c, jr_007_5bd7

    xor a
    ldh [$ca], a
    ld [$c2d0], a

Jump_007_5bd7:
jr_007_5bd7:
    ldh a, [$c7]
    cp $10
    jr nz, jr_007_5bf1

jr_007_5bdd:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $08
    ld [hl], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


Jump_007_5bf1:
jr_007_5bf1:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $0d
    ld [hl], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


Jump_007_5c05:
    ldh a, [$ca]
    cp $01
    jp z, Jump_007_5c46

    cp $03
    jr z, jr_007_5c52

    cp $02
    jp z, Jump_007_5c7c

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5c1d

    cpl
    inc a

jr_007_5c1d:
    ld b, a
    and a
    jr nz, jr_007_5c2a

    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp Jump_007_5cb6


jr_007_5c2a:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp Jump_007_5cb6


Jump_007_5c46:
    ld a, $09
    ldh [$c7], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    jr jr_007_5ca2

jr_007_5c52:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_5c9c

    ldh a, [$c7]
    dec a
    ldh [$c7], a
    cp $07
    jr nc, jr_007_5c9c

    xor a
    ld [$c2d0], a
    ld [$c2d1], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    xor a
    ldh [$c7], a
    ldh [$ca], a
    jp Jump_007_5cb6


Jump_007_5c7c:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_5c9c

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $09
    jr c, jr_007_5c9c

    ld a, $09
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    inc a
    ldh [$ca], a

Jump_007_5c9c:
jr_007_5c9c:
    ldh a, [$c7]
    cp $09
    jr nz, jr_007_5cb6

jr_007_5ca2:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $0a
    ld [hl], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


Jump_007_5cb6:
jr_007_5cb6:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $0d
    ld [hl], a
    ldh a, [$be]
    cp $07
    jp z, $4fcd

    jp $7154


    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5cd8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $ec
    ld e, h
    db $ec
    ld e, h
    dec de
    ld e, l
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    jr c, jr_007_5d47

    ld d, c
    ld e, l
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5cf4

    cpl
    inc a

jr_007_5cf4:
    ld b, a
    and a
    jr nz, jr_007_5d00

    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jr jr_007_5d76

jr_007_5d00:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jr jr_007_5d76

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $0c
    jr nc, jr_007_5d32

    ld b, $0a
    cp $04
    jr c, jr_007_5d2d

    inc b

jr_007_5d2d:
    ld a, b
    ldh [$c7], a
    jr jr_007_5d76

jr_007_5d32:
    ld a, $03
    ldh [$ca], a
    jr jr_007_5d76

    xor a
    ld [$c2d0], a
    ld a, $09
    ldh [$ca], a
    ldh a, [$cf]
    add $17
    ld l, a
    ld h, $c1

jr_007_5d47:
    ld a, $12
    ld [hl+], a
    inc l
    ld a, $2e
    ld [hl], a
    jp $7154


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $08
    jr nc, jr_007_5d68

    ld b, $0b
    cp $04
    jr c, jr_007_5d63

    dec b

jr_007_5d63:
    ld a, b
    ldh [$c7], a
    jr jr_007_5d76

jr_007_5d68:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    res 2, a
    ldh [$cb], a

Jump_007_5d76:
jr_007_5d76:
    ldh a, [$cf]
    add $17
    ld l, a
    ld h, $c1
    ld a, $09
    ld [hl+], a
    inc l
    ld a, $0c
    ld [hl], a
    jp $7154


    ldh a, [$ca]
    and a
    jp nz, Jump_007_55eb

    ld a, [$c2d0]
    add $02
    ld [$c2d0], a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5da6
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    rlca
    rlca
    ld [$0a09], sp
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0a09], sp
    rlca

Jump_007_5db6:
    ldh a, [$c7]
    cp $09
    jr nc, jr_007_5e09

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5dc4

    cpl
    inc a

jr_007_5dc4:
    ld b, a
    and a
    jr nz, jr_007_5ddf

jr_007_5dc8:
    xor a
    ld [$c2d0], a
    ldh a, [$99]
    and $d4
    jr z, jr_007_5dd8

    xor a
    ldh [$c7], a
    jp Jump_007_5e7c


jr_007_5dd8:
    ld a, $08
    ldh [$c7], a
    jp Jump_007_5e7c


jr_007_5ddf:
    ldh a, [$ca]
    and a
    jr z, jr_007_5dc8

    ld a, b
    cp $0f
    jr nc, jr_007_5deb

    ld b, $16

jr_007_5deb:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5483
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp Jump_007_5e89


jr_007_5e09:
    cp $0d
    jr c, jr_007_5e53

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jr nz, jr_007_5e7c

    ldh a, [$c7]
    inc a
    cp $10
    jr nc, jr_007_5e23

    ldh [$c7], a
    jr jr_007_5e7c

jr_007_5e23:
    xor a
    ld [$c2d0], a
    ldh a, [$ca]
    and a
    jr nz, jr_007_5e3f

    xor a
    ldh [$c7], a
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_5e39

    set 5, a
    jr jr_007_5e3b

jr_007_5e39:
    res 5, a

jr_007_5e3b:
    ldh [$c6], a
    jr jr_007_5e7c

jr_007_5e3f:
    ld a, $04
    ldh [$c7], a
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_5e4d

    set 5, a
    jr jr_007_5e4f

jr_007_5e4d:
    res 5, a

jr_007_5e4f:
    ldh [$c6], a
    jr jr_007_5e89

jr_007_5e53:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $07
    jr c, jr_007_5e7c

    jr z, jr_007_5e66

    cp $10
    jr nc, jr_007_5e6d

    jr jr_007_5e7c

jr_007_5e66:
    ldh a, [$c7]
    inc a
    ldh [$c7], a
    jr jr_007_5e89

jr_007_5e6d:
    ldh a, [$c7]
    cp $0a
    jr nz, jr_007_5e79

    ld a, $04
    ldh [$c7], a
    jr jr_007_5e89

jr_007_5e79:
    xor a
    ldh [$c7], a

Jump_007_5e7c:
jr_007_5e7c:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $0e
    ld [hl], a
    jp $7154


Jump_007_5e89:
jr_007_5e89:
    ldh a, [$cf]
    add $19
    ld l, a
    ld h, $c1
    ld a, $0c
    ld [hl], a
    jp $7154


Jump_007_5e96:
    ldh a, [$bf]
    swap a
    ld b, a
    ld a, [$c2d1]
    and a
    jr z, jr_007_5eac

    inc a
    ld [$c2d1], a
    cp b
    jr c, jr_007_5eac

    xor a
    ld [$c2d1], a

jr_007_5eac:
    ldh a, [$ca]
    cp $02
    jp z, Jump_007_5eed

    cp $04
    jr z, jr_007_5eff

    cp $03
    jp z, Jump_007_5f32

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5ec4

    cpl
    inc a

jr_007_5ec4:
    ld b, a
    and a
    jr nz, jr_007_5ed1

    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp Jump_007_5f62


jr_007_5ed1:
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp Jump_007_5f62


Jump_007_5eed:
    ld a, $09
    ldh [$c7], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jr jr_007_5f59

jr_007_5eff:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_5f53

    ldh a, [$c7]
    dec a
    ldh [$c7], a
    cp $07
    jr nc, jr_007_5f53

    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    xor a
    ldh [$c7], a
    ld a, $01
    ldh [$ca], a
    ld hl, $c11f
    ld [hl], a
    jp Jump_007_5f62


Jump_007_5f32:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_5f53

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $09
    jr c, jr_007_5f53

    ld a, $09
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    ld a, $02
    ldh [$ca], a

Jump_007_5f53:
jr_007_5f53:
    ldh a, [$c7]
    cp $09
    jr nz, jr_007_5f62

jr_007_5f59:
    ld hl, $c119
    ld a, $16
    ld [hl], a
    jp $7154


Jump_007_5f62:
jr_007_5f62:
    ld hl, $c119
    ld a, $1c
    ld [hl], a
    jp $7154


Jump_007_5f6b:
    ldh a, [$cc]
    set 0, a
    set 2, a
    ldh [$cc], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $01
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $05
    jr nc, jr_007_5f8b

    ldh [$c7], a
    jp $7154


jr_007_5f8b:
    xor a
    ldh [$bf], a
    jp $7154


    ldh a, [$ca]
    and a
    jr nz, jr_007_5fa0

    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ld a, $01
    ldh [$ca], a

jr_007_5fa0:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $10
    jr c, jr_007_5faf

    xor a
    ld [$c2d0], a

jr_007_5faf:
    xor a
    ldh [$c7], a
    jp $7154


Jump_007_5fb5:
    ldh a, [$c7]
    cp $10
    jr nc, jr_007_6003

    ldh a, [$ca]
    cp $02
    jr z, jr_007_602d

    cp $03
    jp z, Jump_007_6049

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_5fce

    cpl
    inc a

jr_007_5fce:
    ld b, a
    and a
    jr nz, jr_007_5fd5

    jp Jump_007_53e2


jr_007_5fd5:
    ldh a, [$c7]
    cp $04
    jr z, jr_007_5fe1

    cp $07
    jr z, jr_007_5fe1

    srl b

jr_007_5fe1:
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5ffb
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    inc b
    dec b
    ld b, $07
    rlca
    ld [$0409], sp

jr_007_6003:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $13
    jr c, jr_007_6028

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_6020

    set 5, a
    jr jr_007_6022

jr_007_6020:
    res 5, a

jr_007_6022:
    ldh [$c6], a
    xor a
    ld [$c2d0], a

jr_007_6028:
    ldh [$c7], a
    jp $7154


jr_007_602d:
    ldh a, [$cb]
    bit 7, a
    jr z, jr_007_603a

    ld a, $0f
    ldh [$c7], a
    jp $7154


jr_007_603a:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    jp $7154


Jump_007_6049:
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $20
    jr z, jr_007_607d

    jp c, $7154

    cp $28
    jr nc, jr_007_6068

    ld a, $0c
    ldh [$c7], a
    jp $7154


jr_007_6068:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    jp $7154


jr_007_607d:
    ld hl, $c120

jr_007_6080:
    ld a, [hl]
    and a
    jr z, jr_007_608c

    ld a, l
    add $20
    jr c, jr_007_60f8

    ld l, a
    jr jr_007_6080

jr_007_608c:
    ld a, $33
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_60a8

    ldh a, [$c3]
    add $20
    ld [hl+], a
    ldh a, [$c2]
    adc $00
    ld [hl+], a
    jr jr_007_60b2

jr_007_60a8:
    ldh a, [$c3]
    sub $20
    ld [hl+], a
    ldh a, [$c2]
    sbc $00
    ld [hl+], a

jr_007_60b2:
    ldh a, [$c5]
    sub $20
    ld [hl+], a
    ldh a, [$c4]
    sbc $01
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    xor a
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ld a, l
    add $07
    ld l, a
    xor a
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    inc l
    ld a, $02
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $f0
    ld [hl], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld e, $0e
    call $29fb
    jp $7154


jr_007_60f8:
    ld a, $01
    ld [$c2d1], a
    jp $7154


Jump_007_6100:
    ldh a, [$c7]
    cp $0c
    jp c, Jump_007_54e6

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $0f
    jr c, jr_007_612c

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_6124

    set 5, a
    jr jr_007_6126

jr_007_6124:
    res 5, a

jr_007_6126:
    ldh [$c6], a
    xor a
    ld [$c2d0], a

jr_007_612c:
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    and a
    jp z, Jump_007_55eb

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_613f

    cpl
    inc a

jr_007_613f:
    ld b, a
    and a
    jr nz, jr_007_614e

jr_007_6143:
    xor a
    ld [$c2d0], a
    ld a, $07
    ldh [$c7], a
    jp $7154


jr_007_614e:
    ldh a, [$ca]
    and a
    jr z, jr_007_6143

    ld a, b
    cp $0f
    jr nc, jr_007_615a

    ld b, $16

jr_007_615a:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $6178
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    rlca
    ld [$0907], sp
    rlca
    ld [$0907], sp
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ldh a, [$c0]
    bit 7, a
    jr nz, jr_007_61ad

    ld b, a
    sla b
    sla b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    jp nc, $7154

    ldh a, [$c7]
    dec a
    bit 7, a
    jr nz, jr_007_61a6

    cp $04
    jr nc, jr_007_61a8

jr_007_61a6:
    ld a, $06

jr_007_61a8:
    ldh [$c7], a
    jp $7154


jr_007_61ad:
    cpl
    inc a
    ld b, a
    sla b
    sla b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    jp nc, $7154

    ldh a, [$c7]
    inc a
    cp $07
    jr c, jr_007_61c7

    ld a, $04

jr_007_61c7:
    ldh [$c7], a
    jp $7154


    ldh a, [$ca]
    and a
    jr nz, jr_007_61e8

    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a

jr_007_61dd:
    xor a
    ldh [$c7], a
    ld [$c2d0], a
    ldh [$ca], a
    jp $7154


jr_007_61e8:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $07
    jr z, jr_007_6204

    cp $0b
    jr nc, jr_007_61dd

    jp $7154


jr_007_6204:
    ld bc, $6100
    call $2d54
    ld a, b
    and a
    jp z, $7154

    bit 7, a
    jr z, jr_007_621b

    res 7, a
    srl a
    cpl
    inc a
    jr jr_007_621d

jr_007_621b:
    srl a

jr_007_621d:
    ld d, a
    ld hl, $c100

jr_007_6221:
    ld a, [hl]
    and a
    jr z, jr_007_622e

    ld a, l
    add $20
    ld l, a
    jr nc, jr_007_6221

    jp $2c96


jr_007_622e:
    ld a, $3f
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ldh a, [$c3]
    add $00
    ld [hl+], a
    ldh a, [$c2]
    adc $00
    ld [hl+], a
    ldh a, [$c5]
    sub $c0
    ld [hl+], a
    ldh a, [$c4]
    sbc $00
    ld [hl+], a
    inc l
    xor a
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $2d
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    jp $7154


Jump_007_627d:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $628b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub l
    ld h, d
    sbc h
    ld h, d
    di
    ld h, d
    ld b, e
    ld h, e
    ld l, e
    ld h, e
    ld a, $0e
    ldh [$c7], a
    jp $7154


    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_62af

    cpl
    inc a
    ld b, a
    srl b
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_62b8

    jr jr_007_62d6

jr_007_62af:
    ld b, a
    srl b
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_62d6

jr_007_62b8:
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    cp $2a
    jp c, $7154

    xor a
    ld [$c2d0], a
    ldh a, [$c7]
    inc a
    cp $0a
    jr c, jr_007_62d1

    ld a, $04

jr_007_62d1:
    ldh [$c7], a
    jp $7154


jr_007_62d6:
    ld a, [$c2d0]
    sub b
    ld [$c2d0], a
    jp nc, $7154

    ld a, $2a
    ld [$c2d0], a
    ldh a, [$c7]
    dec a
    cp $04
    jr nc, jr_007_62ee

    ld a, $09

jr_007_62ee:
    ldh [$c7], a
    jp $7154


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0b
    jr z, jr_007_6330

    cp $0c
    jr z, jr_007_631d

    cp $0e
    jp c, $7154

    xor a
    ld [$c2d0], a
    ld a, $04
    ldh [$c7], a
    ld a, $01
    ldh [$ca], a

jr_007_631d:
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $06
    ld [hl], a
    jp $7154


jr_007_6330:
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $08
    ld [hl], a
    jp $7154


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $16
    jr c, jr_007_6366

    xor a
    ld [$c2d0], a
    inc a
    ldh [$ca], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $7154


jr_007_6366:
    ldh [$c7], a
    jp $7154


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    dec a
    cp $0e
    jr nc, jr_007_6387

    xor a
    ld [$c2d0], a
    ldh [$ca], a
    jp $7154


jr_007_6387:
    ldh [$c7], a
    jp $7154


Jump_007_638c:
    ldh a, [$ca]
    cp $03
    jp nz, Jump_007_55eb

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0d
    jr z, jr_007_63be

    cp $0e
    jp c, $7154

    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh [$c7], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $7154


jr_007_63be:
    ld hl, $c120
    ld a, $44
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    ld b, $14
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_63d4

    ld a, b
    cpl
    inc a
    ld b, a

jr_007_63d4:
    ld a, b
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_63ea

    ldh a, [$c3]
    add $80
    ld [hl+], a
    ldh a, [$c2]
    adc $01
    ld [hl+], a
    jr jr_007_63f4

jr_007_63ea:
    ldh a, [$c3]
    sub $80
    ld [hl+], a
    ldh a, [$c2]
    sbc $01
    ld [hl+], a

jr_007_63f4:
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    xor a
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $08
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    jp $7154


Jump_007_6427:
    ldh a, [$ca]
    cp $01
    jp z, Jump_007_55eb

    cp $02
    jr z, jr_007_643d

    cp $04
    jr z, jr_007_6480

    cp $05
    jr z, jr_007_649f

    jp $7154


jr_007_643d:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0a
    jr z, jr_007_6472

    cp $0c
    jp c, $7154

    ld a, $0b
    ld [$c116], a

Jump_007_645c:
jr_007_645c:
    xor a
    ld [$c2d0], a
    inc a
    ldh [$ca], a
    ldh a, [$cb]
    res 0, a
    res 2, a
    ldh [$cb], a
    ld a, $04
    ldh [$c7], a
    jp $7154


jr_007_6472:
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ld a, $0f
    ld [$c116], a
    jp $7154


jr_007_6480:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    dec a
    cp $0c
    jr nc, jr_007_649a

    ld a, $12
    ld [$c119], a
    jr jr_007_645c

jr_007_649a:
    ldh [$c7], a
    jp $7154


jr_007_649f:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $0e
    jp c, Jump_007_64c5

    xor a
    ldh [$c7], a
    ld [$c2d0], a
    ld a, $03
    ldh [$ca], a
    ld a, $0f
    ld [$c119], a
    jp $7154


Jump_007_64c5:
    ldh [$c7], a
    jp $7154


Jump_007_64ca:
    ldh a, [$ca]
    and a
    jp z, $7154

    cp $01
    jp z, Jump_007_55eb

    cp $02
    jr z, jr_007_651e

    cp $03
    jr z, jr_007_653b

    cp $04
    jr z, jr_007_64fa

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    dec a
    cp $0b
    jp c, Jump_007_645c

    ldh [$c7], a
    jp $7154


jr_007_64fa:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $0f
    jp c, Jump_007_6519

    xor a
    ld [$c2d0], a
    ld a, $02
    ldh [$ca], a
    jp $7154


Jump_007_6519:
    ldh [$c7], a
    jp $7154


jr_007_651e:
    ld a, $d0
    ldh [$c1], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jp z, $7154

    jr c, jr_007_6534

    ld a, $20
    ldh [$c0], a
    jp $7154


jr_007_6534:
    ld a, $e0
    ldh [$c0], a
    jp $7154


jr_007_653b:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    dec a
    cp $09
    jp nc, Jump_007_6558

    ld a, $e0
    ldh [$c0], a
    ldh [$c1], a
    jp Jump_007_645c


Jump_007_6558:
    ldh [$c7], a
    jp $7154


Jump_007_655d:
    ldh a, [$ca]
    and a
    jp z, Jump_007_65a4

    cp $03
    jr z, jr_007_65b1

    cp $02
    jp z, Jump_007_65e5

Jump_007_656c:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_6574

    cpl
    inc a

jr_007_6574:
    ld b, a
    and a
    jr nz, jr_007_6583

    xor a
    ld [$c2d0], a
    ld a, $04
    ldh [$c7], a
    jp $7154


jr_007_6583:
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    cp $40
    jp c, $7154

    xor a
    ld [$c2d0], a
    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0a
    jp c, $7154

    ld a, $04
    ldh [$c7], a
    jp $7154


Jump_007_65a4:
    ld a, $13
    ldh [$c7], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jp $7154


Jump_007_65b1:
jr_007_65b1:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    dec a
    ldh [$c7], a
    cp $0a
    jp nc, $7154

    xor a
    ld [$c2d0], a
    ld [$c2d1], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    ld a, $04
    ldh [$c7], a
    ld a, $01
    ldh [$ca], a
    jp $7154


Jump_007_65e5:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $13
    jp c, $7154

    xor a
    ldh [$ca], a
    ld [$c2d0], a
    jp $7154


Jump_007_6604:
    ldh a, [$ca]
    cp $01
    jp z, Jump_007_656c

    cp $03
    jr z, jr_007_65b1

    cp $02
    jp z, Jump_007_6621

    ld a, $0f
    ldh [$c7], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jp $7154


Jump_007_6621:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0f
    jp c, $7154

    xor a
    ldh [$ca], a
    ld [$c2d0], a
    jp $7154


Jump_007_6640:
    ldh a, [$c7]
    cp $0e
    jr nc, jr_007_6664

    ldh a, [$ca]
    cp $01
    jp z, Jump_007_656c

    cp $03
    jp z, Jump_007_65b1

    cp $02
    jp z, Jump_007_6690

    ld a, $0d
    ldh [$c7], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jp $7154


jr_007_6664:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    cp $12
    jr c, jr_007_668b

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_6681

    set 5, a
    jr jr_007_6683

jr_007_6681:
    res 5, a

jr_007_6683:
    ldh [$c6], a
    xor a
    ld [$c2d0], a
    ld a, $04

jr_007_668b:
    ldh [$c7], a
    jp $7154


Jump_007_6690:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0d
    jp c, $7154

    xor a
    ldh [$ca], a
    ld [$c2d0], a
    jp $7154


Jump_007_66af:
    ldh a, [$ca]
    cp $02
    jp nz, Jump_007_53d1

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $18
    jr nc, jr_007_66d8

    ld a, $07
    ldh [$c7], a
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $09
    ld [hl], a
    jp $7154


jr_007_66d8:
    xor a
    ldh [$c7], a
    inc a
    ldh [$ca], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $06
    ld [hl], a
    jp $7154


Jump_007_66f1:
    ldh a, [$ca]
    cp $02
    jp nz, Jump_007_53d1

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0b
    jr z, jr_007_6736

    cp $0d
    jp c, $7154

    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    ld a, $03
    ldh [$ca], a
    inc a
    ldh [$c7], a
    ldh a, [$cf]
    add $1f
    ld l, a
    ld h, $c1
    ld a, $06
    ld [hl], a
    jp $7154


jr_007_6736:
    ld hl, $c120

jr_007_6739:
    ld a, [hl]
    and a
    jr z, jr_007_6743

    ld a, l
    add $20
    ld l, a
    jr jr_007_6739

jr_007_6743:
    ld a, $4c
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    inc l
    xor a
    ld [hl-], a
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_007_6763

    ld a, $20
    ld [hl+], a
    inc l
    ldh a, [$c3]
    add $00
    ld [hl+], a
    ldh a, [$c2]
    adc $01
    ld [hl+], a
    jr jr_007_6771

jr_007_6763:
    ld a, $e0
    ld [hl+], a
    inc l
    ldh a, [$c3]
    sub $00
    ld [hl+], a
    ldh a, [$c2]
    sbc $01
    ld [hl+], a

jr_007_6771:
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    inc l
    inc l
    ld a, $20
    ld [hl+], a
    ld a, $e0
    ld [hl], a
    jp $7154


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_67bc

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0e
    jp c, Jump_007_67bc

    ld a, $06
    ldh [$c7], a

Jump_007_67bc:
    ldh a, [$c7]
    cp $0a
    jr nc, jr_007_67cd

    cp $06
    jp c, $7154

    xor a
    ldh [$c6], a
    jp $7154


jr_007_67cd:
    ld a, $20
    ldh [$c6], a
    jp $7154


    ldh a, [$ca]
    and a
    jr z, jr_007_681d

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_67e1

    cpl
    inc a

jr_007_67e1:
    ld b, a
    and a
    jr nz, jr_007_67f3

    ldh a, [$ca]
    and a
    jr nz, jr_007_67f8

jr_007_67ea:
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp $7154


jr_007_67f3:
    ldh a, [$ca]
    and a
    jr z, jr_007_67ea

jr_007_67f8:
    ld a, b
    cp $0f
    jr nc, jr_007_67ff

    ld b, $16

jr_007_67ff:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5483
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


jr_007_681d:
    ld a, [$c2d0]
    add $08
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $6838
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    ld [$0a09], sp
    dec bc
    ld [$0a09], sp
    dec bc

Jump_007_6840:
    ldh a, [$c7]
    cp $19
    jr nc, jr_007_6891

    ldh a, [$ca]
    cp $02
    jp z, Jump_007_68d4

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_6855

    cpl
    inc a

jr_007_6855:
    ld b, a
    and a
    jr nz, jr_007_6867

    ldh a, [$ca]
    and a
    jr nz, jr_007_686c

jr_007_685e:
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp $7154


jr_007_6867:
    ldh a, [$ca]
    and a
    jr z, jr_007_685e

jr_007_686c:
    ld a, b
    cp $0f
    jr nc, jr_007_6873

    ld b, $16

jr_007_6873:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5518
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


jr_007_6891:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $1e
    jp c, $7154

    xor a
    ld [$c2d0], a
    ldh [$c7], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_007_68c3

    jr c, jr_007_68bd

jr_007_68b7:
    ldh a, [$c6]
    res 5, a
    jr jr_007_68cf

jr_007_68bd:
    ldh a, [$c6]
    set 5, a
    jr jr_007_68cf

jr_007_68c3:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_007_68d1

    jr c, jr_007_68bd

    jr jr_007_68b7

jr_007_68cf:
    ldh [$c6], a

jr_007_68d1:
    jp $7154


Jump_007_68d4:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $03
    jr nz, jr_007_690c

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $11
    jr z, jr_007_691b

    cp $12
    jr z, jr_007_696b

    cp $13
    jr z, jr_007_691b

    cp $19
    jp c, $7154

    xor a
    ldh [$ca], a
    ldh [$c7], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    jp $7154


jr_007_690c:
    ldh a, [$c7]
    cp $11
    jr z, jr_007_691b

    cp $12
    jr z, jr_007_696b

    cp $13
    jp nz, $7154

jr_007_691b:
    ld hl, $c100

jr_007_691e:
    ld a, [hl]
    and a
    jr z, jr_007_6928

    ld a, l
    add $20
    ld l, a
    jr jr_007_691e

jr_007_6928:
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_6941

    ldh a, [$c3]
    sub $80
    ld [hl+], a
    ldh a, [$c2]
    sbc $01
    ld [hl+], a
    jr jr_007_694b

jr_007_6941:
    ldh a, [$c3]
    add $80
    ld [hl+], a
    ldh a, [$c2]
    adc $01
    ld [hl+], a

jr_007_694b:
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    sub $01
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $06
    ld [hl+], a
    inc l
    inc l
    ld a, $0c
    ld [hl], a
    jp $7154


jr_007_696b:
    ld hl, $c100

jr_007_696e:
    ld a, [hl]
    and a
    jr z, jr_007_6978

    ld a, l
    add $20
    ld l, a
    jr jr_007_696e

jr_007_6978:
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_6991

    ldh a, [$c3]
    sub $80
    ld [hl+], a
    ldh a, [$c2]
    sbc $02
    ld [hl+], a
    jr jr_007_694b

jr_007_6991:
    ldh a, [$c3]
    add $80
    ld [hl+], a
    ldh a, [$c2]
    adc $02
    ld [hl+], a
    jr jr_007_694b

    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_69f8

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_69ab

    cpl
    inc a

jr_007_69ab:
    ld b, a
    and a
    jr nz, jr_007_69b8

    ldh a, [$ca]
    and a
    jr nz, jr_007_69bd

jr_007_69b4:
    ld b, $00
    jr jr_007_69c4

jr_007_69b8:
    ldh a, [$ca]
    and a
    jr z, jr_007_69b4

jr_007_69bd:
    ld a, b
    cp $0f
    jr nc, jr_007_69c4

    ld b, $16

jr_007_69c4:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5518
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    cp $04
    jr z, jr_007_69ea

    cp $08
    jr z, jr_007_69ea

    jp $7154


jr_007_69ea:
    ldh a, [$ca]
    and a
    jp z, $7154

    ld e, $2c
    call $29fb
    jp $7154


jr_007_69f8:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_6a00

    cpl
    inc a

jr_007_6a00:
    ld b, a
    and a
    jr nz, jr_007_6a0d

    ldh a, [$ca]
    and a
    jr nz, jr_007_6a12

jr_007_6a09:
    ld b, $00
    jr jr_007_6a19

jr_007_6a0d:
    ldh a, [$ca]
    and a
    jr z, jr_007_6a09

jr_007_6a12:
    ld a, b
    cp $0f
    jr nc, jr_007_6a19

    ld b, $16

jr_007_6a19:
    srl b
    srl b
    ld a, [$c2d0]
    sub b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $6a3f
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    cp $0c
    jr z, jr_007_69ea

    cp $10
    jr z, jr_007_69ea

    jp $7154


    inc de
    ld [de], a
    ld de, $0f10
    ld c, $0d
    inc c
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_6a4f

    cpl
    inc a

jr_007_6a4f:
    ld b, a
    and a
    jr nz, jr_007_6a61

    ldh a, [$ca]
    and a
    jr nz, jr_007_6a66

jr_007_6a58:
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp $7154


jr_007_6a61:
    ldh a, [$ca]
    and a
    jr z, jr_007_6a58

jr_007_6a66:
    ld a, b
    cp $0f
    jr nc, jr_007_6a6d

    ld b, $16

jr_007_6a6d:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    cp $06
    jr z, jr_007_6a8f

    jp $7154


jr_007_6a8f:
    ld hl, $c100

jr_007_6a92:
    ld a, [hl]
    and a
    jr z, jr_007_6a9c

    ld a, l
    add $20
    ld l, a
    jr jr_007_6a92

jr_007_6a9c:
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_007_6ab5

    ldh a, [$c3]
    sub $e0
    ld [hl+], a
    ldh a, [$c2]
    sbc $00
    ld [hl+], a
    jr jr_007_6abf

jr_007_6ab5:
    ldh a, [$c3]
    add $e0
    ld [hl+], a
    ldh a, [$c2]
    adc $00
    ld [hl+], a

jr_007_6abf:
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $06
    ld [hl+], a
    inc l
    inc l
    ld a, $0d
    ld [hl], a
    jp $7154


Jump_007_6add:
    ldh a, [$ca]
    and a
    jr z, jr_007_6aee

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_6aea

    cpl
    inc a

jr_007_6aea:
    ld b, a
    and a
    jr nz, jr_007_6af7

jr_007_6aee:
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp $7154


jr_007_6af7:
    ld a, b
    cp $0f
    jr nc, jr_007_6afe

    ld b, $16

jr_007_6afe:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5518
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


Jump_007_6b1c:
    ldh a, [$ca]
    and a
    jp z, $7154

    cp $04
    jp nz, Jump_007_55eb

    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $40
    jp nz, $7154

    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $7154


Jump_007_6b4c:
    ldh a, [$ca]
    cp $03
    jr z, jr_007_6b8c

    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_6b5a

    cpl
    inc a

jr_007_6b5a:
    ld b, a
    and a
    jr nz, jr_007_6b67

    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp Jump_007_4c19


jr_007_6b67:
    ld a, b
    cp $0f
    jr nc, jr_007_6b6e

    ld b, $16

jr_007_6b6e:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp Jump_007_4c19


jr_007_6b8c:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_007_4c19

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    res 4, a
    cp $0b
    jr c, jr_007_6bc0

    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    xor a
    ldh [$c7], a
    ld [$c2d0], a
    ld a, $02
    ldh [$ca], a
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $06
    ld [hl], a
    jp Jump_007_4c19


jr_007_6bc0:
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $0a
    ld [hl], a
    jp Jump_007_4c19


Jump_007_6bd3:
    ldh a, [$ca]
    cp $04
    jp z, Jump_007_6bfc

    cp $03
    jp z, $7154

    cp $02
    jr z, jr_007_6be6

    jp Jump_007_53d1


jr_007_6be6:
    ldh a, [$c7]
    cp $0a
    jp nz, $7154

    xor a
    ldh [$c7], a
    inc a
    ldh [$ca], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    jp $7154


Jump_007_6bfc:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $14
    jp nz, $7154

    xor a
    ldh [$c7], a
    ld [$c2d0], a
    inc a
    ldh [$ca], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    jp $7154


    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $6c32
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld c, d
    ld l, h
    ld c, d
    ld l, h
    ld c, d
    ld l, h
    sub e
    ld l, h
    or c
    ld l, h
    pop af
    ld l, h
    ld [hl+], a
    ld l, l
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ldh a, [$c0]
    bit 7, a
    jr z, jr_007_6c52

    cpl
    inc a

jr_007_6c52:
    ld b, a
    and a
    jr nz, jr_007_6c61

    xor a
    ld [$c2d0], a
    ld a, $04
    ldh [$c7], a
    jp $7154


jr_007_6c61:
    ld a, b
    cp $0f
    jp nc, Jump_007_6c69

    ld b, $16

Jump_007_6c69:
    srl b
    srl b
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5415
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    cp $05
    jr z, jr_007_6c8b

    jp $7154


jr_007_6c8b:
    ld e, $0e
    call $29fb
    jp $7154


    ld a, [$c2d0]
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $6ca9
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    jr jr_007_6cc4

    jr @+$1c

    jr jr_007_6cc8

    jr @+$1c

    ld d, $01
    ldh a, [$c2]
    cp $4e
    jr z, jr_007_6cc1

    ldh a, [$bf]
    cp $04
    jr c, jr_007_6cc1

    ld d, $03

jr_007_6cc1:
    ld a, [$c2d0]

jr_007_6cc4:
    inc a
    ld [$c2d0], a

jr_007_6cc8:
    and d
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $18
    jp nz, $7154

    xor a
    ldh [$c7], a
    ld [$c2d0], a
    ld a, $04
    ldh [$ca], a
    ld a, $01
    ld [$c15b], a
    ld [$c15f], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    jp $7154


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $0e
    jp nz, $7154

    xor a
    ldh [$c7], a
    ld [$c2d0], a
    ld a, $04
    ldh [$ca], a
    ld a, $01
    ld [$c15b], a
    ld [$c15f], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    jp $7154


    ld a, [$c2d0]
    add $04
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $6d3d
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    dec e
    ld e, $1d
    rra
    dec e
    ld e, $1d
    rra

Jump_007_6d45:
    ldh a, [$cb]
    res 3, a
    ldh [$cb], a

Jump_007_6d4b:
    ld a, $01
    ldh [$cd], a
    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$c6]
    or b
    ldh [$c6], a
    ldh a, [$bd]
    sla a
    ld c, a
    ld hl, $6d6a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc a
    ld l, [hl]
    inc a
    ld l, [hl]
    ld d, h
    ld [hl], c
    ld b, l
    ld d, d
    ld b, l
    ld d, d
    ld c, $51
    ld c, $51
    ld c, $51
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    dec e
    ld d, h
    adc e
    ld d, h
    and $43
    di
    ld b, e
    jr nz, jr_007_6ded

    ld [hl], b
    ld d, l
    sbc b
    ld d, l
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    dec c
    ld d, [hl]
    pop de
    ld d, e
    dec l
    ld b, l
    ld d, h
    ld d, [hl]
    ld a, [hl+]
    ld d, a
    db $eb
    ld d, l
    inc [hl]
    ld d, a
    sbc b
    ld e, c
    ld a, h
    ld d, a
    ld a, $58
    ld d, h
    ld [hl], c
    ld c, [hl]
    ld b, [hl]
    sbc l
    ld b, [hl]
    ld b, b
    ld e, d
    ccf
    ld e, e
    dec b
    ld e, h
    jp z, $875c

    ld e, l
    or [hl]
    ld e, l
    sub [hl]
    ld e, [hl]
    ld l, e
    ld e, a
    sub c
    ld e, a
    or l
    ld e, a
    call nc, $5447
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    nop
    ld h, c
    db $eb
    ld d, l
    ld sp, $1761
    ld d, [hl]
    ld h, $48
    add b
    ld h, c
    pop de
    ld d, e
    call z, $6b61
    ld e, a
    ld a, l
    ld h, d
    daa

jr_007_6ded:
    ld h, h
    jp z, $8c64

    ld h, e
    inc h
    ld c, c
    ld e, c
    ld c, c
    ld e, l
    ld h, l
    inc b
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld d, h
    ld [hl], c
    xor a
    ld h, [hl]
    pop af
    ld h, [hl]
    and d
    ld h, a
    call nc, Call_007_4067
    ld l, b
    ld b, a
    ld l, d
    sbc l
    ld l, c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    db $dd
    ld l, d
    inc e
    ld l, e
    and e
    ld c, d
    ld c, e
    ld c, e
    di
    ld c, e
    di
    ld c, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld c, h
    ld l, e
    ld c, h
    ld l, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    db $d3
    ld l, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc h
    ld l, h
    ld d, h
    ld [hl], c
    call nc, $f047
    sbc c
    and $07
    jp nz, $7154

    ldh a, [$c7]
    inc a
    and $07
    ldh [$c7], a
    jp $7154


    ldh a, [$c3]
    add $08
    ldh [$c3], a
    ldh a, [$c2]
    adc $00
    ldh [$c2], a
    jp Jump_007_4ffb


    ldh a, [$c3]
    sub $08
    ldh [$c3], a
    ldh a, [$c2]
    sbc $00
    ldh [$c2], a
    jp Jump_007_4ffb


    ldh a, [$bd]
    sla a
    ld c, a
    ld hl, $6e7a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld c, h
    ld l, a
    ld c, h
    ld l, a
    ld c, h
    ld l, a
    ld c, h
    ld l, a
    ld c, h
    ld l, a
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld c, h
    ld l, a
    ld c, h
    ld l, a
    ld h, a
    ld l, a
    and $43
    db $eb
    ld b, e
    jr nz, jr_007_6efd

    ld [hl], b
    ld d, l
    sbc b
    ld d, l
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    dec c
    ld d, [hl]
    ld c, h
    ld l, a
    dec l
    ld b, l
    ld d, h
    ld d, [hl]
    ld a, [hl+]
    ld d, a
    db $eb
    ld d, l
    inc [hl]
    ld d, a
    ld h, a
    ld l, a
    ld a, h
    ld d, a
    ld a, $58
    ld d, h
    ld [hl], c
    ld c, [hl]
    ld b, [hl]
    sbc l
    ld b, [hl]
    ld b, b
    ld e, d
    ccf
    ld e, e
    dec b
    ld e, h
    jp z, $875c

    ld e, l
    or [hl]
    ld e, l
    sub [hl]
    ld e, [hl]
    ld l, e
    ld e, a
    sub c
    ld e, a
    or l
    ld e, a
    call nc, $5447
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    nop
    ld h, c
    dec c
    ld d, [hl]
    ld sp, $1761
    ld d, [hl]
    ld h, $48
    add b
    ld h, c
    pop de
    ld d, e
    call z, $6b61
    ld e, a
    ld a, l
    ld h, d
    daa

jr_007_6efd:
    ld h, h
    jp z, $8c64

    ld h, e
    inc h
    ld c, c
    ld e, c
    ld c, c
    ld e, l
    ld h, l
    inc b
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld d, h
    ld [hl], c
    xor a
    ld h, [hl]
    pop af
    ld h, [hl]
    and d
    ld h, a
    call nc, Call_007_4067
    ld l, b
    ld b, a
    ld l, d
    sbc l
    ld l, c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    db $dd
    ld l, d
    inc e
    ld l, e
    and e
    ld c, d
    ld c, e
    ld c, e
    di
    ld c, e
    di
    ld c, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld c, h
    ld l, e
    ld c, h
    ld l, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    db $d3
    ld l, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc h
    ld l, h
    ld d, h
    ld [hl], c
    call nc, $fa47
    rst $08
    jp nz, $c2a7

    ld d, h
    ld [hl], c
    ldh a, [$ce]
    and a
    jp nz, Jump_007_5001

    ldh a, [$bf]
    dec a
    ldh [$bf], a
    ldh a, [$cb]
    set 1, a
    ldh [$cb], a
    jp $7154


    ld a, [$c2cf]
    and a
    jp nz, $7154

    ldh a, [$cb]
    bit 2, a
    jp nz, $7154

    ldh a, [$ce]
    and a
    jp nz, Jump_007_5001

    ldh a, [$bf]
    dec a
    ldh [$bf], a
    ldh a, [$cb]
    set 1, a
    ldh [$cb], a
    jp $7154


    ldh a, [$be]
    ld d, a
    and $0f
    swap a
    ld l, a
    ldh a, [$c3]
    and $f0
    swap a
    add l
    ld l, a
    ld h, $7f
    ld b, [hl]
    ldh a, [$c5]
    sub b
    jp c, Jump_007_427c

    ld a, b
    ldh [$c5], a
    ld a, d
    cp $1a
    jr nc, jr_007_6ffb

    bit 0, a
    jr nz, jr_007_6fd6

    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $728f
    add hl, bc
    ld b, [hl]
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr z, jr_007_6fce

    cp b
    jp z, Jump_007_7043

    jp c, Jump_007_7043

jr_007_6fce:
    ld a, c
    sub $03
    ldh [$c0], a
    jp Jump_007_7043


jr_007_6fd6:
    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $718f
    add hl, bc
    ld b, [hl]
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr nz, jr_007_6ff3

    cp b
    jp nc, Jump_007_7043

jr_007_6ff3:
    ld a, c
    add $03
    ldh [$c0], a
    jp Jump_007_7043


jr_007_6ffb:
    bit 0, a
    jr nz, jr_007_7023

    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $728f
    add hl, bc
    ld b, [hl]
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr z, jr_007_701d

    cp b
    jr z, jr_007_7043

    jr c, jr_007_7043

jr_007_701d:
    ld a, c
    dec a
    ldh [$c0], a
    jr jr_007_7043

jr_007_7023:
    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $718f
    add hl, bc
    ld b, [hl]
    ldh a, [$c0]
    ld c, a
    bit 7, a
    jr nz, jr_007_703f

    cp b
    jr nc, jr_007_7043

jr_007_703f:
    ld a, c
    inc a
    ldh [$c0], a

Jump_007_7043:
jr_007_7043:
    ldh a, [$bd]
    sla a
    ld c, a
    ld hl, $7052
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc a
    ld l, [hl]
    inc a
    ld l, [hl]
    ld d, h
    ld [hl], c
    ld b, l
    ld d, d
    ld b, l
    ld d, d
    ld c, $51
    ld c, $51
    ld c, $51
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    dec e
    ld d, h
    adc e
    ld d, h
    and $43
    db $eb
    ld b, e
    inc h
    ld [hl], c
    ld [hl], b
    ld d, l
    sbc b
    ld d, l
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    dec c
    ld d, [hl]
    pop de
    ld d, e
    dec l
    ld b, l
    ld d, h
    ld d, [hl]
    ld a, [hl+]
    ld d, a
    pop de
    ld d, e
    inc [hl]
    ld d, a
    sbc b
    ld e, c
    ld d, l
    ld [hl], c
    ld a, $58
    ld d, h
    ld [hl], c
    ld c, [hl]
    ld b, [hl]
    sbc l
    ld b, [hl]
    ld b, b
    ld e, d
    ccf
    ld e, e
    dec b
    ld e, h
    jp z, $875c

    ld e, l
    or [hl]
    ld e, l
    sub [hl]
    ld e, [hl]
    ld l, e
    ld e, a
    sub c
    ld e, a
    or l
    ld e, a
    call nc, $5447
    ld [hl], c
    ld d, h
    ld [hl], c
    pop de
    ld d, e
    nop
    ld h, c
    db $eb
    ld d, l
    ld sp, $1761
    ld d, [hl]
    ld h, $48
    add b
    ld h, c
    pop de
    ld d, e
    call z, $6b61
    ld e, a
    ld a, l
    ld h, d
    daa
    ld h, h
    jp z, $8c64

    ld h, e
    inc h
    ld c, c
    ld e, c
    ld c, c
    ld e, l
    ld h, l
    inc b
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld d, h
    ld [hl], c
    xor a
    ld h, [hl]
    pop af
    ld h, [hl]
    and d
    ld h, a
    call nc, Call_007_4067
    ld l, b
    ld b, a
    ld l, d
    sbc l
    ld l, c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    db $dd
    ld l, d
    inc e
    ld l, e
    and e
    ld c, d
    ld c, e
    ld c, e
    di
    ld c, e
    di
    ld c, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld c, h
    ld l, e
    ld c, h
    ld l, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    db $d3
    ld l, e
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    inc h
    ld l, h
    ld d, h
    ld [hl], c
    call nc, $f047
    jp z, $20a7

    ld b, $af
    ldh [$c7], a
    jp $7154


    ldh a, [$c0]
    ld b, a
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $714c
    add hl, bc
    ld a, [hl]
    ldh [$c7], a
    jp $7154


    rlca
    add hl, bc
    rlca
    ld [$0907], sp
    rlca
    ld [$f0c9], sp
    jp z, $03fe

    jp z, $57dd

    cp $04
    jp z, $5815

    ldh a, [$c6]
    bit 5, a
    jp nz, Jump_007_5787

    ld a, $0a
    ldh [$c7], a
    jp $7154


    nop
    nop
    nop
    nop
    jr jr_007_718d

    jr jr_007_718f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_007_7180

jr_007_7180:
    ld [$0010], sp
    nop
    jr jr_007_719e

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_718d:
    nop
    nop

jr_007_718f:
    db $10
    db $10
    jr nz, jr_007_719b

    ld b, $14
    ld bc, $1006
    db $10
    db $10
    db $10

jr_007_719b:
    jr @+$0c

    nop

jr_007_719e:
    ld b, $10
    db $10
    db $10
    jr nz, jr_007_71ac

    inc d
    ld bc, $0800
    jr nz, jr_007_71b4

    jr @+$0c

jr_007_71ac:
    jr jr_007_71ae

jr_007_71ae:
    nop
    inc c
    inc c
    jr nz, jr_007_71b9

    inc b

jr_007_71b4:
    inc d
    ld bc, $0c04
    inc c

jr_007_71b9:
    inc c
    inc c
    ld [de], a
    ld [$0400], sp
    inc c
    inc c
    inc c
    jr nz, jr_007_71ca

    inc d
    ld bc, $0600
    jr jr_007_71d2

jr_007_71ca:
    ld [de], a
    ld [$0012], sp
    nop
    ld [$2008], sp

jr_007_71d2:
    inc b
    inc bc
    inc d
    ld bc, $0803
    ld [$0808], sp
    inc c
    dec b
    nop
    inc bc
    ld [$0808], sp
    jr nz, jr_007_71e8

    inc d
    ld bc, $0400

jr_007_71e8:
    db $10
    dec b
    inc c
    dec b
    inc c
    nop
    nop
    inc b
    inc b
    jr nz, jr_007_71f5

    ld [bc], a
    inc d

jr_007_71f5:
    ld bc, $0402
    inc b
    inc b
    inc b
    ld b, $03
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    jr nz, @+$04

    inc d
    ld bc, $0200
    ld [$0603], sp
    inc bc
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    jr nz, @+$03

    ld bc, $0114
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_007_7225

    inc d

jr_007_7225:
    ld bc, $0100
    inc b
    ld bc, $0103
    inc bc
    nop
    nop
    inc d
    inc d
    jr nz, jr_007_723d

    rlca
    inc d
    ld bc, $1407
    inc d
    inc d
    inc d
    add hl, de
    inc c

jr_007_723d:
    nop
    rlca
    inc d
    inc d
    inc d
    jr nz, jr_007_724e

    inc d
    ld bc, $0a00
    jr z, @+$0e

    add hl, de
    inc c
    add hl, de
    nop

jr_007_724e:
    nop
    jr @+$1a

    jr nz, jr_007_725f

    add hl, bc
    inc d
    ld bc, $1809
    jr @+$1a

    jr jr_007_7280

    stop
    add hl, bc

jr_007_725f:
    jr jr_007_7279

    jr @+$22

    inc c
    inc d
    ld bc, $0c00
    jr nc, jr_007_727a

    inc h
    db $10
    inc h
    nop
    nop
    inc c
    inc c
    jr nz, jr_007_727b

    inc b
    inc d
    ld bc, $0c04
    inc c

jr_007_7279:
    inc c

jr_007_727a:
    inc c

jr_007_727b:
    inc d
    ld b, $00
    inc b
    inc c

jr_007_7280:
    inc c
    inc c
    jr nz, jr_007_728c

    inc d
    ld bc, $0800
    inc e
    ld a, [bc]
    inc d
    ld a, [bc]

jr_007_728c:
    inc d
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$20
    ld a, [$ecff]
    ld a, [$f0f0]
    ldh a, [$f0]
    or $e8
    nop
    ld a, [$f0f0]
    ldh a, [$f8]
    ldh [rIE], a
    db $ec
    nop
    ldh [$f8], a
    add sp, -$0a
    add sp, -$0a
    nop
    nop
    db $f4
    db $f4
    ld a, [$fce0]
    rst $38
    db $ec
    db $fc
    db $f4
    db $f4
    db $f4
    db $f4
    ld hl, sp-$12
    nop
    db $fc
    db $f4
    db $f4
    db $f4
    ld_long a, $ffe0
    db $ec
    nop
    add sp, -$06
    xor $f8
    xor $f8
    nop
    nop
    ld hl, sp-$08
    db $fc
    ldh [$fd], a
    rst $38
    db $ec
    db $fd
    ld hl, sp-$08
    ld hl, sp-$08
    ei
    db $f4
    nop
    db $fd
    ld hl, sp-$08
    ld hl, sp-$04
    ldh [rIE], a
    db $ec
    nop
    ldh a, [$fc]
    db $f4
    ei
    db $f4
    ei
    nop
    nop
    db $fc
    db $fc
    cp $e0
    cp $ff
    db $ec
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fd
    ld a, [$fe00]
    db $fc
    db $fc
    db $fc
    cp $e0
    rst $38
    db $ec
    nop
    ld hl, sp-$02
    ld a, [$fafd]
    db $fd
    nop
    nop
    cp $fe
    rst $38
    ldh [rIE], a
    rst $38
    db $ec
    rst $38
    cp $fe
    cp $fe
    rst $38
    db $fd
    nop
    rst $38
    cp $fe
    cp $ff
    ldh [rIE], a
    db $ec
    nop
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    nop
    nop
    db $ec
    db $ec
    or $e0
    ld sp, hl
    rst $38
    db $ec
    ld sp, hl
    db $ec
    db $ec
    db $ec
    db $ec
    db $f4
    rst $20
    nop
    ld sp, hl
    db $ec
    db $ec
    db $ec
    or $e0
    rst $38
    db $ec
    nop
    ret c

    or $e7
    db $f4
    rst $20
    db $f4
    nop
    nop
    add sp, -$18
    db $f4
    ldh [$f7], a
    rst $38
    db $ec
    rst $30
    add sp, -$18
    add sp, -$18
    ldh a, [$dc]
    nop
    rst $30
    add sp, -$18
    add sp, -$0c
    ldh [rIE], a
    db $ec
    nop
    ret nc

    db $f4
    call c, $dcf0
    ldh a, [rP1]
    nop
    db $f4
    db $f4
    ld hl, sp-$20
    db $fc
    rst $38
    db $ec
    db $fc
    db $f4
    db $f4
    db $f4
    db $f4
    ld a, [$00ec]
    db $fc
    db $f4
    db $f4
    db $f4
    ld hl, sp-$20
    rst $38
    db $ec
    nop
    db $e4
    ld hl, sp-$14
    or $ec
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$e0]
    ret nc

    ret nz

    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_007_7fae

    stop
    nop
    db $10
    jr nz, jr_007_7fc4

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [$f0], a
    ldh a, [$f0]
    ldh [$e0], a
    ret nc

    ret nc

    ret nz

    ret nz

    or b
    or b
    and b
    and b
    sub b
    sub b

jr_007_7fae:
    add b
    add b
    add b
    add b
    sub b
    sub b
    and b
    and b
    or b
    or b
    ret nz

    ret nz

    ret nc

    ret nc

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b

jr_007_7fc4:
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    jr nc, jr_007_7ffa

    jr nz, jr_007_7fec

    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    jr nz, jr_007_7ff6

    jr nc, @+$32

    ld b, b
    ld b, b
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7fec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7ff6:
    nop
    nop
    nop
    nop

jr_007_7ffa:
    nop
    nop
    nop
    nop
    nop
    nop

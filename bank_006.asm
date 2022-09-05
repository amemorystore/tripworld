SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    xor b
    ld b, b
    xor c
    ld b, b
    jp hl


    ld b, b
    inc h
    ld b, c
    sbc b
    ld b, c
    jp $e041


    ld b, c
    rrca
    ld b, d
    rrca
    ld b, d
    db $e3
    ld b, h
    or h
    ld b, a
    or h
    ld b, a
    ld l, c
    ld c, d
    sbc c
    ld c, d
    sbc a
    ld c, d
    and l
    ld c, d
    xor e
    ld c, d
    dec b
    ld c, e
    cp l
    ld c, e
    pop bc
    ld c, h
    ld l, d
    ld c, l
    bit 1, l
    ld c, $4e
    ld sp, hl
    ld c, [hl]
    ld e, l
    ld c, a
    add hl, de
    ld d, c
    rra
    ld d, c
    ld l, d
    ld d, c
    ld c, b
    ld d, d
    xor c
    ld d, d
    ld e, [hl]
    ld d, e
    pop de
    ld d, e
    bit 2, h
    ld [hl], b
    ld d, l
    ld b, b
    ld d, [hl]
    sub e
    ld d, [hl]
    ret


    ld d, a
    inc e
    ld e, d
    ld l, c
    ld e, h
    ld l, c
    ld e, h
    jr nc, @+$5f

    db $76
    ld e, l
    ld c, e
    ld e, [hl]
    rst $10
    ld e, [hl]
    ret nz

    ld e, a
    and e
    ld h, c
    ld a, d
    ld h, e
    jr c, jr_006_40c5

    dec bc
    ld h, a
    inc h
    ld h, a
    sbc h
    ld h, a
    ld h, d
    ld l, c
    sub b
    ld l, c
    xor a
    ld l, c
    or $69
    db $76
    ld l, d
    cp a
    ld l, d
    ld e, d
    ld l, e
    ld h, c
    ld l, h
    call nz, $fd6c
    ld l, h
    ld h, b
    ld l, l
    call $2d6d
    ld l, [hl]
    ld b, c
    ld l, [hl]
    ccf
    ld l, a
    ld c, l
    ld [hl], b
    ld h, $71
    sub d
    ld [hl], d
    sbc d
    ld [hl], d
    xor l
    ld [hl], d
    ld e, [hl]
    ld [hl], e
    db $ec
    ld [hl], e
    adc h
    ld [hl], h
    ret z

    ld [hl], h
    ldh a, [$75]
    ld a, [de]
    ld [hl], a
    dec e
    ld [hl], a
    jp hl


    ld [hl], a
    xor $78
    cp d
    ld a, c
    ld a, h
    ld a, d
    ld d, h
    ld a, e
    add a
    ld a, e
    ret


    ldh a, [$cb]
    bit 6, a
    jp z, Jump_006_418c

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_006_418c

    and $f0
    cp $40
    jr c, jr_006_40dc

    cp $60
    jr z, jr_006_40d2

    cp $70

jr_006_40c5:
    jp nz, Jump_006_4178

    ld a, $09
    ld [$c2c6], a
    ld a, $90
    jp Jump_006_4159


jr_006_40d2:
    ld a, $6b
    ld [$c2c6], a
    ld a, $80
    jp Jump_006_4159


jr_006_40dc:
    ld a, $05
    ld [$c2c6], a
    xor a
    ldh [$a5], a
    ld a, $50
    jp Jump_006_4159


    ldh a, [$cb]
    bit 6, a
    jp z, Jump_006_418c

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_006_418c

    and $f0
    cp $40
    jr c, jr_006_411a

    cp $50
    jr z, jr_006_4111

    cp $70
    jp nz, Jump_006_4178

    ld a, $6b
    ld [$c2c6], a
    ld a, $a0
    jr jr_006_4159

jr_006_4111:
    ld a, $6b
    ld [$c2c6], a
    ld a, $80
    jr jr_006_4159

jr_006_411a:
    ld a, $09
    ld [$c2c6], a
    ld a, $60
    jp Jump_006_4159


    ldh a, [$cb]
    bit 6, a
    jr z, jr_006_418c

    ldh a, [$ad]
    and $f0
    cp $30
    jr z, jr_006_418c

    and $f0
    cp $40
    jr c, jr_006_4152

    cp $50
    jr z, jr_006_4149

    cp $60
    jr nz, jr_006_4178

    ld a, $6b
    ld [$c2c6], a
    ld a, $a0
    jr jr_006_4159

jr_006_4149:
    ld a, $09
    ld [$c2c6], a
    ld a, $90
    jr jr_006_4159

jr_006_4152:
    ld a, $09
    ld [$c2c6], a
    ld a, $70

Jump_006_4159:
jr_006_4159:
    ldh [$bb], a
    ld a, $09
    ld [$c2c7], a
    ld a, $30
    ldh [$ad], a
    xor a
    ld [$c480], a
    ld [$c481], a
    ld [$c2c1], a
    ldh [$e2], a
    inc a
    ldh [$b4], a
    ld e, $22
    call $29fb

Jump_006_4178:
jr_006_4178:
    ld a, $08
    ld [$c2c5], a
    ld a, $07
    ld [$c2c4], a
    xor a
    ldh [$bf], a
    ldh a, [$cc]
    set 2, a
    ldh [$cc], a
    ret


Jump_006_418c:
jr_006_418c:
    xor a
    ldh [$c7], a
    ldh a, [$cc]
    set 2, a
    ldh [$cc], a
    jp $2c96


    xor a
    ldh [$c0], a
    ldh a, [$cb]
    bit 6, a
    jp z, $2c96

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, $2c96

    ld e, $27
    call $29fb
    ldh a, [$a0]
    bit 2, a
    jr nz, jr_006_41b9

    inc a
    ldh [$a0], a

jr_006_41b9:
    xor a
    ldh [$bf], a
    ldh a, [$cc]
    set 2, a
    ldh [$cc], a
    ret


    xor a
    ldh [$c0], a
    ldh a, [$cb]
    bit 6, a
    jp z, $2c96

    ld e, $27
    call $29fb
    ld a, $04
    ldh [$a0], a
    xor a
    ldh [$bf], a
    ldh a, [$cc]
    set 2, a
    ldh [$cc], a
    ret


    ldh a, [$cb]
    bit 6, a
    jr z, jr_006_4209

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_006_4209

    ld e, $27
    call $29fb
    ld a, [$c0e1]
    cp $09
    jr z, jr_006_41ff

    inc a
    ld [$c0e1], a

jr_006_41ff:
    xor a
    ldh [$bf], a
    ldh a, [$cc]
    set 2, a
    ldh [$cc], a
    ret


Jump_006_4209:
jr_006_4209:
    xor a
    ldh [$c7], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_421e

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_448d

jr_006_421e:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $422c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc a
    ld b, d
    ld a, h
    ld b, d
    ld [hl], l
    ld b, e
    sub [hl]
    inc l
    bit 0, e
    ei
    ld b, e
    sub [hl]
    inc l
    ld l, l
    ld b, h
    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_4300

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_4260

    jr c, jr_006_425a

jr_006_4254:
    ldh a, [$c6]
    res 5, a
    jr jr_006_426c

jr_006_425a:
    ldh a, [$c6]
    set 5, a
    jr jr_006_426c

jr_006_4260:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_426e

    jr c, jr_006_425a

    jr jr_006_4254

jr_006_426c:
    ldh [$c6], a

jr_006_426e:
    ld bc, $6131
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_4299

    jr c, jr_006_4293

jr_006_428d:
    ldh a, [$c6]
    res 5, a
    jr jr_006_42a5

jr_006_4293:
    ldh a, [$c6]
    set 5, a
    jr jr_006_42a5

jr_006_4299:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_42a7

    jr c, jr_006_4293

    jr jr_006_428d

jr_006_42a5:
    ldh [$c6], a

jr_006_42a7:
    ldh a, [$cc]
    bit 1, a
    jp nz, Jump_006_439a

    ld bc, $3410
    call $2d54
    ld a, c
    and a
    jr z, jr_006_4300

    ld a, b
    and a
    jr z, jr_006_4300

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_006_43a9

    cp $60
    jr nz, jr_006_42e0

    ldh a, [$e2]
    and a
    jp nz, Jump_006_43a9

    ld bc, $1110
    call $2d54
    ld a, c
    and a
    jr z, jr_006_4300

    ld a, b
    and a
    jr z, jr_006_4300

    jp Jump_006_439a


jr_006_42e0:
    ld bc, $2110
    call $2d54
    ld a, c
    and a
    jr z, jr_006_4300

    ld a, b
    and a
    jr z, jr_006_4300

    cp $80
    jp z, Jump_006_439a

    res 7, a
    cp $10
    jp c, Jump_006_439a

    ldh a, [$e2]
    and a
    jp nz, Jump_006_43a9

Jump_006_4300:
jr_006_4300:
    ld bc, $0c00
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_432e

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_435b

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jp nz, Jump_006_43ea

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_4327

    set 5, a
    jr jr_006_4329

jr_006_4327:
    res 5, a

jr_006_4329:
    ldh [$c6], a
    jp $2bc9


jr_006_432e:
    ld a, $80
    call $2d2f
    ld a, b
    and a
    jp z, $2bc9

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_435b

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_4368

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_4354

    set 5, a
    jr jr_006_4356

jr_006_4354:
    res 5, a

jr_006_4356:
    ldh [$c6], a
    jp $2bc9


jr_006_435b:
    ld a, $02
    ldh [$ca], a
    ld a, $e0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_4368:
    ld a, $02
    ldh [$ca], a
    ld a, $d0
    ldh [$c1], a
    ld b, $09
    jp $2ccf


    ldh a, [$c1]
    bit 7, a
    jr nz, jr_006_4389

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c57

    ldh a, [$cc]
    bit 4, a
    jp nz, Jump_006_7c57

jr_006_4389:
    ld bc, $1000
    call $2cdf
    ld a, b
    and a
    jp z, $2c96

    call $2bc9
    jp $2c96


Jump_006_439a:
jr_006_439a:
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $0a
    ldh [$c7], a
    jp $2c96


Jump_006_43a9:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_439a

    ld a, $20
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_439a

    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $0e
    ldh [$c7], a
    jp $2c96


    ldh a, [$c7]
    cp $12
    jr z, jr_006_43d8

    cp $13
    jr z, jr_006_43d8

    jp $2c96


jr_006_43d8:
    ld bc, $3500
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_4451

    ld a, b
    and a
    jp nz, $2c96

    jr jr_006_4451

Jump_006_43ea:
    ld a, $05
    ldh [$ca], a
    ld a, $14
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    jp $2c96


    ld a, [$c2d0]
    cp $30
    jp c, $2c96

    jr z, jr_006_4427

    ldh a, [$c1]
    bit 7, a
    jp nz, $2c96

    ldh a, [$cb]
    bit 7, a
    jr z, jr_006_441a

    ldh a, [$cc]
    and $c0
    jr nz, jr_006_4442

    jr jr_006_4427

jr_006_441a:
    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    xor a
    ld [$c2d0], a
    jr jr_006_4442

jr_006_4427:
    ld a, $31
    ld [$c2d0], a
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_4439

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_4439:
    ld a, $e0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_4442:
    ld a, $06
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $1b
    ldh [$c7], a
    jp $2c96


jr_006_4451:
    ld a, $06
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $1a
    ldh [$c7], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $2c96


    ld a, $07
    ldh [$ca], a
    jp $2c96


    ld bc, $2400
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_7c57

    ldh a, [$cc]
    and $c0
    jp nz, Jump_006_7c57

    ld bc, $0000
    call $2cdf
    ld a, b
    and a
    jp z, Jump_006_7c57

    jp $2bbf


Jump_006_448d:
    ld hl, $c120
    ld a, $05
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl], a
    ld a, l
    add $08
    ld l, a
    ld a, $02
    ld [hl+], a
    ld a, l
    add $04
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    inc l
    inc l
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld a, [$c2d3]
    add $32
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_44f2

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_475e

jr_006_44f2:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $4500
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $10
    ld b, l
    ld l, e
    ld b, l
    ld sp, $9646
    inc l
    sub b
    ld b, [hl]
    ret nz

    ld b, [hl]
    sub [hl]
    inc l
    ld [hl-], a
    ld b, a
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_454f

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_4533

    jr c, jr_006_452d

jr_006_4527:
    ldh a, [$c6]
    res 5, a
    jr jr_006_453f

jr_006_452d:
    ldh a, [$c6]
    set 5, a
    jr jr_006_453f

jr_006_4533:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_4541

    jr c, jr_006_452d

    jr jr_006_4527

jr_006_453f:
    ldh [$c6], a

jr_006_4541:
    ld bc, $6131
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


jr_006_454f:
    ld bc, $0cff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_4564

    set 5, a
    jr jr_006_4566

jr_006_4564:
    res 5, a

jr_006_4566:
    ldh [$c6], a
    jp Jump_006_4617


    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_4588

    jr c, jr_006_4582

jr_006_457c:
    ldh a, [$c6]
    res 5, a
    jr jr_006_4594

jr_006_4582:
    ldh a, [$c6]
    set 5, a
    jr jr_006_4594

jr_006_4588:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_4596

    jr c, jr_006_4582

    jr jr_006_457c

jr_006_4594:
    ldh [$c6], a

jr_006_4596:
    ldh a, [$cc]
    bit 1, a
    jp nz, Jump_006_4663

    ld bc, $3410
    call $2d54
    ld a, c
    and a
    jr z, jr_006_45d4

    ld a, b
    and a
    jr z, jr_006_45d4

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_006_472b

    ld bc, $2110
    call $2d54
    ld a, c
    and a
    jr z, jr_006_45d4

    ld a, b
    and a
    jr z, jr_006_45d4

    cp $80
    jp z, Jump_006_4663

    res 7, a
    cp $10
    jp c, Jump_006_4663

    ldh a, [$e2]
    and a
    jp nz, Jump_006_4677

jr_006_45d4:
    ld bc, $0c00
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_45ea

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_4617

    jp Jump_006_46af


jr_006_45ea:
    ld a, $80
    call $2d2f
    ld a, b
    and a
    jp z, $2bc9

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_4617

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_4624

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_4610

    set 5, a
    jr jr_006_4612

jr_006_4610:
    res 5, a

jr_006_4612:
    ldh [$c6], a
    jp $2bc9


Jump_006_4617:
jr_006_4617:
    ld a, $02
    ldh [$ca], a
    ld a, $e0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_4624:
    ld a, $02
    ldh [$ca], a
    ld a, $d0
    ldh [$c1], a
    ld b, $09
    jp $2ccf


    ldh a, [$c1]
    bit 7, a
    jr nz, jr_006_4652

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c57

    ldh a, [$cc]
    bit 4, a
    jp nz, Jump_006_7c57

    ld bc, $2111
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_4663

    jp $2c96


jr_006_4652:
    ld bc, $1000
    call $2cdf
    ld a, b
    and a
    jp z, $2c96

    call $2bc9
    jp $2c96


Jump_006_4663:
jr_006_4663:
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $0a
    ldh [$c7], a
    ld e, $29
    call $29fb
    jp $2c96


Jump_006_4677:
    ld bc, $20ff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_4663

    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $0e
    ldh [$c7], a
    jp $2c96


    ldh a, [$c7]
    cp $12
    jr z, jr_006_469d

    cp $13
    jr z, jr_006_469d

    jp $2c96


jr_006_469d:
    ld bc, $3500
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_4716

    ld a, b
    and a
    jp nz, $2c96

    jr jr_006_4716

Jump_006_46af:
    ld a, $05
    ldh [$ca], a
    ld a, $14
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    jp $2c96


    ld a, [$c2d0]
    cp $30
    jp c, $2c96

    jr z, jr_006_46ec

    ldh a, [$c1]
    bit 7, a
    jp nz, $2c96

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_46ec

    ldh a, [$cc]
    bit 4, a
    jr nz, jr_006_46e6

    ldh a, [$cc]
    and $c0
    jr nz, jr_006_4707

    jp $2c96


jr_006_46e6:
    xor a
    ld [$c2d0], a
    jr jr_006_4707

jr_006_46ec:
    ld a, $31
    ld [$c2d0], a
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_46fe

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_46fe:
    ld a, $e8
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_4707:
    ld a, $06
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $1b
    ldh [$c7], a
    jp $2c96


jr_006_4716:
    ld a, $06
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $1a
    ldh [$c7], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $2c96


Jump_006_472b:
    ld a, $07
    ldh [$ca], a
    jp $2c96


    ld bc, $2400
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_7c57

    ldh a, [$cc]
    and $c0
    jr nz, jr_006_4751

    ld bc, $0000
    call $2cdf
    ld a, b
    and a
    jp z, Jump_006_7c57

    jp $2bbf


jr_006_4751:
    ld a, $02
    ldh [$ca], a
    ld a, $d0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


Jump_006_475e:
    ld hl, $c120
    ld a, $06
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl], a
    ld a, l
    add $08
    ld l, a
    ld a, $02
    ld [hl+], a
    ld a, l
    add $04
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    inc l
    inc l
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld a, [$c2d3]
    add $64
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_47c3

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_4a13

jr_006_47c3:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $47d1
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    pop hl
    ld b, a
    ld hl, $f148
    ld c, b
    sub [hl]
    inc l
    sub b
    ld b, [hl]
    ld h, a
    ld c, c
    sub [hl]
    inc l
    rst $20
    ld c, c
    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c60

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_4805

    jr c, jr_006_47ff

jr_006_47f9:
    ldh a, [$c6]
    res 5, a
    jr jr_006_4811

jr_006_47ff:
    ldh a, [$c6]
    set 5, a
    jr jr_006_4811

jr_006_4805:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_4813

    jr c, jr_006_47ff

    jr jr_006_47f9

jr_006_4811:
    ldh [$c6], a

jr_006_4813:
    ld bc, $6131
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_4894

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$cc]
    bit 1, a
    jp nz, Jump_006_4923

    ld bc, $3410
    call $2d54
    ld a, c
    and a
    jr z, jr_006_4894

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_4855

    jr c, jr_006_484f

jr_006_4849:
    ldh a, [$c6]
    res 5, a
    jr jr_006_4861

jr_006_484f:
    ldh a, [$c6]
    set 5, a
    jr jr_006_4861

jr_006_4855:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_4863

    jr c, jr_006_484f

    jr jr_006_4849

jr_006_4861:
    ldh [$c6], a

jr_006_4863:
    ld a, b
    and a
    jr z, jr_006_4894

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_006_49e0

    ld bc, $2118
    call $2d54
    ld a, c
    and a
    jr z, jr_006_4894

    ld a, b
    and a
    jr z, jr_006_4894

    cp $80
    jp z, Jump_006_4923

    res 7, a
    cp $14
    jp c, Jump_006_4923

    cp $1c
    jr nc, jr_006_4894

    ldh a, [$e2]
    and a
    jp nz, Jump_006_4923

jr_006_4894:
    ld bc, $0c00
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_48aa

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_48d7

    jp Jump_006_4956


jr_006_48aa:
    ld a, $80
    call $2d2f
    ld a, b
    and a
    jp z, $2bc9

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_48d7

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_48e4

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_48d0

    set 5, a
    jr jr_006_48d2

jr_006_48d0:
    res 5, a

jr_006_48d2:
    ldh [$c6], a
    jp $2bc9


jr_006_48d7:
    ld a, $02
    ldh [$ca], a
    ld a, $e0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_48e4:
    ld a, $02
    ldh [$ca], a
    ld a, $d0
    ldh [$c1], a
    ld b, $09
    jp $2ccf


    ldh a, [$c1]
    bit 7, a
    jr nz, jr_006_4912

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c57

    ldh a, [$cc]
    bit 4, a
    jp nz, Jump_006_7c57

    ld bc, $2111
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_4923

    jp $2c96


jr_006_4912:
    ld bc, $1000
    call $2cdf
    ld a, b
    and a
    jp z, $2c96

    call $2bc9
    jp $2c96


Jump_006_4923:
jr_006_4923:
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $0a
    ldh [$c7], a
    ld e, $29
    call $29fb
    jp $2c96


    ldh a, [$c7]
    cp $12
    jr z, jr_006_4944

    cp $13
    jr z, jr_006_4944

    jp $2c96


jr_006_4944:
    ld bc, $3500
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_49cb

    ld a, b
    and a
    jp nz, $2c96

    jr jr_006_49cb

Jump_006_4956:
    ld a, $05
    ldh [$ca], a
    ld a, $14
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    jp $2c96


    ld bc, $1810
    call $2d54
    ld a, c
    and a
    jr z, jr_006_4975

    ld a, b
    and a
    jr nz, jr_006_4923

jr_006_4975:
    ld a, [$c2d0]
    cp $30
    jp c, $2c96

    jr z, jr_006_49a1

    ldh a, [$c1]
    bit 7, a
    jp nz, $2c96

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_49a1

    ldh a, [$cc]
    bit 4, a
    jr nz, jr_006_499b

    ldh a, [$cc]
    and $c0
    jr nz, jr_006_49bc

    jp $2c96


jr_006_499b:
    xor a
    ld [$c2d0], a
    jr jr_006_49bc

jr_006_49a1:
    ld a, $31
    ld [$c2d0], a
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_49b3

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_49b3:
    ld a, $e8
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_49bc:
    ld a, $06
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $1b
    ldh [$c7], a
    jp $2c96


jr_006_49cb:
    ld a, $06
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $1a
    ldh [$c7], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $2c96


Jump_006_49e0:
    ld a, $07
    ldh [$ca], a
    jp $2c96


    ld bc, $2400
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_7c57

    ldh a, [$cc]
    and $c0
    jr nz, jr_006_4a06

    ld bc, $0000
    call $2cdf
    ld a, b
    and a
    jp z, Jump_006_7c57

    jp $2bbf


jr_006_4a06:
    ld a, $02
    ldh [$ca], a
    ld a, $d0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


Jump_006_4a13:
    ld hl, $c120
    ld a, $06
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl], a
    ld a, l
    add $08
    ld l, a
    ld a, $02
    ld [hl+], a
    ld a, l
    add $04
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    inc l
    inc l
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld a, [$c2d3]
    add $64
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    jp $2c96


    ld a, $e4
    ldh [$c0], a

jr_006_4a6d:
    xor a
    ldh [$c7], a
    ld a, $10
    ldh [$cb], a
    ldh a, [$c2]
    and a
    jr nz, jr_006_4a80

    ldh a, [$9d]
    add $0e
    ldh [$c2], a
    ret


jr_006_4a80:
    ld b, a
    ldh a, [$9d]
    sub b
    jr c, jr_006_4a90

    cp $04
    ret c

    ldh a, [$9d]
    add $0e
    ldh [$c2], a
    ret


jr_006_4a90:
    cp $f2
    ret nc

    ldh a, [$9d]
    dec a
    ldh [$c2], a
    ret


    ld a, $e8
    ldh [$c0], a
    jr jr_006_4a6d

    ld a, $ec
    ldh [$c0], a
    jr jr_006_4a6d

    ld a, $f0
    ldh [$c0], a
    jr jr_006_4a6d

    ldh a, [$cc]
    set 3, a
    set 2, a
    ldh [$cc], a
    ldh a, [$ca]
    and a
    jr nz, jr_006_4ace

    ldh a, [$cb]
    bit 6, a
    jr z, jr_006_4b01

    ld a, [$c2d3]
    add $0a
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a

jr_006_4ace:
    ld b, $00
    ldh a, [$ca]
    inc a
    ldh [$ca], a
    cp $08
    jr c, jr_006_4b01

    cp $0e
    jr c, jr_006_4afb

    inc b
    cp $14
    jr c, jr_006_4afb

    inc b
    cp $1a
    jr c, jr_006_4af0

    inc b
    cp $20
    jr c, jr_006_4af5

    xor a
    ldh [$bf], a
    ret


Jump_006_4af0:
jr_006_4af0:
    ld e, $11
    call $29fb

Jump_006_4af5:
jr_006_4af5:
    ldh a, [$cb]
    set 4, a
    ldh [$cb], a

Jump_006_4afb:
jr_006_4afb:
    ld a, b
    ldh [$c7], a
    jp $2c96


Jump_006_4b01:
jr_006_4b01:
    xor a
    ldh [$c7], a
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_4b25

    ld a, [$c2cf]
    and a
    jr z, jr_006_4b15

    inc a
    ld [$c2cf], a

jr_006_4b15:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_4b25:
    ldh a, [$ca]
    and a
    jr nz, jr_006_4b46

    ldh a, [$cb]
    bit 7, a
    jp nz, $2c96

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3121
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


jr_006_4b46:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_4b8d

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [rDIV]
    and $d7
    jp z, $2c6b

    ld bc, $2121
    call $2d54
    ld a, b
    cp $80
    jp z, Jump_006_7c57

    and a
    jr nz, jr_006_4b8d

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_4b7f

    jr c, jr_006_4b79

jr_006_4b73:
    ldh a, [$c6]
    res 5, a
    jr jr_006_4b8b

jr_006_4b79:
    ldh a, [$c6]
    set 5, a
    jr jr_006_4b8b

jr_006_4b7f:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_4b8d

    jr c, jr_006_4b79

    jr jr_006_4b73

jr_006_4b8b:
    ldh [$c6], a

jr_006_4b8d:
    ld bc, $0000
    call $2cdf
    ld a, c
    cp $08
    jr nz, jr_006_4ba0

    ld b, $10
    call $2ccf
    jp $2c6b


jr_006_4ba0:
    ld a, $20
    call $2d2f
    ld a, c
    cp $08
    jp z, Jump_006_7c57

    ld a, b
    and a
    jp z, Jump_006_7c57

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jp z, $2bc9

    jp Jump_006_7c57


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_4bdd

    ld a, [$c2cf]
    and a
    jr z, jr_006_4bcd

    inc a
    ld [$c2cf], a

jr_006_4bcd:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_4bdd:
    ldh a, [$cc]
    bit 4, a
    jp nz, Jump_006_4bf5

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_4c41

    bit 1, a
    jp nz, $2c96

    call $2bc9
    jp $2c96


Jump_006_4bf5:
    ldh a, [$ca]
    cp $02
    jp z, Jump_006_4cb3

    cp $01
    jr z, jr_006_4c1c

    jr jr_006_4c02

jr_006_4c02:
    ld bc, $6100
    call $2d54
    ld a, b
    and a
    jp nz, Jump_006_7c60

    ld bc, $0000
    call $2cdf
    ld a, c
    cp $08
    jp z, Jump_006_4ca5

    jp $2c96


jr_006_4c1c:
    ldh a, [$cc]
    bit 1, a
    jp nz, Jump_006_4ca5

    ld bc, $6100
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_7c57

    ld bc, $1110
    call $2d54
    ld a, b
    and a
    jr z, jr_006_4c41

    ld a, c
    cp $80
    jr z, jr_006_4c41

    bit 7, c
    jr nz, jr_006_4ca5

jr_006_4c41:
    ldh a, [rDIV]
    and $3f
    jr z, jr_006_4ca5

    ld bc, $0000
    call $2cdf
    ld a, c
    cp $08
    jr z, jr_006_4ca5

    ld a, $a0
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_4c69

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_4c94

    ld a, $dc
    ldh [$c1], a
    ret


jr_006_4c69:
    ld a, $40
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_4c89

    ld a, c
    cp $08
    jp nz, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_4c82

    set 5, a
    jr jr_006_4c84

jr_006_4c82:
    res 5, a

jr_006_4c84:
    ldh [$c6], a
    jp $2bc9


jr_006_4c89:
    ld a, $40
    call $2d2f
    ld a, c
    cp $08
    jp nz, $2bc9

jr_006_4c94:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_4c9e

    set 5, a
    jr jr_006_4ca0

jr_006_4c9e:
    res 5, a

jr_006_4ca0:
    ldh [$c6], a
    jp $2bc9


Jump_006_4ca5:
jr_006_4ca5:
    ld a, $02
    ldh [$ca], a
    ld a, $08
    ldh [$c7], a
    xor a
    ldh [$c0], a
    ld [$c2d0], a

Jump_006_4cb3:
    ldh a, [$cc]
    bit 1, a
    jp z, $2c96

    ld a, $e0
    ldh [$aa], a
    jp $2c96


    ld a, [$c2cf]
    and a
    jr z, jr_006_4ccb

    inc a
    ld [$c2cf], a

jr_006_4ccb:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

    ldh a, [$ca]
    and a
    jr z, jr_006_4d12

    cp $02
    jp nz, $2c96

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp nz, $2c96

    ld bc, $311c
    call $2d54
    ld a, c
    and a
    jr z, jr_006_4cff

    ld a, b
    and a
    jp nz, $2c96

jr_006_4cff:
    ld a, $03
    ldh [$ca], a
    ld a, $0f
    ldh [$c7], a
    ldh a, [$cb]
    res 0, a
    res 2, a
    ldh [$cb], a
    jp $2c96


jr_006_4d12:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_4d5f

    bit 6, a
    jr nz, jr_006_4d5f

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3121
    call $2d54
    ld a, c
    cp $80
    jr z, jr_006_4d35

    bit 7, a
    jr nz, jr_006_4d3a

    and a
    jr z, jr_006_4d3a

jr_006_4d35:
    ld a, b
    and a
    jp nz, Jump_006_4d5f

jr_006_4d3a:
    ld bc, $0cff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_4d5f

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jp nz, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_4d58

    set 5, a
    jr jr_006_4d5a

jr_006_4d58:
    res 5, a

jr_006_4d5a:
    ldh [$c6], a
    jp $2bc9


Jump_006_4d5f:
jr_006_4d5f:
    ld a, $01
    ldh [$ca], a
    ld a, $0c
    ldh [$c7], a
    jp Jump_006_7c6b


    ld a, [$c2cf]
    and a
    jr z, jr_006_4d74

    inc a
    ld [$c2cf], a

jr_006_4d74:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

    ldh a, [$a1]
    ld d, a
    ldh a, [$c2]
    sub d
    jr z, jr_006_4dac

    jr nc, jr_006_4d97

    ld a, $01
    ldh [$ca], a
    call $2c1e
    jr jr_006_4d9e

jr_006_4d97:
    ld a, $02
    ldh [$ca], a
    call $2bcf

jr_006_4d9e:
    ldh a, [$a3]
    ld b, a
    ldh a, [$c4]
    sub b
    jr z, jr_006_4dbc

    jp c, $2c96

    jp $2c6b


jr_006_4dac:
    ldh a, [$ca]
    cp $01
    jr z, jr_006_4db7

    call $2bcf
    jr jr_006_4d9e

jr_006_4db7:
    call $2c1e
    jr jr_006_4d9e

jr_006_4dbc:
    ldh a, [$a4]
    ld b, a
    ldh a, [$c5]
    sub b
    jp z, $2c96

    jp c, $2c96

    jp $2c6b


    ld a, [$c2cf]
    and a
    jr z, jr_006_4dd5

    inc a
    ld [$c2cf], a

jr_006_4dd5:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ldh a, [$cb]
    bit 1, a
    jp nz, $2c96

    ldh a, [$be]
    and a
    jp z, $2c96

    cp $07
    jr z, jr_006_4e00

    cp $04
    jr z, jr_006_4dfa

    cp $0f
    jr z, jr_006_4dfa

    jp $2c96


jr_006_4dfa:
    call $2c6b
    jp $2c96


jr_006_4e00:
    ldh a, [$c1]
    bit 7, a
    jp z, $2c96

    ld a, $e0
    ldh [$c1], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_4e1d

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_4e1d:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $4e2b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc sp
    ld c, [hl]
    ld d, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sbc a
    ld c, [hl]
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_4e40

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_4e40:
    ldh a, [$cc]
    and $c0
    jp nz, $2c96

    ld bc, $3131
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_4e61

    ldh a, [$cc]
    bit 4, a
    jr z, jr_006_4e78

jr_006_4e61:
    ldh a, [$cc]
    and $c0
    jp nz, Jump_006_7c57

    call $2bc9
    ldh a, [$c0]
    bit 7, a
    jr z, jr_006_4e73

    cpl
    inc a

jr_006_4e73:
    cp $24
    jp c, $2c96

jr_006_4e78:
    ld a, $02
    ldh [$ca], a
    ret


    ldh a, [$cc]
    bit 5, a
    jr nz, jr_006_4e9a

    ld bc, $0038
    call $2d54
    ld a, c
    and a
    jp nz, $2c6b

    ldh a, [$c1]
    bit 7, a
    jp z, $2c6b

    cp $ee
    jp nc, $2c6b

jr_006_4e9a:
    ld a, $03
    ldh [$ca], a
    ret


    ld bc, $2831
    call $2d54
    ld a, b
    and a
    jr z, jr_006_4ec5

    ld a, c
    and a
    jr z, jr_006_4ec5

    res 7, a
    cp $1c
    jr c, jr_006_4e78

    call $2bc9
    ldh a, [$c1]
    bit 7, a
    jp nz, $2c96

    cp $12
    jp nc, $2c6b

    jp $2c96


jr_006_4ec5:
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_4edb

    jr c, jr_006_4ed5

jr_006_4ecf:
    ldh a, [$c6]
    res 5, a
    jr jr_006_4ee7

jr_006_4ed5:
    ldh a, [$c6]
    set 5, a
    jr jr_006_4ee7

jr_006_4edb:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_4ee9

    jr c, jr_006_4ed5

    jr jr_006_4ecf

jr_006_4ee7:
    ldh [$c6], a

jr_006_4ee9:
    call $2bc9
    ldh a, [$a3]
    ld b, a
    ldh a, [$c4]
    cp b
    ret z

    jp nc, $2c6b

    jp $2c96


    ldh a, [$ca]
    and a
    jr nz, jr_006_4f22

    ld bc, $1400
    call $2d54
    ld a, c
    and a
    jr z, jr_006_4f3f

    ld a, b
    and a
    jr z, jr_006_4f3f

    bit 7, a
    jr z, jr_006_4f1a

    ld a, $0a
    ldh [$c7], a
    ld a, $01
    ldh [$ca], a
    jr jr_006_4f22

jr_006_4f1a:
    ld a, $04
    ldh [$c7], a
    ld a, $01
    ldh [$ca], a

jr_006_4f22:
    ld a, [$c2d0]
    cp $18
    jr c, jr_006_4f3f

    cp $20
    jr nc, jr_006_4f3f

    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $0f
    ld [hl], a
    jr jr_006_4f4f

jr_006_4f3f:
    ldh a, [$cf]
    add $16
    ld l, a
    ld h, $c1
    ld a, $05
    ld [hl], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a

jr_006_4f4f:
    xor a
    ldh [$c0], a
    ldh [$c1], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jp $2c96


    ld a, [$c2f0]
    and a
    jr nz, jr_006_4f90

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    sub b
    cp $05
    jp nc, $2c96

    ld hl, $d9c8
    ld a, $08
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$c2f0], a
    ld a, $0c
    ld [$c0f5], a
    ld e, $04
    call $2a30
    xor a
    ldh [$ca], a
    jp $2c96


jr_006_4f90:
    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_4f9f

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_50fc

jr_006_4f9f:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $4fad
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or a
    ld c, a
    db $ec
    ld c, a
    jp nz, $8150

    ld d, b
    call z, $f050
    rst $00
    and a
    jp nz, $2c96

    ld a, $d0
    ldh [$c1], a
    ld hl, $c120
    ld a, $19
    ld [hl+], a
    inc l
    inc l
    ld a, $f0
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $33
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $3c
    ld [hl+], a
    inc l
    xor a
    ld [hl+], a
    inc l
    ld a, $10
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_502c

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    bit 1, a
    jr nz, jr_006_502c

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5013

    jr c, jr_006_500d

jr_006_5007:
    ldh a, [$c6]
    res 5, a
    jr jr_006_501f

jr_006_500d:
    ldh a, [$c6]
    set 5, a
    jr jr_006_501f

jr_006_5013:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5021

    jr c, jr_006_500d

    jr jr_006_5007

jr_006_501f:
    ldh [$c6], a

jr_006_5021:
    ld bc, $4000
    call $2d54
    ld a, b
    and a
    jp nz, Jump_006_5048

jr_006_502c:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5041

    set 5, a
    jr jr_006_5043

jr_006_5041:
    res 5, a

jr_006_5043:
    ldh [$c6], a
    jp $2bc9


Jump_006_5048:
    ldh a, [$ad]
    and $f0
    swap a
    rlca
    ld c, a
    ld b, $00
    ld hl, $505a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub e
    ld d, b
    ld h, d
    ld d, b
    ld h, d
    ld d, b
    ret z

    ld d, b
    ld bc, $2600
    call $2d54
    ld a, b
    and a
    jp nz, Jump_006_50c8

    ldh a, [$99]
    cp $10
    jr z, jr_006_5093

    jp $2c96


jr_006_5076:
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    call $2c6b

Jump_006_5081:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_508d

    call $2bcf
    jp $2c96


jr_006_508d:
    call $2c1e
    jp $2c96


jr_006_5093:
    ld a, $02
    ldh [$ca], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_50ad

    jr c, jr_006_50a7

jr_006_50a1:
    ldh a, [$c6]
    res 5, a
    jr jr_006_50b9

jr_006_50a7:
    ldh a, [$c6]
    set 5, a
    jr jr_006_50b9

jr_006_50ad:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_50bb

    jr c, jr_006_50a7

    jr jr_006_50a1

jr_006_50b9:
    ldh [$c6], a

jr_006_50bb:
    xor a
    ld [$c2d0], a
    call $2c6b
    call $2bc9
    jp $2c96


Jump_006_50c8:
    ld a, $04
    ldh [$ca], a
    ldh a, [$cc]
    and $c0
    jr z, jr_006_50de

    ld a, $01
    ldh [$ca], a
    ld b, $20
    call $2ccf
    jp $2c6b


jr_006_50de:
    ldh a, [$ad]
    bit 0, a
    jr nz, jr_006_5076

    ld bc, $2800
    call $2d54
    ld a, b
    and a
    jp nz, Jump_006_5081

    ldh a, [$a5]
    ld b, a
    ldh a, [$c6]
    xor b
    bit 5, a
    jp z, $2c96

    jr jr_006_5093

Jump_006_50fc:
    ld a, [$c2d3]
    add $64
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    ld e, $28
    call $29fb
    ld a, $02
    ld [$c2f0], a
    jp $2c96


    xor a
    ldh [$c7], a
    jp $2c96


    ldh a, [$cc]
    set 3, a
    set 2, a
    ldh [$cc], a
    ldh a, [$ca]
    and a
    jr nz, jr_006_5143

    ldh a, [$cb]
    bit 6, a
    jp z, Jump_006_4b01

    ld a, [$c2d3]
    add $0a
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a

jr_006_5143:
    ld b, $00
    ldh a, [$ca]
    inc a
    ldh [$ca], a
    cp $14
    jp c, Jump_006_4b01

    cp $1e
    jp c, Jump_006_4afb

    inc b
    cp $25
    jp c, Jump_006_4afb

    inc b
    cp $2b
    jp c, Jump_006_4af0

    inc b
    cp $30
    jp c, Jump_006_4af5

    xor a
    ldh [$bf], a
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5180

    call $2dc0
    ldh a, [$cb]
    bit 1, a
    jp nz, $2c96

    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_5180:
    ld a, $01
    ldh [$ca], a
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_51d0

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$bf]
    cp $02
    jr z, jr_006_51ec

    cp $01
    jr z, jr_006_521a

    ldh a, [rDIV]
    and $07
    jp z, $2c6b

    ld bc, $4100
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_51d0

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_51c2

    jr c, jr_006_51bc

jr_006_51b6:
    ldh a, [$c6]
    res 5, a
    jr jr_006_51ce

jr_006_51bc:
    ldh a, [$c6]
    set 5, a
    jr jr_006_51ce

jr_006_51c2:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_51d0

    jr c, jr_006_51bc

    jr jr_006_51b6

jr_006_51ce:
    ldh [$c6], a

jr_006_51d0:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_51e5

    set 5, a
    jr jr_006_51e7

jr_006_51e5:
    res 5, a

jr_006_51e7:
    ldh [$c6], a
    jp $2bc9


jr_006_51ec:
    ldh a, [rDIV]
    and $07
    jp z, $2c6b

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5209

    jr c, jr_006_5203

jr_006_51fd:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5215

jr_006_5203:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5215

jr_006_5209:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5217

    jr c, jr_006_5203

    jr jr_006_51fd

jr_006_5215:
    ldh [$c6], a

jr_006_5217:
    jp $2bc9


jr_006_521a:
    ldh a, [rDIV]
    and $07
    jp z, $2c6b

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5237

    jr c, jr_006_5231

jr_006_522b:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5243

jr_006_5231:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5243

jr_006_5237:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5245

    jr c, jr_006_5231

    jr jr_006_522b

jr_006_5243:
    ldh [$c6], a

jr_006_5245:
    jp $2bbf


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5257

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_5257:
    ldh a, [$ca]
    cp $01
    jr z, jr_006_5277

    cp $02
    jr z, jr_006_5280

    ld bc, $4000
    call $2d54
    ld a, b
    and a
    jr z, jr_006_5277

    ld a, $01
    ldh [$ca], a
    ld a, $07
    ldh [$c7], a
    xor a
    ld [$c2d0], a

jr_006_5277:
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jp $2c96


jr_006_5280:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_528d

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_528d:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_52a2

    set 5, a
    jr jr_006_52a4

jr_006_52a2:
    res 5, a

jr_006_52a4:
    ldh [$c6], a
    jp $2bc9


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_52b8

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_52b8:
    ldh a, [$ca]
    cp $01
    jr z, jr_006_52df

    ldh a, [$cb]
    bit 7, a
    jp nz, $2c96

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3111
    call $2d54
    ld a, c
    and a
    jp z, $2c96

    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


jr_006_52df:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_5320

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3111
    call $2d54
    ld a, c
    and a
    jp z, Jump_006_7c57

    ld a, b
    and a
    jp nz, Jump_006_5320

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5312

    jr c, jr_006_530c

jr_006_5306:
    ldh a, [$c6]
    res 5, a
    jr jr_006_531e

jr_006_530c:
    ldh a, [$c6]
    set 5, a
    jr jr_006_531e

jr_006_5312:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5320

    jr c, jr_006_530c

    jr jr_006_5306

jr_006_531e:
    ldh [$c6], a

Jump_006_5320:
jr_006_5320:
    ldh a, [rDIV]
    and $07
    jr z, jr_006_5355

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, Jump_006_534b

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_5355

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5344

    set 5, a
    jr jr_006_5346

jr_006_5344:
    res 5, a

jr_006_5346:
    ldh [$c6], a
    jp $2bc9


Jump_006_534b:
    ld a, $40
    call $2d2f
    ld a, b
    and a
    jp nz, $2bc9

jr_006_5355:
    ld a, $dc
    ldh [$c1], a
    ld b, $10
    jp $2ccf


    ldh a, [$ca]
    and a
    jr nz, jr_006_5385

    ld a, [$c2cf]
    and a
    jr z, jr_006_536d

    inc a
    ld [$c2cf], a

jr_006_536d:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    cp $01
    jr z, jr_006_53a6

    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5396

    ld a, [$c2cf]
    and a
    ret nz

jr_006_5385:
    ldh a, [$ca]
    cp $02
    jr z, jr_006_53ba

    cp $01
    jr z, jr_006_5396

    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ret


jr_006_5396:
    ldh a, [$cb]
    res 1, a
    ldh [$cb], a
    ld a, $01
    ldh [$ca], a

jr_006_53a0:
    xor a
    ldh [$c0], a
    ldh [$c1], a
    ret


jr_006_53a6:
    ld a, $02
    ldh [$ca], a
    ld a, $04
    ldh [$c7], a
    ldh a, [$cb]
    res 1, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a

jr_006_53ba:
    ldh a, [$c7]
    cp $08
    jr nz, jr_006_53a0

    ldh a, [$cb]
    set 4, a
    ldh [$cb], a
    xor a
    ldh [$bf], a
    ld e, $18
    call $29fb
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_53f1

    ld a, [$c2cf]
    and a
    jr z, jr_006_53e1

    inc a
    ld [$c2cf], a

jr_006_53e1:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_53f1:
    ldh a, [$c7]
    cp $0b
    jr c, jr_006_53fc

    cp $13
    jp c, $2c96

jr_006_53fc:
    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$ca]
    cp $01
    jr z, jr_006_5445

    cp $02
    ret z

    cp $03
    jp z, Jump_006_54b5

    cp $04
    ret z

    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp nz, Jump_006_5441

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5434

    set 5, a
    jr jr_006_5436

jr_006_5434:
    res 5, a

jr_006_5436:
    ldh [$c6], a

jr_006_5438:
    xor a
    ld [$c2d0], a
    ld a, $0f
    ldh [$c7], a
    ret


Jump_006_5441:
    ld a, $01
    ldh [$ca], a

jr_006_5445:
    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_545e

    jr c, jr_006_5458

jr_006_5452:
    ldh a, [$c6]
    res 5, a
    jr jr_006_546a

jr_006_5458:
    ldh a, [$c6]
    set 5, a
    jr jr_006_546a

jr_006_545e:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_546c

    jr c, jr_006_5458

    jr jr_006_5452

jr_006_546a:
    ldh [$c6], a

jr_006_546c:
    ldh a, [$c6]
    xor e
    jr z, jr_006_5473

    jr jr_006_5438

jr_006_5473:
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_5481

    xor a
    ldh [$ca], a
    ret


jr_006_5481:
    and $7f
    cp $18
    jr c, jr_006_54aa

    cp $28
    jr c, jr_006_5495

    jp nz, $2bc9

    xor a
    ldh [$c0], a
    ld [$c2d0], a
    ret


jr_006_5495:
    ldh a, [$cc]
    ld b, a
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_54a4

    bit 7, b
    ret nz

    jp $2bbf


jr_006_54a4:
    bit 6, b
    ret nz

    jp $2bbf


jr_006_54aa:
    ld a, $13
    ldh [$c7], a
    ld a, $02
    ldh [$ca], a
    jp Jump_006_7c6b


Jump_006_54b5:
    ld bc, $4100
    call $2d54
    ld a, b
    and a
    ret nz

    ld a, $1b
    ldh [$c7], a
    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_54e4

    ld a, [$c2cf]
    and a
    jr z, jr_006_54db

    inc a
    ld [$c2cf], a

jr_006_54db:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_54e4:
    ldh a, [$ca]
    cp $01
    jr z, jr_006_5536

    ld hl, $c100
    ld a, [hl+]
    and a
    jr z, jr_006_5529

    inc l
    inc l
    ld a, [hl+]
    ldh [$c0], a
    ld a, [hl+]
    ldh [$c1], a
    ld a, [hl+]
    ldh [$c3], a
    ld a, [hl+]
    ldh [$c2], a
    ld a, [hl+]
    sub $f0
    ldh [$c5], a
    ld a, [hl]
    sbc $00
    ldh [$c4], a
    ldh a, [$cb]
    set 7, a
    ldh [$cb], a
    ld a, [$c2cf]
    and a
    ret nz

    ld hl, $c102
    ld a, [hl]
    cp $01
    jr z, jr_006_5529

    ld a, l
    add $07
    ld l, a
    ld a, [hl]
    and $20
    ldh [$c6], a
    xor a
    ldh [$c7], a
    ret


jr_006_5529:
    ld a, $01
    ldh [$ca], a
    ld a, $d8
    ldh [$c1], a
    ld b, $18
    jp $2ccf


jr_006_5536:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_5567

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5559

    jr c, jr_006_5553

jr_006_554d:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5565

jr_006_5553:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5565

jr_006_5559:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5567

    jr c, jr_006_5553

    jr jr_006_554d

jr_006_5565:
    ldh [$c6], a

jr_006_5567:
    ld a, $d8
    ldh [$c1], a
    ld b, $08
    jp $2ccf


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5589

    ld a, [$c2cf]
    and a
    jr z, jr_006_5580

    inc a
    ld [$c2cf], a

jr_006_5580:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_5589:
    ldh a, [$ca]
    cp $01
    jr z, jr_006_5605

    ld a, [$c2cf]
    and a
    jp nz, $2c96

    ldh a, [$bf]
    cp $01
    jr z, jr_006_55fb

    ld hl, $c122
    ld a, [hl]
    and a
    jr z, jr_006_55fb

    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3811
    call $2d54
    ld a, c
    and a
    ret z

    ld a, b
    and a
    ret z

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_55d3

    jr c, jr_006_55cd

jr_006_55c7:
    ldh a, [$c6]
    res 5, a
    jr jr_006_55df

jr_006_55cd:
    ldh a, [$c6]
    set 5, a
    jr jr_006_55df

jr_006_55d3:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_55e1

    jr c, jr_006_55cd

    jr jr_006_55c7

jr_006_55df:
    ldh [$c6], a

jr_006_55e1:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_55f6

    set 5, a
    jr jr_006_55f8

jr_006_55f6:
    res 5, a

jr_006_55f8:
    ldh [$c6], a
    ret


jr_006_55fb:
    ld hl, $c11b
    xor a
    ld [hl], a
    ldh [$c8], a
    inc a
    ldh [$ca], a

jr_006_5605:
    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5629

    jr c, jr_006_5623

jr_006_561d:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5635

jr_006_5623:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5635

jr_006_5629:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5637

    jr c, jr_006_5623

    jr jr_006_561d

jr_006_5635:
    ldh [$c6], a

jr_006_5637:
    ld a, $d0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5660

    ld a, [$c2cf]
    and a
    jr z, jr_006_5650

    inc a
    ld [$c2cf], a

jr_006_5650:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_5660:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_566d

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_566d:
    ldh a, [$ca]
    and a
    ret nz

    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_568c

    set 5, a
    jr jr_006_568e

jr_006_568c:
    res 5, a

jr_006_568e:
    ldh [$c6], a
    jp $2bc9


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_56a2

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_56a2:
    ldh a, [$ce]
    cp $3f
    jp z, Jump_006_5756

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_5724

    ldh a, [$cc]
    bit 4, a
    jp z, Jump_006_57bb

    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $56c4
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    adc $56
    pop hl
    ld d, [hl]
    cp e
    ld d, a
    ld l, h
    ld d, a
    cp e
    ld d, a
    ld bc, $5128
    call $2d54
    ld a, c
    and a
    jp z, Jump_006_57bb

    ld a, b
    and a
    jp z, Jump_006_57bb

    jp Jump_006_7c60


    ld bc, $5128
    call $2d54
    ld a, c
    and a
    jp z, Jump_006_7c57

    ld a, b
    and a
    jp z, Jump_006_7c57

    ld bc, $2828
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_5724

    ld a, b
    and a
    jr nz, jr_006_5724

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5716

    jr c, jr_006_5710

jr_006_570a:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5722

jr_006_5710:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5722

jr_006_5716:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5724

    jr c, jr_006_5710

    jr jr_006_570a

jr_006_5722:
    ldh [$c6], a

jr_006_5724:
    ld bc, $1000
    call $2cdf
    ld a, c
    cp $08
    jp z, $2c96

    ld a, b
    and a
    jr z, jr_006_573b

    ld a, $80
    call $2d2f
    jr jr_006_5740

jr_006_573b:
    ld a, $20
    call $2d2f

jr_006_5740:
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_574f

    set 5, a
    jr jr_006_5751

jr_006_574f:
    res 5, a

jr_006_5751:
    ldh [$c6], a
    jp $2bc9


Jump_006_5756:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld a, $0a
    ldh [$c7], a
    jr jr_006_57bb

    ld bc, $3138
    call $2d54
    ld a, c
    and a
    jr z, jr_006_57a7

    ld a, b
    and a
    jr z, jr_006_5724

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5790

    jr c, jr_006_578a

jr_006_5784:
    ldh a, [$c6]
    res 5, a
    jr jr_006_579c

jr_006_578a:
    ldh a, [$c6]
    set 5, a
    jr jr_006_579c

jr_006_5790:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_579e

    jr c, jr_006_578a

    jr jr_006_5784

jr_006_579c:
    ldh [$c6], a

jr_006_579e:
    ld a, $d0
    ldh [$c1], a
    ld b, $18
    jp $2ccf


jr_006_57a7:
    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld a, $0f
    ldh [$c7], a

Jump_006_57bb:
jr_006_57bb:
    ldh a, [$c1]
    add $03
    bit 7, a
    jr nz, jr_006_57c6

    cp $34
    ret nc

jr_006_57c6:
    ldh [$c1], a
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_57e9

    ld a, [$c2cf]
    and a
    jr z, jr_006_57d9

    inc a
    ld [$c2cf], a

jr_006_57d9:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_57e9:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $57f7
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld bc, $4158
    ld e, b
    inc bc
    ld e, c
    sub b
    ld e, c
    sub [hl]
    inc l
    ldh a, [$cb]
    bit 7, a
    jp nz, $2c96

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5825

    jr c, jr_006_581f

jr_006_5819:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5831

jr_006_581f:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5831

jr_006_5825:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5833

    jr c, jr_006_581f

    jr jr_006_5819

jr_006_5831:
    ldh [$c6], a

jr_006_5833:
    ld bc, $5108
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_58b3

    ldh a, [$cc]
    bit 4, a
    jr nz, jr_006_585a

    ldh a, [$cb]
    bit 1, a
    jp nz, $2c96

    call $2bc9
    jp $2c96


jr_006_585a:
    ld bc, $3108
    call $2d54
    ld a, b
    and a
    jp nz, Jump_006_5889

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_587b

    jr c, jr_006_5875

jr_006_586f:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5887

jr_006_5875:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5887

jr_006_587b:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5889

    jr c, jr_006_5875

    jr jr_006_586f

jr_006_5887:
    ldh [$c6], a

Jump_006_5889:
jr_006_5889:
    ldh a, [$99]
    and $7f
    jr nz, jr_006_58b3

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_58a5

    jr c, jr_006_589f

jr_006_5899:
    ldh a, [$c6]
    res 5, a
    jr jr_006_58b1

jr_006_589f:
    ldh a, [$c6]
    set 5, a
    jr jr_006_58b1

jr_006_58a5:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_58b3

    jr c, jr_006_589f

    jr jr_006_5899

jr_006_58b1:
    ldh [$c6], a

jr_006_58b3:
    ldh a, [$ad]
    and $f0
    cp $90
    jr z, jr_006_58c2

    ldh a, [$bf]
    cp $01
    jp z, Jump_006_595f

jr_006_58c2:
    ldh a, [$be]
    cp $19
    jr z, jr_006_58fc

    ld bc, $10ff
    call $2cdf
    ld a, c
    cp $19
    jp z, Jump_006_592d

    ld a, b
    and a
    jp z, $2bc9

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_592d

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_5936

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_58f5

    set 5, a
    jr jr_006_58f7

jr_006_58f5:
    res 5, a

jr_006_58f7:
    ldh [$c6], a
    jp $2bc9


jr_006_58fc:
    ld a, $02
    ldh [$ca], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$ad]
    and $f0
    cp $90
    jr z, jr_006_591f

    ldh a, [$bf]
    cp $01
    jr z, jr_006_595f

jr_006_591f:
    ldh a, [$be]
    cp $19
    jp nz, Jump_006_7c60

    ldh a, [$c6]
    bit 5, a
    jp z, $2c96

Jump_006_592d:
jr_006_592d:
    ld a, $e0
    ldh [$c1], a
    ld b, $0b
    jp $2ccf


jr_006_5936:
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_594c

    jr c, jr_006_5946

jr_006_5940:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5958

jr_006_5946:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5958

jr_006_594c:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_595a

    jr c, jr_006_5946

    jr jr_006_5940

jr_006_5958:
    ldh [$c6], a

jr_006_595a:
    ld a, $d0
    ldh [$c1], a
    ret


Jump_006_595f:
jr_006_595f:
    ld a, $04
    ldh [$ca], a
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_597f

    jr c, jr_006_5979

jr_006_5973:
    ldh a, [$c6]
    res 5, a
    jr jr_006_598b

jr_006_5979:
    ldh a, [$c6]
    set 5, a
    jr jr_006_598b

jr_006_597f:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_598d

    jr c, jr_006_5979

    jr jr_006_5973

jr_006_598b:
    ldh [$c6], a

jr_006_598d:
    jp $2c96


    ldh a, [$be]
    cp $18
    jr nc, jr_006_59fe

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_592d

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    sub b
    jr c, jr_006_59b3

    ldh a, [$c6]
    bit 5, a
    jr z, jr_006_59c3

    jr jr_006_59b9

jr_006_59b3:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_59c3

jr_006_59b9:
    ld bc, $3108
    call $2d54
    ld a, b
    and a
    jr z, jr_006_595f

jr_006_59c3:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_006_59ea

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jp z, Jump_006_592d

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_59e1

    set 5, a
    jr jr_006_59e3

jr_006_59e1:
    res 5, a

jr_006_59e3:
    ldh [$c6], a
    ld a, $d0
    ldh [$c1], a
    ret


jr_006_59ea:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_59f7

    ld a, $18
    ldh [$c0], a
    jp $2c96


jr_006_59f7:
    ld a, $e8
    ldh [$c0], a
    jp $2c96


jr_006_59fe:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5a13

    call $2c1e
    ldh a, [$c0]
    cp $20
    jp c, $2c96

    ld a, $e0
    ldh [$c1], a
    ret


jr_006_5a13:
    ld a, $d0
    ldh [$c1], a
    ld b, $1c
    jp $2ccf


    ld a, [$c2f0]
    and a
    jr nz, jr_006_5a44

    ldh a, [$a1]
    ld b, a
    ldh a, [$c2]
    sub b
    cp $05
    jp nc, $2c96

    ld hl, $d91b
    ld a, $c2
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$c2f0], a
    ld e, $04
    call $2a30
    xor a
    ldh [$ca], a
    jp $2c96


jr_006_5a44:
    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5a53

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_5c4c

jr_006_5a53:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5a61
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, c
    ld e, d
    xor d
    ld e, d
    ld l, [hl]
    ld e, e
    sub [hl]
    inc l
    ret z

    ld e, e
    sub [hl]
    inc l

Jump_006_5a6d:
jr_006_5a6d:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$99]
    cp $40
    jp z, Jump_006_5bbb

    cp $a0
    jp z, Jump_006_5bbb

    ld bc, $5111
    call $2d54
    ld a, c
    and a
    jp z, $2c96

    ld a, b
    and a
    jp z, $2c96

    ld a, $01
    ldh [$ca], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$bf]
    cp $03
    jr c, jr_006_5b31

    ld bc, $5111
    call $2d54
    ld a, c
    and a
    jr z, jr_006_5a6d

    ld a, b
    and a
    jr z, jr_006_5a6d

    ld bc, $1121
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_5afc

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5aec

    jr c, jr_006_5ae6

jr_006_5ae0:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5af8

jr_006_5ae6:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5af8

jr_006_5aec:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5afa

    jr c, jr_006_5ae6

    jr jr_006_5ae0

jr_006_5af8:
    ldh [$c6], a

jr_006_5afa:
    jr jr_006_5b0e

jr_006_5afc:
    ldh a, [$ad]
    and $f0
    cp $30
    jr z, jr_006_5b67

    cp $10
    jr z, jr_006_5b0e

    call $2bc9
    jp $2c6b


jr_006_5b0e:
    ldh a, [$99]
    cp $40
    jp z, Jump_006_5bbb

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5b2a

    set 5, a
    jr jr_006_5b2c

jr_006_5b2a:
    res 5, a

jr_006_5b2c:
    ldh [$c6], a
    jp $2bc9


jr_006_5b31:
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5b47

    jr c, jr_006_5b41

jr_006_5b3b:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5b53

jr_006_5b41:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5b53

jr_006_5b47:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5b55

    jr c, jr_006_5b41

    jr jr_006_5b3b

jr_006_5b53:
    ldh [$c6], a

jr_006_5b55:
    ld bc, $3111
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_5bbb

    ld a, b
    and a
    jp z, $2bc9

    jr jr_006_5bbb

jr_006_5b67:
    ld a, $02
    ldh [$ca], a
    jp $2c96


    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5b84

    jr c, jr_006_5b7e

jr_006_5b78:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5b90

jr_006_5b7e:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5b90

jr_006_5b84:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5b92

    jr c, jr_006_5b7e

    jr jr_006_5b78

jr_006_5b90:
    ldh [$c6], a

jr_006_5b92:
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_5a6d

    ldh a, [$ad]
    cp $30
    jp nz, Jump_006_5a6d

    ldh a, [$cc]
    ld b, a
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5bb4

    bit 7, b
    jr nz, jr_006_5bbb

    jp $2bbf


jr_006_5bb4:
    bit 6, b
    jr nz, jr_006_5bbb

    jp $2bbf


Jump_006_5bbb:
jr_006_5bbb:
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_5bd4

    ldh a, [$cc]
    bit 4, a
    jr z, jr_006_5bf5

jr_006_5bd4:
    ldh a, [$ad]
    bit 1, a
    jr nz, jr_006_5c34

    ld a, [$c2d0]
    cp $fc
    jr nc, jr_006_5c34

    ldh a, [$8b]
    and $01
    swap a
    sla a
    ld b, a
    ldh a, [$99]
    and b
    bit 5, a
    jr z, jr_006_5bf5

    ld a, $e0
    ldh [$c1], a

jr_006_5bf5:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_006_5c0d

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5c09

    set 5, a
    jr jr_006_5c0b

jr_006_5c09:
    res 5, a

jr_006_5c0b:
    ldh [$c6], a

jr_006_5c0d:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5c22

    ldh a, [$c0]
    add $03
    bit 7, a
    jr nz, jr_006_5c2f

    cp $29
    jp nc, $2c96

    jr jr_006_5c2f

jr_006_5c22:
    ldh a, [$c0]
    sub $03
    bit 7, a
    jr z, jr_006_5c2f

    cp $d8
    jp c, $2c96

jr_006_5c2f:
    ldh [$c0], a
    jp $2c96


jr_006_5c34:
    ld bc, $0010
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_5bf5

    ld a, $05
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    jp $2c96


Jump_006_5c4c:
    ld a, [$c2d3]
    add $c8
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    ld e, $28
    call $29fb
    ld a, $02
    ld [$c2f0], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5c78

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_5c78:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5c86
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    adc a
    ld e, h
    push af
    ld e, h
    ld c, $5d

Jump_006_5c8c:
    xor a
    ldh [$ca], a
    ldh a, [$c7]
    cp $0c
    jp nc, $2c96

    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_5caf

    jr c, jr_006_5ca9

jr_006_5ca3:
    ldh a, [$c6]
    res 5, a
    jr jr_006_5cbb

jr_006_5ca9:
    ldh a, [$c6]
    set 5, a
    jr jr_006_5cbb

jr_006_5caf:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_5cbd

    jr c, jr_006_5ca9

    jr jr_006_5ca3

jr_006_5cbb:
    ldh [$c6], a

jr_006_5cbd:
    ldh a, [$c6]
    xor e
    jr nz, jr_006_5d25

    ld bc, $0031
    call $2d54
    ld a, c
    and a
    jr z, jr_006_5cd0

    bit 7, a
    jr z, jr_006_5cf1

jr_006_5cd0:
    ldh a, [rDIV]
    and $03
    jr z, jr_006_5cf1

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_006_5ceb

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_5d17

    jr jr_006_5cf1

jr_006_5ceb:
    call $2bc9
    jp $2c96


jr_006_5cf1:
    ld a, $01
    ldh [$ca], a
    ld a, [$c2d1]
    inc a
    cp $20
    jr nc, jr_006_5d06

    ld [$c2d1], a
    call $2bc9
    jp $2c6b


jr_006_5d06:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d1], a
    ldh a, [$c0]
    and a
    jp z, Jump_006_5c8c

    jp $2c96


jr_006_5d17:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5d21

    set 5, a
    jr jr_006_5d23

jr_006_5d21:
    res 5, a

jr_006_5d23:
    ldh [$c6], a

jr_006_5d25:
    xor a
    ld [$c2d0], a
    ld a, $0c
    ldh [$c7], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5d3f

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_5d3f:
    ldh a, [$ca]
    and a
    jr nz, jr_006_5d62

jr_006_5d44:
    xor a
    ldh [$ca], a
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_5d5e

    ldh a, [$c7]
    cp $08
    jp c, $2c96

    call $2bc9
    jp $2c6b


jr_006_5d5e:
    ld a, $01
    ldh [$ca], a

jr_006_5d62:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_006_5d44

    ldh a, [$c7]
    cp $08
    jp c, $2c96

    jp $2c6b


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5d85

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_5d85:
    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$cd]
    cp $01
    jr nz, jr_006_5da8

    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5da0
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec de
    ld e, [hl]
    ret z

    ld e, l
    sub [hl]
    inc l
    sub [hl]
    inc l

jr_006_5da8:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5dbd

    set 5, a
    jr jr_006_5dbf

jr_006_5dbd:
    res 5, a

jr_006_5dbf:
    ldh [$c6], a
    jp $2bc9


    ld a, $01
    ldh [$ca], a
    ld bc, $3800
    call $2d54
    ld a, b
    and a
    jr z, jr_006_5e0a

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_5df0

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jp nz, $2bc9

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jp nz, $2bc9

jr_006_5df0:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5dfa

    set 5, a
    jr jr_006_5dfc

jr_006_5dfa:
    res 5, a

jr_006_5dfc:
    ldh [$c6], a
    ld a, [$c2d1]
    inc a
    ld [$c2d1], a
    cp $05
    jp c, $2bc9

jr_006_5e0a:
    ld a, $02
    ldh [$ca], a
    ld a, $0b
    ldh [$c7], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jp Jump_006_7c6b


    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ld a, [$c2d1]
    cp $05
    jr c, jr_006_5e37

    inc a
    ld [$c2d1], a
    cp $ff
    jr z, jr_006_5e40

    ret


jr_006_5e37:
    ld bc, $3800
    call $2d54
    ld a, b
    and a
    ret z

jr_006_5e40:
    ld a, $03
    ldh [$ca], a
    ld a, $14
    ldh [$c7], a
    jp Jump_006_7c6b


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5e6b

    ld a, [$c2cf]
    and a
    jr z, jr_006_5e5b

    inc a
    ld [$c2cf], a

jr_006_5e5b:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_5e6b:
    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5e80
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp c
    ld e, [hl]
    adc b
    ld e, [hl]
    sub [hl]
    inc l
    sub [hl]
    inc l
    ld bc, $3800
    call $2d54
    ld a, b
    and a
    jr z, jr_006_5eae

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5ea7

    set 5, a
    jr jr_006_5ea9

jr_006_5ea7:
    res 5, a

jr_006_5ea9:
    ldh [$c6], a
    jp $2bc9


jr_006_5eae:
    ld a, $02
    ldh [$ca], a
    ld a, $0b
    ldh [$c7], a
    jp Jump_006_7c6b


    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld bc, $2110
    call $2d54
    ld a, c
    cp $80
    ret nz

    ld a, b
    and a
    ret z

    ld a, $03
    ldh [$ca], a
    ld a, $10
    ldh [$c7], a
    jp Jump_006_7c6b


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5ee6

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_5ee6:
    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5efb
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec b
    ld e, a
    ld [hl], d
    ld e, a
    sub [hl]
    inc l
    sub [hl]
    inc l
    sbc e
    ld e, a
    ldh a, [rDIV]
    and $d7
    jp z, Jump_006_5f8e

    ld bc, $3110
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_5f21

    ld a, b
    and a
    jr z, jr_006_5f21

    ldh a, [$ad]
    bit 0, a
    jr nz, jr_006_5f63

jr_006_5f21:
    ld a, [$c2d1]
    cp $05
    jr z, jr_006_5f8e

    ld bc, $0cff
    call $2cdf
    ld a, b
    and a
    jp nz, Jump_006_5f3f

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jp nz, $2bc9

    jr jr_006_5f4b

Jump_006_5f3f:
    ld a, $80
    call $2d2f
    ld a, b
    and a
    jp nz, Jump_006_5f4b

    jr jr_006_5f8e

Jump_006_5f4b:
jr_006_5f4b:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_5f55

    set 5, a
    jr jr_006_5f57

jr_006_5f55:
    res 5, a

jr_006_5f57:
    ldh [$c6], a
    ld a, [$c2d1]
    inc a
    ld [$c2d1], a
    jp $2bc9


jr_006_5f63:
    ld a, $02
    ldh [$ca], a
    ld a, $07
    ldh [$c7], a
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    ret


    ld bc, $3810
    call $2d54
    ld a, c
    cp $80
    ret z

    ld a, b
    and a
    ret nz

    ld a, $03
    ldh [$ca], a
    ld a, $09
    ldh [$c7], a
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    ret


Jump_006_5f8e:
jr_006_5f8e:
    ld a, $04
    ldh [$ca], a
    ld a, $e0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


    ldh a, [$c1]
    bit 7, a
    jr nz, jr_006_5faf

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c57

    ldh a, [$cc]
    bit 4, a
    jp nz, Jump_006_7c57

jr_006_5faf:
    ld bc, $1000
    call $2cdf
    ld a, b
    and a
    jp z, $2c96

    call $2bc9
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_5fcf

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_5fcf:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5fdd
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    pop af
    ld e, a
    ld b, h
    ld h, b
    call nz, $d260
    ld h, b
    jp nc, $d860

    ld h, b
    inc d
    ld h, c
    adc c
    ld h, c
    sub [hl]
    ld h, c
    sub [hl]
    ld h, c
    ldh a, [$cb]
    bit 7, a
    jr z, jr_006_600e

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6001

    set 5, a
    jr jr_006_6003

jr_006_6001:
    res 5, a

jr_006_6003:
    ldh [$c6], a
    ld a, $f0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_600e:
    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4110
    call $2d54
    ld a, b
    and a
    jp nz, Jump_006_7c60

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6036

    jr c, jr_006_6030

jr_006_602a:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6042

jr_006_6030:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6042

jr_006_6036:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6044

    jr c, jr_006_6030

    jr jr_006_602a

jr_006_6042:
    ldh [$c6], a

jr_006_6044:
    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_609d

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [rDIV]
    and $07
    jr z, jr_006_60b4

    ld bc, $2121
    call $2d54
    ld a, c
    and a
    jr z, jr_006_6066

    ld a, b
    and a
    jr nz, jr_006_60b4

jr_006_6066:
    ld bc, $0cff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_60b4

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jp nz, $2bc9

    ld a, $20
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_608c

    ld a, $e0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_608c:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6096

    set 5, a
    jr jr_006_6098

jr_006_6096:
    res 5, a

jr_006_6098:
    ldh [$c6], a
    jp $2bc9


Jump_006_609d:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_60a7

    set 5, a
    jr jr_006_60a9

jr_006_60a7:
    res 5, a

jr_006_60a9:
    ldh [$c6], a
    ld a, $f0
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_60b4:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    set 2, a
    set 0, a
    ldh [$cb], a
    xor a
    ldh [$c0], a
    ld a, [$c2d0]
    cp $0c
    jp c, $2c96

    jp Jump_006_619c


    xor a
    ldh [$c0], a
    jp Jump_006_619c


    ldh a, [$cc]
    bit 5, a
    jp z, Jump_006_619c

    ld bc, $4110
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_610d

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_60ff

    jr c, jr_006_60f9

jr_006_60f3:
    ldh a, [$c6]
    res 5, a
    jr jr_006_610b

jr_006_60f9:
    ldh a, [$c6]
    set 5, a
    jr jr_006_610b

jr_006_60ff:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_610d

    jr c, jr_006_60f9

    jr jr_006_60f3

jr_006_610b:
    ldh [$c6], a

jr_006_610d:
    ld a, $06
    ldh [$ca], a
    jp Jump_006_619c


    ldh a, [$cc]
    bit 5, a
    jp z, Jump_006_619c

    ldh a, [rDIV]
    and $07
    jr z, jr_006_6179

    ld bc, $2111
    call $2d54
    ld a, c
    and a
    jr z, jr_006_6131

    ld a, b
    and a
    jr nz, jr_006_6179

    jr jr_006_6141

jr_006_6131:
    ld a, b
    and a
    jr z, jr_006_6141

    ld bc, $0c00
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_6166

    jr jr_006_614b

jr_006_6141:
    ld bc, $0c00
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_6179

jr_006_614b:
    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_6174

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_6166

    ld a, $10
    ldh [$c1], a
    ld b, $10
    jp $2ccf


jr_006_6166:
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6170

    set 5, a
    jr jr_006_6172

jr_006_6170:
    res 5, a

jr_006_6172:
    ldh [$c6], a

jr_006_6174:
    call $2bc9
    jr jr_006_619c

jr_006_6179:
    ld a, $07
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    set 2, a
    set 0, a
    ldh [$cb], a
    xor a
    ldh [$c0], a
    ld a, [$c2d0]
    cp $0c
    jr c, jr_006_619c

    jp $2c96


    xor a
    ldh [$c0], a
    jp $2c96


Jump_006_619c:
jr_006_619c:
    ldh a, [$c1]
    sub $02
    ldh [$c1], a
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_61c3

    ld a, [$c2cf]
    and a
    jr z, jr_006_61b3

    inc a
    ld [$c2cf], a

jr_006_61b3:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_61c3:
    ldh a, [$ca]
    and a
    jr z, jr_006_61de

    cp $01
    jp z, Jump_006_626c

    cp $02
    jp z, Jump_006_62f9

    jp Jump_006_6348


Jump_006_61d5:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    jp Jump_006_6374


jr_006_61de:
    ldh a, [$bf]
    cp $01
    jp z, Jump_006_62e8

    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4800
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_6232

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6213

    jr c, jr_006_620d

jr_006_6207:
    ldh a, [$c6]
    res 5, a
    jr jr_006_621f

jr_006_620d:
    ldh a, [$c6]
    set 5, a
    jr jr_006_621f

jr_006_6213:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6221

    jr c, jr_006_620d

    jr jr_006_6207

jr_006_621f:
    ldh [$c6], a

jr_006_6221:
    ldh a, [$c6]
    bit 5, a
    jp nz, Jump_006_6261

    ldh a, [$be]
    cp $14
    jp nz, Jump_006_62ba

    jp Jump_006_6337


jr_006_6232:
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_6374

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6253

    jr c, jr_006_624d

jr_006_6247:
    ldh a, [$c6]
    res 5, a
    jr jr_006_625f

jr_006_624d:
    ldh a, [$c6]
    set 5, a
    jr jr_006_625f

jr_006_6253:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6261

    jr c, jr_006_624d

    jr jr_006_6247

jr_006_625f:
    ldh [$c6], a

Jump_006_6261:
jr_006_6261:
    ld a, $01
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    jp Jump_006_6374


Jump_006_626c:
    ldh a, [$bf]
    cp $01
    jr z, jr_006_62e8

    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4800
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_61d5

    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_61d5

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_62ac

    jr c, jr_006_62a6

jr_006_62a0:
    ldh a, [$c6]
    res 5, a
    jr jr_006_62b8

jr_006_62a6:
    ldh a, [$c6]
    set 5, a
    jr jr_006_62b8

jr_006_62ac:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_62ba

    jr c, jr_006_62a6

    jr jr_006_62a0

jr_006_62b8:
    ldh [$c6], a

Jump_006_62ba:
jr_006_62ba:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_006_62d5

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_62ce

    set 5, a
    jr jr_006_62d0

jr_006_62ce:
    res 5, a

jr_006_62d0:
    ldh [$c6], a
    jp $2c96


jr_006_62d5:
    ld bc, $0c00
    call $2cdf
    ld a, b
    and a
    jp nz, $2bc9

    ld b, $10
    call $2ccf
    jp $2c6b


Jump_006_62e8:
jr_006_62e8:
    ld a, $02
    ldh [$ca], a
    ldh a, [$cf]
    add $1f
    ld l, a
    ld h, $c1
    ld a, $06
    ld [hl], a
    jp $2c96


Jump_006_62f9:
    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $2100
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_62ba

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6327

    jr c, jr_006_6321

jr_006_631b:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6333

jr_006_6321:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6333

jr_006_6327:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6335

    jr c, jr_006_6321

    jr jr_006_631b

jr_006_6333:
    ldh [$c6], a

jr_006_6335:
    jr jr_006_62ba

Jump_006_6337:
    ld a, $03
    ldh [$ca], a
    ldh a, [$cf]
    add $1f
    ld l, a
    ld h, $c1
    ld a, $06
    ld [hl], a
    jp $2c96


Jump_006_6348:
    ldh a, [$bf]
    cp $01
    jr z, jr_006_62e8

    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $1000
    call $2d54
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$cf]
    add $1f
    ld l, a
    ld h, $c1
    ld a, $01
    ld [hl], a
    jp Jump_006_6261


Jump_006_6374:
    xor a
    ldh [$c0], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_639a

    ld a, [$c2cf]
    and a
    jr z, jr_006_638a

    inc a
    ld [$c2cf], a

jr_006_638a:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_639a:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $63a8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp e
    ld h, e
    jr c, jr_006_6410

    sub h
    ld h, h

Jump_006_63ae:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ld a, $0b
    ldh [$c7], a
    jp Jump_006_6374


    ldh a, [$c7]
    cp $09
    jp nc, Jump_006_6374

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_6505

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    bit 1, a
    jp nz, Jump_006_6374

    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_63ee

    jr c, jr_006_63e8

jr_006_63e2:
    ldh a, [$c6]
    res 5, a
    jr jr_006_63fa

jr_006_63e8:
    ldh a, [$c6]
    set 5, a
    jr jr_006_63fa

jr_006_63ee:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_63fc

    jr c, jr_006_63e8

    jr jr_006_63e2

jr_006_63fa:
    ldh [$c6], a

jr_006_63fc:
    xor e
    bit 5, a
    jr z, jr_006_6407

    ld a, e
    ldh [$c6], a
    jp Jump_006_6522


jr_006_6407:
    ldh a, [$a8]
    and a
    jr z, jr_006_6420

    ldh a, [$c6]
    bit 5, a

jr_006_6410:
    jr nz, jr_006_641a

    ldh a, [$a8]
    bit 7, a
    jr z, jr_006_642d

    jr jr_006_6420

jr_006_641a:
    ldh a, [$a8]
    bit 7, a
    jr nz, jr_006_642d

jr_006_6420:
    ld bc, $2100
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_6374

    jr jr_006_648d

jr_006_642d:
    ld a, $09
    ldh [$c7], a

Jump_006_6431:
    ld a, $01
    ldh [$ca], a
    jp Jump_006_6374


    ldh a, [$c7]
    cp $08
    jp nc, Jump_006_6374

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_6505

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    bit 1, a
    jp nz, Jump_006_63ae

    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_646b

    jr c, jr_006_6465

jr_006_645f:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6477

jr_006_6465:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6477

jr_006_646b:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6479

    jr c, jr_006_6465

    jr jr_006_645f

jr_006_6477:
    ldh [$c6], a

jr_006_6479:
    xor e
    bit 5, a
    jr z, jr_006_6484

    ld a, e
    ldh [$c6], a
    jp Jump_006_652d


jr_006_6484:
    ldh a, [$cb]
    bit 6, a
    jr z, jr_006_6505

    jp Jump_006_63ae


jr_006_648d:
    ld a, $02
    ldh [$ca], a
    jp Jump_006_6522


    ldh a, [$c7]
    cp $08
    jp nc, Jump_006_6374

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6505

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    bit 1, a
    jp nz, Jump_006_63ae

    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_64c6

    jr c, jr_006_64c0

jr_006_64ba:
    ldh a, [$c6]
    res 5, a
    jr jr_006_64d2

jr_006_64c0:
    ldh a, [$c6]
    set 5, a
    jr jr_006_64d2

jr_006_64c6:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_64d4

    jr c, jr_006_64c0

    jr jr_006_64ba

jr_006_64d2:
    ldh [$c6], a

jr_006_64d4:
    xor e
    bit 5, a
    jp z, Jump_006_652d

    ld a, e
    ldh [$c6], a
    ldh a, [$a8]
    and a
    jr z, jr_006_64f8

    ldh a, [$c6]
    bit 5, a
    jr z, jr_006_64f1

    ldh a, [$a8]
    bit 7, a
    jp z, Jump_006_6431

    jr jr_006_64f8

jr_006_64f1:
    ldh a, [$a8]
    bit 7, a
    jp nz, Jump_006_6431

jr_006_64f8:
    ld bc, $4800
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_6505

    jp Jump_006_63ae


Jump_006_6505:
jr_006_6505:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_651a

    ld bc, $0c00
    call $2cdf
    ld a, b
    and a
    jp nz, $2bc9

jr_006_651a:
    ld b, $10
    call $2ccf
    jp $2c6b


Jump_006_6522:
    xor a
    ld [$c2d0], a
    ld a, $0e
    ldh [$c7], a
    jp Jump_006_6374


Jump_006_652d:
    xor a
    ld [$c2d0], a
    ld a, $0d
    ldh [$c7], a
    jp Jump_006_6374


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6547

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_66c3

jr_006_6547:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $6555
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, c
    ld h, l
    add d
    ld h, l
    ld hl, $9666
    inc l
    sub [hl]
    inc l
    jp z, $0165

    nop
    ld b, c
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    ld hl, $c98c
    ld a, $55
    ld [hl+], a
    ld [hl], a

Jump_006_6573:
jr_006_6573:
    ld a, $01
    ldh [$ca], a
    xor a
    ld [$c2d1], a
    ld hl, $c11f
    ld [hl], a
    jp $2c96


    ldh a, [$a1]
    ld b, a
    ldh a, [$c2]
    sub b
    jr c, jr_006_658e

    cp $03
    jr nc, jr_006_65bd

jr_006_658e:
    ld bc, $3110
    call $2d54
    ld a, b
    and a
    jr z, jr_006_65ac

    bit 7, a
    jr nz, jr_006_6610

    ld bc, $2110
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_65bd

    call Call_006_663d
    jp $2c96


jr_006_65ac:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp nz, Jump_006_65bd

    call Call_006_663d
    jp $2bc9


Jump_006_65bd:
jr_006_65bd:
    ld a, $05
    ldh [$ca], a
    ld hl, $c11f
    ld a, $06
    ld [hl], a
    jp $2c96


    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    bit 7, a
    jp nz, Jump_006_65f9

    ldh a, [$a1]
    ld b, a
    ldh a, [$c2]
    sub b
    jr c, jr_006_65e3

    cp $02
    jp nc, $2bbf

jr_006_65e3:
    ld bc, $2100
    call $2d54
    ld a, b
    and a
    jr z, jr_006_6573

    ldh a, [$ad]
    bit 0, a
    jr nz, jr_006_6610

    call Call_006_663d
    jp $2bbf


Jump_006_65f9:
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_6573

    ldh a, [$ad]
    bit 0, a
    jr nz, jr_006_6610

    call Call_006_663d
    jp $2c96


jr_006_6610:
    ld a, $03
    ldh [$ca], a
    ld a, $07
    ldh [$c7], a
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    jp $2c96


    ld bc, $4110
    call $2d54
    ld a, b
    and a
    jp nz, $2c96

    ld a, $04
    ldh [$ca], a
    ld a, $09
    ldh [$c7], a
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    jp $2c96


Call_006_663d:
    ld a, [$c2d1]
    and a
    jp nz, $2c96

    ld bc, $5100
    call $2d54
    ld a, b
    and $70
    srl a
    srl a
    add $04
    ld b, a
    add $04
    ld d, a
    ld a, $e4
    sub b
    ld e, a
    ld hl, $c120

jr_006_665e:
    ld a, [hl]
    and a
    jr z, jr_006_666d

    ld a, l
    add $20
    cp $c0
    jp nc, Jump_006_6573

    ld l, a
    jr jr_006_665e

jr_006_666d:
    ld a, $30
    ld [hl+], a
    inc l
    ld a, $01
    ld [$c2d1], a
    ld [hl+], a
    ldh a, [$c0]
    add d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ldh a, [$c3]
    add $80
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
    ld a, $34
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld e, $2f
    call $29fb
    ret


Jump_006_66c3:
    ld hl, $c1c0
    ld a, $31
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    inc l
    ld a, $04
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $0b
    ld [hl+], a
    ld a, $0e
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    xor a
    ld [hl+], a
    ret


    ldh a, [$c7]
    and a
    jp nz, $2c96

    ldh a, [$cc]
    and $f0
    jp z, $2c96

    ld a, $01
    ldh [$c7], a
    ld e, $30
    call $29fb
    jp $2c96


    call $2dc0
    ldh a, [$bf]
    and a
    jr z, jr_006_676b

    ldh a, [$ca]
    and a
    jp z, $2c96

    ld bc, $20ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_006_674a

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6746

    set 5, a
    jr jr_006_6748

jr_006_6746:
    res 5, a

jr_006_6748:
    ldh [$c6], a

jr_006_674a:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_675e

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld a, [$c2d0]
    and a
    jp nz, $2c96

jr_006_675e:
    ld e, $13
    call $29fb
    ld b, $10
    call $2ccf
    jp $2c6b


jr_006_676b:
    ld hl, $c1e0
    ld a, $35
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    inc l
    inc l
    inc l
    ld a, $22
    ld [hl+], a
    inc l
    ld a, $09
    ld [hl], a
    ld a, l
    add $0d
    ld l, a
    ld a, $ff
    ld [hl], a
    ld a, [$c2d3]
    add $c8
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    ld e, $28
    call $29fb
    ret


    ld a, [$c2f0]
    and a
    jr nz, jr_006_67d9

    ld a, $92
    ld hl, $cad7
    ld [hl], a
    ld hl, $cae7
    ld [hl], a
    ld hl, $caf7
    ld [hl], a
    ld hl, $cb07
    ld [hl], a
    ld hl, $cb17
    ld [hl], a
    ld hl, $cb27
    ld [hl], a
    ld hl, $cb37
    ld [hl], a
    ld hl, $cb47
    ld [hl], a
    ld a, $01
    ld [$c2f0], a
    ld a, $0c
    ld [$c0f5], a
    ld e, $04
    call $2a30
    xor a
    ldh [$ca], a
    jp $2c96


jr_006_67d9:
    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_67f9

    ld a, [$c2cf]
    and a
    jr z, jr_006_67e9

    inc a
    ld [$c2cf], a

jr_006_67e9:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_6945

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_67f9:
    ldh a, [$c7]
    cp $10
    jp nc, $2c96

    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $680e
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec h
    ld l, b
    add e
    ld l, b
    inc h
    ld l, c
    sub [hl]
    inc l

Jump_006_6816:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_690f

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_684c

    jr c, jr_006_6846

jr_006_6840:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6858

jr_006_6846:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6858

jr_006_684c:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_685a

    jr c, jr_006_6846

    jr jr_006_6840

jr_006_6858:
    ldh [$c6], a

jr_006_685a:
    xor e
    bit 5, a
    jr z, jr_006_6865

    ld a, e
    ldh [$c6], a
    jp Jump_006_6904


jr_006_6865:
    ld bc, $4830
    call $2d54
    ld a, c
    cp $80
    jp nz, $2c96

    ld a, b
    and a
    jr nz, jr_006_687c

    ld a, [$c2d1]
    and a
    jp z, Jump_006_68f5

jr_006_687c:
    ld a, $01
    ldh [$ca], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_68da

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4c00
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_6816

    res 7, a
    cp $30
    jr c, jr_006_68e7

    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_68ba

    jr c, jr_006_68b4

jr_006_68ae:
    ldh a, [$c6]
    res 5, a
    jr jr_006_68c6

jr_006_68b4:
    ldh a, [$c6]
    set 5, a
    jr jr_006_68c6

jr_006_68ba:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_68c8

    jr c, jr_006_68b4

    jr jr_006_68ae

jr_006_68c6:
    ldh [$c6], a

jr_006_68c8:
    xor e
    bit 5, a
    jr z, jr_006_68d2

    ld a, e
    ldh [$c6], a
    jr jr_006_6904

jr_006_68d2:
    ldh a, [$ad]
    and $f0
    cp $10
    jr nz, jr_006_68ef

jr_006_68da:
    ld bc, $18ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    jr jr_006_6904

jr_006_68e7:
    ldh a, [$bf]
    and $01
    jr nz, jr_006_68f5

    jr jr_006_690f

jr_006_68ef:
    ld a, [$c2d1]
    and a
    jr nz, jr_006_690f

Jump_006_68f5:
jr_006_68f5:
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $0d
    ldh [$c7], a
    jp $2c96


Jump_006_6904:
jr_006_6904:
    ld a, $10
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    jp $2c96


Jump_006_690f:
jr_006_690f:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld e, $13
    call $29fb
    ld b, $14
    call $2ccf
    jp $2c6b


    ldh a, [$cb]
    bit 7, a
    jp z, $2c96

    ld a, [$c2d0]
    and a
    jp nz, Jump_006_6816

    ld a, $01
    ld [$c2d0], a
    ldh a, [$c1]
    bit 7, a
    jp nz, $2c96

    cpl
    inc a
    ldh [$c1], a
    jp $2c96


Jump_006_6945:
    ld a, [$c2d3]
    add $64
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    ld e, $28
    call $29fb
    ld a, $02
    ld [$c2f0], a
    jp $2c96


    ldh a, [$cc]
    and $e0
    jr nz, jr_006_6989

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6976

    ldh a, [$c0]
    add $02
    ldh [$c0], a
    jr jr_006_697c

jr_006_6976:
    ldh a, [$c0]
    sub $02
    ldh [$c0], a

jr_006_697c:
    ldh a, [$c4]
    ld b, a
    ldh a, [$a3]
    cp b
    ret z

    jp c, $2c6b

    jp $2c96


jr_006_6989:
    xor a
    ldh [$bf], a
    ld [$c114], a
    ret


    ld a, $10
    ldh [$cb], a
    ld a, $04
    ldh [$cc], a
    ld a, $55
    ld hl, $c90f
    ld [hl], a
    ld hl, $c91f
    ld [hl], a
    ld hl, $c92f
    ld [hl], a
    ld hl, $c93f
    ld [hl], a
    ld hl, $c94f
    ld [hl], a
    ret


    ld a, $10
    ldh [$cb], a
    ld a, $04
    ldh [$cc], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $ff
    ret nz

    ld a, $3f
    ld hl, $c90f
    ld [hl], a
    ld hl, $c91f
    ld [hl], a
    ld hl, $c92f
    ld [hl], a
    ld hl, $c93f
    ld [hl], a
    ld hl, $c94f
    ld [hl], a
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, $97
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $7f
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$95]
    add $04
    ldh [$95], a
    ld e, $11
    call $29fb
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6a16

    ld a, [$c2cf]
    and a
    jr z, jr_006_6a06

    inc a
    ld [$c2cf], a

jr_006_6a06:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_6a16:
    ld a, $01
    ldh [$ca], a
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6a5a

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $2810
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_6a5a

    ld a, b
    and a
    jr nz, jr_006_6a5a

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6a4c

    jr c, jr_006_6a46

jr_006_6a40:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6a58

jr_006_6a46:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6a58

jr_006_6a4c:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6a5a

    jr c, jr_006_6a46

    jr jr_006_6a40

jr_006_6a58:
    ldh [$c6], a

jr_006_6a5a:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6a6f

    set 5, a
    jr jr_006_6a71

jr_006_6a6f:
    res 5, a

jr_006_6a71:
    ldh [$c6], a
    jp $2bc9


    ld a, $01
    ldh [$ca], a
    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6a89

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_6a89:
    ldh a, [$c7]
    cp $0c
    jp nc, $2c96

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6a9d

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_6a9d:
    ld bc, $0cff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_6ab4

    ldh a, [$99]
    cp $4c
    jp c, Jump_006_6ab4

    call $2bc9
    jp $2c96


Jump_006_6ab4:
jr_006_6ab4:
    ld a, $0c
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    jp $2c96


    ld a, $01
    ldh [$ca], a
    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6ad2

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_6ad2:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6adf

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_6adf:
    ld bc, $3000
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_6b0d

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6aff

    jr c, jr_006_6af9

jr_006_6af3:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6b0b

jr_006_6af9:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6b0b

jr_006_6aff:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6b0d

    jr c, jr_006_6af9

    jr jr_006_6af3

jr_006_6b0b:
    ldh [$c6], a

jr_006_6b0d:
    ld bc, $1200
    call $2cdf
    ld a, b
    and a
    jr z, jr_006_6b51

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_6b26

    call $2bc9
    jp $2c96


jr_006_6b26:
    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_6b49

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_6b49

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6b42

    set 5, a
    jr jr_006_6b44

jr_006_6b42:
    res 5, a

jr_006_6b44:
    ldh [$c6], a
    jp $2c96


jr_006_6b49:
    ld b, $10
    call $2ccf
    jp $2c6b


jr_006_6b51:
    ld a, $ec
    ldh [$c1], a
    ld b, $14
    jp $2ccf


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6b7a

    ld a, [$c2cf]
    and a
    jr z, jr_006_6b6a

    inc a
    ld [$c2cf], a

jr_006_6b6a:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_6b7a:
    ldh a, [$ca]
    and a
    jr nz, jr_006_6b86

    ldh a, [$bf]
    cp $01
    jp z, Jump_006_6c0e

jr_006_6b86:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6bc1

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3000
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_6bc1

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6bb3

    jr c, jr_006_6bad

jr_006_6ba7:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6bbf

jr_006_6bad:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6bbf

jr_006_6bb3:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6bc1

    jr c, jr_006_6bad

    jr jr_006_6ba7

jr_006_6bbf:
    ldh [$c6], a

jr_006_6bc1:
    ld bc, $1200
    call $2cdf
    ld a, b
    and a
    jr z, jr_006_6c05

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_6bda

    call $2bc9
    jp $2c96


jr_006_6bda:
    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_6bfd

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr z, jr_006_6bfd

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6bf6

    set 5, a
    jr jr_006_6bf8

jr_006_6bf6:
    res 5, a

jr_006_6bf8:
    ldh [$c6], a
    jp $2c96


jr_006_6bfd:
    ld b, $10
    call $2ccf
    jp $2c6b


jr_006_6c05:
    ld a, $ec
    ldh [$c1], a
    ld b, $14
    jp $2ccf


Jump_006_6c0e:
    ld hl, $c120
    ld a, $3a
    ld [hl+], a
    inc l
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ldh a, [$c5]
    sub $80
    ld [hl+], a
    ldh a, [$c4]
    sbc $00
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    ld a, $05
    ld [hl], a
    ld a, l
    add $0b
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $01
    ldh [$ca], a
    ld a, $07
    ldh [$c7], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6c81

    ld a, [$c2cf]
    and a
    jr z, jr_006_6c71

    inc a
    ld [$c2cf], a

jr_006_6c71:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_6c81:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6cbc

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3000
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_6cbc

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6cae

    jr c, jr_006_6ca8

jr_006_6ca2:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6cba

jr_006_6ca8:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6cba

jr_006_6cae:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6cbc

    jr c, jr_006_6ca8

    jr jr_006_6ca2

jr_006_6cba:
    ldh [$c6], a

jr_006_6cbc:
    ld b, $10
    call $2ccf
    jp $2c6b


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6cd7

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ldh a, [$ca]
    and a
    ret z

jr_006_6cd7:
    ld a, [$c120]
    and a
    jr nz, jr_006_6ce3

    xor a
    ldh [$bf], a
    jp $2c96


jr_006_6ce3:
    ld hl, $c123
    ld a, [hl+]
    ldh [$c0], a
    ld a, [hl+]
    ldh [$c1], a
    ld a, [hl+]
    ldh [$c3], a
    ld a, [hl+]
    ldh [$c2], a
    ld a, [hl+]
    sub $f0
    ldh [$c5], a
    ld a, [hl]
    sbc $00
    ldh [$c4], a
    ret


    call $2dc0
    ld a, [$c102]
    and a
    jr z, jr_006_6d52

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6d13

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

jr_006_6d13:
    ldh a, [rDIV]
    and $c3
    jr nz, jr_006_6d21

    ld a, [$c2d1]
    xor $01
    ld [$c2d1], a

jr_006_6d21:
    ld a, [$c2d1]
    and a
    jr z, jr_006_6d33

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_6d3d

    jr jr_006_6d47

jr_006_6d33:
    ld bc, $f0ff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_6d47

jr_006_6d3d:
    xor a
    ld [$c2d1], a
    call $2c1e
    jp $2c96


jr_006_6d47:
    ld a, $01
    ld [$c2d1], a
    call $2bcf
    jp $2c96


jr_006_6d52:
    ldh a, [$cc]
    bit 1, a
    jp z, $2c96

    ldh a, [$a8]
    ldh [$c0], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6d80

    ld a, [$c2cf]
    and a
    jr z, jr_006_6d70

    inc a
    ld [$c2cf], a

jr_006_6d70:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_6d80:
    ld a, $01
    ldh [$ca], a
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6dbf

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $2010
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_6dbf

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6db1

    jr c, jr_006_6dab

jr_006_6da5:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6dbd

jr_006_6dab:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6dbd

jr_006_6db1:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6dbf

    jr c, jr_006_6dab

    jr jr_006_6da5

jr_006_6dbd:
    ldh [$c6], a

jr_006_6dbf:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    jp $2c6b


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6ded

    ld a, [$c2cf]
    and a
    jr z, jr_006_6ddd

    inc a
    ld [$c2cf], a

jr_006_6ddd:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_6ded:
    ldh a, [$ca]
    and a
    jp nz, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6e09

    jr c, jr_006_6e03

jr_006_6dfd:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6e15

jr_006_6e03:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6e15

jr_006_6e09:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6e17

    jr c, jr_006_6e03

    jr jr_006_6dfd

jr_006_6e15:
    ldh [$c6], a

jr_006_6e17:
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    ld a, $01
    ldh [$ca], a
    ld a, $04
    ldh [$c7], a
    jp $2c96


    ldh a, [$c7]
    and a
    jp nz, $2c96

    ldh a, [$cc]
    and $f0
    jp z, $2c96

    ld a, $01
    ldh [$c7], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6e61

    ld a, [$c2cf]
    and a
    jr z, jr_006_6e51

    inc a
    ld [$c2cf], a

jr_006_6e51:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_6e61:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $6e6f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, c
    ld l, [hl]
    adc [hl]
    ld l, [hl]
    sub [hl]
    inc l
    sub [hl]
    inc l
    sub [hl]
    inc l
    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp nz, Jump_006_6f29

    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6eda

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4810
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_6f34

    ld a, c
    cp $80
    jr nz, jr_006_6eda

    ld a, b
    res 7, a
    cp $10
    jr c, jr_006_6ef6

    cp $30
    jr c, jr_006_6eda

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6ecc

    jr c, jr_006_6ec6

jr_006_6ec0:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6ed8

jr_006_6ec6:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6ed8

jr_006_6ecc:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6eda

    jr c, jr_006_6ec6

    jr jr_006_6ec0

jr_006_6ed8:
    ldh [$c6], a

jr_006_6eda:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6eef

    set 5, a
    jr jr_006_6ef1

jr_006_6eef:
    res 5, a

jr_006_6ef1:
    ldh [$c6], a
    jp $2bc9


jr_006_6ef6:
    ld a, $02
    ldh [$ca], a
    ld a, $0a
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6f18

    jr c, jr_006_6f12

jr_006_6f0c:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6f24

jr_006_6f12:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6f24

jr_006_6f18:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6f26

    jr c, jr_006_6f12

    jr jr_006_6f0c

jr_006_6f24:
    ldh [$c6], a

jr_006_6f26:
    jp $2c96


Jump_006_6f29:
    ld a, $0e
    ldh [$c7], a
    ld a, $03
    ldh [$ca], a
    jp Jump_006_7c6b


Jump_006_6f34:
    ld a, $15
    ldh [$c7], a
    ld a, $04
    ldh [$ca], a
    jp Jump_006_7c6b


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_6f5f

    ld a, [$c2cf]
    and a
    jr z, jr_006_6f4f

    inc a
    ld [$c2cf], a

jr_006_6f4f:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_7043

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_6f5f:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $6f6d
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, c
    ld l, a
    add h
    ld l, a
    sub [hl]
    inc l
    ld [hl+], a
    ld [hl], b
    sub [hl]
    inc l
    sub [hl]
    inc l
    ld a, [$c12b]
    cp $01
    jp nz, $2c96

    jp Jump_006_702d


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_6fd7

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3810
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_6fd7

    ld a, b
    and a
    jr z, jr_006_6fb3

    res 7, a
    cp $10
    jr c, jr_006_6ff3

    cp $20
    jr nc, jr_006_6fd7

    ldh a, [$ad]
    bit 0, a
    jp nz, Jump_006_7038

    jr jr_006_6fd7

jr_006_6fb3:
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_6fc9

    jr c, jr_006_6fc3

jr_006_6fbd:
    ldh a, [$c6]
    res 5, a
    jr jr_006_6fd5

jr_006_6fc3:
    ldh a, [$c6]
    set 5, a
    jr jr_006_6fd5

jr_006_6fc9:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_6fd7

    jr c, jr_006_6fc3

    jr jr_006_6fbd

jr_006_6fd5:
    ldh [$c6], a

jr_006_6fd7:
    ld bc, $14ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_6fec

    set 5, a
    jr jr_006_6fee

jr_006_6fec:
    res 5, a

jr_006_6fee:
    ldh [$c6], a
    jp $2bc9


jr_006_6ff3:
    ld a, $02
    ldh [$ca], a
    ld a, $09
    ldh [$c7], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7011

    jr c, jr_006_700b

jr_006_7005:
    ldh a, [$c6]
    res 5, a
    jr jr_006_701d

jr_006_700b:
    ldh a, [$c6]
    set 5, a
    jr jr_006_701d

jr_006_7011:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_701f

    jr c, jr_006_700b

    jr jr_006_7005

jr_006_701d:
    ldh [$c6], a

jr_006_701f:
    jp $2c96


    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp nz, $2c96

Jump_006_702d:
    ld a, $04
    ldh [$ca], a
    ld a, $0d
    ldh [$c7], a
    jp Jump_006_7c6b


Jump_006_7038:
    ld a, $05
    ldh [$ca], a
    ld a, $0c
    ldh [$c7], a
    jp Jump_006_7c6b


Jump_006_7043:
    ld a, [$c122]
    and a
    jp nz, $2c96

    jp Jump_006_711c


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_706d

    ld a, [$c2cf]
    and a
    jr z, jr_006_705d

    inc a
    ld [$c2cf], a

jr_006_705d:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_7115

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_706d:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $707b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add a
    ld [hl], b
    or l
    ld [hl], b
    add sp, $70
    or h
    ld [hl], b
    sub [hl]
    inc l
    sub [hl]
    inc l
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr c, jr_006_7098

    ld a, $57
    ld [$d7d5], a
    ld [$d7d6], a
    ret


jr_006_7098:
    ld a, $57
    ld [$d7e5], a
    ld [$d7e6], a
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    ret z

    ld a, $03
    ldh [$ca], a
    ld a, $0a
    ldh [$c7], a
    jp Jump_006_7c6b


    ret


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_70cc

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4100
    call $2d54
    ld a, b
    and a
    jr z, jr_006_70ff

jr_006_70cc:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_70e1

    set 5, a
    jr jr_006_70e3

jr_006_70e1:
    res 5, a

jr_006_70e3:
    ldh [$c6], a
    jp $2bc9


    ld a, [$c2d0]
    inc a
    jr z, jr_006_710a

    ld [$c2d0], a
    ld a, $0e
    ldh [$c7], a
    ldh a, [$cb]
    bit 7, a
    jp nz, $2c6b

    jp $2c96


jr_006_70ff:
    ld a, $04
    ldh [$ca], a
    ld a, $0b
    ldh [$c7], a
    jp Jump_006_7c6b


jr_006_710a:
    ld a, $05
    ldh [$ca], a
    ld a, $0e
    ldh [$c7], a
    jp Jump_006_7c6b


Jump_006_7115:
    ld a, [$c102]
    and a
    jp nz, $2c96

Jump_006_711c:
    xor a
    ld [$d7e5], a
    ld [$d7e6], a
    jp $2c96


    ld a, [$c2f0]
    and a
    jr nz, jr_006_7137

    ld a, $01
    ld [$c2f0], a
    xor a
    ldh [$ca], a
    jp $2c96


jr_006_7137:
    ldh a, [$cb]
    bit 1, a
    jp nz, Jump_006_7158

    ld a, [$c2cf]
    and a
    jr z, jr_006_7148

    inc a
    ld [$c2cf], a

jr_006_7148:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_006_7275

    ld a, [$c2cf]
    and a
    jp nz, $2c96

Jump_006_7158:
    ldh a, [$ce]
    cp $3f
    jp z, Jump_006_7235

    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $716d
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], l
    ld [hl], c
    sub [hl]
    ld [hl], c
    jp hl


    ld [hl], c
    sub [hl]
    inc l
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_718f

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4100
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_718f

    jp $2c96


Jump_006_718f:
jr_006_718f:
    ld a, $01
    ldh [$ca], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_71df

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$bf]
    cp $02
    jp nc, Jump_006_71b1

    ld a, [$c120]
    and a
    jp z, Jump_006_7235

Jump_006_71b1:
    ld bc, $2100
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_71e2

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_71d1

    jr c, jr_006_71cb

jr_006_71c5:
    ldh a, [$c6]
    res 5, a
    jr jr_006_71dd

jr_006_71cb:
    ldh a, [$c6]
    set 5, a
    jr jr_006_71dd

jr_006_71d1:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_71df

    jr c, jr_006_71cb

    jr jr_006_71c5

jr_006_71dd:
    ldh [$c6], a

jr_006_71df:
    jp $2bc9


jr_006_71e2:
    ld a, $02
    ldh [$ca], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_718f

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_720d

    jr c, jr_006_7207

jr_006_7201:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7219

jr_006_7207:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7219

jr_006_720d:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_721b

    jr c, jr_006_7207

    jr jr_006_7201

jr_006_7219:
    ldh [$c6], a

jr_006_721b:
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_718f

    res 7, a
    cp $1e
    jp nc, $2bbf

    ld b, $20
    call $2ccf
    jp $2c6b


Jump_006_7235:
    ld a, $03
    ldh [$ca], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_724f

    jr c, jr_006_7249

jr_006_7243:
    ldh a, [$c6]
    res 5, a
    jr jr_006_725b

jr_006_7249:
    ldh a, [$c6]
    set 5, a
    jr jr_006_725b

jr_006_724f:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_725d

    jr c, jr_006_7249

    jr jr_006_7243

jr_006_725b:
    ldh [$c6], a

jr_006_725d:
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    ld a, $09
    ldh [$c7], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld e, $36
    call $29fb
    jp $2c96


Jump_006_7275:
    ld a, [$c2d3]
    add $5e
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $01
    ld [$c2d4], a
    ld e, $28
    call $29fb
    ld a, $02
    ld [$c2f0], a
    jp $2c96


    xor a
    ldh [$c1], a
    ld a, $41
    ldh [$cb], a
    ret


    ldh a, [$ca]
    and a
    jp z, $2c6b

    cp $01
    jp z, $2c96

    cp $02
    jp z, $2c1e

    jp $2bcf


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_72cd

    ld a, [$c2cf]
    and a
    jr z, jr_006_72bd

    inc a
    ld [$c2cf], a

jr_006_72bd:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_72cd:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $72db
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld c, d
    ld [hl], e
    db $e3
    ld [hl], d
    sub [hl]
    inc l
    sub [hl]
    inc l
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_7323

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    and a
    jr nz, jr_006_7319

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_730b

    jr c, jr_006_7305

jr_006_72ff:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7317

jr_006_7305:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7317

jr_006_730b:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7319

    jr c, jr_006_7305

    jr jr_006_72ff

jr_006_7317:
    ldh [$c6], a

jr_006_7319:
    ld bc, $3800
    call $2d54
    ld a, b
    and a
    jr z, jr_006_733f

jr_006_7323:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_7338

    set 5, a
    jr jr_006_733a

jr_006_7338:
    res 5, a

jr_006_733a:
    ldh [$c6], a
    jp $2bc9


jr_006_733f:
    ld a, $02
    ldh [$ca], a
    ld a, $0a
    ldh [$c7], a
    jp Jump_006_7c6b


    ld bc, $3110
    call $2d54
    ld a, b
    and a
    ret z

    ld a, $03
    ldh [$ca], a
    ld a, $13
    ldh [$c7], a
    jp Jump_006_7c6b


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_737e

    ld a, [$c2cf]
    and a
    jr z, jr_006_736e

    inc a
    ld [$c2cf], a

jr_006_736e:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_737e:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $738c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp nc, $9473

    ld [hl], e
    sub [hl]
    inc l
    sub [hl]
    inc l
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_73ab

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3800
    call $2d54
    ld a, b
    and a
    jr z, jr_006_73c7

jr_006_73ab:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_73c0

    set 5, a
    jr jr_006_73c2

jr_006_73c0:
    res 5, a

jr_006_73c2:
    ldh [$c6], a
    jp $2bc9


jr_006_73c7:
    ld a, $02
    ldh [$ca], a
    ld a, $0a
    ldh [$c7], a
    jp Jump_006_7c6b


    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ld bc, $3110
    call $2d54
    ld a, b
    and a
    ret z

    ld a, $03
    ldh [$ca], a
    ld a, $0f
    ldh [$c7], a
    jp Jump_006_7c6b


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_7413

    ld a, [$c2cf]
    and a
    jr z, jr_006_73fc

    inc a
    ld [$c2cf], a

jr_006_73fc:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

    ldh a, [$c7]
    cp $0e
    jp nc, $2c96

jr_006_7413:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $7421
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], d
    ld [hl], h
    add hl, hl
    ld [hl], h
    sub [hl]
    inc l
    sub [hl]
    inc l
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_7440

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3800
    call $2d54
    ld a, b
    and a
    jr z, jr_006_7467

jr_006_7440:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ld a, $80
    call $2d2f
    ld a, b
    and a
    jr nz, jr_006_745c

    ld b, $10
    call $2ccf
    jp $2c6b


jr_006_745c:
    ld a, $0e
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    jp $2c96


jr_006_7467:
    ld a, $02
    ldh [$ca], a
    ld a, $0a
    ldh [$c7], a
    jp Jump_006_7c6b


    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ld bc, $3110
    call $2d54
    ld a, b
    and a
    ret z

    ld a, $03
    ldh [$ca], a
    ld a, $0d
    ldh [$c7], a
    jp Jump_006_7c6b


    ldh a, [$cc]
    set 3, a
    set 2, a
    ldh [$cc], a
    ldh a, [$ca]
    and a
    jr nz, jr_006_74b0

    ldh a, [$cb]
    bit 6, a
    jp z, Jump_006_4b01

    ld a, [$c2d3]
    add $0a
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a

jr_006_74b0:
    ld b, $00
    ldh a, [$ca]
    inc a
    ldh [$ca], a
    cp $14
    jp c, Jump_006_4b01

    cp $30
    jp c, $2c96

    jp z, Jump_006_4af5

    xor a
    ldh [$bf], a
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_74e8

    ld a, [$c2cf]
    and a
    jr z, jr_006_74d8

    inc a
    ld [$c2cf], a

jr_006_74d8:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_74e8:
    ldh a, [$ca]
    cp $02
    jp z, $2c96

    and a
    jr nz, jr_006_7532

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c60

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7516

    jr c, jr_006_7510

jr_006_750a:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7522

jr_006_7510:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7522

jr_006_7516:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7524

    jr c, jr_006_7510

    jr jr_006_750a

jr_006_7522:
    ldh [$c6], a

jr_006_7524:
    ld bc, $2121
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


jr_006_7532:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_7580

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $2121
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_7580

    ldh a, [$cb]
    bit 6, a
    jp nz, Jump_006_75c1

    ld a, b
    and a
    jp nz, Jump_006_7580

    ldh a, [rDIV]
    and $c6
    jr z, jr_006_7580

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7572

    jr c, jr_006_756c

jr_006_7566:
    ldh a, [$c6]
    res 5, a
    jr jr_006_757e

jr_006_756c:
    ldh a, [$c6]
    set 5, a
    jr jr_006_757e

jr_006_7572:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7580

    jr c, jr_006_756c

    jr jr_006_7566

jr_006_757e:
    ldh [$c6], a

Jump_006_7580:
jr_006_7580:
    ld bc, $1000
    call $2cdf
    ld a, b
    and a
    jp nz, Jump_006_75a6

    ld a, $40
    call $2d2f
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_759f

    set 5, a
    jr jr_006_75a1

jr_006_759f:
    res 5, a

jr_006_75a1:
    ldh [$c6], a
    jp $2c96


Jump_006_75a6:
    ld a, $80
    call $2d2f
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_75ba

    set 5, a
    jr jr_006_75bc

jr_006_75ba:
    res 5, a

jr_006_75bc:
    ldh [$c6], a
    jp $2c96


Jump_006_75c1:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_75df

    jr c, jr_006_75d9

jr_006_75d3:
    ldh a, [$c6]
    res 5, a
    jr jr_006_75eb

jr_006_75d9:
    ldh a, [$c6]
    set 5, a
    jr jr_006_75eb

jr_006_75df:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_75ed

    jr c, jr_006_75d9

    jr jr_006_75d3

jr_006_75eb:
    ldh [$c6], a

jr_006_75ed:
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_75ff

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_75ff:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $760d
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec d
    db $76
    ld sp, $9676
    inc l
    cp l
    db $76
    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c60

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3821
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3110
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_768f

    ld a, b
    and a
    jr z, jr_006_766b

    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr nz, jr_006_766b

    ld l, $20
    ld h, $c1

jr_006_765c:
    ld a, [hl]
    and a
    jp z, Jump_006_7709

    ld a, l
    add $20
    ld l, a
    cp $a0
    jr nz, jr_006_765c

    jr jr_006_768f

jr_006_766b:
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7681

    jr c, jr_006_767b

jr_006_7675:
    ldh a, [$c6]
    res 5, a
    jr jr_006_768d

jr_006_767b:
    ldh a, [$c6]
    set 5, a
    jr jr_006_768d

jr_006_7681:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_768f

    jr c, jr_006_767b

    jr jr_006_7675

jr_006_768d:
    ldh [$c6], a

jr_006_768f:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp nz, Jump_006_76b6

    ld bc, $1000
    call $2cdf
    ld a, b
    and a
    jp nz, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_76af

    set 5, a
    jr jr_006_76b1

jr_006_76af:
    res 5, a

jr_006_76b1:
    ldh [$c6], a
    jp $2c96


Jump_006_76b6:
    ld a, $03
    ldh [$ca], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jp nz, $2bc9

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_76e1

    jr c, jr_006_76db

jr_006_76d5:
    ldh a, [$c6]
    res 5, a
    jr jr_006_76ed

jr_006_76db:
    ldh a, [$c6]
    set 5, a
    jr jr_006_76ed

jr_006_76e1:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_76ef

    jr c, jr_006_76db

    jr jr_006_76d5

jr_006_76ed:
    ldh [$c6], a

jr_006_76ef:
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp nz, $2bbf

    ldh a, [$cf]
    add $1f
    ld l, a
    ld h, $c1
    ld a, $01
    ld [hl], a
    ldh [$ca], a
    jp $2c96


Jump_006_7709:
    ld a, $02
    ldh [$ca], a
    ld a, $07
    ldh [$c7], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jp Jump_006_7c6b


    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_773d

    ld a, [$c2cf]
    and a
    jr z, jr_006_772d

    inc a
    ld [$c2cf], a

jr_006_772d:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_773d:
    ldh a, [$ca]
    and a
    jr nz, jr_006_7782

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c60

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7766

    jr c, jr_006_7760

jr_006_775a:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7772

jr_006_7760:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7772

jr_006_7766:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7774

    jr c, jr_006_7760

    jr jr_006_775a

jr_006_7772:
    ldh [$c6], a

jr_006_7774:
    ld bc, $2121
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


jr_006_7782:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_77cd

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3121
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_7c57

    ld bc, $2000
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_77cd

    ld a, b
    and a
    jr nz, jr_006_77cd

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_77bf

    jr c, jr_006_77b9

jr_006_77b3:
    ldh a, [$c6]
    res 5, a
    jr jr_006_77cb

jr_006_77b9:
    ldh a, [$c6]
    set 5, a
    jr jr_006_77cb

jr_006_77bf:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_77cd

    jr c, jr_006_77b9

    jr jr_006_77b3

jr_006_77cb:
    ldh [$c6], a

jr_006_77cd:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_77e2

    set 5, a
    jr jr_006_77e4

jr_006_77e2:
    res 5, a

jr_006_77e4:
    ldh [$c6], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_77f8

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_77f8:
    ldh a, [$c7]
    cp $19
    jp nc, $2c96

    ldh a, [$ca]
    cp $01
    jr z, jr_006_785b

    cp $02
    jp z, $2c96

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c60

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7831

    jr c, jr_006_782b

jr_006_7825:
    ldh a, [$c6]
    res 5, a
    jr jr_006_783d

jr_006_782b:
    ldh a, [$c6]
    set 5, a
    jr jr_006_783d

jr_006_7831:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_783f

    jr c, jr_006_782b

    jr jr_006_7825

jr_006_783d:
    ldh [$c6], a

jr_006_783f:
    ldh a, [$c6]
    xor e
    bit 5, a
    jp nz, Jump_006_78c3

    ld bc, $3a21
    call $2d54
    ld a, c
    cp $80
    jp nz, $2c96

    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


jr_006_785b:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_78b6

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4121
    call $2d54
    ld a, c
    cp $80
    jp nz, Jump_006_78b6

    ld a, b
    and a
    jp z, Jump_006_7c57

    ld bc, $2210
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_78b6

    ld a, b
    and a
    jr nz, jr_006_78d1

    ldh a, [$c6]
    ld e, a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_78a1

    jr c, jr_006_789b

jr_006_7895:
    ldh a, [$c6]
    res 5, a
    jr jr_006_78ad

jr_006_789b:
    ldh a, [$c6]
    set 5, a
    jr jr_006_78ad

jr_006_78a1:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_78af

    jr c, jr_006_789b

    jr jr_006_7895

jr_006_78ad:
    ldh [$c6], a

jr_006_78af:
    ldh a, [$c6]
    xor e
    bit 5, a
    jr nz, jr_006_78c3

Jump_006_78b6:
jr_006_78b6:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    jr jr_006_78c6

Jump_006_78c3:
jr_006_78c3:
    ld a, e
    ldh [$c6], a

jr_006_78c6:
    ld a, $19
    ldh [$c7], a
    xor a
    ld [$c2d0], a
    jp $2c96


jr_006_78d1:
    ld a, $02
    ldh [$ca], a
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ld a, $0c
    ldh [$c7], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_790e

    ld a, [$c2cf]
    and a
    jr z, jr_006_78fe

    inc a
    ld [$c2cf], a

jr_006_78fe:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

    ld a, [$c2cf]
    and a
    jp nz, $2c96

jr_006_790e:
    ldh a, [$ca]
    and a
    jr nz, jr_006_7953

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c60

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7937

    jr c, jr_006_7931

jr_006_792b:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7943

jr_006_7931:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7943

jr_006_7937:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7945

    jr c, jr_006_7931

    jr jr_006_792b

jr_006_7943:
    ldh [$c6], a

jr_006_7945:
    ld bc, $4121
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7c60


jr_006_7953:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_799e

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3821
    call $2d54
    ld a, b
    and a
    jp z, Jump_006_7c57

    ld bc, $2000
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_006_799e

    ld a, b
    and a
    jr nz, jr_006_799e

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7990

    jr c, jr_006_798a

jr_006_7984:
    ldh a, [$c6]
    res 5, a
    jr jr_006_799c

jr_006_798a:
    ldh a, [$c6]
    set 5, a
    jr jr_006_799c

jr_006_7990:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_799e

    jr c, jr_006_798a

    jr jr_006_7984

jr_006_799c:
    ldh [$c6], a

jr_006_799e:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_79b3

    set 5, a
    jr jr_006_79b5

jr_006_79b3:
    res 5, a

jr_006_79b5:
    ldh [$c6], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_79c9

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_79c9:
    ldh a, [$ca]
    cp $01
    jr z, jr_006_7a1e

    jr jr_006_79d7

Jump_006_79d1:
    xor a
    ldh [$ca], a
    jp $2c96


jr_006_79d7:
    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7a17

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_79fb

    jr c, jr_006_79f5

jr_006_79ef:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7a07

jr_006_79f5:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7a07

jr_006_79fb:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7a09

    jr c, jr_006_79f5

    jr jr_006_79ef

jr_006_7a07:
    ldh [$c6], a

jr_006_7a09:
    ld bc, $3a21
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    jp Jump_006_7a17


Jump_006_7a17:
    ld a, $01
    ldh [$ca], a
    jp $2c96


jr_006_7a1e:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_7a60

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4121
    call $2d54
    ld a, c
    cp $80
    jp nz, Jump_006_7a60

    ld a, b
    and a
    jp z, Jump_006_79d1

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7a52

    jr c, jr_006_7a4c

jr_006_7a46:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7a5e

jr_006_7a4c:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7a5e

jr_006_7a52:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7a60

    jr c, jr_006_7a4c

    jr jr_006_7a46

jr_006_7a5e:
    ldh [$c6], a

Jump_006_7a60:
jr_006_7a60:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_7a75

    set 5, a
    jr jr_006_7a77

jr_006_7a75:
    res 5, a

jr_006_7a77:
    ldh [$c6], a
    jp $2c96


    ld a, [$c2d0]
    add $04
    ld [$c2d0], a
    ret nz

    ld hl, $c120

jr_006_7a88:
    ld a, [hl]
    and a
    jr z, jr_006_7a95

    ld a, l
    add $20
    ld l, a
    cp $a0
    jr c, jr_006_7a88

    ret


jr_006_7a95:
    ld a, l
    cp $40
    jr z, jr_006_7ac8

    cp $60
    jr z, jr_006_7ad6

    cp $80
    jr z, jr_006_7af0

    ld a, [$c140]
    and a
    jr z, jr_006_7aae

    ld a, [$c148]
    cp $1c
    ret c

jr_006_7aae:
    ld a, [$c160]
    and a
    jr z, jr_006_7aba

    ld a, [$c168]
    cp $1c
    ret c

jr_006_7aba:
    ld a, [$c180]
    and a
    jr z, jr_006_7ac6

    ld a, [$c188]
    cp $1c
    ret c

jr_006_7ac6:
    jr jr_006_7b14

jr_006_7ac8:
    ld a, [$c120]
    and a
    jr z, jr_006_7aae

    ld a, [$c128]
    cp $1c
    jr nc, jr_006_7aae

    ret


jr_006_7ad6:
    ld a, [$c120]
    and a
    jr z, jr_006_7ae2

    ld a, [$c128]
    cp $1c
    ret c

jr_006_7ae2:
    ld a, [$c140]
    and a
    jr z, jr_006_7aba

    ld a, [$c148]
    cp $1c
    jr nc, jr_006_7aba

    ret


jr_006_7af0:
    ld a, [$c120]
    and a
    jr z, jr_006_7afc

    ld a, [$c128]
    cp $1c
    ret c

jr_006_7afc:
    ld a, [$c140]
    and a
    jr z, jr_006_7b08

    ld a, [$c148]
    cp $1c
    ret c

jr_006_7b08:
    ld a, [$c160]
    and a
    jr z, jr_006_7b14

    ld a, [$c168]
    cp $1c
    ret c

jr_006_7b14:
    ld a, $52
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    inc l
    ld a, $04
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ld a, l
    add $08
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    ldh a, [$c4]
    cp $1a
    jr nz, jr_006_7b68

    ldh a, [$cf]
    add $17
    ld l, a
    ld h, $c1
    ld a, $0b
    ld [hl+], a
    inc l
    ld a, $16
    ld [hl], a

jr_006_7b68:
    ldh a, [$cb]
    bit 7, a
    jr z, jr_006_7b6e

jr_006_7b6e:
    ldh a, [$be]
    cp $19
    jp z, Jump_006_7b7e

    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    jp $2c96


Jump_006_7b7e:
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    jp $2c96


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_006_7b96

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, $2c96

jr_006_7b96:
    ldh a, [$ca]
    and a
    jr nz, jr_006_7bf9

    jr jr_006_7bac

jr_006_7b9d:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    jp $2c96


jr_006_7bac:
    ldh a, [$ce]
    cp $3f
    jp z, Jump_006_7be8

    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_006_7c3b

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7bd7

    jr c, jr_006_7bd1

jr_006_7bcb:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7be3

jr_006_7bd1:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7be3

jr_006_7bd7:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7be5

    jr c, jr_006_7bd1

    jr jr_006_7bcb

jr_006_7be3:
    ldh [$c6], a

jr_006_7be5:
    jp $2c96


Jump_006_7be8:
    ld a, $01
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    jp $2c96


jr_006_7bf9:
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_006_7c3b

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$ad]
    and $f0
    and a
    jr z, jr_006_7b9d

    ld bc, $3838
    call $2d54
    ld a, b
    and a
    jr nz, jr_006_7c3b

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_006_7c2d

    jr c, jr_006_7c27

jr_006_7c21:
    ldh a, [$c6]
    res 5, a
    jr jr_006_7c39

jr_006_7c27:
    ldh a, [$c6]
    set 5, a
    jr jr_006_7c39

jr_006_7c2d:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_006_7c3b

    jr c, jr_006_7c27

    jr jr_006_7c21

jr_006_7c39:
    ldh [$c6], a

Jump_006_7c3b:
jr_006_7c3b:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_006_7c50

    set 5, a
    jr jr_006_7c52

jr_006_7c50:
    res 5, a

jr_006_7c52:
    ldh [$c6], a
    jp $2bc9


Jump_006_7c57:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    jp $2c96


Jump_006_7c60:
    ld a, $01
    ldh [$ca], a
    dec a
    ld [$c2d0], a
    jp $2c96


Jump_006_7c6b:
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    jp $2c96


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0000
    ld bc, $0300
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0400
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0200
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    jr jr_006_7dfe

    jr jr_006_7e00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_7df1

jr_006_7df1:
    ld [$0010], sp
    nop
    jr jr_006_7e0f

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_7dfe:
    nop
    nop

jr_006_7e00:
    db $10
    db $10
    jr nz, jr_006_7e0c

    ld b, $14
    ld bc, $1006
    db $10
    db $10
    db $10

jr_006_7e0c:
    jr @+$0c

    db $10

jr_006_7e0f:
    ld b, $10
    db $10
    db $10
    jr nz, jr_006_7e1d

    inc d
    ld bc, $0800
    jr nz, jr_006_7e25

    jr @+$0c

jr_006_7e1d:
    jr jr_006_7e1f

jr_006_7e1f:
    nop
    inc c
    inc c
    jr nz, jr_006_7e2a

    inc b

jr_006_7e25:
    inc d
    ld bc, $0c04
    inc c

jr_006_7e2a:
    inc c
    inc c
    ld [de], a
    ld [$040c], sp
    inc c
    inc c
    inc c
    jr nz, jr_006_7e3b

    inc d
    ld bc, $0600
    jr jr_006_7e43

jr_006_7e3b:
    ld [de], a
    ld [$0012], sp
    nop
    ld [$2008], sp

jr_006_7e43:
    inc b
    inc bc
    inc d
    ld bc, $0803
    ld [$0808], sp
    inc c
    dec b
    ld [$0803], sp
    ld [$2008], sp
    inc b
    inc d
    ld bc, $0400
    db $10
    dec b
    inc c
    dec b
    inc c
    nop
    nop
    inc b
    inc b
    jr nz, jr_006_7e66

    ld [bc], a
    inc d

jr_006_7e66:
    ld bc, $0402
    inc b
    inc b
    inc b
    ld b, $03
    inc b
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
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_006_7e96

    inc d

jr_006_7e96:
    ld bc, $0100
    inc b
    ld bc, $0103
    inc bc
    nop
    nop
    inc d
    inc d
    jr nz, jr_006_7eae

    rlca
    inc d
    ld bc, $1407
    inc d
    inc d
    inc d
    add hl, de
    inc c

jr_006_7eae:
    inc d
    rlca
    inc d
    inc d
    inc d
    jr nz, jr_006_7ebf

    inc d
    ld bc, $0a00
    jr z, @+$0e

    add hl, de
    inc c
    add hl, de
    nop

jr_006_7ebf:
    nop
    jr @+$1a

    jr nz, jr_006_7ed0

    add hl, bc
    inc d
    ld bc, $1809
    jr @+$1a

    jr jr_006_7ef1

    db $10
    jr jr_006_7ed9

jr_006_7ed0:
    jr jr_006_7eea

    jr @+$22

    inc c
    inc d
    ld bc, $0c00

jr_006_7ed9:
    jr nc, jr_006_7eeb

    inc h
    db $10
    inc h
    nop
    nop
    inc c
    inc c
    jr nz, jr_006_7eec

    inc b
    inc d
    ld bc, $0c04
    inc c

jr_006_7eea:
    inc c

jr_006_7eeb:
    inc c

jr_006_7eec:
    inc d
    ld b, $0c
    inc b
    inc c

jr_006_7ef1:
    inc c
    inc c
    jr nz, jr_006_7efd

    inc d
    ld bc, $0800
    inc e
    ld a, [bc]
    inc d
    ld a, [bc]

jr_006_7efd:
    inc d
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$20
    ld a, [$ecff]
    ld a, [$f0f0]
    ldh a, [$f0]
    or $e8
    ldh a, [$fa]
    ldh a, [$f0]
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
    db $f4
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
    ld hl, sp-$03
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
    ld a, [$fefc]
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
    cp $ff
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
    db $ec
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
    add sp, -$09
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
    ld a, [$f4ec]
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

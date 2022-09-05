SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    ld c, $26
    xor a
    ld [c], a
    ld a, $80
    ld [c], a
    dec c
    ld hl, $ffdb
    xor a
    ld [hl-], a
    ld [c], a
    dec c
    ld a, $77
    ld [hl-], a
    ld [c], a
    ld a, $00
    ldh [rNR32], a
    ld a, $80
    ldh [rNR30], a
    ldh [rNR34], a
    ld a, $08
    ldh [rNR10], a
    ld hl, $c300
    ld bc, HeaderComplementCheck

jr_00d_4027:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00d_4027

    ld a, $ff
    ld [$c306], a
    xor a
    ldh [$d0], a

Call_00d_4036:
    push af
    ld hl, $c32d
    ld de, $0024
    ld b, $08
    xor a

jr_00d_4040:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_00d_4040

    xor a
    ld hl, $c300
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$c30a], a
    ld hl, $c307
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld c, $da
    ld a, $77
    ld [c], a
    pop af
    ret


    push af
    push bc
    push de
    push hl
    xor a
    ldh [$d2], a
    ld b, $08
    ld hl, $c32d
    ld de, $0024

jr_00d_406c:
    ld a, [hl]
    bit 7, a
    jr z, jr_00d_4076

    and $7f
    or $43
    ld [hl], a

jr_00d_4076:
    add hl, de
    dec b
    jr nz, jr_00d_406c

jr_00d_407a:
    ld a, $ff
    ldh [$d2], a
    pop bc
    pop de
    pop hl
    pop af
    ret


    push af
    push bc
    push de
    push hl
    xor a
    ldh [$d2], a
    ld b, $08
    ld hl, $c32d
    ld de, $0024

jr_00d_4092:
    ld a, [hl]
    bit 6, a
    jr z, jr_00d_409a

    xor $c0
    ld [hl], a

jr_00d_409a:
    add hl, de
    dec b
    jr nz, jr_00d_4092

    jr jr_00d_407a

Call_00d_40a0:
    push af
    ld hl, $c307
    ld a, $0a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop af
    ret


Call_00d_40ac:
    push af
    ld hl, $c307
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    pop af
    ret


Call_00d_40b8:
    push af
    ldh a, [$d1]
    add a
    ld e, a
    ld d, $00
    ld hl, $477d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c30a]
    and $80
    jr nz, jr_00d_40db

    xor a
    ldh [$d2], a

jr_00d_40d0:
    ld a, [hl+]
    ldh [$d4], a
    cp $ff
    jr nz, jr_00d_40dd

    ld a, $ff
    ldh [$d2], a

jr_00d_40db:
    pop af
    ret


jr_00d_40dd:
    push hl
    add a
    add a
    ld c, a
    ld b, $00
    add a
    add a
    add a
    ld l, a
    ld h, $00
    add hl, bc
    ld bc, $c32d
    add hl, bc
    ld a, [hl]
    and $80
    jr z, jr_00d_40fa

    inc hl
    ld b, $c3
    ld c, [hl]
    xor a
    ld [bc], a
    dec hl

jr_00d_40fa:
    ld a, $80
    ld [hl+], a
    pop de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld bc, $0008
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    ld bc, $0007
    add hl, bc
    xor a
    ld [hl], a
    ld bc, $0008
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld l, e
    jr jr_00d_40d0

    ldh a, [$d0]
    bit 1, a
    call nz, Call_00d_4036
    bit 0, a
    call nz, Call_00d_40b8
    bit 3, a
    call nz, Call_00d_40a0
    bit 2, a
    call nz, Call_00d_40ac
    xor a
    ldh [$d0], a
    xor a
    ld [$c304], a
    ld de, $c32d
    ldh [$db], a

Jump_00d_414d:
    ld a, [de]
    and $ec
    ld [de], a
    and $80
    jp z, Jump_00d_432f

    inc de
    ld a, [de]
    ldh [$d3], a
    dec de
    ld hl, $0005
    add hl, de
    dec [hl]
    jp nz, Jump_00d_41ef

    ld a, [de]
    bit 3, a
    jp nz, Jump_00d_4389

Jump_00d_4169:
    dec hl
    dec hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a

Jump_00d_416e:
    ld a, [hl+]
    cp $c8
    jr c, jr_00d_4182

    push hl
    sub $c8
    add a
    ld c, a
    ld b, $00
    ld hl, $43ce
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_00d_4182:
    ldh [$d4], a
    ld c, l
    ld b, h
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    or a
    jr nz, jr_00d_4190

    ld a, [bc]
    inc bc

jr_00d_4190:
    ld [hl+], a
    cp [hl]
    jr c, jr_00d_4195

    ld a, [hl]

jr_00d_4195:
    srl a
    dec a
    inc hl
    ld [hl+], a

Jump_00d_419a:
    ld hl, $0002
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ldh a, [$d4]

Jump_00d_41a4:
    ld hl, $0008
    add hl, de
    add [hl]
    ld c, a
    ldh a, [$d3]
    cp $03
    jr z, jr_00d_41c4

    ld a, c
    add a
    ld c, a
    ld b, $00
    ld hl, $46d5
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld hl, $0009
    add hl, de
    add [hl]
    ld c, a
    ld a, $00
    adc b

jr_00d_41c4:
    ld hl, $000a
    add hl, de
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, [de]
    bit 5, a
    jr nz, jr_00d_41ea

    ld a, [hl+]
    ld [hl+], a
    ld hl, $0011
    add hl, de
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld hl, $0017
    add hl, de
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, $01
    ld [hl-], a

Jump_00d_41e9:
    ld a, [de]

jr_00d_41ea:
    or $01
    ld [de], a
    jr jr_00d_420a

Jump_00d_41ef:
    ld a, [hl+]
    inc hl
    cp [hl]
    jr nz, jr_00d_420a

    ld a, [de]
    bit 5, a
    jr nz, jr_00d_420a

    ld hl, $001e
    add hl, de
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    ld hl, $0015
    add hl, de
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, $01
    ld [hl-], a

Jump_00d_420a:
jr_00d_420a:
    ld hl, $0019
    add hl, de
    ld a, [hl]
    ld hl, $000b
    add hl, de
    ld c, $d8
    cp $80
    jr nc, jr_00d_4222

    add [hl]
    ld [hl-], a
    ld [c], a
    ld b, a
    jr nc, jr_00d_4231

    inc [hl]
    jr jr_00d_422d

jr_00d_4222:
    cpl
    ld b, a
    ld a, [hl]
    scf
    sbc b
    ld [hl-], a
    ld [c], a
    ld b, a
    jr nc, jr_00d_4231

    dec [hl]

jr_00d_422d:
    ld a, [de]
    or $10
    ld [de], a

jr_00d_4231:
    inc c
    ld a, [hl]
    ld [c], a
    dec c
    inc hl
    inc hl
    inc hl
    dec [hl]
    jr nz, jr_00d_4268

    inc [hl]
    inc hl
    ld a, [hl+]
    or a
    jr z, jr_00d_4268

    ld l, [hl]
    ld h, a

jr_00d_4243:
    ld a, [hl+]
    cp $80
    jr c, jr_00d_424f

    jr nz, jr_00d_4256

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_00d_4243

jr_00d_424f:
    add b
    jr nc, jr_00d_425e

    ld a, $ff
    jr jr_00d_425e

jr_00d_4256:
    cpl
    ld b, a
    ld a, [c]
    scf
    sbc b
    jr nc, jr_00d_425e

    xor a

jr_00d_425e:
    ld [c], a
    ld b, l
    ld a, h
    ld hl, $000e
    add hl, de
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00d_4268:
    dec c
    ld hl, $0013
    add hl, de
    dec [hl]
    jr nz, jr_00d_429b

    inc hl

Jump_00d_4271:
    ld a, [hl+]
    or a
    jr z, jr_00d_4299

    ld l, [hl]
    ld h, a

jr_00d_4277:
    ld a, [hl+]
    cp $ff
    jr nz, jr_00d_4281

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_00d_4277

jr_00d_4281:
    ld [c], a
    ld a, [hl+]
    ldh [$d4], a
    ld a, l
    ld b, h
    ld hl, $0015
    add hl, de
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ldh a, [$d4]
    ld [hl-], a
    ld a, [c]
    ld [hl], a
    ld a, [de]
    or $01
    ld [de], a
    jr jr_00d_429e

jr_00d_4299:
    dec hl
    dec hl

jr_00d_429b:
    dec hl
    ld a, [hl+]
    ld [c], a

jr_00d_429e:
    ld hl, $0018
    add hl, de
    dec c
    ld a, [hl+]
    ld [c], a
    ldh a, [$d3]
    ld l, a
    ld h, $c3
    ld a, [$c304]
    inc a
    cp [hl]
    jr z, jr_00d_42b8

    jr c, jr_00d_432f

    ld [hl], a
    ld a, [de]
    or $03
    ld [de], a

jr_00d_42b8:
    ld a, l
    cp $02
    jr nz, jr_00d_42f9

    ld a, [de]
    bit 1, a
    jr z, jr_00d_42e5

    ld hl, $001b
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ldh [rNR30], a
    ld b, $08
    ld c, $30

jr_00d_42d0:
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_00d_42d0

    ldh a, [$d9]
    or $80
    ldh [$d9], a
    ldh [rNR30], a
    ld a, [de]
    or $01
    ld [de], a

jr_00d_42e5:
    ld hl, $ff1c
    ld c, $d7
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    ld a, [de]
    and $11
    jr z, jr_00d_4326

    inc c
    ld a, [c]
    ld [hl], a
    jr jr_00d_4326

jr_00d_42f9:
    ldh a, [$d3]
    ld c, a
    add a
    add a
    add c
    add $11
    ld l, a
    ld h, $ff
    ld c, $d6
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [de]
    bit 0, a
    jr nz, jr_00d_431c

    inc c
    inc hl
    ld a, [c]
    ld [hl+], a
    ld a, [de]
    bit 4, a
    jr z, jr_00d_4326

    inc c
    ld a, [c]
    ld [hl+], a
    jr jr_00d_4326

jr_00d_431c:
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    or $80
    ld [hl+], a

jr_00d_4326:
    ld hl, $001a
    add hl, de
    ldh a, [$db]
    or [hl]
    ldh [$db], a

Jump_00d_432f:
jr_00d_432f:
    ld hl, $0024
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c304
    inc [hl]
    ld a, [hl]
    cp $08
    jp nz, Jump_00d_414d

    ld hl, $c300
    ld b, $04
    ld c, $12

jr_00d_4346:
    ld a, [hl+]
    or a
    jr nz, jr_00d_434b

    ld [c], a

jr_00d_434b:
    ld a, $05
    add c
    ld c, a
    dec b
    jr nz, jr_00d_4346

    ld hl, $ffda
    ld c, $24
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld hl, $c306
    and [hl]
    ld [c], a
    ld hl, $c307
    ld c, $da
    ld a, [hl+]
    or a
    jr nz, jr_00d_4386

    ld a, [hl]
    or a
    jr z, jr_00d_4377

    dec hl
    ld [hl], a
    ld a, [c]
    add $11
    jr c, jr_00d_4388

    ld [c], a
    jr jr_00d_4388

jr_00d_4377:
    inc hl
    ld a, [hl-]
    or a
    jr z, jr_00d_4388

    dec hl
    ld [hl], a
    ld a, [c]
    sub $11
    jr c, jr_00d_4388

    ld [c], a
    jr jr_00d_4388

jr_00d_4386:
    dec hl
    dec [hl]

jr_00d_4388:
    ret


Jump_00d_4389:
    and $d7
    ld [de], a
    ldh a, [$d3]
    cp $03
    jr z, jr_00d_43b3

    ld hl, $0019
    add hl, de
    xor a
    ld [hl], a
    ld a, [$c30c]
    or a
    jp z, Jump_00d_4169

    ld hl, $0005
    add hl, de
    ld [hl+], a
    cp [hl]
    jr c, jr_00d_43a8

    ld a, [hl]

jr_00d_43a8:
    srl a
    dec a
    inc hl
    ld [hl+], a
    ld a, [$c30b]
    jp Jump_00d_41a4


jr_00d_43b3:
    ld a, [$c30e]
    or a
    jp z, Jump_00d_4169

    ld hl, $0005
    add hl, de
    ld [hl+], a
    cp [hl]
    jr c, jr_00d_43c3

    ld a, [hl]

jr_00d_43c3:
    srl a
    dec a
    inc hl
    ld [hl+], a
    ld a, [$c30d]
    jp Jump_00d_41a4


    ld a, $44
    ld b, l
    ld b, h
    ld c, h
    ld b, h
    ld e, b
    ld b, h
    ld e, l
    ld b, h
    ld h, d
    ld b, h
    ld h, a
    ld b, h
    sub d
    ld b, h
    sub a
    ld b, h
    sbc h
    ld b, h
    and c
    ld b, h
    or b
    ld b, h
    or a
    ld b, h
    cp h
    ld b, h
    pop bc
    ld b, h
    add $44
    bit 0, h
    ret nc

    ld b, h
    ld a, [hl+]
    ld b, l
    cpl
    ld b, l
    inc [hl]
    ld b, l
    add hl, sp
    ld b, l
    ld a, $45
    ld b, e
    ld b, l
    ld d, d
    ld b, l
    ld e, b
    ld b, l
    ld e, [hl]
    ld b, l
    ld h, l
    ld b, l
    ld l, h
    ld b, l
    db $76
    ld b, l
    ld a, e
    ld b, l
    add b
    ld b, l
    sbc a
    ld b, l
    xor e
    ld b, l
    or e
    ld b, l
    cp e
    ld b, l
    db $db
    ld b, l
    pop hl
    ld b, l
    ld hl, sp+$45
    ld [$0d46], sp
    ld b, [hl]
    inc l
    ld b, [hl]
    inc sp
    ld b, [hl]
    add hl, sp
    ld b, [hl]
    ccf
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld a, h
    ld b, [hl]
    add d
    ld b, [hl]
    add a
    ld b, [hl]
    sub h
    ld b, [hl]
    sbc c
    ld b, [hl]
    and d
    ld b, [hl]
    or c
    ld b, [hl]
    or a
    ld b, [hl]
    ret


    ld b, [hl]
    ld a, [$c30a]
    pop hl
    xor [hl]
    jr jr_00d_4451

    ld a, [$c30a]
    pop hl
    or [hl]
    jr jr_00d_4451

    ld a, [$c30a]
    pop hl
    and [hl]

jr_00d_4451:
    ld [$c30a], a
    inc hl
    jp Jump_00d_416e


    ld bc, $c32a
    jr jr_00d_446a

    ld bc, $c327
    jr jr_00d_446a

    ld bc, $c324
    jr jr_00d_446a

    ld bc, $c321

jr_00d_446a:
    ld a, [bc]
    ld hl, $0012
    add hl, de
    ld [hl], a
    inc bc
    ld a, [bc]
    ldh [$d4], a
    inc bc
    ld a, [bc]
    ld [$c30d], a
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    ld [hl], $01
    or a
    jr nz, jr_00d_4486

    pop hl
    ld a, [hl+]
    push hl

jr_00d_4486:
    dec a
    ld [$c30e], a
    ld a, [de]
    set 3, a
    ld [de], a
    pop bc
    jp Jump_00d_419a


    ld bc, $c32a
    jr jr_00d_44a4

    ld bc, $c327
    jr jr_00d_44a4

    ld bc, $c324
    jr jr_00d_44a4

    ld bc, $c321

jr_00d_44a4:
    pop hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    jp Jump_00d_416e


    ld hl, $0004
    xor a
    jp Jump_00d_4570


    ld bc, $c31e
    jr jr_00d_44d3

    ld bc, $c31b
    jr jr_00d_44d3

    ld bc, $c318
    jr jr_00d_44d3

    ld bc, $c315
    jr jr_00d_44d3

    ld bc, $c312
    jr jr_00d_44d3

    ld bc, $c30f

jr_00d_44d3:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00d_44e5

    ld [$c30c], a
    pop hl
    ld a, [hl+]
    ld [$c30b], a
    jr jr_00d_44ee

jr_00d_44e5:
    pop hl
    ld a, [hl+]
    ld [$c30b], a
    ld a, [hl+]
    ld [$c30c], a

jr_00d_44ee:
    push hl
    ld a, [de]
    or $28
    ld [de], a
    ld hl, $0019
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    push bc
    ld hl, $0017
    add hl, de
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, $01
    ld [hl-], a
    ld hl, $0005
    add hl, de
    pop bc
    ld a, [bc]
    ldh [$d4], a
    inc bc
    ld a, [bc]
    ld [hl], a
    ld b, a
    ld a, [$c30c]
    sub b
    jr nc, jr_00d_451f

    ld a, [$c30c]
    ld [hl], a
    xor a

jr_00d_451f:
    ld [$c30c], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    pop bc
    jp Jump_00d_419a


    ld bc, $c31e
    jr jr_00d_4546

    ld bc, $c31b
    jr jr_00d_4546

    ld bc, $c318
    jr jr_00d_4546

    ld bc, $c315
    jr jr_00d_4546

    ld bc, $c312
    jr jr_00d_4546

    ld bc, $c30f

jr_00d_4546:
    pop hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    jp Jump_00d_416e


    ld hl, $0011
    xor a
    jr jr_00d_4570

    ld hl, $000c
    xor a
    jr jr_00d_4570

    ld hl, $000c
    ld a, $01
    jr jr_00d_4570

    ld hl, $000c
    add hl, de
    ld a, $01
    ld [hl], a
    ld hl, $0006
    xor a

Jump_00d_4570:
jr_00d_4570:
    add hl, de
    ld [hl], a
    pop hl
    jp Jump_00d_416e


    ld hl, $4593
    jr jr_00d_4583

    ld hl, $4597
    jr jr_00d_4583

    ld hl, $459b

jr_00d_4583:
    ldh a, [$d3]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld hl, $001a
    add hl, de
    ld [hl], a
    pop hl
    jp Jump_00d_416e


    db $10
    jr nz, jr_00d_45d6

    add b
    ld bc, $0402
    ld [$2211], sp
    ld b, h
    adc b
    ld hl, $0019
    add hl, de
    ld c, l
    ld b, h
    pop hl
    ld a, [hl+]
    ld [bc], a
    jp Jump_00d_416e


    ld a, [de]
    res 5, a
    ld [de], a
    pop hl
    jp Jump_00d_416e


    ld a, [de]
    set 5, a
    ld [de], a
    pop hl
    jp Jump_00d_416e


    pop bc
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    or a
    jr nz, jr_00d_45c6

    ld a, [bc]
    inc bc

jr_00d_45c6:
    ld [hl+], a
    cp [hl]
    jr c, jr_00d_45cb

    ld a, [hl]

jr_00d_45cb:
    srl a
    dec a
    inc hl
    ld [hl+], a
    ld hl, $0002
    add hl, de
    ld a, c
    ld [hl+], a

jr_00d_45d6:
    ld a, b
    ld [hl+], a
    jp Jump_00d_420a


    ld hl, $0018
    jp Jump_00d_46c0


    ld hl, $0021
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00d_45f4

    pop bc
    ld b, a
    xor a
    ld [hl-], a
    ld l, [hl]
    ld h, b
    inc hl
    inc hl
    jp Jump_00d_416e


jr_00d_45f4:
    pop hl
    jp Jump_00d_416e


    ld hl, $0020
    add hl, de
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld l, c
    ld h, b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_00d_416e


    ld hl, $0023
    jr jr_00d_4610

    ld hl, $0022

jr_00d_4610:
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00d_4620

    dec [hl]
    jr nz, jr_00d_4624

    pop hl
    ld bc, $0003
    add hl, bc
    jp Jump_00d_416e


jr_00d_4620:
    pop bc
    ld a, [bc]
    ld [hl], a
    push bc

jr_00d_4624:
    pop hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_00d_416e


    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_00d_416e


    ld hl, $0004
    jp Jump_00d_46c0


    ld hl, $0009
    jp Jump_00d_46c0


    ld hl, $0008
    jp Jump_00d_46c0


    ld hl, $001f
    jp Jump_00d_46c0


    pop bc
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    or a
    jr nz, jr_00d_4656

    ld a, [bc]
    inc bc

jr_00d_4656:
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld hl, $0002
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld hl, $001f
    add hl, de
    ld a, [hl]
    ld hl, $0012
    add hl, de
    or a
    jr z, jr_00d_4673

    ld b, a
    ld a, [hl]
    and $f0
    or b

jr_00d_4673:
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    jp Jump_00d_41e9


    ld hl, $000c
    jp Jump_00d_46c0


    ld hl, $0010
    jr jr_00d_46a5

    ld hl, $0006
    add hl, de
    ld c, l
    ld b, h
    pop hl
    ld a, [hl+]
    add a
    ld [bc], a
    jp Jump_00d_416e


    ld hl, $001d
    jr jr_00d_46a5

    ld a, [de]
    or $02
    ld [de], a
    ld hl, $001b
    jr jr_00d_46a5

    ld hl, $0016

jr_00d_46a5:
    add hl, de
    ld c, l
    ld b, h
    pop hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    jp Jump_00d_416e


    ld hl, $001a
    jp Jump_00d_46c0


    ld hl, $0017
    add hl, de
    xor a
    ld [hl], a
    ld hl, $0012

Jump_00d_46c0:
    add hl, de
    ld c, l
    ld b, h
    pop hl
    ld a, [hl+]
    ld [bc], a
    jp Jump_00d_416e


    pop hl
    ldh a, [$d3]
    ld l, a
    ld h, $c3
    xor a
    ld [hl], a
    ld [de], a
    jp Jump_00d_432f


    xor h
    rst $38
    inc e
    nop
    add a
    nop
    db $eb
    nop
    ld c, c
    ld bc, $01a2
    rst $30
    ld bc, $0247
    sub c
    ld [bc], a
    ret c

    ld [bc], a
    dec de
    inc bc
    ld e, e
    inc bc
    sub [hl]
    inc bc
    adc $03
    inc bc
    inc b
    dec [hl]
    inc b
    ld h, l
    inc b
    sub c
    inc b
    cp e
    inc b
    db $e3
    inc b
    add hl, bc
    dec b
    inc l
    dec b
    ld c, [hl]
    dec b
    ld l, l
    dec b
    adc e
    dec b
    and a
    dec b
    jp nz, $db05

    dec b
    ld a, [c]
    dec b
    add hl, bc
    ld b, $1e
    ld b, $32
    ld b, $44
    ld b, $56
    ld b, $67
    ld b, $77
    ld b, $85
    ld b, $93
    ld b, $a1
    ld b, $ad
    ld b, $b9
    ld b, $c4
    ld b, $cf
    ld b, $d9
    ld b, $e2
    ld b, $eb
    ld b, $f3
    ld b, $fb
    ld b, $03
    rlca
    ld a, [bc]
    rlca
    db $10
    rlca
    rla
    rlca
    dec e
    rlca
    ld [hl+], a
    rlca
    daa
    rlca
    inc l
    rlca
    ld sp, $3607
    rlca
    ld a, [hl-]
    rlca
    ld a, $07
    ld b, c
    rlca
    ld b, l
    rlca
    ld c, b
    rlca
    ld c, e
    rlca
    ld c, [hl]
    rlca
    ld d, c
    rlca
    ld d, h
    rlca
    ld d, [hl]
    rlca
    ld e, c
    rlca
    ld e, e
    rlca
    ld e, l
    rlca
    ld e, a
    rlca
    ld h, c
    rlca
    ld h, d
    rlca
    ld h, h
    rlca
    ld h, [hl]
    rlca
    ld h, a
    rlca
    ld l, c
    rlca
    ld l, d
    rlca
    ld l, e
    rlca
    ld l, h
    rlca
    ld l, l
    rlca
    ld l, [hl]
    rlca
    ld l, a
    rlca
    ld [$c448], sp
    ld c, a
    inc l
    ld d, [hl]
    inc h
    ld e, c
    daa
    ld e, [hl]
    ld c, h
    ld h, [hl]
    ld c, c
    ld h, a
    db $76
    ld l, b
    ld h, d
    ld l, a
    and d
    ld l, a
    ldh [$6f], a
    ld [hl+], a
    ld [hl], b
    ld l, l
    ld [hl], b
    xor c
    ld [hl], b
    rst $20
    ld [hl], b
    add hl, hl
    ld [hl], c
    ld h, l
    ld [hl], c
    and a
    ld [hl], c
    pop hl
    ld [hl], c
    rra
    ld [hl], d
    ld e, h
    ld [hl], d
    sbc b
    ld [hl], d
    db $e3
    ld [hl], d
    jr nc, jr_00d_4820

    ld [hl], h
    ld [hl], e
    jp $fd73


    ld [hl], e
    ccf
    ld [hl], h
    sub b
    ld [hl], h
    jp nc, $1074

    ld [hl], l
    ld d, b
    ld [hl], l
    sub b
    ld [hl], l
    jp nc, $1275

    db $76
    ld c, h
    db $76
    sub [hl]
    db $76
    call c, $1876
    ld [hl], a
    ld e, l
    ld [hl], a
    sub e
    ld [hl], a
    ld [$2677], a
    ld a, b
    ld [hl], d
    ld a, b
    cp c
    ld a, b
    inc bc
    ld a, c
    jr nz, jr_00d_47db

jr_00d_47db:
    rst $38
    reti


    ld b, a
    ld b, b
    nop
    rst $38
    sbc $47
    ld h, b
    nop
    rst $38
    db $e3
    ld b, a
    ld [bc], a
    ld b, [hl]
    adc c
    xor e
    call $edef
    res 5, c
    add a
    ld h, l
    ld b, l
    ld h, l
    ld b, e
    ld hl, $0000
    ld de, $4612
    sbc e
    sbc $ee
    rst $38
    rst $38
    xor $ed
    cp c
    ld h, h
    ld hl, $0011
    nop
    nop

jr_00d_480a:
    add hl, de
    ld c, b
    ld bc, $b301
    ld c, c
    ld [bc], a
    ld [bc], a
    add c
    ld c, e
    inc bc
    inc bc
    inc sp
    ld c, [hl]
    rst $38
    db $fc
    ld l, b
    ld c, a
    ld a, [$4f70]
    rst $20

jr_00d_4820:
    db $ec
    ret nz

    ld hl, sp-$45
    ld c, a
    ld sp, hl
    jr nc, jr_00d_480a

    db $10
    ld h, b
    dec d
    ld h, b
    inc e
    ld h, b
    db $fc
    ld a, b
    ld c, a
    db $e4
    ld a, [c]
    ld [$15e6], sp
    rla
    jr jr_00d_4853

    jr jr_00d_4852

    jr @+$1c

    inc e
    dec e
    inc e
    ld a, [de]
    db $d3
    ldh a, [rSB]
    add hl, de
    ld c, b
    db $fc
    add d
    ld c, a
    ld a, [$4f88]

jr_00d_484c:
    push af
    inc bc
    ld a, [c]
    ld [$ece7], sp

jr_00d_4852:
    nop

jr_00d_4853:
    ld sp, hl
    inc b
    inc e
    or $1c
    inc e
    or $1c
    ld hl, $23f6
    inc h
    or $f9

jr_00d_4861:
    db $10
    rst $30
    jr @-$2b

    inc e
    jr nz, jr_00d_4861

    inc b
    ld [c], a
    ld a, [c]
    ld [$f61c], sp
    inc e
    ld hl, $23f6
    inc h
    or $f9
    db $10
    rst $30
    jr jr_00d_484c

    ld hl, $f220
    ld [$04f9], sp
    ld [c], a
    inc e
    or $1c
    db $ed
    ld hl, $23f6
    inc h
    or $21
    ld hl, sp-$50
    ld c, a
    ld sp, hl
    inc c
    rst $30
    inc c
    ld a, [c]
    jr jr_00d_48bc

    ld hl, $2624
    xor $46
    ld c, b
    ld hl, $23f6
    or $24
    ld hl, $b0f8
    ld c, a
    ld sp, hl
    inc c
    rst $30
    inc c
    ld a, [c]
    jr jr_00d_48d2

    add hl, hl
    jr z, @+$28

    db $d3
    db $fc
    ld l, b
    ld c, a

jr_00d_48b1:
    ld a, [$4f70]
    rst $20
    db $ec
    add b
    ld sp, hl
    jr jr_00d_48b1

    jr jr_00d_48e2

jr_00d_48bc:
    jr nc, @+$27

    jr nc, @-$05

    inc c
    rst $30
    inc c
    ld h, $18

jr_00d_48c5:
    dec h
    jr jr_00d_48eb

    jr @+$27

    jr jr_00d_48c5

    jr jr_00d_48c5

    jr @+$2a

    jr nc, jr_00d_48f9

jr_00d_48d2:
    jr nc, @-$05

    inc c
    rst $30
    inc c
    jr z, @+$1a

jr_00d_48d9:
    daa
    jr @+$2a

    jr jr_00d_4908

    jr jr_00d_48d9

    jr jr_00d_48d9

jr_00d_48e2:
    jr jr_00d_490e

    jr nc, jr_00d_490e

    jr nc, @-$05

    inc c
    rst $30
    inc c

jr_00d_48eb:
    ld a, [hl+]
    jr jr_00d_4916

    jr jr_00d_4916

    jr jr_00d_4916

    jr @-$05

    ld h, b
    rst $30
    ld c, b
    ld h, $a8

jr_00d_48f9:
    ld sp, hl
    inc c
    rst $30

jr_00d_48fc:
    inc c
    daa
    jr jr_00d_48fc

    add d
    ld c, a
    ld a, [$4f88]
    push af
    nop
    ld a, [c]

jr_00d_4908:
    ld [$ece7], sp
    nop
    ld sp, hl
    inc b

jr_00d_490e:
    db $10
    ld c, $10
    ld [de], a
    db $10
    ld [de], a
    inc de
    ld [de], a

jr_00d_4916:
    inc de
    dec d
    inc de
    dec d
    rla
    dec d
    inc de
    dec d
    inc de
    ld [de], a
    inc de
    ld [de], a
    db $10
    ld [de], a
    db $10
    ld c, $f0
    ld bc, $4905
    inc de
    ld [de], a
    inc de
    dec d
    inc de
    dec d
    rla
    dec d
    rla
    add hl, de
    rla
    add hl, de
    ld a, [de]
    add hl, de
    rla
    add hl, de
    rla
    dec d
    rla
    dec d
    inc de
    dec d
    inc de
    ld [de], a
    rla
    dec d
    rla
    add hl, de
    rla
    add hl, de
    ld a, [de]
    add hl, de
    ld a, [de]
    inc e
    ld a, [de]
    inc e
    ld e, $1c
    ld a, [de]
    inc e
    ld a, [de]
    add hl, de
    ld a, [de]
    add hl, de
    rla
    add hl, de
    rla
    dec d
    db $fc

jr_00d_495b:
    ld l, b
    ld c, a
    ld a, [$4f70]
    db $d3

jr_00d_4961:
    ld sp, hl
    jr jr_00d_495b

    jr jr_00d_4976

    jr z, jr_00d_4961

    jr nc, jr_00d_4961

    ld h, b
    ld a, [de]
    sbc b
    push hl
    push af
    nop
    db $e4
    rst $30
    inc c
    db $fc
    sbc d
    ld c, a

jr_00d_4976:
    rra
    ld [bc], a
    ld e, $02
    dec e
    ld [bc], a
    inc e
    ld [de], a
    and $fc
    sbc [hl]
    ld c, a
    ldh a, [rSB]
    db $76
    ld c, c
    db $fc
    and d
    ld c, a
    push hl
    rra
    ld [bc], a
    ld e, $02
    dec e
    ld [bc], a
    inc e
    ld [de], a
    and $fc
    and [hl]
    ld c, a
    ldh a, [rSB]
    adc d
    ld c, c
    db $fc
    xor d
    ld c, a
    push hl
    rra
    ld [bc], a
    ld e, $02
    dec e
    ld [bc], a
    inc e
    ld [de], a
    and $fc
    xor [hl]
    ld c, a
    ldh a, [rSB]
    sbc [hl]
    ld c, c
    or $30
    pop af
    add hl, de
    ld c, b
    db $fc
    ld a, h
    ld c, a
    ld a, [$4f7e]
    db $ec
    nop
    ld sp, hl
    inc b
    push af
    ld bc, $08f2
    push hl
    dec d
    or $15
    cpl
    jr nc, jr_00d_49fa

    ldh a, [rSB]
    or e
    ld c, c
    and $13
    or $13
    cpl
    jr nc, @+$34

    ldh a, [rSB]
    call $e549
    ld [de], a
    or $12
    cpl
    jr nc, jr_00d_4a10

    ldh a, [rSB]
    ret c

    ld c, c
    db $fc
    ld a, b
    ld c, a
    db $e4
    ld a, [c]
    ld [$1311], sp
    dec d
    rla
    dec d
    inc de
    dec d
    rla
    jr @+$1c

    jr jr_00d_4a0b

    rst $28
    ld bc, $49b3
    db $fc
    ld a, h

jr_00d_49fa:
    ld c, a
    ld a, [$4f7e]
    push hl
    db $ec
    nop
    ld sp, hl
    inc b
    push af
    ld bc, $08f2
    dec d
    dec l
    dec d
    dec d

jr_00d_4a0b:
    jr nc, @+$17

    dec d
    inc [hl]
    dec d

jr_00d_4a10:
    dec d
    jr nc, jr_00d_4a28

    and $13
    dec l
    inc de
    inc de
    jr nc, @+$15

    inc de
    inc [hl]
    inc de
    inc de
    jr nc, @+$15

    push hl
    ld de, $112d
    ld de, $1130
    db $ed

jr_00d_4a28:
    ld de, $1134
    ld de, $1130
    and $11
    dec l
    ld de, $3011
    ld de, $0cf9

jr_00d_4a37:
    rst $30
    inc c
    db $fc
    add d
    ld c, a
    ld a, [$4f88]
    ld hl, sp-$50
    ld c, a
    db $d3
    rst $20
    dec e
    jr jr_00d_4a66

    jr jr_00d_4a37

    ld hl, sp+$49
    db $fc
    add d
    ld c, a
    ld a, [$4f88]
    ld sp, hl
    inc b
    ld a, [c]
    ld [$1de7], sp
    or $1f
    or $21
    inc hl
    jr jr_00d_4a7b

    ld hl, $2124
    dec e
    ld sp, hl
    inc c
    rst $30
    inc c

jr_00d_4a66:
    db $d3
    dec e

jr_00d_4a68:
    jr jr_00d_4a89

    jr jr_00d_4a68

    sub b
    ld c, a
    ld a, [$4f94]
    ld a, [c]
    ld [$f621], sp
    ld hl, $2826
    dec hl
    dec l
    dec hl

jr_00d_4a7b:
    jr z, jr_00d_4aa3

    jr z, jr_00d_4aaa

    ldh a, [rSB]
    ld [hl], e
    ld c, d
    inc hl
    or $23
    jr z, @+$2c

    dec l

jr_00d_4a89:
    cpl
    dec l
    ld a, [hl+]
    jr z, @+$2c

    dec l
    ldh a, [rSB]
    add e
    ld c, d
    inc h
    or $24
    add hl, hl
    dec hl
    ld l, $30
    ld l, $2b
    add hl, hl
    dec hl
    ld l, $f0
    ld bc, $4a93

jr_00d_4aa3:
    rra
    or $1f
    db $d3
    dec hl
    db $10
    add hl, hl

jr_00d_4aaa:
    jr @+$28

    ld [$1029], sp
    dec hl
    ld [$08f2], sp
    ld a, [de]
    or $1a
    db $d3
    ld h, $10
    inc h
    jr jr_00d_4add

    ld [$1827], sp
    ld a, [c]
    ld [bc], a
    push af
    nop
    jr z, jr_00d_4aeb

    inc h
    inc hl
    ld hl, $1e1f
    inc e
    db $d3
    or $50
    or $48
    ld a, [c]
    ld [$1a1a], sp
    ld a, [de]
    ldh a, [rSB]
    cp a
    ld c, d
    rst $20
    db $ec
    nop
    ld sp, hl

jr_00d_4add:
    inc b
    db $fc
    add d
    ld c, a
    ld a, [$4f88]
    db $10
    ld c, $10
    ld [de], a
    db $10
    ld [de], a
    inc de

jr_00d_4aeb:
    ld [de], a
    inc de
    dec d
    inc de
    dec d
    rla
    dec d
    inc de
    dec d
    inc de
    ld [de], a
    inc de
    ld [de], a
    db $10
    ld [de], a
    db $10
    ld c, $13
    ld [de], a
    inc de
    dec d
    inc de
    dec d
    rla
    dec d
    rla
    add hl, de
    rla
    add hl, de
    ld a, [de]
    add hl, de
    rla
    add hl, de
    rla
    dec d
    rla
    dec d
    inc de
    dec d
    inc de
    ld [de], a
    db $fc

jr_00d_4b15:
    ld l, b
    ld c, a
    ld a, [$4f70]
    db $d3
    ld sp, hl
    jr jr_00d_4b15

    jr jr_00d_4b3c

    jr z, jr_00d_4b39

    jr z, jr_00d_4b39

    jr z, jr_00d_4b36

    ld c, b
    push hl
    push af
    nop
    db $e4
    rst $30
    inc c
    or $04
    di
    add d
    db $fc
    sbc [hl]
    ld c, a
    rra
    ld [bc], a

jr_00d_4b36:
    ld e, $02
    dec e

jr_00d_4b39:
    ld [bc], a
    inc e
    ld [de], a

jr_00d_4b3c:
    and $fc
    and d
    ld c, a
    ldh a, [rSB]
    inc [hl]
    ld c, e
    db $fc
    and [hl]
    ld c, a
    push hl
    rra
    ld [bc], a
    ld e, $02
    dec e
    ld [bc], a
    inc e
    ld [de], a
    and $fc
    xor d
    ld c, a
    ldh a, [rSB]
    ld c, b
    ld c, e
    db $fc
    xor [hl]
    ld c, a
    push hl
    rra
    ld [bc], a
    ld e, $02
    dec e
    ld [bc], a
    db $ed
    inc e
    ld [de], a
    and $ee
    ld e, h
    ld c, e
    inc e
    ld c, $e7
    di
    add b
    db $fc
    ld l, b
    ld c, a
    ld a, [$4f70]
    ld a, [c]
    ld [$04f9], sp
    ld hl, $1c20
    ld a, [de]
    rla
    db $10
    pop af
    or e
    ld c, c
    rst $18
    or $19
    ld [bc], a
    sbc $ec
    ld [hl+], a
    inc b
    db $dd
    db $ec
    ld sp, $dc03
    db $ec
    dec l
    inc bc
    db $db
    db $ec
    ld h, $03
    rst $20
    push af
    nop
    add sp, $00
    db $fc
    reti


    ld b, a
    ld a, [$47de]
    ei
    ld hl, sp+$47
    ld a, [c]
    ld [$04f9], sp
    reti


    dec d
    or $15
    db $ed
    ret c

    dec d
    dec d
    dec d
    reti


    dec d
    or $d9
    dec d
    ret c

    dec d
    dec d
    dec d
    reti


    inc de
    or $13
    ret c

    inc de
    inc de
    inc de
    reti


    inc de
    or $d9
    inc de
    ret c

    inc de
    inc de
    inc de
    reti


    ld [de], a
    or $12
    ret c

    ld [de], a
    ld [de], a
    ld [de], a
    reti


    ld [de], a
    or $d9
    ld [de], a
    ret c

    ld [de], a
    ld [de], a
    ld [de], a
    reti


    ld de, $18f6
    ret c

    dec e
    jr jr_00d_4bf4

    reti


    db $10
    inc e
    reti


    rla
    ret c

    jr nz, @+$1e

    rla
    xor $81
    ld c, e
    ret c

    ld hl, $1515
    reti


jr_00d_4bf4:
    dec d
    or $d9
    dec d
    ret c

    ld hl, $1515
    reti


    inc de
    or $13
    ret c

    rra
    inc de
    inc de
    reti


    inc de
    or $d9
    inc de
    ret c

    rra
    inc de
    inc de
    reti


jr_00d_4c0e:
    ld [de], a
    or $12
    ret c

    ld e, $12
    ld [de], a
    reti


    ld [de], a
    or $d9

jr_00d_4c19:
    ld [de], a
    ret c

    ld e, $12
    ld [de], a
    db $d3
    push de
    ld de, $f908
    inc b
    push de
    ld de, $d504
    ld de, $f204

jr_00d_4c2b:
    ld [$08f9], sp
    and $d7
    jr jr_00d_4c19

    rst $10
    dec e
    push hl
    push de
    jr jr_00d_4c0e

    ld de, $d9e7
    db $10
    reti


    inc e
    ret c

    rla
    and $d7
    jr nz, jr_00d_4c2b

    sub $1c
    push hl
    sub $17
    db $fc
    reti


    ld b, a
    ld sp, hl
    inc b
    ld a, [c]
    ld [$d9e7], sp
    dec d
    or $d9
    dec d
    ret c

    dec d
    or $d9
    dec d
    ldh a, [rSB]
    ld c, c
    ld c, h
    reti


    inc de
    or $d9
    inc de
    ret c

    inc de
    or $d9
    inc de
    ldh a, [rSB]
    ld e, a
    ld c, h
    reti


    ld de, $d9f6
    ld de, $d8ed
    ld de, $d9f6
    ld de, $11d9
    or $d9
    ld de, $11d8
    or $d9
    ld de, $11d9
    or $d9
    ld de, $11d8
    or $d9
    ld de, $11d9
    or $d9
    ld de, $13d8
    or $d9
    inc de
    xor $49
    ld c, h
    ret c

    ld de, $11d9
    db $d3
    push de
    ld de, $d504
    ld de, $f204
    ld [$d7e6], sp
    ld de, $d9e7
    ld de, $d6e5
    ld de, $d9e7
    ld de, $11d8
    ret c

    ld de, $11d9
    rst $10
    ld de, $11d9
    ret c

    ld de, $11d6
    reti


    ld de, $11d9
    sub $11
    reti


    ld de, $d8e6
    inc de
    rst $20
    rst $10
    inc de
    push hl
    sub $13
    db $fc
    reti


    ld b, a
    rst $20
    reti


    dec d
    db $fc
    sbc $47
    or $d9
    dec d
    db $fc
    reti


    ld b, a
    ret c

    dec d
    db $fc
    sbc $47
    reti


    dec d
    reti


    dec d
    ldh a, [$03]
    pop de
    ld c, h
    db $fc
    reti


    ld b, a
    reti


    rla
    db $fc
    sbc $47
    or $d9

jr_00d_4cf7:
    rla
    db $fc
    reti


    ld b, a
    ret c

    rla
    db $fc
    sbc $47
    reti


    rla
    reti


    rla
    ldh a, [$03]
    db $ed
    ld c, h
    db $fc
    reti


jr_00d_4d0a:
    ld b, a
    reti


    jr jr_00d_4d0a

    sbc $47

jr_00d_4d10:
    or $d9
    jr jr_00d_4d10

    reti


jr_00d_4d15:
    ld b, a
    ret c

    jr jr_00d_4d15

    sbc $47
    reti


    jr jr_00d_4cf7

    jr jr_00d_4d10

    inc bc
    ld [$fc4d], sp
    reti


    ld b, a
    reti


    inc de
    or $d9
    inc de
    and $d8
    inc de
    rst $20
    sub $13
    push hl
    reti


    inc de
    rst $20
    push de
    inc de
    reti


    inc de
    rst $10
    inc de
    and $d8
    inc de
    rst $20
    sub $13

jr_00d_4d41:
    push hl
    reti


    inc de
    rst $20
    reti


    ld a, [de]
    or $d9
    ld a, [de]
    and $d8
    ld a, [de]
    rst $20
    sub $1a
    push hl
    reti


    ld a, [de]
    rst $20
    ret c

    ld a, [de]
    ret c

    ld a, [de]
    reti


    inc de
    ret c

    rrca
    reti


    rrca
    db $d3
    push de
    rrca
    inc b
    push de
    rrca
    inc b
    ld sp, hl
    jr nc, jr_00d_4d41

    db $10
    ld h, b
    add sp, -$14
    db $ed
    or $48
    and $26
    ld [$26e7], sp
    ld [$26e5], sp
    ld [$00e8], sp
    rst $20
    xor $65
    ld c, l
    rst $20
    ld h, $08
    ld h, $04
    ld h, $04
    ld sp, $e608
    ld sp, $e708
    dec l
    ld [$26e5], sp
    ld [$defc], sp
    ld b, a
    add sp, $00
    rst $20
    reti


    db $10
    ld [$10d9], sp
    ld [$d9fc], sp
    ld b, a
    add sp, -$14
    ld h, $04
    ld h, $04
    ld a, [c]
    ld [$31e6], sp
    rst $20
    dec l
    push hl
    ld h, $e8
    nop
    rst $20
    db $fc
    reti


    ld b, a
    reti


    db $10
    or $d9
    db $10
    ret c

    db $10
    reti


    db $10
    reti


    db $10
    ldh a, [rTAC]
    or b
    ld c, l
    reti


    db $10
    rst $10
    ld c, $d9
    ld c, $e8
    db $ec
    ld sp, $f6e8
    rrca
    rrca
    rrca
    add sp, -$14
    dec l
    add sp, -$0a
    rrca
    add sp, -$14
    dec l
    add sp, -$0a
    rrca
    add hl, de
    add sp, $00
    reti


    db $10
    rst $10
    db $10
    reti


    db $10
    add sp, -$14
    dec l
    ld h, $d3
    add sp, -$14
    inc hl
    inc b
    inc hl
    inc b
    add sp, $00
    ld a, [c]
    ld [$10d9], sp
    rst $10
    db $10
    reti


    db $10
    add sp, -$14
    inc hl
    add sp, -$0a
    rrca
    rrca
    add sp, $00
    db $d3
    db $10
    db $10
    add sp, -$14
    ld a, [c]
    ld [$f62d], sp
    ld sp, $26f6
    add sp, -$0a
    rrca
    rrca
    add sp, -$14
    db $d3
    inc hl
    inc b
    inc hl
    inc b
    add sp, -$14
    ld a, [c]
    ld [$2de6], sp
    push hl
    ld h, $f6
    or $f6
    or $e7
    add sp, -$14
    inc hl
    inc hl
    db $d3
    or $30
    add sp, $00
    pop af
    add c
    ld c, e
    jp nc, $2661

    nop
    pop de
    pop hl
    inc b
    ld bc, $81d0
    inc bc
    nop
    rst $08
    jp $0224


    rst $20
    db $e4
    push af
    nop
    ld a, [c]
    ld [$f6ce], sp
    or $cd
    or $f6
    adc $f6
    adc $cd
    or $f6
    ldh a, [rTMA]
    ld c, c
    ld c, [hl]
    db $d3
    call z, $cc08
    inc b
    call z, $f204
    ld [$e6cc], sp
    call z, $cce7
    push hl
    call z, $cee7
    adc $d3
    call $cd04
    inc b
    ld a, [c]
    ld [$cce6], sp
    rst $20
    call z, $cce5
    rst $20
    adc $f6
    adc $cd
    or $ce
    ldh a, [$0b]
    ld a, c
    ld c, [hl]
    adc $f6
    adc $cd
    adc $f2
    inc b
    call z, $f2cc
    ld [$cce6], sp
    rst $20
    adc $e5
    call z, $cee7
    call $cecd
    call z, $cdce
    call z, $cece
    call z, $e6ce
    call z, $cce7
    push hl
    call z, $cee7
    or $ce
    call $cece
    ldh a, [$0b]
    xor b
    ld c, [hl]
    adc $f6
    adc $e6
    call $cce7
    push hl
    adc $e7
    call z, $ccce
    and $cd
    rst $20
    call z, $cee5
    adc $f6
    adc $e6
    call $cce7
    push hl
    adc $e7
    call $cecd
    call $f2ce
    inc b

jr_00d_4ed7:
    call $f2cd
    ld [$f6ce], sp
    or $f2
    jr jr_00d_4ed7

    or $f6
    db $ed
    or $f6
    or $f2
    ld [$cde6], sp
    rst $20
    call $cde5
    ld a, [c]
    jr @-$17

    xor $d9
    ld c, [hl]
    ld a, [c]
    ld [$f2cc], sp
    inc b
    call z, $f2cc
    ld [$cce6], sp
    rst $20
    call z, $cce5
    rst $20
    call z, $cece
    ld a, [c]
    inc b
    call $f2cd
    ld [$cce6], sp
    rst $20
    call z, $cce5
    rst $20
    adc $f6
    adc $cd
    adc $ce
    ldh a, [rTAC]
    inc d
    ld c, a
    adc $cc
    adc $cc
    adc $ce
    adc $cc
    adc $cc
    adc $ce
    adc $cc
    adc $e6
    call z, $cee7
    ld a, [c]
    inc b
    push hl
    call z, $f2cc
    ld [$cee7], sp
    call z, $e6ce
    call $cee7
    push hl
    adc $f6
    or $e6
    call z, $e7f6
    call z, $e5f6
    call z, $cee7
    adc $f2
    inc b
    call z, $f2cc
    ld [$cce6], sp
    push hl
    call z, $cbe7
    or $f6
    or $cd
    call $18f2
    or $f6
    pop af
    inc sp
    ld c, [hl]
    ld l, e
    ld e, $b0
    ld b, $a0
    ld b, $90
    nop
    ld h, b
    jr @+$42

    ld b, $30
    ld b, $20
    nop
    adc e
    ld e, $e0
    nop
    pop bc
    nop
    add c
    ld [bc], a
    ld h, b
    nop
    pop de
    inc bc
    and c
    inc bc
    sub b
    nop
    db $10
    ld b, $40
    inc bc
    jr nc, jr_00d_4f90

    jr nz, jr_00d_4f90

jr_00d_4f90:
    and c
    inc bc
    ld h, b
    nop
    db $10
    ld [bc], a
    jr nc, jr_00d_4f9a

    jr nz, jr_00d_4f9a

jr_00d_4f9a:
    ldh [rNR13], a
    pop af
    dec b
    or b
    inc de
    pop bc
    dec b
    add b
    inc de
    sub c
    dec b
    ld d, b
    inc de
    ld h, c
    dec b
    jr nz, jr_00d_4fbf

    ld sp, $1005
    nop
    nop
    nop
    ld bc, $0001
    nop
    rst $38
    rst $38
    add b
    or b
    ld c, a
    nop
    ld bc, $0000

jr_00d_4fbf:
    rst $38
    nop
    add b
    cp e
    ld c, a
    nop
    nop
    push de
    ld c, a
    ld bc, $ef01
    ld d, c
    ld [bc], a
    ld [bc], a
    sbc c
    ld d, e
    inc bc
    inc bc
    jp hl


    ld d, h
    rst $38
    db $fc
    inc bc
    ld d, [hl]
    ld a, [$5607]
    pop hl
    and $f5
    ld bc, $04f9
    db $ec
    add b
    ld hl, sp+$0f
    ld d, [hl]
    or $15
    jr nz, @+$0d

    or $20
    jr nz, jr_00d_4ff8

    or $16
    or $20
    jr nz, jr_00d_4ffe

    or $16
    or $15

jr_00d_4ff8:
    jr nz, jr_00d_5005

    db $ed
    db $e4
    db $fc
    rlca

jr_00d_4ffe:
    ld d, [hl]
    or $1a
    inc h
    dec bc
    jr nz, @+$0c

jr_00d_5005:
    ld e, $0b
    inc e
    ld b, $fc
    inc bc
    ld d, [hl]
    ld sp, hl
    inc b
    or $15
    ld e, $0b
    or $20
    ld e, $0a
    or $16
    or $20
    ld e, $0a
    or $16
    or $15
    ld e, $0b
    db $e4
    db $fc
    rlca
    ld d, [hl]
    or $1a
    ld hl, $230b
    dec d
    ld hl, $fc06
    inc bc
    ld d, [hl]
    ld sp, hl
    inc b
    xor $e6
    ld c, a
    ld sp, hl
    inc b
    or $20
    jr nz, jr_00d_5051

    ld hl, $e40b
    db $fc
    rlca
    ld d, [hl]
    or $19
    inc h
    dec bc
    dec h
    dec d
    ld a, [hl+]
    dec bc
    jr z, jr_00d_5056

    dec h
    dec bc
    ld hl, $1e0b

jr_00d_5051:
    dec d
    dec e
    dec bc
    inc e
    dec b

jr_00d_5056:
    ld e, $05
    inc e
    ld b, $1e
    dec b
    inc e
    dec b
    ld e, $06
    ld hl, sp+$0f
    ld d, [hl]
    rst $30
    ld b, b
    inc e
    ld e, h
    db $fc
    inc bc
    ld d, [hl]
    ld hl, sp+$1a
    ld d, [hl]
    rst $20
    db $e4
    pop hl
    jr z, jr_00d_507c

    or $0b
    ld hl, $250b
    ld a, [bc]
    jr z, @+$0d

    ld sp, hl
    db $10

jr_00d_507c:
    rst $30
    jr nz, @+$2c

    ld c, e
    db $e4
    pop hl
    or $15
    ld h, $0b
    dec l
    ld a, [bc]
    or $0b
    dec l
    dec bc
    inc l
    dec d
    ld a, [hl+]
    dec bc
    jr z, jr_00d_50a7

    ld h, $0b
    ldh a, [rSB]
    ld l, [hl]
    ld d, b
    dec h
    dec d
    ld h, $0b
    dec h
    dec d
    ld sp, hl
    db $10
    rst $30

jr_00d_50a1:
    rlca
    inc l
    jr nz, @-$1a

    pop hl
    ld a, [hl+]

jr_00d_50a7:
    dec bc
    or $0a
    dec h
    dec bc
    inc h
    dec bc
    inc hl
    dec d
    dec h
    dec bc
    inc hl
    dec d
    ld sp, hl
    db $10
    rst $30
    rlca
    ld a, [hl+]
    jr nz, jr_00d_50e3

    jr nz, jr_00d_50a1

    pop hl
    inc hl
    dec bc
    dec h
    dec d
    ld h, $15
    jr z, @+$0d

    dec h
    dec bc
    ld h, $02
    daa
    ld bc, $0228
    add hl, hl
    ld bc, $0f2a
    ld h, $15
    ld hl, $230b
    dec bc
    dec h
    ld a, [bc]
    or $0b
    ld e, $0b
    dec h
    ld a, [bc]
    inc h
    dec bc
    ld sp, hl

jr_00d_50e3:
    db $10
    rst $30
    rlca
    inc hl
    dec hl
    db $e4
    pop hl
    or $15
    cpl
    dec bc
    ld hl, sp+$1a
    ld d, [hl]
    ld sp, hl
    rlca
    jr nc, jr_00d_5105

    or $10
    cpl
    db $10
    or $10
    db $e4
    dec l
    dec d
    cpl
    dec bc
    dec l
    dec d
    cpl
    dec bc
    db $ed

jr_00d_5105:
    ld sp, $2d15
    dec bc
    ld a, [hl+]
    dec d
    ld sp, hl
    db $10
    rst $30
    rlca
    jr z, @+$4d

    pop hl
    xor $ee
    ld d, b
    ld sp, $3015
    dec bc
    ld sp, $f915
    db $10
    rst $30
    rlca
    inc [hl]
    ld c, e
    pop hl
    db $e4
    ld [hl], $0a
    ld [hl], $0b
    ld [hl], $0b
    ld [hl], $0a
    or $0b
    ld [hl], $0b
    ld [hl-], a
    ld [bc], a
    inc sp
    ld bc, $0234
    dec [hl]
    ld bc, $0f36
    ld sp, $f60b
    dec d
    ld sp, $350b
    ld a, [bc]
    dec [hl]
    dec bc
    dec [hl]
    dec bc
    dec [hl]
    ld a, [bc]
    or $0b
    dec [hl]
    dec bc
    ld sp, $3202
    ld bc, $0233
    inc [hl]
    ld bc, $0a35
    jr nc, @+$12

    dec l
    db $10
    dec [hl]

jr_00d_515a:
    db $10
    ld hl, sp+$25
    ld d, [hl]
    ld a, [c]
    ld b, b
    ld sp, hl
    jr nz, jr_00d_515a

    jr nz, jr_00d_5199

    ld [hl-], a
    ld sp, $e42f
    pop hl
    db $d3
    ld hl, sp+$1a
    ld d, [hl]
    db $e4
    pop hl
    jr z, jr_00d_517c

    or $0b
    ld hl, $250b
    ld a, [bc]
    jr z, @+$0d

    ld sp, hl
    db $10

jr_00d_517c:
    rst $30
    jr nz, @+$2c

    ld c, e
    db $e4
    pop hl
    or $15
    ld h, $0b
    dec l
    ld a, [bc]
    or $0b
    dec l
    dec bc
    inc l
    dec d
    ld a, [hl+]
    dec bc
    jr z, jr_00d_51a7

    ld h, $0b
    ldh a, [rSB]
    ld l, [hl]
    ld d, c
    dec h

jr_00d_5199:
    dec d
    ld h, $0b
    dec h
    dec d
    ld sp, hl
    db $10
    rst $30

jr_00d_51a1:
    rlca
    inc l
    jr nz, @-$1a

    pop hl
    ld a, [hl+]

jr_00d_51a7:
    dec bc
    or $0a
    dec h
    dec bc
    inc h
    dec bc
    inc hl
    dec d
    dec h
    dec bc
    inc hl
    dec d
    ld sp, hl
    db $10
    rst $30
    rlca
    ld a, [hl+]
    jr nz, @+$2a

    jr nz, jr_00d_51a1

    pop hl
    ld h, $0b
    dec h
    dec d
    ld h, $15
    jr z, @+$0d

    dec h
    dec bc
    ld h, $02
    daa
    ld bc, $0228
    add hl, hl
    ld bc, $0f2a
    ld h, $15
    ld hl, $230b
    dec bc
    dec h
    dec d
    ld e, $0b
    jr nz, @+$17

    ld hl, $f60b
    dec d
    add sp, -$05
    ld hl, $e80b
    nop
    dec d
    ld a, [bc]
    or $16
    pop af
    push de
    ld c, a
    db $fc
    inc bc
    ld d, [hl]
    ld a, [$5607]
    pop hl
    push af
    ld bc, $f9e5
    inc bc
    db $ec
    add b
    ld hl, sp+$0f
    ld d, [hl]
    or $15
    ld h, $0b
    or $20
    ld h, $0a
    or $16
    or $20
    ld h, $0a
    or $16
    or $15
    ld h, $0b
    db $ed
    or $15
    inc h
    dec bc
    jr nz, jr_00d_5225

    ld e, $0b
    inc e
    dec bc
    or $15
    dec h
    dec bc
    or $20

jr_00d_5225:
    dec h
    ld a, [bc]
    or $16
    or $20
    dec h
    ld a, [bc]
    or $16
    or $15
    dec h
    dec bc
    or $15
    ld hl, $230b
    dec d
    ld hl, $ee0b
    nop
    ld d, d
    or $20
    inc h
    dec d
    dec h
    dec bc
    or $15
    inc h
    dec bc
    dec h
    dec d
    ld a, [hl+]
    dec bc
    jr z, jr_00d_5258

    dec h
    dec bc
    ld hl, $1e0b
    dec d
    dec e
    dec bc
    inc e
    dec b

jr_00d_5258:
    ld e, $05
    inc e
    ld b, $1e
    dec b
    inc e
    dec b
    ld e, $06
    ld hl, sp+$0f
    ld d, [hl]
    rst $30
    ld b, b
    inc e
    ld h, b
    ld hl, sp+$1a
    ld d, [hl]
    db $fc
    rlca
    ld d, [hl]
    ld a, [$560b]
    rst $20
    db $e4
    pop hl
    or $15
    inc e
    dec bc
    or $20
    dec de
    dec d
    or $0b
    dec de
    dec d
    ld sp, hl
    db $10
    rst $30
    jr nz, jr_00d_52a0

    ld c, e
    db $e4
    pop hl
    add hl, de
    dec d
    inc d
    dec bc
    ld [de], a
    dec d
    db $10
    dec bc
    ldh a, [rSB]

jr_00d_5293:
    ld [hl], l
    ld d, d
    ld de, $1720
    dec d
    ld sp, hl
    jr nz, jr_00d_5293

    rlca
    ld d, $2b
    db $e4

jr_00d_52a0:
    pop hl
    or $0a
    ld [de], a
    dec bc
    inc d
    dec bc
    ld sp, hl
    db $10
    rst $30
    rlca
    dec d
    jr nz, @-$1a

    pop hl
    ld [de], a

jr_00d_52b0:
    dec d
    ld sp, hl
    db $10
    rst $30
    rlca
    inc d
    dec hl
    ld a, [c]
    jr nz, jr_00d_52b0

    add hl, de
    inc de
    jr jr_00d_52d0

    rla
    rrca
    db $d3
    db $e4
    pop hl
    inc d
    dec d
    rla
    dec bc
    inc e
    ld a, [bc]
    dec de
    dec bc
    ld a, [de]
    dec bc
    ld hl, sp+$1a
    ld d, [hl]

jr_00d_52d0:
    ld sp, hl
    rlca
    inc e
    db $10
    or $10
    ld a, [de]
    db $10
    or $10
    db $e4
    jr jr_00d_52f2

    ld a, [de]
    dec bc
    jr jr_00d_52f6

    ld a, [de]
    dec bc
    db $ed
    jr @+$04

    add hl, de
    ld bc, $021a
    dec de
    ld bc, $0f1c
    add hl, de
    dec bc
    dec d
    dec d

jr_00d_52f2:
    ld [de], a
    dec bc
    jr jr_00d_5300

jr_00d_52f6:
    add hl, de
    dec bc
    dec d
    dec bc
    ld de, $120a
    dec bc
    db $10
    dec bc

jr_00d_5300:
    xor $d0
    ld d, d
    jr @+$04

    add hl, de
    ld bc, $021a
    dec de
    ld bc, $0f1c
    ld a, [de]
    dec bc
    inc e
    dec d
    ld e, $20
    dec h
    dec bc
    ld hl, $1e0a
    dec bc
    inc e
    dec bc
    ld sp, hl
    db $10

jr_00d_531d:
    rst $30
    rlca
    ld a, [c]
    jr nz, @+$1b

    or $f6
    add hl, de

jr_00d_5325:
    jr jr_00d_531d

    or $18
    ld a, [c]
    ld b, b
    ld sp, hl
    jr nz, jr_00d_5325

    jr nz, jr_00d_5347

    dec d
    ld d, $17
    db $d3
    db $e4
    pop hl
    or $15
    inc e
    dec bc
    or $20
    dec de
    dec d
    or $0b
    dec de
    dec d
    ld sp, hl
    db $10
    rst $30
    jr nz, jr_00d_5361

jr_00d_5347:
    ld c, e
    db $e4
    pop hl
    add hl, de
    dec d
    inc d
    dec bc
    ld [de], a
    dec d
    db $10
    dec bc
    ldh a, [rSB]

jr_00d_5354:
    ld [hl], $53
    ld de, $1720
    dec d
    ld sp, hl
    jr nz, jr_00d_5354

    rlca
    ld d, $2b
    db $e4

jr_00d_5361:
    pop hl
    or $0a
    ld [de], a
    dec bc
    inc d
    dec bc
    ld sp, hl
    db $10
    rst $30
    rlca
    dec d
    jr nz, @-$1a

    pop hl
    ld [de], a
    dec d
    ld sp, hl
    db $10

jr_00d_5374:
    rst $30
    rlca
    inc d
    ld c, e
    ld a, [c]
    jr nz, jr_00d_5374

    db $10
    rst $30
    rlca
    add hl, de
    inc de
    jr jr_00d_5394

    dec de
    db $d3
    db $e4
    pop hl
    ld a, [de]
    dec d
    add hl, de
    dec bc
    or $15
    add sp, -$05
    add hl, de
    dec bc
    add sp, $00
    add hl, bc
    ld a, [bc]

jr_00d_5394:
    or $16
    pop af
    rst $28
    ld d, c
    rst $20
    push af
    nop
    add sp, $00
    db $fc
    reti


    ld b, a
    ld a, [$47de]
    ei
    ld hl, sp+$47
    ld sp, hl
    db $10
    db $10
    dec d
    ld sp, hl
    inc b
    db $10
    dec bc
    ld sp, hl
    db $10
    ld a, [c]
    jr nz, jr_00d_53d0

    ld a, [de]
    add hl, de
    jr jr_00d_53cc

    ld [de], a
    db $ed
    db $10
    db $d3
    ld sp, hl
    db $10
    dec d
    dec d
    ld sp, hl
    inc b
    dec d
    dec bc
    ld sp, hl
    db $10
    ld a, [c]
    jr nz, @+$12

    dec d
    add hl, de
    inc e

jr_00d_53cc:
    add hl, de
    dec d
    ld [de], a
    db $d3

jr_00d_53d0:
    xor $a7
    ld d, e
    db $d3
    db $10
    dec d
    dec d
    dec bc
    or $80
    ld sp, hl
    db $10
    db $10
    dec d
    ld sp, hl
    inc b
    db $10
    dec bc
    ld sp, hl
    db $10
    ld a, [c]
    jr nz, jr_00d_53f7

    ld [de], a
    inc d
    db $d3
    ld a, [c]
    jr nz, @-$05

    db $10
    dec d
    db $10
    db $ed
    ld [de], a
    jr @+$19

    ld [de], a
    db $10
    inc d

jr_00d_53f7:
    xor $ea
    ld d, e
    db $d3
    ld [de], a
    dec d
    ld sp, hl
    inc b
    dec de
    dec bc
    ld sp, hl
    db $10
    jr jr_00d_541a

jr_00d_5405:
    ld sp, hl
    inc b
    dec d
    dec bc
    ld a, [c]
    jr nz, jr_00d_5405

    db $10
    rla
    ld [de], a
    db $d3
    ld sp, hl
    db $10
    inc e
    dec d
    ld sp, hl
    inc b

jr_00d_5416:
    rla
    dec bc
    ld sp, hl
    db $10

jr_00d_541a:
    ld a, [c]
    jr nz, jr_00d_542d

    add hl, de
    inc d
    ld [de], a
    add hl, de
    rla
    ld [de], a
    db $d3
    ld sp, hl
    db $10
    db $10
    dec d
    ld sp, hl
    inc b
    inc d
    dec bc
    ld sp, hl

jr_00d_542d:
    db $10
    ld a, [c]
    jr nz, jr_00d_5448

    dec d
    add hl, de
    ld a, [de]
    dec d
    db $d3
    ld sp, hl
    db $10
    rla
    dec d
    ld sp, hl
    inc b
    ld [de], a
    dec bc
    ld sp, hl
    db $10
    rrca
    jr nz, jr_00d_5416

    ld sp, hl
    db $10
    db $10
    dec d
    ld sp, hl

jr_00d_5448:
    inc b

jr_00d_5449:
    rla
    dec bc
    ld sp, hl
    db $10
    inc e
    jr nz, jr_00d_5449

    db $10
    ld a, [c]
    jr nz, jr_00d_5462

    ld [de], a
    dec d
    ld [de], a
    add hl, bc
    dec c
    db $10
    dec c
    db $d3
    ld sp, hl
    db $10
    ld c, $15
    ld sp, hl
    inc b

jr_00d_5462:
    jr jr_00d_546f

    ld sp, hl
    db $10
    ld a, [c]
    jr nz, @+$14

    dec d
    ld [de], a
    add hl, bc
    dec c
    db $10
    dec d

jr_00d_546f:
    db $d3
    ld sp, hl
    ld b, b

jr_00d_5472:
    rla
    ld h, b
    ld sp, hl
    db $10
    ld [de], a
    jr nz, jr_00d_5472

    ld b, b
    ld de, $f960
    db $10
    ld a, [c]
    jr nz, jr_00d_5492

    db $10
    dec bc
    ld [de], a
    dec bc
    inc de
    dec bc
    inc d
    db $10
    dec d
    db $10
    ld [de], a
    jr jr_00d_54a5

    ld [de], a
    db $10
    inc d
    dec d

jr_00d_5492:
    db $10
    db $d3
    ld sp, hl
    db $10
    ld [de], a
    dec d
    ld sp, hl
    inc b
    dec de
    dec bc
    ld sp, hl
    db $10
    jr jr_00d_54b5

jr_00d_54a0:
    ld sp, hl
    inc b
    dec d
    dec bc
    ld a, [c]

jr_00d_54a5:
    jr nz, jr_00d_54a0

    db $10
    rla
    ld [de], a
    db $d3
    ld sp, hl
    db $10
    inc e
    dec d
    ld sp, hl
    inc b
    rla
    dec bc
    ld sp, hl
    db $10

jr_00d_54b5:
    ld a, [c]
    jr nz, jr_00d_54c8

    add hl, de
    inc d
    ld [de], a
    add hl, de
    rla
    ld [de], a
    db $d3
    ld sp, hl
    db $10
    db $10
    dec d

jr_00d_54c3:
    ld sp, hl
    inc b
    jr nz, jr_00d_54d2

    ld a, [c]

jr_00d_54c8:
    jr nz, jr_00d_54c3

    db $10
    rla
    dec d
    add hl, de
    ld a, [de]
    dec d
    db $d3
    ld sp, hl

jr_00d_54d2:
    db $10
    rla
    dec d
    ld sp, hl
    inc b
    ld [de], a
    dec bc
    ld sp, hl
    db $10
    db $10
    dec d
    ld sp, hl
    inc b
    dec d
    dec bc
    or $15
    db $e4
    add hl, bc
    dec hl
    pop af
    sbc c
    ld d, e
    jp nc, $0271

    ld bc, $83d1
    inc b
    ld bc, $cee7
    jr nz, jr_00d_54c3

    dec d
    adc $0b
    ldh a, [rSB]
    ld a, [c]
    ld d, h
    adc $15
    adc $0b
    or $15
    adc $05
    adc $06
    db $ed
    or $15
    adc $0b
    adc $15
    adc $0b
    xor $fc
    ld d, h
    or $20
    adc $15
    adc $0b
    adc $15
    adc $0b
    ldh a, [rSB]
    jr @+$57

    or $15
    db $ed
    adc $0b
    xor $20
    ld d, l
    adc $05
    adc $06
    adc $20
    adc $15
    adc $0b
    ldh a, [rSB]
    inc l
    ld d, l
    adc $15
    adc $0b
    ldh a, [rSB]
    ld [hl], $55
    or $15
    adc $0b
    adc $15
    adc $0b
    or $d5
    adc $0b
    call $f615
    dec bc
    adc $20
    adc $15
    adc $0b
    ldh a, [rSB]
    ld c, [hl]
    ld d, l
    adc $15
    adc $0b
    adc $15
    db $ed
    adc $06
    adc $05
    or $20
    adc $15
    adc $0b
    xor $4e
    ld d, l
    adc $0b
    or $15
    adc $0b
    or $15
    adc $06
    adc $05
    rst $28
    ld bc, $554e
    call $f615
    dec bc
    adc $15
    adc $0b
    ldh a, [rTAC]
    ld a, h
    ld d, l
    adc $20
    or $35
    adc $0b
    call $f615
    dec bc
    ldh a, [rSB]
    adc b
    ld d, l
    adc $15
    adc $0b
    call $f020
    inc bc
    sub [hl]
    ld d, l
    adc $20
    adc $15
    adc $0b
    ldh a, [rSB]
    and b
    ld d, l
    adc $15
    adc $0b
    adc $15
    db $ed
    adc $06
    adc $05
    or $20
    adc $15
    adc $0b
    xor $a0
    ld d, l
    adc $0b
    or $15
    adc $0b
    or $15
    adc $06
    adc $05
    adc $20
    adc $15
    adc $0b
    ldh a, [rSB]
    jp z, $ce55

    dec d
    adc $0b
    adc $15
    adc $05
    adc $06
    or $20
    adc $15
    adc $0b
    adc $20
    adc $15
    adc $0b
    ldh a, [rSB]
    db $e4
    ld d, l
    adc $15
    adc $0b
    adc $15
    adc $0b
    or $15
    adc $0b
    or $15
    adc $05
    adc $06
    pop af
    jp hl


    ld d, h
    ld l, c
    dec b
    or b
    nop
    jr nz, jr_00d_560d

    ld [hl], b
    nop
    jr nz, jr_00d_5611

jr_00d_560d:
    ld b, b
    nop
    nop
    ld [bc], a

jr_00d_5611:
    inc b
    ld [bc], a
    nop
    cp $fc
    cp $80
    rrca
    ld d, [hl]
    nop
    ld bc, $0102
    nop
    rst $38
    cp $ff
    add b
    ld a, [de]
    ld d, [hl]
    nop
    ld bc, $ff00
    add b
    ld a, [de]
    ld d, [hl]
    nop
    nop
    dec a
    ld d, [hl]
    ld bc, $2001
    ld d, a
    ld [bc], a

jr_00d_5635:
    ld [bc], a
    db $10
    ld e, b
    inc bc
    inc bc
    rst $28
    ld e, b
    rst $38
    db $fc
    cp $58
    ld a, [$5902]
    ld hl, sp+$06
    ld e, c
    rst $30
    jr nz, jr_00d_5635

    ld b, b
    db $e4
    push hl
    daa
    ld b, b
    inc h
    db $10
    jr nz, @+$12

    daa
    jr nc, jr_00d_5675

    db $10
    inc h
    db $10
    daa
    db $10
    add hl, hl
    ld b, b
    ld h, $10
    ld [hl+], a
    db $10
    add hl, hl
    jr nc, jr_00d_5689

    db $10
    ld [hl+], a
    db $10
    jr nz, jr_00d_5678

    ld [hl+], a
    jr nz, jr_00d_568a

    jr nz, jr_00d_568f

    jr nz, jr_00d_568f

    db $10
    ld [hl+], a
    db $10
    jr nz, jr_00d_5694

    dec e

jr_00d_5675:
    jr nz, jr_00d_5692

    db $10

jr_00d_5678:
    rra
    db $10
    ld [hl+], a
    db $10
    rra
    db $10
    jr nz, jr_00d_5690

    ld [hl+], a
    db $10
    daa
    ld [bc], a
    add hl, hl
    inc bc
    daa
    inc bc
    add hl, hl

jr_00d_5689:
    ld [bc], a

jr_00d_568a:
    daa
    inc bc
    add hl, hl
    inc bc
    daa

jr_00d_568f:
    ld d, b

jr_00d_5690:
    inc h
    ld h, b

jr_00d_5692:
    ld h, $40

jr_00d_5694:
    add hl, hl
    jr nz, jr_00d_56be

    jr nz, @+$24

    jr nc, jr_00d_56ba

    db $10
    jr nz, jr_00d_56ae

    ld [hl+], a
    db $10
    inc h
    jr nz, @+$22

    jr nz, jr_00d_56ce

    ld b, b
    dec h
    db $10
    jr nz, jr_00d_56ba

    daa
    ld b, b
    inc h
    db $10

jr_00d_56ae:
    jr nz, jr_00d_56c0

    dec e
    ld b, b
    ld a, [c]
    db $10
    rra
    jr nz, @+$21

    jr nz, jr_00d_56db

    rra

jr_00d_56ba:
    jr nz, @+$24

    inc h
    daa

jr_00d_56be:
    inc h
    daa

jr_00d_56c0:
    db $d3
    inc h
    jr nz, @+$28

    db $10
    add hl, hl
    db $10
    ld h, $10
    add hl, hl
    db $10
    ld h, $20
    ld a, [c]

jr_00d_56ce:
    db $10
    daa
    add hl, hl
    dec hl
    add hl, hl
    daa
    ld [hl+], a
    jr nz, jr_00d_56f9

    db $d3
    inc h
    jr nz, jr_00d_56fb

jr_00d_56db:
    jr nz, jr_00d_5701

    jr nz, jr_00d_5706

    jr nc, jr_00d_5705

    db $10
    ld h, $20
    ld [hl+], a
    jr nz, jr_00d_5704

    jr nz, jr_00d_5708

    jr nz, jr_00d_570b

    jr nz, jr_00d_570f

    jr nz, jr_00d_570e

    ld b, b
    rst $20
    ld sp, hl
    ld [$101f], sp
    jr nz, @+$12

    ld [hl+], a
    ld b, b

jr_00d_56f9:
    ld [hl+], a
    db $10

jr_00d_56fb:
    inc h
    db $10
    dec h
    ld b, b
    dec h
    db $10

jr_00d_5701:
    daa
    db $10
    add hl, hl

jr_00d_5704:
    db $10

jr_00d_5705:
    daa

jr_00d_5706:
    ld b, $29

jr_00d_5708:
    dec b
    daa
    dec b

jr_00d_570b:
    dec h
    db $10
    inc h

jr_00d_570e:
    db $10

jr_00d_570f:
    ld [hl+], a
    db $10
    jr nz, jr_00d_5723

    ld [hl+], a
    db $10
    jr nz, jr_00d_571d

    ld [hl+], a
    dec b
    jr nz, jr_00d_5720

    rra
    ld b, b

jr_00d_571d:
    pop af
    dec a
    ld d, [hl]

jr_00d_5720:
    db $fc
    ldh a, [$58]

jr_00d_5723:
    ld a, [$58f7]
    and $f7
    jr nz, @-$12

    nop
    ld hl, sp+$15
    ld e, c
    ld sp, hl
    ld [$10f2], sp

jr_00d_5732:
    inc h
    daa
    inc l
    daa
    inc l
    jr nc, @-$0e

    ld bc, $5732
    ld h, $29
    inc l
    add hl, hl
    db $ed
    inc l
    jr nc, jr_00d_5732

    inc a
    ld d, a
    jr nc, jr_00d_5776

    inc l
    dec hl
    daa
    ld [hl+], a
    daa
    dec hl
    inc l
    add hl, hl
    ld h, $22
    ld h, $29
    db $d3
    ld sp, hl
    db $10
    daa
    jr nz, @+$2d

    jr nz, jr_00d_578a

    jr nz, jr_00d_5791

    ld h, b
    ld a, [c]
    jr nz, jr_00d_5782

    inc h
    daa
    ld h, $29
    ld l, $d3
    ld sp, hl
    ld [$2ced], sp
    db $10
    dec hl
    db $10
    daa
    jr nz, jr_00d_5794

    jr nz, jr_00d_5798

    ld b, b
    inc h

jr_00d_5776:
    db $10
    daa
    db $10
    inc l
    jr nz, jr_00d_57a7

    ld b, $2c
    dec b
    dec hl
    dec d
    add hl, hl

jr_00d_5782:
    jr nz, jr_00d_57ab

    jr nz, jr_00d_57ab

    jr nz, jr_00d_57ac

    jr nz, @+$28

jr_00d_578a:
    db $10
    ld [hl+], a
    db $10
    ld h, $10
    add hl, hl
    db $10

jr_00d_5791:
    dec hl
    ld b, $2c

jr_00d_5794:
    dec b
    dec hl
    dec b
    add hl, hl

jr_00d_5798:
    db $10
    dec hl
    db $10
    add hl, hl
    ld b, $2b
    dec b
    add hl, hl
    dec b
    daa
    ld b, b
    xor $5f
    ld d, a
    inc l

jr_00d_57a7:
    db $10
    dec hl
    ld b, $2c

jr_00d_57ab:
    dec b

jr_00d_57ac:
    dec hl
    dec b
    daa
    jr nz, jr_00d_57d3

    jr nz, @+$26

    ld b, b
    inc h
    db $10
    daa
    db $10
    inc l
    jr nz, jr_00d_57e6

    ld b, $2c
    dec b
    dec hl
    dec d
    add hl, hl
    jr nz, jr_00d_57f1

    jr nz, jr_00d_57ee

    jr nz, jr_00d_57ed

    jr nz, jr_00d_57f0

    db $10
    add hl, hl
    db $10
    dec hl
    db $10
    add hl, hl
    ld b, $2b
    dec b
    add hl, hl

jr_00d_57d3:
    dec b
    daa
    db $10
    ld h, $10
    daa
    ld b, b
    db $fc
    cp $58
    ld a, [$5902]
    ld sp, hl
    ld [$22e7], sp
    db $10
    inc h

jr_00d_57e6:
    db $10
    dec h
    ld b, b
    dec h
    db $10
    daa
    db $10

jr_00d_57ed:
    add hl, hl

jr_00d_57ee:
    ld b, b
    add hl, hl

jr_00d_57f0:
    db $10

jr_00d_57f1:
    dec hl
    db $10
    inc l
    db $10
    dec hl
    ld b, $2c
    dec b
    dec hl
    dec b
    add hl, hl
    db $10
    daa
    db $10
    dec h
    db $10
    inc h
    db $10
    dec h
    db $10
    inc h
    ld b, $25
    dec b
    inc h
    dec b
    ld [hl+], a
    ld b, b
    pop af
    jr nz, jr_00d_5867

    db $fc
    reti


    ld b, a
    ld a, [$47de]
    rst $20
    ei
    ld hl, sp+$47
    ld sp, hl
    ld [$1020], sp
    inc h
    db $10
    ld sp, hl
    jr nz, jr_00d_584a

    ld b, b
    ld sp, hl
    db $10

jr_00d_5826:
    jr nz, jr_00d_5848

    inc h
    jr nz, jr_00d_5852

    jr nz, jr_00d_5826

    ld [$1020], sp
    ld h, $10
    ld sp, hl
    jr nz, @+$2b

    ld b, b
    ld sp, hl
    db $10
    jr nz, @+$22

    add hl, hl
    jr nz, @+$28

    jr nz, @-$0c

    db $10
    ld sp, hl
    ld [$2227], sp
    daa
    dec hl
    inc l
    dec hl

jr_00d_5848:
    db $d3
    ld sp, hl

jr_00d_584a:
    db $10

jr_00d_584b:
    add hl, hl
    jr nz, @+$24

    jr nz, jr_00d_5876

    jr nz, jr_00d_584b

jr_00d_5852:
    jr nz, jr_00d_587b

    ld b, b
    ld sp, hl
    ld [$102b], sp
    ld l, $10
    ld sp, hl
    db $10

jr_00d_585d:
    ld sp, $3020
    jr nz, jr_00d_5890

    jr nz, jr_00d_585d

    ld [$10f2], sp

jr_00d_5867:
    jr nz, jr_00d_5890

    db $d3
    ld sp, hl
    jr jr_00d_5899

    jr nc, @-$05

    ld [$1027], sp
    ld sp, hl
    ld [$1022], sp

jr_00d_5876:
    add hl, hl
    db $10
    ld sp, hl
    jr jr_00d_58a9

jr_00d_587b:
    jr nc, jr_00d_5876

    ld [$1026], sp
    ld sp, hl
    ld [$1027], sp

jr_00d_5884:
    ld [hl+], a
    db $10

jr_00d_5886:
    ld sp, hl
    db $10
    daa
    jr nz, jr_00d_5884

    ld [$102e], sp
    dec hl
    db $10

jr_00d_5890:
    ld sp, hl
    db $10
    inc l
    jr nz, jr_00d_58bc

    jr nz, jr_00d_58bb

    jr nz, jr_00d_5886

jr_00d_5899:
    ld sp, hl
    ld [$1025], sp
    add hl, hl
    db $10
    ld sp, hl
    jr nz, jr_00d_58ce

    ld b, b
    ld sp, hl
    ld [$1020], sp
    daa
    db $10

jr_00d_58a9:
    ld sp, hl
    jr nz, jr_00d_58d8

    ld b, b
    ld sp, hl
    db $10

jr_00d_58af:
    ld h, $20
    ld [hl+], a
    jr nz, jr_00d_58dd

    jr nz, jr_00d_58af

    ld [$10f2], sp
    daa
    add hl, hl

jr_00d_58bb:
    dec hl

jr_00d_58bc:
    add hl, hl
    daa

jr_00d_58be:
    dec h
    xor $63
    ld e, b
    ld a, [c]
    jr nz, jr_00d_58be

    db $10
    inc l
    daa
    inc h
    ld [hl+], a
    ld h, $29
    daa
    ld [hl+], a

jr_00d_58ce:
    ld [hl+], a
    db $d3
    ld sp, hl
    jr nz, jr_00d_58fa

    ld b, b
    ld sp, hl
    ld [$1027], sp

jr_00d_58d8:
    daa
    db $10
    ldh a, [rSC]
    ret nc

jr_00d_58dd:
    ld e, b
    ld sp, hl
    ld [$1027], sp
    ld [hl+], a
    db $10
    ldh a, [$03]
    sbc $58
    ld sp, hl
    jr nz, jr_00d_5912

    ld b, b
    pop af
    db $10
    ld e, b
    rst $38
    pop hl
    ld b, $90
    nop
    rst $38
    ld a, [c]
    ld e, b
    ld h, b
    ld [bc], a
    ld b, b

jr_00d_58fa:
    nop
    rst $38
    rst $30
    ld e, b
    ld l, e
    db $10
    or b
    nop
    jr nz, jr_00d_5907

    ld b, b
    nop
    nop

jr_00d_5907:
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]

jr_00d_5912:
    add b
    ld b, $59
    nop
    ld bc, $0201
    ld bc, $0001
    rst $38
    rst $38
    cp $ff
    rst $38
    add b
    dec d
    ld e, c
    nop
    nop
    dec [hl]
    ld e, c
    ld bc, $9301
    ld e, d
    ld [bc], a
    ld [bc], a
    sbc c
    ld e, e
    inc bc
    inc bc
    rra
    ld e, l
    rst $38
    db $fc
    rst $20
    ld e, l
    ld a, [$5df3]
    db $ec
    add b
    push af
    ld bc, $04f9
    ld a, [c]
    rlca
    push hl
    inc h
    jr z, jr_00d_5972

    jr nc, @-$0e

    inc bc
    ld b, c
    ld e, c
    and $20
    inc h
    daa
    inc l
    ldh a, [$03]
    ld c, h
    ld e, c
    push hl
    ld [hl+], a
    ld h, $29
    ld l, $f0
    inc bc
    ld d, l
    ld e, c
    and $1f
    inc hl
    ld h, $2b
    inc hl
    ld h, $2b
    cpl
    ld h, $2b

jr_00d_5969:
    cpl
    ld [hl-], a
    cpl
    dec hl
    ld h, $23
    db $d3
    rst $20
    db $ec

jr_00d_5972:
    nop
    ld sp, hl
    inc b
    db $fc
    ei
    ld e, l
    ld a, [$5e03]
    inc de
    dec d
    inc de
    ld c, $f2
    rlca
    dec d
    ld d, $f6
    db $fc
    rst $20
    ld e, l
    ld a, [$5df3]
    push hl
    db $ec
    add b
    or $18
    dec de
    jr jr_00d_59b0

    dec e
    dec de
    jr jr_00d_5969

    rst $20
    db $ec
    nop
    db $fc
    ei
    ld e, l
    ld a, [$5e03]
    inc de
    dec d
    inc de
    ld c, $f2
    rlca
    dec d
    ld d, $f6
    db $fc
    rst $20
    ld e, l
    ld a, [$5df3]
    and $ec

jr_00d_59b0:
    add b

jr_00d_59b1:
    or $1b
    rra
    dec de
    ld [hl+], a
    ld hl, $1b1f
    db $d3
    rst $20
    db $ec
    nop
    db $fc
    ei
    ld e, l
    ld a, [$5e03]
    inc de
    dec d
    inc de
    ld c, $f2
    rlca
    dec d
    ld d, $f6
    db $fc
    rst $20
    ld e, l
    ld a, [$5df3]
    push hl
    db $ec
    add b
    or $18
    dec de
    jr jr_00d_59f8

    dec e
    dec de
    jr jr_00d_59b1

    rst $20
    db $ec
    nop
    db $fc
    ei
    ld e, l
    ld a, [$5e03]
    inc de
    dec d
    inc de
    ld c, $f2
    rlca
    dec d

jr_00d_59ee:
    ld d, $f6
    db $fc
    rst $20
    ld e, l
    ld a, [$5df3]
    and $ec

jr_00d_59f8:
    add b
    or $1e
    rra
    inc h
    ld e, $1d
    dec de
    jr jr_00d_59ee

    ret nz

    db $e4
    ld a, [de]
    inc e
    dec e
    rra
    ld hl, $1df6
    rra
    ld hl, $2423
    or $f5
    nop
    or $f6
    push af
    ld bc, $2321
    inc h
    ld h, $28
    ld h, $f6
    inc h
    inc hl
    ld hl, $2123
    rra
    ld hl, $1ff6
    dec e
    inc e
    ld a, [de]
    inc e
    dec e
    rra
    ld hl, $1df6
    rra
    ld hl, $2423
    or $f5
    nop
    or $f6
    push af
    ld bc, $2321
    inc h
    ld h, $28
    ld h, $f6
    inc h
    inc hl
    ld hl, $23ed
    ld hl, $211f
    or $1f
    dec e
    inc e
    xor $6f
    ld e, c
    ld a, [de]
    inc e
    dec e
    rra
    inc e
    ld e, $20
    ld [hl+], a
    rst $20
    db $ec
    nop
    inc h
    rra
    ld e, $1d
    dec de
    or $f0
    ld bc, $5a58
    db $ed
    dec de
    dec e
    rra
    dec de
    xor $58
    ld e, d
    ld d, $13
    ld d, $17
    inc h
    rra
    ld e, $1d
    dec de
    or $f0
    ld bc, $5a71
    daa
    add hl, hl
    dec hl
    daa
    db $d3
    ld sp, hl
    ld c, $1b
    dec d
    ld a, [de]
    dec d
    ld e, $15
    rra
    dec d
    ld sp, hl
    rlca
    ld [hl+], a
    ld c, $23
    ld c, $f1
    dec [hl]
    ld e, c
    db $fc
    add hl, bc
    ld e, [hl]
    ld a, [$5e0d]
    db $ec
    ret nz

    push af
    nop
    ld sp, hl
    inc b
    ld a, [c]
    rlca
    rst $20
    inc c
    inc c
    jr jr_00d_5ab2

    ld [hl+], a
    jr jr_00d_5ab5

    inc h
    inc c
    ld [hl+], a
    jr @+$0e

    ld [hl+], a
    jr jr_00d_5abd

    inc h

jr_00d_5ab2:
    ld [$1408], sp

jr_00d_5ab5:
    ld [$141e], sp
    ld [$0820], sp
    ld e, $14

jr_00d_5abd:
    ld [$141e], sp
    ld [$0a20], sp
    ld a, [bc]
    ld d, $0a
    jr nz, jr_00d_5ade

    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    jr nz, jr_00d_5ae3

    ld a, [bc]
    jr nz, jr_00d_5ae6

    ld a, [bc]
    ld [hl+], a
    rlca
    rlca
    inc de
    rlca
    dec e
    inc de
    rlca
    rra
    rlca
    dec e
    inc de
    rlca

jr_00d_5ade:
    dec e
    inc de
    rlca
    rra
    db $fc

jr_00d_5ae3:
    add hl, bc
    ld e, [hl]
    rst $20

jr_00d_5ae6:
    inc c
    inc c
    jr jr_00d_5af6

    ld [hl+], a
    jr jr_00d_5af9

    inc h
    inc c
    ld [hl+], a
    jr jr_00d_5afe

    ld [hl+], a
    jr jr_00d_5b01

    inc h

jr_00d_5af6:
    ldh a, [$03]
    ld [c], a

jr_00d_5af9:
    ld e, d
    db $fc
    di
    ld e, l
    db $e4

jr_00d_5afe:
    push hl
    db $ec
    ret nz

jr_00d_5b01:
    ld a, [c]
    inc bc
    or $f2
    rlca
    ld a, [de]
    inc e
    dec e
    rra
    ld hl, $1df6
    rra
    ld hl, $2423
    or $f6
    or $21
    inc hl
    inc h
    ld h, $28
    ld h, $f6
    inc h
    inc hl
    ld hl, $2123
    rra
    ld hl, $1ff6
    dec e
    inc e
    ld a, [de]
    inc e
    dec e
    rra
    ld hl, $1df6
    rra
    ld hl, $2423
    or $f6
    or $21
    inc hl
    inc h
    ld h, $28
    ld h, $f6
    inc h
    inc hl
    ld hl, $23ed
    ld hl, $211f
    or $1f
    dec e
    db $d3
    inc e
    inc b
    ld a, [c]
    rlca
    xor $e2
    ld e, d
    ld a, [de]
    inc e
    dec e
    rra
    inc e
    ld e, $20
    ld [hl+], a
    push hl
    db $ec
    nop
    di
    add d
    inc h
    rra
    ld e, $1d
    dec de
    or $f0
    ld bc, $5b57
    db $ed
    dec de
    dec e
    rra
    dec de
    and $ee
    ld d, a
    ld e, e
    ld d, $13
    ld d, $17
    push hl
    inc h
    rra
    ld e, $1d
    dec de
    or $e6
    ldh a, [rSB]
    ld [hl], e
    ld e, e
    rst $20
    daa
    add hl, hl
    dec hl
    daa
    db $d3
    ld sp, hl
    ld c, $1b
    dec d
    ld a, [de]
    dec d
    ld e, $15
    rra
    dec d
    ld sp, hl
    rlca
    ld [hl+], a
    ld c, $23
    dec bc
    di
    add b
    pop af
    sub e

jr_00d_5b98:
    ld e, d
    rst $18
    or $19
    ld bc, $ecde
    inc h
    inc bc
    push af
    nop
    add sp, $00
    db $fc
    reti


    ld b, a
    ld a, [$47de]
    ei
    ld hl, sp+$47
    ld sp, hl
    jr c, jr_00d_5b98

    reti


    jr jr_00d_5c16

    add sp, -$0a
    inc h
    rlca
    inc h
    rlca
    add sp, $00
    reti


    inc d
    ld h, d
    add sp, -$0a
    inc h
    rlca
    inc h
    rlca
    add sp, $00
    reti


    ld d, $62
    add sp, -$0a
    inc h
    rlca
    inc h
    rlca
    add sp, $00
    ld a, [c]
    rlca
    ld sp, hl
    inc b
    reti


    inc de
    or $d8
    inc de
    ret c

    inc de
    or $f6
    reti


    inc de
    reti


    inc de
    ret c

    inc de
    ret c

    inc de
    or $d9
    inc de
    ret c

    inc de
    and $d9
    inc de
    rst $20
    ret c

    inc de
    push hl
    ret c

    inc de
    db $d3
    rst $20
    reti


    jr jr_00d_5c0f

    reti


    jr @+$10

    ld a, [de]
    rlca
    reti


    dec de
    ld c, $f6
    inc e
    add sp, -$0a
    inc h
    rlca
    or $15
    add sp, $00
    reti


    jr @+$17

jr_00d_5c0f:
    reti


    jr @+$10

    ld a, [de]
    rlca
    reti


    dec de

jr_00d_5c16:
    ld c, $f6
    dec d
    add sp, -$0a
    add hl, de
    rlca
    inc h
    rlca
    or $0e
    inc h
    rlca
    add sp, $00
    reti


    jr jr_00d_5c3d

    reti


    jr @+$10

    ld a, [de]
    rlca
    reti


    dec de

jr_00d_5c2f:
    ld c, $f6
    inc e
    add sp, -$0a
    inc h
    rlca
    or $15
    add sp, $00
    reti


    jr jr_00d_5c52

jr_00d_5c3d:
    ret c

    jr jr_00d_5c4e

    ld a, [c]
    rlca
    reti


    ld a, [de]
    reti


    dec de
    ret c

    dec de
    dec e
    ret c

    ld [hl+], a
    inc h
    reti


    add hl, hl

jr_00d_5c4e:
    ret c

    ld [hl+], a
    jr @-$26

jr_00d_5c52:
    dec e
    ret c

    jr jr_00d_5c2f

    ld c, $0e
    ld a, [de]
    reti


    ld c, $d8
    jr jr_00d_5c78

    reti


    ld c, $d8
    ld a, [de]
    ld c, $18
    reti


    ld a, [de]
    ld c, $d8
    jr @+$1c

    ld c, $d8
    ld a, [de]
    ldh a, [rSC]
    ld d, l
    ld e, h
    db $ed
    reti


jr_00d_5c73:
    ld c, $d8
    ld a, [de]
    ld c, $d9

jr_00d_5c78:
    jr jr_00d_5c52

    ld a, [de]
    ret c

    ld a, [de]
    reti


    ld c, $1a
    ret c

    ld c, $d8
    jr jr_00d_5c9f

    reti


    ld c, $d8
    inc h
    ret c

    ld a, [de]
    ret c

    ld c, $d8
    ld h, $d3
    xor $f6
    ld e, e
    reti


    ld c, $d8
    ld a, [de]
    ld c, $d9
    jr jr_00d_5c73

    ld a, [de]
    ret c

    ld a, [de]
    reti


jr_00d_5c9f:
    ld c, $1a
    ret c

    ld c, $d8
    jr jr_00d_5cc0

    reti


    ld c, $d8
    add hl, de
    ret c

    add hl, de
    ret c

    dec c
    ret c

    add hl, de

jr_00d_5cb0:
    ld a, [c]
    ld a, [hl+]
    ld sp, hl
    inc e

jr_00d_5cb4:
    reti


    jr jr_00d_5cb0

    inc e
    reti


    jr jr_00d_5cb4

    inc b
    ld a, [c]
    rlca
    ret c

    dec de

jr_00d_5cc0:
    ret c

    dec e
    ret c

    rra
    ret c

    dec de

jr_00d_5cc6:
    ld a, [c]
    ld a, [hl+]
    ld sp, hl
    inc e

jr_00d_5cca:
    reti


    jr jr_00d_5cc6

    inc e
    reti


    jr jr_00d_5cca

    inc b
    ld a, [c]
    rlca
    ret c

    ld d, $d8
    inc de
    reti


    ld d, $d9
    rla

jr_00d_5cdc:
    ld a, [c]
    ld a, [hl+]
    ld sp, hl
    inc e

jr_00d_5ce0:
    reti


    jr jr_00d_5cdc

    inc e
    reti


    jr jr_00d_5ce0

    inc b
    ld a, [c]
    rlca
    ret c

    dec de
    ret c

    dec e
    ret c

    rra
    ret c

    dec de
    db $d3
    ld sp, hl
    inc b
    reti


    jr jr_00d_5d06

    reti


    jr jr_00d_5d02

    ret c

    jr @+$10

    reti


    jr @+$09

    reti


jr_00d_5d02:
    ld d, $0e
    ld a, [c]
    rlca

jr_00d_5d06:
    reti


    ld d, $d8
    inc de
    db $fc
    sbc $47
    reti


    inc de
    reti


    inc de
    db $fc
    reti


    ld b, a
    ret c

    ld d, $d8
    ld d, $d8
    rla
    or $d3
    pop af
    sbc c
    ld e, e
    jp nc, $2661

    nop
    pop de
    pop hl
    inc b
    ld bc, $81d0
    inc bc
    nop
    rst $20
    db $e4
    push af
    nop
    ld a, [c]
    ld c, $ce
    or $f0
    dec b
    ld [hl-], a
    ld e, l
    ld a, [c]
    rlca
    call $efcd
    ld [bc], a
    cpl
    ld e, l
    adc $f6
    call $f6cd
    or $ce
    adc $cd
    call $cef6
    call $cee6
    rst $20
    call $cde5
    rst $20
    db $d3
    adc $15
    adc $15
    adc $0e
    or $1c
    call $ce1c
    dec d
    adc $0e
    adc $07
    adc $0e
    or $15
    adc $07
    call $f607
    ld c, $cd
    rlca
    adc $15
    adc $15
    adc $0e
    or $1c
    call $f21c
    rlca
    adc $f6
    or $cd
    or $ce
    adc $cd
    or $cd
    or $ce
    call $cdf6
    call $f6ce
    or $ce
    call $cef6
    call $f6f6
    adc $f6
    call $f6f6
    call $02f0
    adc h
    ld e, l
    adc $cd
    or $ce
    call $cecd
    or $cd
    call $cef6
    call $cdcd
    call $01ef
    ld d, d
    ld e, l
    db $d3
    ld a, [c]
    ld a, [hl+]
    adc $ce
    ld a, [c]
    rlca
    call $cdcd
    call $2af2
    adc $ce
    ld a, [c]
    rlca
    call $cecd
    adc $f2
    ld a, [hl+]
    adc $ce
    ld a, [c]
    rlca
    call $cdcd
    call $f6ce
    adc $cd
    or $ce
    adc $f6
    adc $cd
    adc $ce
    call $cdcd
    or $d3
    pop af
    rra
    ld e, l
    pop af
    ld bc, $05b1
    add e
    ld [$0140], sp
    ld h, d
    inc b
    stop
    jr nc, jr_00d_5df6

    sub c

jr_00d_5df6:
    dec b
    ld d, [hl]
    inc c
    jr nz, jr_00d_5dfb

jr_00d_5dfb:
    pop af
    inc bc
    ret nz

    inc bc
    and b
    ld [bc], a
    sub b
    nop
    jr nz, jr_00d_5e06

    ld [hl], b

jr_00d_5e06:
    inc b
    ld d, b
    nop
    and b
    inc bc
    ld b, b
    nop
    ld b, b
    ld [bc], a
    jr nz, jr_00d_5e11

jr_00d_5e11:
    nop
    ld bc, $ff00
    add b
    ld de, $005e
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    jr jr_00d_5e85

    nop
    nop
    jr c, jr_00d_5e89

    ld bc, $b501
    ld h, b
    ld [bc], a
    ld [bc], a
    add b
    ld h, d
    inc bc
    inc bc
    cp a
    ld h, h
    rst $38
    db $fc
    inc l
    ld h, [hl]
    ld a, [$6630]
    db $ec
    nop
    push af
    nop
    pop hl
    ld hl, sp+$32
    ld h, [hl]
    ld sp, hl
    dec b
    rst $20
    ld d, $0b
    rla
    dec bc
    add hl, de
    dec bc
    ld d, $0b
    db $e4
    rst $30
    dec b
    ld hl, sp+$41
    ld h, [hl]
    ld a, [de]
    ld d, $f8
    ld [hl-], a
    ld h, [hl]
    ld sp, hl
    dec b
    add hl, de
    dec bc
    rla
    dec bc
    ld d, $0b
    rla
    dec bc
    ld d, $0b
    db $fc
    ld a, [de]
    ld h, [hl]
    ld a, [$661c]
    ld sp, hl
    inc bc
    db $ec
    ret nz

    and $25
    dec b
    ld [hl+], a
    ld b, $1f
    dec b
    inc e
    ld b, $1e
    dec b
    rra
    ld b, $1e
    dec b
    inc e
    ld b, $f9
    dec b

jr_00d_5e85:
    rra
    dec bc
    db $fc
    inc l

jr_00d_5e89:
    ld h, [hl]
    ld a, [$6630]
    ld a, [c]
    dec bc
    ld sp, hl
    dec b
    db $ec
    nop
    rst $20
    ld d, $17
    ld d, $17
    db $d3
    db $fc
    ld a, [de]
    ld h, [hl]
    ld a, [$661c]
    ld sp, hl
    inc bc
    db $ec
    ret nz

    and $25
    dec b
    ld [hl+], a
    ld b, $28
    dec b
    ld h, $06
    dec h
    dec b
    ld [hl+], a
    ld b, $1f
    dec b
    inc e
    ld b, $fc
    inc l
    ld h, [hl]
    ld a, [$6630]
    ld a, [c]
    dec bc
    ld sp, hl
    dec b
    db $ec
    nop
    rst $20
    ld d, $17
    ld d, $17
    db $d3
    db $fc
    ld a, [de]
    ld h, [hl]
    ld a, [$661c]
    ld sp, hl
    inc bc
    db $ec
    ret nz

    and $22
    dec b
    inc h
    ld b, $25
    dec b
    jr z, jr_00d_5edf

    dec h
    dec b
    ld a, [hl+]
    ld b, $28
    dec b

jr_00d_5edf:
    dec h
    ld b, $fc
    inc l
    ld h, [hl]
    ld a, [$6630]
    ld sp, hl
    dec b
    db $ec
    nop
    ld a, [c]
    dec bc
    rst $20
    ld d, $17
    ld d, $17
    db $d3
    db $fc
    ld a, [de]
    ld h, [hl]
    ld a, [$661c]
    ld sp, hl
    inc bc
    db $ec
    ret nz

    and $29
    dec b
    ld a, [hl+]
    ld b, $2d
    dec b
    add hl, hl
    ld b, $28
    dec b
    ld h, $06
    dec h
    dec b
    ld [hl+], a
    ld b, $fc
    inc l
    ld h, [hl]
    ld a, [$6630]
    ld sp, hl
    dec b
    db $ec
    nop
    ld a, [c]
    dec bc
    rst $20
    ld d, $f6
    rla
    or $d3
    db $fc
    ld a, [de]
    ld h, [hl]
    ld a, [$661c]
    ld sp, hl
    inc bc
    db $ec
    ret nz

    rst $20
    ld a, [de]
    dec b
    inc e
    ld b, $1e
    dec b
    rra
    ld b, $21
    dec b
    inc hl
    ld b, $f7
    dec b
    db $e4
    inc h
    ld d, $e1
    ld sp, hl
    dec b
    jr z, jr_00d_5f4c

    ld a, [hl+]
    dec bc
    dec hl
    dec bc
    ld sp, hl
    inc bc
    dec l
    dec b
    dec hl
    ld b, $2a

jr_00d_5f4c:
    dec b
    jr z, jr_00d_5f55

    ld a, [hl+]
    dec b
    jr z, jr_00d_5f59

    ld h, $05

jr_00d_5f55:
    rst $30
    dec b
    db $e4
    inc h

jr_00d_5f59:
    inc e
    pop hl
    ld sp, hl
    inc bc
    ld a, [hl+]
    dec b
    dec hl
    ld b, $2a
    dec b
    jr z, jr_00d_5f6b

    db $ed
    ld a, [hl+]
    dec b
    dec hl
    ld b, $2d

jr_00d_5f6b:
    dec b
    ld l, $06
    dec l
    dec b
    dec hl
    ld b, $2a
    dec b
    jr z, @+$08

    xor $38
    ld e, [hl]
    dec hl
    dec b
    jr z, jr_00d_5f83

    db $ec
    add b
    pop hl
    db $e4
    ld a, [c]
    dec bc

jr_00d_5f83:
    and $1c
    ld hl, $2423
    inc hl
    ld hl, $05f7
    db $d3
    jr nz, @+$18

    pop hl
    ld hl, $230b
    dec bc
    rst $30
    dec b
    inc e
    ld d, $e1
    ld e, $0b
    jr nz, jr_00d_5fa8

    rst $30
    dec b
    ld hl, $e116
    ld h, $0b
    jr z, jr_00d_5fb1

    rst $30
    dec b

jr_00d_5fa8:
    add hl, hl
    ld d, $f9
    dec b
    ld a, [c]
    dec bc
    dec hl
    dec l
    add hl, hl

jr_00d_5fb1:
    dec hl
    jr z, @+$2b

    ld h, $28
    db $d3
    pop hl
    ld sp, hl
    inc bc
    ld h, $05
    inc h
    ld b, $23
    dec bc
    db $ec
    nop
    rst $20
    inc hl
    ld bc, $0124
    dec h
    ld bc, $0126
    daa
    ld bc, $1128
    ld h, $05
    inc h
    ld b, $f7
    dec b
    db $e4
    inc hl
    ld hl, $1628
    ld a, [hl+]
    ld bc, $012b
    inc l
    ld bc, $012d
    ld l, $01
    cpl
    ld de, $ffe8
    inc [hl]
    ld hl, $00e8
    pop hl
    ld sp, hl
    dec b
    db $ec
    add b
    and $28
    dec bc
    ld h, $0b
    inc h
    dec bc
    rst $30
    dec b
    db $e4
    inc hl
    ld d, $e1
    ld sp, hl
    dec b
    inc h
    dec bc
    ld h, $0b
    rst $30
    dec b
    db $e4
    inc h
    ld d, $e1
    ld sp, hl
    dec b
    ld hl, $230b
    dec bc
    rst $30
    dec b
    db $e4
    inc h
    ld d, $e1
    ld sp, hl
    dec b
    ld h, $0b
    jr z, jr_00d_6027

    rst $30
    dec b
    db $e4
    add hl, hl
    ld d, $e1
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    inc h

jr_00d_6027:
    ld hl, $2a24
    daa
    inc hl
    daa
    db $ec
    ret nz

    db $e4
    rst $20
    jr z, jr_00d_6059

    add hl, hl
    jr z, @-$2b

    pop hl
    inc hl
    dec b
    inc h
    ld b, $26
    dec bc
    ld hl, $2305
    ld b, $24
    dec bc
    ld a, [c]
    dec bc
    ldh a, [rSB]
    ld sp, $e160
    db $d3
    jr z, jr_00d_6052

    ld h, $06
    or $05
    dec hl

jr_00d_6052:
    ld b, $29
    dec b
    or $06
    cpl
    dec b

jr_00d_6059:
    dec l
    ld b, $f6
    dec b
    db $ed
    dec hl
    ld b, $29
    dec b
    or $06
    or $05
    add hl, hl
    ld b, $28
    dec b
    ld h, $06
    xor $4b
    ld h, b
    or $06
    cpl
    dec b
    jr nc, jr_00d_607b

    ld [hl-], a
    dec b
    jr nc, jr_00d_607f

    cpl
    dec b

jr_00d_607b:
    dec l
    ld b, $e6
    cpl

jr_00d_607f:
    dec b
    ld a, [hl+]
    ld b, $23
    dec b
    rst $20
    cpl
    ld b, $2a
    dec b
    inc h
    ld b, $e5
    cpl
    dec b
    ld a, [hl+]
    ld b, $25
    dec b
    and $2f
    ld b, $2a
    dec b
    ld h, $06
    rst $20
    cpl
    dec b
    ld a, [hl+]
    ld b, $27
    dec b
    db $ed
    cpl
    ld b, $f6
    ld d, $ee
    ld a, l
    ld h, b
    add sp, -$01
    cpl
    dec a
    add sp, $00
    inc e
    dec bc
    db $f4
    nop
    pop af
    jr c, jr_00d_6113

    db $fc
    inc l
    ld h, [hl]
    ld a, [$6630]
    db $ec
    nop
    push af
    nop
    pop hl
    ld hl, sp+$32
    ld h, [hl]
    ld sp, hl
    dec b
    push hl
    ld a, [c]
    dec bc
    ld [de], a
    inc de
    dec d
    db $10
    db $d3
    db $e4
    rst $30
    dec b
    ld hl, sp+$41
    ld h, [hl]
    ld d, $16
    ld hl, sp+$32
    ld h, [hl]
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    dec d
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    ldh a, [$03]
    sbc $60
    ld [de], a
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    inc de
    rst $20
    di
    add c
    db $d3
    dec d
    dec b
    rla
    ld b, $e4
    rst $30
    dec b
    ld hl, sp+$41
    ld h, [hl]
    jr jr_00d_6116

    ld hl, sp+$32
    ld h, [hl]
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    inc de
    inc e
    jr jr_00d_612a

    jr @+$1e

    db $e4
    db $d3
    rst $30
    dec b
    ld hl, sp+$41

jr_00d_6113:
    ld h, [hl]
    jr jr_00d_612c

jr_00d_6116:
    ld hl, sp+$32
    ld h, [hl]
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    inc de
    db $ed
    ld d, $13
    dec d
    inc de
    ld [de], a
    db $10
    db $d3
    di
    add b
    xor $b5

jr_00d_612a:
    ld h, b
    inc e

jr_00d_612c:
    jr @-$2b

    db $e4
    rra
    dec b
    jr jr_00d_6139

    push af
    nop
    or $05
    push hl
    di

jr_00d_6139:
    add d
    db $ec
    add b
    pop hl
    db $e4
    ld a, [c]
    dec bc
    inc e
    ld hl, $2423
    inc hl
    ld hl, $05f7
    db $d3
    jr nz, @+$18

    pop hl
    ld hl, $230b
    dec bc
    rst $30
    dec b
    inc e
    ld d, $e1
    ld e, $0b
    jr nz, jr_00d_6164

    rst $30
    dec b
    ld hl, $fc11
    inc l
    ld h, [hl]
    ld a, [$6630]
    push af

jr_00d_6164:
    nop
    pop hl
    pop hl
    ld sp, hl
    dec b
    inc hl
    dec bc
    inc h
    dec bc
    rst $30
    dec b
    db $e4
    ld h, $16
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    jr z, jr_00d_61a1

    ld h, $28
    inc h
    ld h, $23
    inc h
    db $d3
    pop hl
    ld sp, hl
    inc bc
    inc hl
    dec b
    ld hl, $f706
    dec b
    db $e4
    jr nz, jr_00d_61b7

    rst $20
    ld sp, hl
    dec b
    pop hl
    db $ec
    ld b, b
    inc e
    dec bc
    rst $30
    dec b
    db $e4
    inc e
    ld d, $f9
    dec b
    pop hl
    ld a, [c]
    dec bc
    inc hl
    jr z, @+$25

    db $d3

jr_00d_61a1:
    pop hl
    ld sp, hl
    inc bc
    ld h, $05
    inc h
    ld b, $f9
    dec b
    pop hl
    ld a, [c]
    dec bc
    inc hl
    push hl
    db $ec
    add b
    pop hl
    ld sp, hl
    dec b
    ld hl, $2423

jr_00d_61b7:
    inc hl
    ld hl, $05f7
    db $e4
    db $d3
    jr nz, jr_00d_61d5

    pop hl
    ld sp, hl
    dec b
    ld hl, $230b
    dec bc
    rst $30
    dec b
    db $e4
    db $d3
    inc e
    ld d, $e1
    ld sp, hl
    dec b
    ld e, $0b
    jr nz, jr_00d_61de

    rst $30
    dec b

jr_00d_61d5:
    db $e4
    db $d3
    ld hl, $e116
    ld sp, hl

jr_00d_61db:
    dec b
    inc hl
    dec bc

jr_00d_61de:
    inc h
    dec bc
    rst $30
    dec b
    db $e4
    db $d3
    ld a, [de]
    ld d, $e1
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    ld hl, $261d
    daa
    inc hl
    ld e, $27
    db $d3
    rst $20
    push af
    nop
    or $05
    db $e4
    pop hl
    db $fc
    ld h, $66
    db $ec
    ret nz

    di
    add d
    ld a, [c]
    dec bc
    jr z, jr_00d_622b

    add hl, hl
    jr z, jr_00d_61db

    inc hl
    dec b
    inc h
    ld b, $26
    dec bc
    ld hl, $2305
    ld b, $24
    dec bc
    ldh a, [rSB]
    db $fd
    ld h, c
    jr z, jr_00d_621f

    ld h, $06
    or $05
    dec hl

jr_00d_621f:
    ld b, $29
    dec b
    or $06
    cpl
    dec b
    dec l
    ld b, $f6
    dec b
    db $ed

jr_00d_622b:
    dec hl
    ld b, $29
    dec b
    or $06
    or $05
    add hl, hl
    ld b, $28
    dec b
    ld h, $06
    xor $18
    ld h, d
    or $06
    cpl
    dec b
    jr nc, jr_00d_6248

    ld [hl-], a
    dec b
    jr nc, jr_00d_624c

    cpl
    dec b

jr_00d_6248:
    dec l
    ld b, $e6
    cpl

jr_00d_624c:
    dec b
    ld a, [hl+]
    ld b, $23
    dec b
    rst $20
    cpl
    ld b, $2a
    dec b
    inc h
    ld b, $e5
    cpl
    dec b
    ld a, [hl+]
    ld b, $25
    dec b
    and $2f
    ld b, $2a
    dec b
    ld h, $06
    rst $20
    cpl
    dec b
    ld a, [hl+]
    ld b, $27
    dec b
    db $ed
    cpl
    ld b, $f6
    ld d, $ee
    ld a, l
    ld h, b
    add sp, -$01
    cpl
    jr c, @-$16

    nop
    inc e
    dec bc
    pop af
    or l
    ld h, b
    rst $18
    or $19
    ld [bc], a
    sbc $ec
    ld [hl+], a
    inc b
    db $dd
    db $ec
    jr nc, jr_00d_6290

    call c, $2dec
    inc b

jr_00d_6290:
    db $db
    db $ec
    inc h
    inc b
    rst $20
    push af
    nop
    add sp, $00
    db $fc
    reti


    ld b, a
    ld a, [$47de]
    ei
    ld hl, sp+$47
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    ret c

    ld [de], a
    reti


    inc de
    ret c

    dec d
    reti


    ld [de], a
    ret c

    ld d, $d9
    ld d, $d8
    dec d
    ret c

    inc de
    reti


    ld [de], a
    inc de
    ret c

    ld [de], a
    inc de
    reti


    ld [de], a
    reti


    ld [de], a
    ret c

    ld [de], a
    reti


    inc de
    ld [de], a
    reti


    inc de
    ret c

    ld [de], a
    reti


    inc de
    ld [de], a
    reti


    ld [de], a
    ret c

    ld [de], a
    db $d3
    reti


    inc de
    dec b
    ret c

    inc de
    ld b, $f2
    dec bc
    ldh a, [rSB]
    or [hl]
    ld h, d
    db $d3
    reti


    ld [de], a
    dec bc
    reti


    ld [de], a
    dec b
    reti


    ld [de], a

jr_00d_62e6:
    ld b, $d8
    inc de
    dec bc

jr_00d_62ea:
    reti


    ld [de], a

jr_00d_62ec:
    dec bc

jr_00d_62ed:
    ret c

    ld [de], a
    dec b
    and $d7
    ld [de], a
    ld b, $e7
    sub $13
    dec b

jr_00d_62f8:
    push hl
    push de
    inc de

jr_00d_62fb:
    ld b, $e6
    ret c

    dec d
    dec b
    rst $20
    ret c

    rla
    ld b, $e5
    reti


    jr jr_00d_631e

    ld a, [c]
    dec bc
    rst $20
    reti


    jr jr_00d_62e6

    jr jr_00d_6328

    reti


    jr jr_00d_62ec

    jr jr_00d_62ed

    jr jr_00d_62ea

    reti


    jr @+$18

    db $ed
    ld a, [c]
    dec bc
    reti


jr_00d_631e:
    jr jr_00d_62f8

    jr jr_00d_62fb

    jr @-$26

    dec d
    reti


    inc de
    ret c

jr_00d_6328:
    ld [de], a
    db $d3
    ret c

    db $10
    dec b
    ret c

    db $10
    ld b, $ee
    add b
    ld h, d
    reti


    inc de
    dec bc
    ret c

    inc e
    dec bc
    reti


    jr jr_00d_6347

    ret c

    rra
    dec b
    jr jr_00d_6347

    reti


    db $10
    dec bc
    ret c

    dec d
    dec bc

jr_00d_6347:
    ret c

    rla
    dec b
    ret c

    rla
    ld b, $f2
    dec bc
    reti


    dec d
    dec d
    reti


    dec d
    dec d
    db $ed
    reti


    db $10
    db $10
    reti


    db $10
    db $10
    xor $4d
    ld h, e
    reti


    inc de
    inc de
    reti


    ld [de], a
    ret c

    ld [de], a
    reti


    ld de, $d915
    jr @+$17

    reti


    db $10
    dec d
    reti


    jr jr_00d_6387

    reti


    db $10
    rla
    reti


    inc e
    rla
    db $d3
    reti


    ld a, [de]
    dec bc
    reti


    jr jr_00d_6384

    ret c

    jr jr_00d_6388

    reti


    rla

jr_00d_6384:
    dec bc
    ret c

    db $10

jr_00d_6387:
    dec bc

jr_00d_6388:
    reti


    db $10
    dec bc
    rst $10
    rla
    dec bc
    reti


    inc e
    dec b
    push de
    inc e
    ld b, $d8
    rla
    dec bc
    reti


    ld a, [de]
    dec b
    sub $18
    ld b, $17
    dec b
    push de
    rla
    ld b, $e6
    ret c

    dec d
    dec b
    rst $20
    ret c

    dec d
    ld b, $e5
    ret c

    rla
    dec bc
    ld a, [c]
    dec bc
    rst $20
    reti


    dec d
    dec d
    reti


    dec d
    dec d
    db $ed
    reti


    db $10
    db $10
    reti


    db $10
    db $10
    xor $ae
    ld h, e
    reti


    inc de
    inc de
    reti


    ld [de], a
    ret c

    ld [de], a
    reti


    ld de, $15d9
    ret c

    ld a, [de]
    reti


    dec d
    db $d3
    reti


    dec de
    dec b
    ret c

    dec de
    ld b, $d9
    rla
    dec bc
    rst $10
    ld [de], a
    dec b
    and $d6
    ld [de], a
    ld b, $e7
    push de
    rla
    dec b
    push hl
    ret c

    rla
    ld b, $e7
    ret c

    inc e
    dec bc
    reti


    ld a, [de]
    dec bc
    ret c

    dec e
    dec bc
    reti


    inc e
    dec bc
    ret c

    rla
    dec b
    jr @+$08

    reti


    ld a, [de]
    dec b
    reti


    ld a, [de]
    ld b, $e6
    ret c

    inc e
    dec b
    rst $20
    ret c

    rla
    ld b, $e5
    reti


    jr jr_00d_6418

    ldh a, [rSB]
    jp hl


    ld h, e
    rst $20
    ret c

    db $10
    dec b
    ret c

    ld c, $06

jr_00d_6418:
    or $05
    ret c

    inc de
    ld b, $d8
    ld de, $f605
    ld b, $d8
    rla
    dec b
    ret c

    dec d
    ld b, $f6
    dec b
    db $ed
    ret c

    inc de
    ld b, $d8
    ld de, $f605
    ld b, $f6
    dec b
    ret c

    ld de, $1006
    dec b
    ret c

    ld c, $06
    xor $11
    ld h, h
    or $06
    and $d5
    rla
    dec b
    rst $20
    sub $18
    ld b, $e5
    rst $10
    ld a, [de]
    dec b
    and $d6
    jr jr_00d_6458

    rst $20
    push de
    rla
    dec b
    push hl
    ret c

jr_00d_6458:
    dec d
    ld b, $e7
    ret c

    rla
    dec b
    ret c

    rla
    ld b, $d8
    rla
    dec b
    ret c

    jr jr_00d_646d

    ret c

    jr jr_00d_646f

    ret c

    jr @+$08

jr_00d_646d:
    ret c

    add hl, de

jr_00d_646f:
    dec b
    ret c

    add hl, de
    ld b, $d8
    add hl, de
    dec b
    ret c

    ld a, [de]
    ld b, $d8
    ld a, [de]
    dec b
    ret c

    ld a, [de]
    ld b, $ed
    ret c

    dec de
    dec b
    ret c

    dec de
    ld b, $d8
    dec de
    dec b
    or $06
    or $16
    xor $5b
    ld h, h
    ret c

    dec de
    dec b
    ret c

    dec de
    ld b, $d8
    dec de
    dec b
    ret c

    rla
    dec bc
    add sp, -$14
    and $31
    ld b, $e7
    dec l
    dec b
    push hl
    dec e
    ld b, $f6
    dec b
    and $2d
    ld b, $e7
    dec e
    dec b
    push hl
    dec l
    ld b, $e7
    dec e
    dec b
    dec e
    ld b, $e8
    nop
    reti


    db $10
    dec bc
    pop af
    add b
    ld h, d
    jp nc, $2661

    nop
    pop de
    pop hl
    inc b
    ld bc, $81d0
    inc bc
    nop
    rst $20
    db $e4
    push af
    nop
    ld a, [c]
    dec bc
    call $f0ce
    ld [bc], a
    rst $08
    ld h, h
    call $cecd
    or $cd
    or $ce
    adc $cd
    adc $f6
    adc $cd
    adc $f6
    adc $cd
    db $d3
    adc $05
    call $f206
    dec bc
    ldh a, [rSB]
    reti


    ld h, h
    db $d3
    adc $0b
    adc $05
    adc $06
    call $ce0b
    dec bc
    call $e605
    call z, $e706
    call z, $e505
    call z, $e606
    call $e705
    call $e506
    adc $0b
    ld a, [c]
    dec bc
    rst $20
    or $ce
    call $cef6
    adc $cd
    adc $f6
    adc $cd
    adc $cd
    adc $cd
    db $d3
    call $cd05
    ld b, $ef
    ld bc, $64bf
    ld a, [c]
    dec bc
    adc $f6
    ldh a, [rTIMA]
    dec l
    ld h, l
    db $ed
    adc $f6
    adc $cd
    xor $2d
    ld h, l
    db $d3
    adc $0b
    adc $05
    call $ce06
    dec bc
    call $ce0b
    dec bc
    call z, $ce0b
    dec b
    call z, $cd06
    dec bc
    adc $05
    call z, $cc0b
    ld b, $e6
    call $e705
    call $e506
    call $e705
    or $06
    ld a, [c]
    dec bc
    adc $f6
    ldh a, [rTMA]
    ld h, h
    ld h, l
    adc $cd
    db $d3
    adc $0b
    adc $0b
    call $ce0b
    dec bc
    adc $05
    call $ce06
    dec b
    or $06
    call z, $e605
    call z, $e706
    call z, $e505
    call $e706
    call $ce0b
    dec bc
    call $ce0b
    dec bc
    call $ce0b
    dec b
    adc $06
    and $cd
    dec b
    rst $20
    call $e506
    adc $05
    rst $20
    or $06
    ldh a, [rSB]
    adc e
    ld h, l
    call $cd05
    ld b, $f6
    dec b
    call $cd06
    dec b
    or $06
    ldh a, [rSB]
    xor c
    ld h, l
    or $05
    call $cd06
    dec b
    call $cd06
    dec b
    call $f606
    dec b
    db $ed
    call $cd06
    dec b
    or $06
    xor $c1
    ld h, l
    or $06
    and $cc
    dec b
    rst $20
    call z, $e506
    call z, $e605
    call z, $e706
    call z, $e505
    call z, $e706
    call $cd05
    ld b, $f0
    rlca
    push hl
    ld h, l
    db $ed
    or $16
    xor $e5
    ld h, l
    or $05
    and $cc
    ld b, $e7
    call z, $e505
    call z, $f606
    dec b
    and $cc
    ld b, $e7
    call z, $e505
    adc $06
    rst $20
    call z, $cc05
    ld b, $ce
    dec bc
    pop af
    cp a
    ld h, h
    pop bc
    ld bc, $0080
    jr nz, jr_00d_661a

jr_00d_661a:
    or b
    nop
    db $10
    ld bc, $0680
    jr nz, jr_00d_6629

    stop
    add b
    nop
    ld d, b
    nop
    ld [hl], c

jr_00d_6629:
    ld b, $20
    nop
    pop hl
    ld bc, $00c0
    add b
    nop
    nop
    ld bc, $0201
    ld bc, $0001
    rst $38
    rst $38
    cp $ff
    rst $38
    add b
    ld [hl-], a
    ld h, [hl]
    nop
    dec b
    rlca
    dec b
    nop
    ei
    ld sp, hl
    ei
    add b
    ld b, c
    ld h, [hl]
    nop
    nop
    ld e, l
    ld h, [hl]
    ld bc, $8001
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    and e
    ld h, [hl]
    inc bc
    inc bc
    or $66
    rst $38
    db $fc
    inc l
    ld h, a
    ld a, [$6733]
    rst $20
    push af
    inc bc
    ld sp, hl
    inc c
    db $ec
    ret nz

    ld hl, sp+$3a
    ld h, a
    ld hl, $2116
    ld [$07f6], sp
    inc hl
    ld [$2df7], sp
    inc h
    ld c, e
    rst $30
    inc bc
    or $0f
    ld h, $0f
    rst $38
    db $fc
    inc l
    ld h, a
    ld a, [$6733]
    rst $20
    push af
    inc bc
    ld sp, hl
    inc c
    db $ec
    ret nz

    ld hl, sp+$3a
    ld h, a
    jr @+$18

    jr jr_00d_669c

    or $07
    ld a, [de]
    ld [$2df7], sp
    dec de
    ld c, e

jr_00d_669c:
    rst $30
    inc bc
    or $0f
    ld e, $0f
    rst $38
    rst $18
    or $19
    ld [bc], a
    sbc $ec
    ld [hl+], a
    inc bc
    rst $20
    push af
    nop
    add sp, $00
    db $fc
    reti


    ld b, a
    ld a, [$47de]
    ei
    ld hl, sp+$47
    db $e4
    reti


    inc de
    rlca
    ret c

    inc de
    ld [$13d8], sp
    rlca
    reti


    inc de
    ld [$13d8], sp
    rlca
    ret c

    dec d
    ld [$16d8], sp
    rrca
    add sp, -$14
    or $07
    ld sp, $3104
    inc b
    dec l
    rlca
    add sp, -$0a
    add hl, de
    ld [$ece8], sp
    ld sp, $3107
    ld [$ece8], sp
    ld [hl+], a
    rlca
    ld [hl+], a
    ld [$00e8], sp
    reti


    jr jr_00d_66f3

    ldh a, [rSC]
    db $eb
    ld h, [hl]
    ret c

jr_00d_66f3:
    jr @+$11

    rst $38
    jp nc, Jump_00d_4271

    ld bc, $a1d1
    inc b
    ld bc, $81d0
    inc bc
    nop
    rst $20
    adc $07
    call $cd08
    rlca
    adc $08
    call z, $cc07
    ld [$0fcd], sp
    or $07
    call z, $cc04
    inc b
    call z, $ce07
    ld [$07cc], sp
    call z, $cd08
    rlca
    call $ce08
    dec b
    adc $05
    adc $05
    call $ff0f
    pop bc
    ld b, $70
    nop
    rst $38
    ld l, $67
    ld [hl], c
    ld b, $20
    nop
    rst $38
    dec [hl]
    ld h, a
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld a, [hl-]
    ld h, a
    nop
    nop
    ld e, d
    ld h, a
    ld bc, $ea01
    ld h, a
    ld [bc], a
    ld [bc], a
    daa
    ld l, b
    inc bc
    inc bc
    ld c, d
    ld l, b
    rst $38
    db $fc
    ld d, h
    ld l, b
    ld a, [$6858]
    rst $20
    push af
    inc bc
    db $ec
    add b
    ld hl, sp+$5a
    ld l, b
    dec h
    ld bc, $0126
    daa
    ld bc, $04f9
    jr z, jr_00d_678b

    pop hl
    db $e4
    ld a, [hl+]
    ld bc, $012b
    inc l
    ld bc, $38f7
    ld sp, hl
    inc b
    dec l
    ld d, c
    pop hl
    jr z, jr_00d_6784

    add hl, hl

jr_00d_6784:
    ld bc, $012a
    dec hl
    rrca
    add hl, hl
    inc de

jr_00d_678b:
    jr z, jr_00d_67a0

    inc h
    ld bc, $0125
    ld h, $01
    ld h, $19
    inc h
    ld c, $26
    ld c, $f0
    ld bc, $6768
    rst $30
    ld c, $25

jr_00d_67a0:
    ld bc, $0126
    daa
    ld bc, $1928
    dec l
    inc e
    add hl, hl
    ld bc, $012a
    dec hl
    ld bc, $192c
    cpl
    inc e
    ld a, [hl+]
    ld bc, $012b
    inc l
    ld bc, $192d
    rst $30
    inc c
    jr z, jr_00d_67f7

    ld h, $0e
    jr z, @+$10

    rst $30
    ld c, $26
    ld bc, $0127
    jr z, jr_00d_67cc

    add hl, hl

jr_00d_67cc:
    add hl, de
    ld h, $1c
    dec h
    ld bc, $0126
    daa
    ld bc, $1928
    inc hl
    inc e
    db $e4
    add sp, $00
    ld hl, sp+$69
    ld l, b
    rst $30
    jr c, jr_00d_6803

    ld bc, $0122
    inc hl
    ld bc, $6d24
    rst $38
    db $fc
    ld c, e
    ld l, b
    ld a, [$6852]
    push hl
    push af
    inc bc
    ld sp, hl
    ld c, $ec
    ld b, b

jr_00d_67f7:
    ld hl, sp+$5a
    ld l, b
    ld a, [c]
    inc e
    dec d
    jr jr_00d_681b

    jr jr_00d_6811

    inc de
    db $d3

jr_00d_6803:
    rla
    ld c, $13
    ld c, $10
    inc e
    and $f0
    ld bc, $67fa
    ld a, [c]
    inc e
    rst $20

jr_00d_6811:
    jr jr_00d_6828

    ld a, [de]
    rla
    inc e
    jr jr_00d_682d

    or $1a
    dec d

jr_00d_681b:
    inc d
    rla
    db $d3
    db $e4
    ld hl, sp+$69
    ld l, b
    rst $30
    jr c, jr_00d_683a

    ld [hl], b
    rst $38
    db $fc

jr_00d_6828:
    reti


    ld b, a
    ld a, [$47de]

jr_00d_682d:
    rst $20
    ei
    ld hl, sp+$47
    dec d
    ld [hl], b
    db $10
    ld [hl], b
    dec d
    ld [hl], b
    db $10
    ld [hl], b
    dec d

jr_00d_683a:
    jr c, jr_00d_6853

    jr c, jr_00d_6856

    jr c, jr_00d_6855

    inc e
    db $10
    inc e
    ld c, $38
    db $10
    jr c, @+$17

    ld [hl], b
    rst $38
    rst $38
    or c
    inc b
    ld [hl], b
    nop
    rst $38
    ld c, l
    ld l, b
    ld b, b

jr_00d_6853:
    nop
    ld l, e

jr_00d_6855:
    inc bc

jr_00d_6856:
    sub b
    nop
    jr nc, jr_00d_685a

jr_00d_685a:
    nop
    ld bc, $0201
    ld bc, $0001
    rst $38
    rst $38
    cp $ff
    rst $38
    add b
    ld e, d
    ld l, b
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    cp $fd
    cp $00
    add b
    ld l, c
    ld l, b
    nop
    nop
    add a
    ld l, b
    ld bc, $5a01
    ld l, d
    ld [bc], a
    ld [bc], a
    adc h
    ld l, e
    inc bc
    inc bc
    rst $38
    ld l, l
    rst $38
    db $fc
    inc e
    ld l, a
    ld a, [$6f28]
    ld hl, sp+$4a
    ld l, a
    db $ec
    nop
    ld sp, hl
    dec b
    pop hl
    push af
    nop
    and $2d
    ld b, $32
    rlca
    rst $20
    inc [hl]
    ld b, $39
    rlca
    push hl
    inc [hl]
    ld b, $32
    rlca
    rst $20
    dec l
    ld b, $32
    rlca
    ldh a, [$0e]
    sub a
    ld l, b
    and $2d
    ld b, $e7
    ld [hl-], a
    rlca
    rst $20
    inc [hl]
    ld b, $e6
    add hl, sp
    rlca
    db $f4
    db $f4
    db $fc
    ld b, d
    ld l, a
    ld a, [$6f46]
    db $e4
    db $ec
    ld b, b
    rst $20
    ld a, [de]
    ld b, $1d
    rlca
    ld h, $06
    add hl, hl
    rlca
    ld sp, hl
    ld a, [de]

jr_00d_68d1:
    rst $30
    ld b, $28
    daa
    ld sp, hl
    ld b, $e1
    ld a, [c]
    dec c
    ld h, $28
    add hl, hl
    ld hl, sp+$59
    ld l, a
    db $e4
    rst $30
    inc b
    dec hl
    ld sp, hl
    ld b, $e1
    add hl, hl
    db $e4
    rst $30
    inc b
    jr z, jr_00d_68d1

    db $d3
    pop hl
    add hl, hl
    ld b, $28
    rlca
    ld h, $06
    inc h
    rlca
    ld hl, sp+$4a
    ld l, a
    ld sp, hl
    ld a, [de]
    rst $30
    ld b, $22
    dec l
    db $e4
    db $d3
    ld hl, $2207
    ld b, $24
    rlca
    ld sp, hl
    ld a, [de]
    rst $30
    ld b, $26
    daa
    ld sp, hl
    ld b, $e1
    ld a, [c]
    dec c
    inc h
    ld h, $28
    ld hl, sp+$59
    ld l, a
    db $e4
    rst $30
    inc b
    add hl, hl
    ld sp, hl
    ld b, $e1
    ld h, $e4
    rst $30
    inc b
    inc h
    db $e4
    db $d3
    pop hl
    ld [hl+], a
    ld b, $21
    rlca
    rra
    ld b, $21
    rlca
    ld hl, sp+$4a
    ld l, a
    ld sp, hl
    ld a, [de]
    rst $30
    ld b, $26
    daa
    db $e4
    ld a, [de]
    ld b, $1d
    rlca
    ld hl, $2606
    rlca
    dec l
    ld b, $2b
    rlca
    add hl, hl
    ld b, $28
    rlca
    add hl, hl
    ld b, $28
    rlca
    inc hl
    ld bc, $0124
    dec h
    ld bc, $1af9
    rst $30
    ld b, $26
    ld a, [hl+]
    db $e4
    jr z, jr_00d_6964

    add hl, hl
    ld b, $2b
    rlca
    ldh a, [rSB]
    ld b, d

jr_00d_6964:
    ld l, c
    ld hl, sp+$59
    ld l, a
    rst $30
    inc b
    ld sp, hl
    dec b
    dec l
    dec c
    pop hl
    db $e4
    dec hl
    ld b, $29
    rlca
    rst $30
    inc b
    ld sp, hl
    dec b
    dec hl
    dec c
    pop hl
    db $e4
    add hl, hl
    ld b, $28
    rlca
    rst $30
    inc b
    ld sp, hl
    dec b
    add hl, hl
    dec c
    pop hl
    db $e4
    jr z, jr_00d_6990

    ld h, $07
    jr z, jr_00d_6994

    add hl, hl
    rlca

jr_00d_6990:
    dec hl
    ld b, $2d
    rlca

jr_00d_6994:
    ld l, $06
    jr nc, jr_00d_699f

    ld sp, $3406
    rlca
    add sp, -$01
    add hl, sp

jr_00d_699f:
    daa
    add sp, $00
    db $f4
    nop
    db $ec
    ret nz

    inc h
    inc b
    ld [hl+], a
    inc b
    ld hl, $2e05
    ld b, $2b
    rlca
    jr z, jr_00d_69b8

    dec h
    rlca
    ld hl, $2206
    rlca

jr_00d_69b8:
    inc h
    ld b, $26
    rlca
    inc h
    ld b, $22
    rlca
    ld hl, $1f06
    rlca
    dec e
    ld b, $1f
    rlca
    ld hl, $2206
    rlca
    ld hl, $1f06
    rlca
    dec e
    ld b, $1c
    rlca
    ld a, [de]
    ld b, $1c
    rlca
    dec e
    ld b, $1f
    rlca
    dec e
    ld b, $1f
    rlca
    ld hl, $2206
    rlca
    inc h
    ld b, $26
    rlca
    inc h
    ld b, $22
    rlca
    ld hl, $1f06
    rlca
    dec e
    ld b, $1c
    rlca
    ld sp, hl
    ld b, $f2
    dec c
    and $fc
    ld b, d
    ld l, a
    ld a, [$6f46]
    ld h, $22
    inc h
    ld hl, $1f22
    ld hl, $1ded
    xor $ff
    ld l, c
    ld [hl+], a
    db $e4
    db $d3
    ld hl, $1c06
    rlca
    dec de
    ld b, $1a
    rlca
    jr jr_00d_6a1e

    ld a, [de]
    rlca
    inc e
    ld b, $18
    rlca

jr_00d_6a1e:
    ld a, [de]
    ld b, $1b
    rlca
    inc e
    ld b, $21
    rlca
    inc hl
    ld b, $24
    rlca
    inc hl
    ld b, $21
    rlca
    push hl
    dec hl
    ld b, $28
    rlca
    dec h
    ld b, $22
    rlca
    or $06
    and $28
    rlca
    dec h
    ld b, $22
    rlca
    rra
    ld b, $f6
    rlca
    db $fc
    ld a, [hl-]
    ld l, a
    ld a, [$6f3e]
    rst $20
    dec h
    ld b, $22
    rlca
    rra
    ld b, $1c
    rlca
    add hl, de
    ld b, $16
    rlca
    pop af
    add a
    ld l, b
    db $fc
    jr nc, jr_00d_6acc

    ld a, [$6f36]
    ld hl, sp+$4a
    ld l, a
    db $ec
    nop
    ld sp, hl
    ld b, $e1
    push af
    nop
    ld a, [c]
    dec c
    rst $20
    dec d
    inc de
    ld a, [de]
    inc de
    rra
    ld a, [de]
    inc de
    ld a, [de]
    ldh a, [rTMA]
    ld l, l
    ld l, d
    dec d
    inc de
    ld a, [de]
    inc de
    rra
    ld a, [de]
    db $d3
    ld sp, hl
    inc bc
    ld de, $1506
    rlca
    ld a, [de]
    ld b, $1d
    rlca
    ld a, [c]
    dec c
    ld sp, hl
    ld b, $fc
    inc e
    ld l, a
    ld a, [$6f28]
    db $f4
    inc c
    db $ec
    ld b, b
    ld d, $11
    jr jr_00d_6aad

    ld a, [de]
    ld de, $1116
    ldh a, [rSC]
    sbc b
    ld l, d
    ld d, $11
    jr @+$13

    ld a, [de]
    ld de, $f9d3
    inc bc

jr_00d_6aad:
    ld de, $1506
    rlca
    ld a, [de]
    ld b, $1d
    rlca
    ld a, [c]
    dec c
    ld sp, hl
    ld b, $17
    ld de, $1115
    ld a, [de]
    ld de, $1115
    rla
    ld de, $111a
    dec e
    ld de, $111a
    jr @+$15

    ld a, [de]

jr_00d_6acc:
    inc de
    inc e
    inc de
    jr jr_00d_6ae4

    inc e
    add hl, de
    dec e
    add hl, de
    inc e
    dec e
    rra
    inc e
    db $d3
    db $fc
    ld a, [hl-]
    ld l, a
    ld a, [$6f3e]
    db $ec
    ret nz

    db $f4
    nop

jr_00d_6ae4:
    db $e4
    and $1d
    ld b, $1f
    rlca
    ld hl, $2206
    rlca
    ld hl, $1f06
    rlca
    dec e
    ld b, $1c
    rlca
    ld a, [de]
    ld b, $1c
    rlca
    dec e
    ld b, $1f
    rlca
    dec e
    ld b, $1c
    rlca
    ld a, [de]
    ld b, $18
    rlca
    push hl
    ld d, $06
    jr jr_00d_6b12

    ld a, [de]
    ld b, $1c
    rlca
    ld a, [de]
    ld b, $1c

jr_00d_6b12:
    rlca
    dec e
    ld b, $1f
    rlca
    ld hl, $2206
    rlca
    ld hl, $1f06
    rlca
    dec e
    ld b, $1c
    rlca
    ld a, [de]
    ld b, $19
    rlca
    ld sp, hl
    ld b, $f2
    dec c
    db $fc
    ld b, d
    ld l, a
    ld a, [$6f46]
    ld [hl+], a
    rra
    ld hl, $1f1d
    inc e
    dec e
    db $ed
    ld a, [de]
    xor $31
    ld l, e
    rra
    db $e4
    db $d3
    ld h, $06
    ld hl, $2007
    ld b, $1f
    rlca
    dec e
    ld b, $1f
    rlca
    ld hl, $1d06
    rlca
    rra
    ld b, $20
    rlca
    ld hl, $2606
    rlca
    jr z, jr_00d_6b60

    add hl, hl
    rlca
    jr z, jr_00d_6b64

    ld h, $07

jr_00d_6b60:
    push hl
    jr z, jr_00d_6b69

    dec h

jr_00d_6b64:
    rlca
    ld [hl+], a
    ld b, $1f
    rlca

jr_00d_6b69:
    or $06
    and $25
    rlca
    ld [hl+], a
    ld b, $1f
    rlca
    inc e
    ld b, $f6
    rlca
    db $fc
    ld a, [hl-]
    ld l, a
    ld a, [$6f3e]
    rst $20
    ld [hl+], a
    ld b, $1f
    rlca
    inc e
    ld b, $19
    rlca
    ld d, $06
    inc de
    rlca
    pop af
    ld e, d
    ld l, d
    rst $18
    or $19
    ld [bc], a
    sbc $f6
    ld [hl+], a
    inc b
    db $dd
    db $ec
    dec l
    inc b
    call c, $29ec
    inc b
    db $db
    db $ec
    inc h
    inc b
    rst $20
    push af
    nop
    add sp, $00
    db $fc
    reti


    ld b, a
    ld a, [$47de]
    ei
    ld hl, sp+$47
    ld a, [c]
    ld a, [de]
    reti


    ld c, $fc
    sbc $47
    reti


    ld c, $d9
    ld c, $d9
    ld c, $fc
    reti


    ld b, a
    reti


    db $10
    db $fc
    sbc $47
    reti


    db $10
    db $d3
    reti


    db $10
    dec c
    db $fc
    reti


    ld b, a
    add sp, -$14
    and $31
    ld b, $e7
    dec l
    rlca
    db $fc
    sbc $47
    add sp, $00
    push hl
    ret c

    db $10
    dec c
    db $fc
    reti


    ld b, a
    add sp, -$14
    rst $20
    ld sp, $3106
    rlca
    add sp, $00
    db $ed
    ld a, [c]
    ld a, [de]
    reti


    ld de, $defc
    ld b, a
    reti


    ld de, $11d9
    reti


    ld de, $d9fc
    ld b, a
    reti


    db $10
    db $fc
    sbc $47
    reti


    db $10
    db $d3
    reti


    db $10
    dec c
    db $fc
    reti


    ld b, a
    add sp, -$14
    and $31
    ld b, $e7
    dec l
    rlca
    db $fc
    sbc $47
    add sp, $00
    push hl
    ret c

    db $10
    dec c
    db $fc
    reti


    ld b, a
    add sp, -$14
    rst $20
    ld sp, $3106
    rlca
    add sp, $00
    xor $ae
    ld l, e
    ld a, [c]
    ld a, [de]
    reti


    ld de, $11d8
    db $d3
    reti


    ld de, $d90d
    ld de, $d80d
    ld de, $d81a
    inc de
    dec c
    reti


    inc de
    dec c
    ret c

    inc de
    dec c
    reti


    inc de
    dec c
    ret c

    inc de
    ld b, $d9
    inc de
    rlca
    ret c

    inc de
    ld b, $d9
    inc de
    rlca
    add sp, -$14
    ld sp, $e606
    ld sp, $e707
    dec l
    ld b, $e5
    dec e
    rlca
    add sp, $00
    rst $20
    reti


    ld d, $1a
    ret c

    ld d, $1a
    reti


    ld d, $0d
    reti


    ld de, $d80d
    ld d, $0d
    ld de, $ed0d
    reti


    ld d, $0d
    db $fc
    sbc $47
    reti


    ld d, $0d
    db $fc
    reti


    ld b, a
    ret c

    ld d, $0d
    db $fc
    sbc $47
    reti


    ld d, $0d
    db $fc
    reti


    ld b, a
    ld d, $0d
    reti


    ld de, $d80d
    ld d, $0d
    reti


    ld de, $ee0d
    ld h, b
    ld l, h
    reti


    ld d, $0d
    db $fc
    sbc $47
    reti


    ld d, $0d
    db $fc
    reti


    ld b, a
    ret c

    ld d, $0d
    db $fc
    sbc $47
    reti


    ld d, $0d
    db $fc
    reti


    ld b, a
    reti


    ld d, $06
    ret c

    ld d, $07
    reti


    ld de, $d80d
    ld d, $06
    ret c

    ld d, $07
    reti


    ld de, $d90d
    rla
    ld a, [de]
    ret c

    rla
    ld a, [de]
    reti


    rla
    dec c
    reti


    ld de, $d80d
    rla
    dec c
    ld de, $d90d
    rla
    dec c
    db $fc
    sbc $47
    reti


jr_00d_6cda:
    rla
    dec c
    db $fc
    reti


    ld b, a
    ret c

    rla
    dec c
    db $fc
    sbc $47
    reti


    rla
    dec c
    db $fc
    reti


    ld b, a
    rla
    dec c
    reti


    ld de, $d80d
    rla
    dec c
    reti


    ld de, $f20d
    dec c
    reti


    jr jr_00d_6d0e

    ret c

    jr jr_00d_6d11

    reti


    jr jr_00d_6cda

    inc de
    ret c

    jr @+$15

    db $d3
    reti


    add hl, de
    dec c
    reti


    dec d
    dec c
    ret c

    add hl, de

jr_00d_6d0e:
    ld b, $d8
    add hl, de

jr_00d_6d11:
    rlca
    reti


    dec d
    dec c
    rst $10
    add hl, de
    ld b, $d7
    add hl, de
    rlca
    and $d6
    ld a, [de]
    ld b, $d6
    ld a, [de]
    rlca
    rst $20
    push de
    inc e
    ld b, $d5
    inc e
    rlca
    push hl
    ret c

    add hl, de
    ld b, $d8
    add hl, de
    rlca
    db $fc
    reti


    ld b, a
    rst $20
    reti


    ld a, [de]
    dec c
    ret c

    ld a, [de]
    dec c
    reti


    dec d
    dec c
    ret c

    dec d
    dec c
    reti


    ld d, $0d
    ret c

    ld d, $06
    reti


    ld d, $07
    inc de
    ld b, $d9
    inc de
    rlca
    reti


    inc de
    dec c
    reti


    dec d
    dec c
    ret c

    dec d
    dec c
    reti


    ld de, $d80d
    ld de, $d90d
    inc de
    dec c
    ret c

    inc de
    ld b, $d9
    inc de
    rlca
    db $10
    ld b, $d9
    db $10
    rlca
    reti


    db $10
    dec c
    reti


    ld c, $0d
    ret c

    ld de, $d90d
    db $10
    dec c
    ret c

    inc de
    dec c
    reti


    ld c, $0d
    ret c

    ld de, $d906
    ld de, $1007
    ld b, $d9
    db $10
    rlca
    reti


    inc de
    dec c
    ldh a, [rSB]
    ld l, [hl]
    ld l, l
    reti


    dec d
    ld b, $d9
    dec d
    rlca
    ret c

    ld de, $d906
    ld de, $d907
    ld a, [de]
    ld b, $d9
    ld a, [de]
    rlca
    ret c

    dec d
    ld b, $d8
    dec d
    rlca
    and $d7
    ld a, [de]
    ld b, $e7
    rst $10
    ld a, [de]
    rlca
    push hl
    sub $10
    ld b, $e6
    push de
    db $10
    rlca
    rst $20
    sub $1d
    ld b, $e5
    push de
    dec e
    rlca
    rst $20
    ret c

    ld c, $06
    reti


    ld c, $07
    ret c

    ld [hl+], a
    ld b, $d8
    rra
    rlca
    ret c

    inc e
    ld b, $d8
    add hl, de
    rlca
    reti


    add hl, de
    ld b, $d8
    rra
    rlca
    ret c

    inc e
    ld b, $d8
    add hl, de
    rlca
    ret c

    ld d, $06
    reti


    ld d, $07
    and $d7
    rra
    ld b, $e7
    sub $1c
    rlca
    push hl
    push de
    add hl, de
    ld b, $e6
    push de
    ld d, $07
    rst $20
    ret c

    inc de
    ld b, $e5
    ret c

    db $10
    rlca
    pop af
    adc h
    ld l, e
    jp nc, $2661

    nop
    pop de
    pop hl
    inc b
    ld bc, $81d0
    inc bc
    nop
    rst $20
    db $e4
    push af
    nop
    ld a, [c]
    ld a, [de]
    adc $f0
    dec b
    ld de, $d36e
    adc $0d
    and $cc
    ld b, $e7
    call z, $e507
    call $e70d
    call z, $cc06
    rlca
    ld a, [c]
    ld a, [de]
    rst $28
    ld [bc], a
    ld de, $d36e
    adc $1a
    call $ce1a
    dec c
    adc $0d
    call $cd1a
    dec c
    adc $0d
    call $ce0d
    dec c
    call $cd06
    rlca
    adc $06
    adc $07
    call z, $e606
    call z, $e707
    call z, $e506
    call z, $e707
    adc $1a
    call $ce1a
    dec c
    adc $0d
    call $ce1a
    dec c
    adc $0d
    call $ed0d
    adc $1a
    adc $0d
    call $ce0d
    dec c
    xor $54
    ld l, [hl]
    adc $0d
    adc $06
    call $ce07
    dec c
    call $cd06
    rlca
    adc $0d
    adc $1a
    call $ce1a
    dec c
    adc $0d
    call $ce1a
    dec c
    adc $0d
    db $ed
    call $ce0d
    ld a, [de]
    adc $0d
    call $ce0d
    dec c
    xor $7e
    ld l, [hl]
    call $cd06
    rlca
    adc $0d
    call z, $cc06
    rlca
    and $cc
    ld b, $cc
    rlca
    rst $20
    call z, $cc06
    rlca
    push hl
    call z, $cc06
    rlca
    rst $20
    adc $0d
    call $ce0d
    dec c
    call $ce0d
    dec c
    call $ce06
    rlca
    or $06
    adc $07
    call $f00d
    inc bc
    or e
    ld l, [hl]
    adc $06
    adc $07
    call $ce06
    rlca
    adc $06
    adc $07
    call $cd06
    rlca
    and $cc
    ld b, $e7
    call z, $e507
    call z, $e606
    call z, $e707
    call z, $e506
    call z, $e707
    call z, $ce06
    rlca
    call $cd06
    rlca
    call $cd06
    rlca
    adc $06
    call $cd07
    ld b, $cd
    rlca
    call $ce06
    rlca
    and $cc
    ld b, $e7
    call z, $e507
    call z, $e606
    call z, $e707
    call $e506
    call $f107
    rst $38
    ld l, l
    pop de
    ld bc, $05a1
    ld b, e
    ld [$0120], sp
    ld [hl-], a
    inc b
    stop
    and c
    ld bc, $0571
    ld [hl], $0c
    stop
    cp c
    inc bc
    pop hl
    inc bc
    or b
    nop
    db $10
    ld bc, $0040
    or c
    ld [bc], a
    sub b
    nop
    db $10
    ld [bc], a
    ld d, b
    nop
    pop de
    ld [bc], a
    or b
    nop
    jr nc, jr_00d_6f4a

    ld [hl], b
    nop

jr_00d_6f4a:
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $ff00
    cp $ff
    cp $ff
    add b
    ld c, d
    ld l, a
    ld bc, $0103
    rst $38
    db $fd
    rst $38
    add b
    ld e, c
    ld l, a
    ld b, $01
    ld l, b
    ld l, a
    rst $38
    rst $38
    db $ec
    ret nz

    rst $20
    cp $d5
    jr jr_00d_6f71

    add sp, $28

jr_00d_6f71:
    inc h
    inc bc
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld a, d
    ld l, a
    and b
    nop
    rst $38
    ld a, a
    ld l, a
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    add h
    ld l, a
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    sub e
    ld l, a
    ld b, $01
    xor b
    ld l, a
    rst $38
    rst $38
    rst $20
    cp $d4
    ld d, $02
    add sp, -$3c
    ld a, $03
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    cp b
    ld l, a
    and b
    nop
    rst $38
    cp l
    ld l, a
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    jp nz, $006f

    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    pop de
    ld l, a
    ld b, $01
    and $6f
    rst $38
    rst $38
    db $ec
    add b
    rst $20
    add sp, -$19
    cp $f3
    dec e
    inc bc
    cp $93
    dec e
    inc bc
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld a, [$a06f]
    nop
    rst $38
    rst $38
    ld l, a
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    inc b
    ld [hl], b
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    inc de
    ld [hl], b
    ld b, $01
    inc l
    ld [hl], b
    rlca
    inc bc
    add hl, sp
    ld [hl], b
    rst $38
    rst $38
    rst $20
    cp $d5
    add sp, -$1e
    ld sp, $e804
    nop
    ld b, [hl]
    ld e, $ff
    rst $38
    rst $20
    cp $d0
    add sp, $03
    jr nc, jr_00d_7044

    add sp, $00
    rst $38
    pop af

jr_00d_7044:
    ld b, $90
    nop
    rst $38
    ld b, l
    ld [hl], b
    and b
    nop
    rst $38
    ld c, d
    ld [hl], b
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld c, a
    ld [hl], b
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld e, [hl]
    ld [hl], b
    ld b, $03
    ld [hl], l
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $92
    ld d, b
    inc b
    cp $f5
    db $10
    dec l
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    add c
    ld [hl], b
    and b
    nop
    rst $38
    add [hl]
    ld [hl], b
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    adc e
    ld [hl], b
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    sbc d
    ld [hl], b
    inc b
    inc bc
    or c
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    cp $e3
    rst $20
    add sp, -$03
    nop
    ld b, $70
    inc c
    add sp, $00
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    cp a
    ld [hl], b
    and b
    nop
    rst $38
    call nz, $0070
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ret


    ld [hl], b
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ret c

    ld [hl], b
    inc b
    inc bc
    rst $28
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $b5
    add sp, $01
    jr nz, @+$05

    ld h, b
    ld [hl-], a
    add sp, $00
    ldh a, [rSB]
    rst $28
    ld [hl], b
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld bc, $a071
    nop
    rst $38
    ld b, $71
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    dec bc
    ld [hl], c
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld a, [de]
    ld [hl], c
    ld b, $01
    cpl
    ld [hl], c
    rst $38
    rst $38
    rst $20
    cp $d0
    ld [c], a
    add sp, $46
    ld bc, $e80a
    nop
    dec bc
    ld e, $e1
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld b, c
    ld [hl], c
    and b
    nop
    rst $38
    ld b, [hl]
    ld [hl], c
    nop
    inc b
    ld a, [bc]
    inc b
    nop
    db $fc
    or $fc
    add b
    ld c, e
    ld [hl], c
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld d, [hl]
    ld [hl], c
    inc b
    ld bc, $716b
    rst $38
    rst $38
    rst $20
    cp $b3
    add sp, $14
    inc de
    rlca
    db $10
    ld [$00e8], sp
    ldh a, [rSB]
    ld l, e
    ld [hl], c
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld a, a
    ld [hl], c
    and b
    nop
    rst $38
    add h
    ld [hl], c
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    adc c
    ld [hl], c
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    sbc b
    ld [hl], c
    rlca
    inc bc
    xor a
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $e3
    ld [hl], b
    rrca
    add sp, $00
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    cp c
    ld [hl], c
    and b
    nop
    rst $38
    cp [hl]
    ld [hl], c
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    jp $0071


    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    jp nc, $0771

    ld bc, $71e7
    rst $38
    rst $38
    rst $20
    cp $b7
    add sp, $15
    db $ec
    add b
    dec de
    inc c
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    rst $30
    ld [hl], c
    and b
    nop
    rst $38
    db $fc
    ld [hl], c
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld bc, $0072
    inc b
    ld [$080a], sp
    inc b

jr_00d_7216:
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    db $10
    ld [hl], d
    dec b
    ld bc, $7224
    rst $38
    rst $20
    cp $b7
    add sp, $15
    db $ec
    add b
    rrca
    jr jr_00d_7216

    nop
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    inc [hl]
    ld [hl], d
    and b
    nop
    rst $38
    add hl, sp
    ld [hl], d
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld a, $72
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld c, l
    ld [hl], d
    inc b
    ld bc, $7262
    rst $38
    rst $38
    rst $20
    cp $b7
    add sp, $0a
    db $ec
    ret nz

    daa
    ld a, [bc]
    add sp, $00
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld [hl], b
    ld [hl], d
    and b
    nop
    rst $38
    ld [hl], l
    ld [hl], d
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a

jr_00d_7280:
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld a, d
    ld [hl], d
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    adc c
    ld [hl], d
    inc b
    ld bc, $72a1
    ld b, $03
    or b
    ld [hl], d
    rst $38
    cp $e4
    rst $20
    db $ec
    ld b, b
    add sp, -$14
    ld a, [c]
    inc b
    inc c
    jr jr_00d_7280

    add sp, $00
    rst $38
    rst $20
    ld a, [c]
    inc b
    cp $a0
    ld d, b
    ld [hl], b
    db $d3
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    cp e
    ld [hl], d
    and b
    nop
    rst $38
    ret nz

    ld [hl], d
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop

jr_00d_72cc:
    cp $fc
    ld a, [$fefc]
    add b
    push bc
    ld [hl], d
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    call nc, $0472
    ld bc, $72ed
    dec b
    inc bc
    db $fd
    ld [hl], d
    rst $38
    rst $38
    cp $e4
    rst $20
    db $ec
    ret nz

    add sp, -$14
    ld a, [c]
    inc b
    inc h
    jr nc, jr_00d_72cc

    add sp, $00
    rst $38
    rst $38
    rst $20
    ld a, [c]
    inc b
    cp $a0
    jr nc, jr_00d_7334

    db $d3
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld [$a073], sp
    nop
    rst $38
    dec c
    ld [hl], e
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld [de], a
    ld [hl], e
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld hl, $0473
    ld bc, $7336

jr_00d_7334:
    rst $38
    rst $38
    rst $20
    cp $c6
    add sp, $14
    rra
    ld [bc], a
    add sp, $03
    inc h
    ld [$00e8], sp
    ldh a, [rSB]
    ld [hl], $73
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld c, h
    ld [hl], e
    and b
    nop
    rst $38
    ld d, c
    ld [hl], e
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld d, [hl]
    ld [hl], e
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld h, l
    ld [hl], e
    ld b, $01
    ld a, d
    ld [hl], e
    rst $38
    rst $38
    rst $20
    cp $b4
    add sp, -$03
    ld a, [c]
    ld [$40ec], sp
    ld [c], a
    ld hl, sp-$5b
    ld [hl], e
    inc a
    ld a, [hl-]
    jr c, jr_00d_73c1

    inc [hl]
    ld [hl-], a
    jr nc, @+$30

    inc l
    ld a, [hl+]
    jr z, jr_00d_73b9

    inc h
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    sbc e
    ld [hl], e
    and b
    nop
    rst $38
    and b
    ld [hl], e
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    and l
    ld [hl], e
    nop
    inc b
    ld [$080a], sp

jr_00d_73b9:
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b

jr_00d_73c1:
    or h
    ld [hl], e
    inc b
    inc bc
    bit 6, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $e0
    add sp, -$01
    jr nc, jr_00d_73dc

    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    push de
    ld [hl], e
    and b
    nop

jr_00d_73dc:
    rst $38
    jp c, $0073

    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    rst $18
    ld [hl], e
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    xor $73
    inc b
    ld bc, $7403
    rst $38
    rst $38
    rst $20
    cp $b7
    db $ec
    add b
    add sp, $03
    ld a, [c]
    ld b, $2b
    ld l, $2b
    ld l, $e8
    nop
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    rla
    ld [hl], h
    and b
    nop
    rst $38
    inc e
    ld [hl], h
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld hl, $0074
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    jr nc, jr_00d_74b3

    dec b
    ld bc, $7449
    inc b
    inc bc
    ld e, [hl]
    ld [hl], h
    rst $38
    rst $38
    rst $20
    ld [c], a
    add sp, $01
    cp $c1
    db $ec
    ret nz

    cp $c7
    ld d, d
    inc c
    cp $97
    ld d, d
    inc c
    add sp, $00
    pop hl
    rst $38
    rst $38
    rst $20
    cp $51
    jr nc, jr_00d_746f

    jr nc, jr_00d_7471

    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld l, b
    ld [hl], h
    and b
    nop

jr_00d_746f:
    rst $38
    ld l, l

jr_00d_7471:
    ld [hl], h
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld [hl], d
    ld [hl], h
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    add c
    ld [hl], h
    inc b
    ld bc, $7496
    rst $38
    rst $38
    db $ec
    add b
    rst $20
    cp $e0
    add sp, $0a
    ld l, $04
    cp $a0
    ld l, $04
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    xor d
    ld [hl], h
    and b
    nop
    rst $38
    xor a

jr_00d_74b3:
    ld [hl], h
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    or h
    ld [hl], h
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    jp $0574


    ld bc, $74d8
    rst $38
    rst $38
    rst $20
    cp $e5
    db $ec
    add b
    add sp, -$2b
    inc sp
    rlca
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    add sp, $74
    and b
    nop
    rst $38
    db $ed
    ld [hl], h
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld a, [c]
    ld [hl], h
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld bc, $0475
    inc bc
    jr jr_00d_7589

    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $f3
    add sp, -$03
    ld [hl], b
    ld [$00e8], sp
    cp $e6
    ld [hl], b
    inc c
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    jr z, jr_00d_75a2

    and b
    nop
    rst $38
    dec l
    ld [hl], l
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld [hl-], a
    ld [hl], l
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld b, c
    ld [hl], l
    inc b
    ld bc, $7556
    rst $38
    rst $38
    rst $20
    db $ec
    ret nz

    cp $e6
    ld [c], a
    add sp, $19
    ld l, $06
    add sp, $00
    pop hl
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld l, b
    ld [hl], l
    and b
    nop
    rst $38
    ld l, l
    ld [hl], l
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld [hl], d
    ld [hl], l
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc

jr_00d_7589:
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    add c
    ld [hl], l
    rlca
    ld bc, $7596
    rst $38
    rst $38
    rst $20
    add sp, $03
    cp $c4
    rst $30
    ld [bc], a
    db $ec
    add b
    ld hl, sp-$70
    ld [hl], l

jr_00d_75a2:
    jr nc, @+$07

    inc l
    inc bc
    ld a, [hl-]
    rrca
    add sp, $00
    pop hl
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    or b
    ld [hl], l
    and b
    nop
    rst $38
    or l
    ld [hl], l
    ld [bc], a
    ld b, $02
    cp $fa
    cp $80
    cp d
    ld [hl], l
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    jp $0475


    inc bc
    jp c, $ff75

    rst $38
    rst $38
    rst $38
    rst $20
    cp $b3
    add sp, $01
    jr nc, jr_00d_75e8

    add sp, $00
    cp $b7
    ld b, b
    inc a
    rst $38

jr_00d_75e8:
    pop af
    ld b, $90
    nop
    rst $38
    ld [$a075], a
    nop
    rst $38
    rst $28
    ld [hl], l
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    db $f4
    ld [hl], l
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    inc bc
    db $76
    inc b
    ld bc, $7618
    rst $38
    rst $38
    cp $d7
    rst $20
    db $ec
    ret nz

    ld [c], a
    ld hl, sp+$45
    db $76
    add sp, $08
    ld [hl+], a
    add hl, de
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    inc l
    db $76
    and b
    nop
    rst $38
    ld sp, $0076
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld [hl], $76
    nop
    ld a, [bc]
    nop
    or $80
    ld b, l
    db $76
    inc b
    ld [bc], a
    ld d, a
    db $76
    dec b
    inc bc
    ld h, h
    db $76
    rst $38
    rst $38
    rst $38
    rst $20
    cp $20
    ei
    ld hl, sp+$47
    add sp, -$14
    inc a
    dec b
    add sp, $00
    rst $38
    rst $20
    cp $e3
    ld [hl], b
    dec b
    ld b, b
    inc bc
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld l, [hl]
    db $76
    and b
    nop
    rst $38
    ld [hl], e
    halt
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld a, b
    halt
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    add a
    db $76
    inc b
    ld bc, $769c
    rst $38
    rst $38
    rst $20
    db $ec
    add b
    ld a, [c]
    ld [de], a
    cp $f2
    add sp, -$46
    ld c, d
    cp $b2
    ld c, d
    cp $72
    ld c, d
    cp $22
    ld c, d
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    or h
    db $76
    and b
    nop
    rst $38
    cp c
    halt
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    cp [hl]
    halt
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    call $0776
    inc bc
    db $e4
    db $76
    rst $38
    rst $38
    rst $38
    rst $38
    cp $b0
    rst $20
    ld h, b
    inc b
    cp $b5
    db $10
    inc d
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ldh a, [rPCM12]
    and b
    nop
    rst $38
    push af
    halt
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld a, [$0076]
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    add hl, bc
    ld [hl], a
    inc b
    nop
    ld hl, $0577
    ld bc, $7729
    rst $38
    cp $e1
    rst $20
    jr nc, @+$09

    jr nc, jr_00d_7740

    rst $38
    cp $e1
    rst $20
    jr z, @+$09

    jr z, jr_00d_7748

    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    dec [hl]
    ld [hl], a
    and b
    nop
    rst $38
    ld a, [hl-]
    ld [hl], a
    nop

jr_00d_7740:
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc

jr_00d_7748:
    ld a, [$fefc]
    add b
    ccf
    ld [hl], a
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld c, [hl]
    ld [hl], a
    inc b
    ld bc, $7763
    rst $38
    rst $38
    db $fc
    ld [hl], l
    ld [hl], a
    rst $20
    db $ec
    ret nz

    ld a, [c]
    inc b
    dec h
    add hl, hl
    inc l
    ld sp, $3835
    dec a
    rst $38
    rst $38
    rst $38
    pop de
    inc bc
    ld d, b
    nop
    nop
    ld [bc], a
    inc b
    ld [bc], a
    nop
    cp $fc
    cp $80
    ld a, c
    ld [hl], a
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    add h
    ld [hl], a
    ld b, $02
    sbc [hl]
    ld [hl], a
    dec b
    inc bc
    or c
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $20
    cp $20
    ld [c], a
    ld hl, sp-$34
    ld [hl], a
    add sp, $14
    ld c, $0f
    add sp, -$08
    ld a, [de]
    rrca
    pop hl
    add sp, $00
    rst $38
    rst $20
    cp $b7
    ld [c], a
    add sp, $02
    ld hl, sp-$34
    ld [hl], a
    jr nz, jr_00d_77e9

    add sp, $00
    pop hl
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    jp nz, $a077

    nop
    rst $38
    rst $00
    ld [hl], a
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    call z, $0077
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    db $db

jr_00d_77e9:
    ld [hl], a
    inc b
    inc bc
    ld a, [c]
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $a3
    add sp, $01
    db $10
    ld [$00e8], sp
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    cp $77
    and b
    nop
    rst $38
    inc bc
    ld a, b
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld [$0078], sp
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    rla
    ld a, b
    ld b, $00
    cpl
    ld a, b
    rlca
    ld bc, $783d
    rst $38
    cp $e3
    ld a, [c]
    ld [$ece7], sp
    add b
    ld sp, $3835
    dec [hl]
    dec a
    db $d3
    rst $38
    cp $93
    push af
    nop
    or $04
    pop af
    cpl
    ld a, b
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld c, d
    ld a, b
    and b
    nop
    rst $38
    ld c, a
    ld a, b
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld d, h
    ld a, b
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld h, e
    ld a, b
    ld b, $01
    ld a, b
    ld a, b
    rst $38
    rst $38
    rst $20
    db $ec
    ret nz

    add sp, -$46
    ld [c], a
    ld hl, sp-$63
    ld a, b
    cp $f5
    ld c, $06
    dec c
    ld b, $e1
    add sp, $00
    ldh a, [rDIV]
    ld a, b
    ld a, b
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    sub e
    ld a, b
    and b
    nop
    rst $38
    sbc b
    ld a, b
    ld [bc], a
    ld b, $02
    ld b, $02
    cp $fa
    cp $fa
    cp $80
    sbc l
    ld a, b
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    xor d
    ld a, b
    dec b
    inc bc
    pop bc
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    add sp, -$03
    ld [c], a
    ld hl, sp-$17
    ld a, b
    cp $e7
    db $10
    ld b, $40
    rrca
    add sp, $01

jr_00d_78d0:
    cp $37
    ld [hl], b
    ld a, [bc]
    cp $10
    jr nc, jr_00d_78e4

    ldh a, [rSB]
    pop bc
    ld a, b
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    rst $18
    ld a, b

jr_00d_78e4:
    and b
    nop
    rst $38
    db $e4
    ld a, b
    nop
    dec b
    ld a, [bc]
    dec b
    nop
    ei
    or $fb
    add b
    jp hl


    ld a, b
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    db $f4
    ld a, b
    ld b, $03
    dec bc
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    cp $c2
    rst $20
    ld d, b
    dec b
    cp $e0
    db $10
    ld [$f1ff], sp
    ld b, $90
    nop
    rst $38
    rla
    ld a, c
    and b
    nop
    rst $38
    inc e
    ld a, c
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld hl, $0079
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    jr nc, jr_00d_79b8

    ldh [$8c], a
    ld b, a
    ld a, c
    jr nz, jr_00d_78d0

    rst $10
    ld a, e
    add d
    nop
    ld bc, $03ff
    ld [bc], a
    ld [hl], a
    ld [hl], h
    ld l, a
    ld e, b
    ld a, a
    ld b, b
    rst $38
    ld e, a
    ld h, b
    cpl
    jr nc, jr_00d_7988

    jr nc, jr_00d_798a

jr_00d_795b:
    jr nc, jr_00d_795b

    ld a, a
    ld b, b
    ld e, a
    ld h, b
    scf
    jr c, @+$11

    add b
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    ld bc, $0203
    xor a
    nop
    ld bc, $0607
    rrca
    add hl, bc
    rst $38
    rra
    ld de, $131d
    cpl
    ld a, $2f
    jr nc, @+$01

    ld a, $23
    ld a, $25
    cpl
    ld [hl], $7f
    ld d, b

jr_00d_7988:
    cp $ff

jr_00d_798a:
    add b
    rst $28
    ldh a, [$3f]
    jr nz, @+$21

    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    ld [hl], b
    add sp, -$68
    db $fc
    add h
    ld a, [hl]
    ld b, d
    rst $28
    ld [bc], a
    inc bc
    ld bc, $0607
    rrca
    add hl, bc
    rst $38
    rra
    ld de, $131d
    cpl
    ld a, $2f
    jr nc, @+$01

    ld a, $23
    ld a, $25
    cpl
    ld [hl], $7f
    ld d, b

jr_00d_79b8:
    cp $ff
    add b
    rst $28
    ldh a, [$3f]
    jr nz, jr_00d_79df

    cp a
    inc bc
    db $fd
    cp $7b
    sbc h
    db $fd
    ld h, $ff
    db $fc
    ld b, a
    rst $38
    ld c, c
    rst $38
    ld sp, $01ff
    rst $38
    ld a, l
    add e
    ld a, [hl]
    add d
    rst $38
    cpl
    ld [hl], a
    sbc c
    cp $bd
    db $d3

jr_00d_79dd:
    xor $1e

jr_00d_79df:
    or b
    ld [hl], b
    ret nz

    adc e
    nop
    inc bc
    dec b
    ld b, $ff
    rlca
    inc b
    dec bc
    inc c
    rla
    jr jr_00d_79dd

    pop af
    rst $38
    rst $38
    add e
    cp e
    add $5f
    ld h, b
    ccf

jr_00d_79f8:
    jr nz, jr_00d_79f8

    ccf
    ld hl, $437d
    ld e, a
    ld h, b
    ccf
    add d
    nop
    ld bc, $03ff
    ld [bc], a
    ld [hl], a
    ld [hl], h
    ld l, a
    ld e, b
    ld a, a
    ld b, b
    rst $38
    ld e, l
    ld h, e
    cpl
    ld [hl-], a
    cpl
    jr nc, jr_00d_7a44

jr_00d_7a15:
    jr nc, jr_00d_7a15

    ld a, l
    ld b, e
    ld e, a
    ld h, d
    scf
    jr c, jr_00d_7a2d

    adc e
    nop
    ld a, b
    cp $86
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld de, $13fd
    ld a, [hl]
    adc a
    rst $38

jr_00d_7a2d:
    rst $38
    add b
    cp $81
    rst $38
    ld bc, $23fd
    cp $ff
    adc a
    rst $30
    sbc c
    ld e, l
    or e
    cp $80
    nop
    add b
    nop
    add b
    nop
    cp a

jr_00d_7a44:
    ld a, $ff
    pop bc
    rst $38
    ld bc, $7ebe
    cp a
    inc a
    db $db
    rst $20
    cp $01
    di
    inc c
    rst $38
    db $fd
    ld b, $fe
    dec bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ei
    dec c
    cp $26
    cp $02
    jp c, $fe66

    call c, $f8a4
    ret z

    sub b
    ld [hl], b
    ldh [rIE], a
    db $fc
    call z, $08f8
    db $f4
    inc c
    cp $06
    rst $38
    cp $0a
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    ei
    dec c
    rst $38
    cp $26
    cp $02
    jp c, $dc66

    and h
    ld a, [$c8f8]
    sub b
    ld [hl], b
    ldh [rP1], a
    rst $38
    ldh a, [rNR10]
    add sp, -$68
    ld hl, sp+$08
    db $f4
    inc c
    rst $38
    cp $06
    cp $0a
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ei
    dec c
    cp $26
    cp $02
    jp c, $fe66

    call c, $f8a4
    ret z

    sub b
    ld [hl], b
    ldh [$b7], a
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add sp, $40
    ret nz

    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    cp $7d
    sbc e
    rst $38
    inc h
    rst $38
    rst $38
    ld b, h
    rst $38
    ld c, c
    rst $38
    ld sp, $01ff
    rst $38
    ld a, l
    add e
    ld a, [hl]
    add d
    rst $38
    cpl
    ld [hl], a
    sbc c
    cp $bd
    db $d3
    xor $1e
    or b
    ld [hl], b
    ret nz

    adc e
    nop
    ld a, b
    cp $86
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld de, $13fd
    cp $0f
    rst $38
    cp a
    ret nz

    cp [hl]
    pop bc
    rst $38
    ld bc, $23fd
    cp $bf
    rst $08
    or a
    reti


    db $dd
    inc sp
    cp $ff
    inc bc
    ld [bc], a
    rrca
    inc c
    rra
    ld [de], a
    ccf
    ld [hl+], a
    rst $38
    dec a
    ld h, $3b
    inc a
    ccf
    jr nz, jr_00d_7b51

    ld hl, $2fff
    ld sp, $111f
    ld d, $19
    rrca
    ld [$07fe], sp
    inc b
    ld c, $09
    dec c
    dec bc
    ld c, $80
    nop
    adc e
    nop
    ldh a, [$e8]

jr_00d_7b2b:
    jr jr_00d_7b2b

    ld hl, sp+$08
    ld a, b
    adc b
    xor b
    ret c

    ld [hl], b
    add b
    nop
    adc e
    nop
    add b
    ret nz

    ld b, b
    ld a, [$20e0]
    ldh [rNR41], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    inc a
    ld e, d
    ld h, [hl]
    ld a, [hl]

jr_00d_7b51:
    ld b, d
    ld e, d
    ld h, [hl]
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    jr nc, jr_00d_7bd5

    ld c, b
    ld a, h
    ld b, h
    ld a, [hl-]
    ld h, $ff
    ld e, $12
    cp $fa
    ld a, l
    sbc e
    rst $38
    dec h
    rst $38
    rst $38
    ld b, l
    rst $38
    ld c, c
    rst $38
    ld sp, $01ff
    rst $38
    ld a, l
    add e
    ld a, [hl]
    add d
    rst $38
    cpl
    ld [hl], a
    sbc c
    cp $bd
    db $d3
    xor $1e
    or b
    ld [hl], b
    ret nz

    adc e
    nop
    add b
    ld b, b
    ret nz

    rst $38
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, [$4878]
    ld a, b
    ld c, b
    jr nc, jr_00d_7b9a

jr_00d_7b9a:
    add b
    nop
    add b
    nop
    adc e
    nop
    add b
    ret nz

    ld b, b
    rst $38
    ldh [rNR41], a
    ld [hl], b
    sub b
    ld hl, sp-$78
    ld a, b
    ld c, b
    cp $7c
    ld b, h
    ld e, h
    ld h, h
    inc a
    inc h
    jr @+$01

    ldh [$60], a
    db $fc
    inc e
    cp $0a
    rst $38

jr_00d_7bbc:
    add hl, bc
    rst $38
    rst $30
    dec c
    ei
    rlca
    cp $22
    ld h, [hl]
    sbc d
    rst $38
    cp $9a
    ld a, [$ea16]
    sbc [hl]
    db $fc
    inc b
    or $f4
    inc c
    jr jr_00d_7bbc

    ret c

jr_00d_7bd5:
    jr nc, jr_00d_7bd7

jr_00d_7bd7:
    add d
    nop
    ld a, a
    rst $38
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_00d_7c1a

jr_00d_7beb:
    jr nc, jr_00d_7beb

    rra
    db $10
    inc de
    inc e
    inc c
    rrca
    inc bc
    add d
    nop
    ret nz

    rst $38
    or b
    ld [hl], b
    add sp, -$68
    db $f4
    ld c, h
    db $fc
    inc e
    rst $38
    ld a, [$fa06]
    ld b, $fa
    ld b, $fa
    ld b, $fe
    db $f4
    inc c
    call nz, $183c
    ld hl, sp-$20
    rst $38
    add sp, $78
    sbc $fe
    cp l
    di
    ld a, [hl]
    pop hl

jr_00d_7c1a:
    rst $38
    rst $18
    ldh [$ef], a
    or b
    di
    inc e
    ld a, h
    rst $08
    rst $38
    rst $38
    adc e
    rst $38
    adc $33
    rst $08
    cp $12
    cp $fa
    ld b, $f4
    inc c
    adc [hl]
    ld a, [$82fe]
    nop
    add b
    cp h
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, [$40c0]
    ret nz

    ld b, b
    add b
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    add b
    ld a, [$40c0]
    ret nz

    ld b, b
    add b
    nop
    add b
    nop
    rst $38
    add sp, $78
    ret c

    ld hl, sp-$50
    ldh a, [rBCPS]
    ld hl, sp-$01
    db $f4
    call z, $84fc
    ld a, [$7606]
    adc $ff
    cp $8a
    cp $ce
    ld [hl-], a
    adc $fe
    ld [de], a
    cp $fa
    ld b, $f4
    inc c
    adc [hl]
    ld a, [$affe]
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    rst $38
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    cp $04
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $01a0
    nop
    add b
    nop
    add b
    nop
    cp a
    rlca
    add hl, de
    rra
    inc hl
    ccf
    daa
    ccf
    rst $38
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    rst $38
    ld b, e
    ld a, a
    ld b, e
    ld a, a
    ld hl, $213f
    ccf
    rst $38
    ld h, $3b
    ld d, $1f
    inc de
    rra
    scf
    ld a, $ff
    ld l, l
    ld e, [hl]
    ld a, a
    ld c, d
    ld e, a
    ld l, d
    ccf
    ld a, [hl+]
    xor $1b
    dec e
    rrca
    rlca
    inc b
    rlca
    add b
    nop
    add d
    nop
    ld c, $ff
    inc sp
    ccf
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    adc a
    rst $38
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rst $38
    ld b, a
    ld a, a
    ld b, e
    ld a, a
    ld b, e
    ld a, a
    inc hl
    dec a
    rst $38
    inc hl
    ccf
    ld de, $711f
    ld a, a
    ld_long $ff9f, a
    rst $38
    adc l
    cp a
    ret


    ld a, a
    ld c, b
    dec sp
    inc l
    ld [$1e15], a
    rrca
    inc bc
    ld bc, $0080
    add d
    nop
    inc bc
    rst $38
    inc c
    rrca
    ld de, $131f
    rra
    inc hl
    ccf
    rst $38
    inc hl
    ccf
    inc hl
    ccf
    inc hl
    ccf
    inc hl
    ccf
    rst $38
    inc hl
    ccf
    ld hl, $103f
    rra
    db $10
    rra
    rst $38
    rra
    rla
    ld e, $1f
    cpl
    inc a
    dec sp
    inc l
    rst $38
    ccf
    inc l
    ccf
    inc l
    dec e
    ld e, $1b
    ld e, $f6
    dec d
    rra
    ld a, [de]
    rla
    add hl, de
    rrca
    add b
    nop
    add b
    nop
    cp a
    ld [hl], b
    cp h
    db $fc
    ld a, [hl]
    cp $7f
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $3f
    cp $ff
    ld a, $ff
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld [hl], c
    ld e, a
    inc sp
    ld a, $ff
    rla
    inc e
    rra
    jr @+$21

    jr jr_00d_7de4

    ld a, h
    cp $f7
    sbc h
    rst $38
    adc a
    ld e, [hl]
    ld l, c
    ccf
    add b
    nop
    add b
    nop
    xor d
    nop
    ret nz

    ldh [$f0], a
    and e
    ldh a, [$f8]
    db $f4
    call z, $fcfb
    call nz, $e6de
    cp $83
    rst $38
    rst $28
    ccf
    rst $38
    cp $7d
    add e
    cp e
    ld h, a
    rst $38
    rst $38
    ld b, l
    rst $38
    ld h, a
    sbc c
    ld h, a
    rst $38
    add hl, bc
    cp $fd
    inc bc
    ld a, [$4786]
    db $fd
    rst $38
    add b
    nop
    add b
    nop
    xor b
    add b
    ret nz

    ldh [$8f], a
    ldh a, [$e8]
    ret c

    ld hl, sp-$38
    rst $28
    call nc, $feec
    jp $3fff


    rst $38
    rst $38
    ld a, [hl]
    cp $bd
    jp $31df


    rst $38
    inc hl
    rst $38
    rst $38
    inc sp
    call $ff33
    add l
    ld a, l
    db $e3
    cp $fa
    sub [hl]
    db $fc
    inc e
    sbc h
    ld [hl], h
    db $ec
    add b
    nop
    add d
    nop
    ret nz

    and d
    ldh a, [$f8]
    db $fc
    adc a
    db $fc
    or $ce
    cp $c6
    rst $28
    sbc $e6
    rst $38

jr_00d_7de4:
    inc bc
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    ld a, e
    add a
    ld [hl], a
    call $89ff
    rst $38
    rst $38
    call $cd33
    rst $38
    ld de, $03fd
    cp $f6
    ld c, $8f
    ld sp, hl
    ei
    rst $30
    ld c, $80
    nop
    add b
    nop
    add b
    nop
    xor a
    add b
    ret nz

    and b
    ld h, b
    ld hl, sp+$38
    rst $38
    add sp, $78
    ret c

    ld hl, sp-$4a
    or $6f
    ld sp, hl
    rst $38
    rst $30
    call $86fe
    ld a, [$7606]
    adc $ff
    cp $8a
    cp $ce
    ld [hl-], a
    adc $fe
    ld [de], a
    cp $fa
    ld b, $f4
    inc c
    adc [hl]
    ld a, [$80fe]
    nop
    cp a
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_00d_7e79

    jr nz, @+$01

    ld e, a
    ld h, b
    ld a, [hl]
    ld b, e
    ld a, [hl]
    ld b, e
    ld a, [hl]
    ld b, e
    rst $38
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld e, l
    ld h, d
    ccf
    ld hl, $3fff
    jr nz, @+$41

    jr nz, jr_00d_7eb2

    ld h, b
    ld e, a
    ld h, b
    rst $38
    ld a, a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    cp a
    ret nz

    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    ld a, a
    cp $70
    ld a, a
    jr c, @+$41

    ld e, $1f
    rlca
    add b
    nop
    xor a
    nop
    rrca
    scf
    jr c, jr_00d_7ed7

    ld h, b

jr_00d_7e79:
    rst $38
    ld a, a
    ld b, b
    cp [hl]
    pop bc
    and [hl]
    reti


    xor a
    ret c

    rst $38
    or a
    ret z

    cp a
    ret nz

    cp a
    ret nz

    ld e, e
    ld h, a
    rst $38
    ld e, a
    ld h, b
    ccf
    jr nz, jr_00d_7ed0

    jr nz, jr_00d_7ed2

    jr nz, @+$01

    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    ld b, e
    ld a, a
    ld h, e
    ld a, a
    inc hl
    ccf
    cp $31
    ccf
    add hl, de
    rra
    ld c, $0f
    inc bc
    add d
    nop
    rrca
    rst $38

jr_00d_7eb2:
    scf
    jr c, jr_00d_7f14

    ld h, b
    ld a, a
    ld b, b
    cp [hl]
    pop bc
    rst $38
    cp $81
    rst $20
    sbc b
    rst $28
    sbc b
    rst $30
    adc b
    rst $38
    cp a
    ret nz

    ld a, e
    ld b, a
    ld e, a
    ld h, b
    cpl
    jr nc, @+$01

    ld a, a
    ld b, b
    ld a, a

jr_00d_7ed0:
    ld b, b
    ld a, a

jr_00d_7ed2:
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld e, a

jr_00d_7ed7:
    ld h, b
    ld e, a
    ld h, b
    ld e, [hl]
    ld h, c
    dec hl
    scf
    rst $38
    daa
    ccf
    inc sp
    ccf
    inc de
    rra
    dec c
    rrca
    and b
    inc bc
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    ld bc, $0302
    rst $38
    inc bc
    ld [bc], a
    dec b
    ld b, $05
    ld b, $05
    ld b, $ff
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$303f], sp
    rst $38
    ld e, a
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    rst $38
    ldh [$ef], a
    ldh a, [$f7]

jr_00d_7f14:
    ld hl, sp+$7f
    ld a, h
    ld [$7f7e], a
    ccf
    rra
    rlca
    add b
    nop
    cp a
    ldh [$d8], a
    jr c, @-$0a

    inc c
    db $fc
    inc b
    rst $38
    ld a, [$be06]
    ld h, d
    cp [hl]
    ld h, d
    cp [hl]
    ld h, d
    rst $38
    cp $02
    ld a, [$da06]
    ld h, $f4
    call z, $f4ff
    inc c
    db $f4
    inc c
    ld a, [$fa06]
    ld b, $ff
    ld a, [$fd06]
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld [c], a
    rst $38
    inc bc
    rst $38

jr_00d_7f4f:
    cp $fe
    ld a, [hl]
    cp $7c
    db $fc
    jr c, jr_00d_7f4f

    ldh [$80], a
    nop
    xor a
    nop
    add b
    ld h, b
    ldh [$d0], a
    jr nc, @+$01

    ldh a, [rNR10]
    ld l, b
    sbc b
    add sp, -$68
    ld a, b
    adc b
    rst $38
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$08
    rst $38
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $0ff3
    jp nz, $ff3f

    cp $aa
    cp $fc
    ld hl, sp-$20
    add d
    nop
    add b
    rst $38
    ld h, b
    ldh [$d0], a
    jr nc, @-$0e

    db $10
    ld l, b
    sbc b
    rst $38
    add sp, -$68
    ld a, b
    adc b
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    ld [hl], h
    adc h
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $faff
    ld b, $fe
    ld [bc], a
    db $fd
    inc bc
    rst $38
    rlca
    ld hl, sp-$11
    rra
    cp a
    ld a, a
    rst $38
    adc d
    cp $fc
    ld hl, sp-$60
    ldh [rP1], a
    add b
    nop
    add b
    nop
    adc e
    nop
    ldh [$f8], a
    jr @+$01

    db $fc
    add h
    ld a, [$fe46]
    ld [bc], a
    db $fd
    rlca
    rst $38
    db $fd
    dec de
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, [$fa06]
    ld b, $ea
    ld [hl], h
    adc h
    ld hl, sp-$10
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

; Disassembly of "tw.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

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

jr_00c_4027:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00c_4027

    ld a, $ff
    ld [$c306], a
    xor a
    ldh [$d0], a

Call_00c_4036:
    push af
    ld hl, $c32d
    ld de, $0024
    ld b, $08
    xor a

jr_00c_4040:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_00c_4040

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

jr_00c_406c:
    ld a, [hl]
    bit 7, a
    jr z, jr_00c_4076

    and $7f
    or $43
    ld [hl], a

jr_00c_4076:
    add hl, de
    dec b
    jr nz, jr_00c_406c

jr_00c_407a:
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

jr_00c_4092:
    ld a, [hl]
    bit 6, a
    jr z, jr_00c_409a

    xor $c0
    ld [hl], a

jr_00c_409a:
    add hl, de
    dec b
    jr nz, jr_00c_4092

    jr jr_00c_407a

Call_00c_40a0:
    push af
    ld hl, $c307
    ld a, $0a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop af
    ret


Call_00c_40ac:
    push af
    ld hl, $c307
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    pop af
    ret


Call_00c_40b8:
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
    jr nz, jr_00c_40db

    xor a
    ldh [$d2], a

jr_00c_40d0:
    ld a, [hl+]
    ldh [$d4], a
    cp $ff
    jr nz, jr_00c_40dd

    ld a, $ff
    ldh [$d2], a

jr_00c_40db:
    pop af
    ret


jr_00c_40dd:
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
    jr z, jr_00c_40fa

    inc hl
    ld b, $c3
    ld c, [hl]
    xor a
    ld [bc], a
    dec hl

jr_00c_40fa:
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
    jr jr_00c_40d0

    ldh a, [$d0]
    bit 1, a
    call nz, Call_00c_4036
    bit 0, a
    call nz, Call_00c_40b8
    bit 3, a
    call nz, Call_00c_40a0
    bit 2, a
    call nz, Call_00c_40ac
    xor a
    ldh [$d0], a
    xor a
    ld [$c304], a
    ld de, $c32d
    ldh [$db], a

Jump_00c_414d:
    ld a, [de]
    and $ec
    ld [de], a
    and $80
    jp z, Jump_00c_432f

    inc de
    ld a, [de]
    ldh [$d3], a
    dec de
    ld hl, $0005
    add hl, de
    dec [hl]
    jp nz, Jump_00c_41ef

    ld a, [de]
    bit 3, a
    jp nz, Jump_00c_4389

Jump_00c_4169:
    dec hl
    dec hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a

Jump_00c_416e:
    ld a, [hl+]
    cp $c8
    jr c, jr_00c_4182

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


jr_00c_4182:
    ldh [$d4], a
    ld c, l
    ld b, h
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    or a
    jr nz, jr_00c_4190

    ld a, [bc]
    inc bc

jr_00c_4190:
    ld [hl+], a
    cp [hl]
    jr c, jr_00c_4195

    ld a, [hl]

jr_00c_4195:
    srl a
    dec a
    inc hl
    ld [hl+], a

Jump_00c_419a:
    ld hl, $0002
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ldh a, [$d4]

Jump_00c_41a4:
    ld hl, $0008
    add hl, de
    add [hl]
    ld c, a
    ldh a, [$d3]
    cp $03
    jr z, jr_00c_41c4

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

jr_00c_41c4:
    ld hl, $000a
    add hl, de
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, [de]
    bit 5, a
    jr nz, jr_00c_41ea

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

Jump_00c_41e9:
    ld a, [de]

jr_00c_41ea:
    or $01
    ld [de], a
    jr jr_00c_420a

Jump_00c_41ef:
    ld a, [hl+]
    inc hl
    cp [hl]
    jr nz, jr_00c_420a

    ld a, [de]
    bit 5, a
    jr nz, jr_00c_420a

    ld hl, $001e
    add hl, de
    ld a, [hl-]

Call_00c_41fe:
    ld b, a
    ld a, [hl]
    ld hl, $0015
    add hl, de
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, $01
    ld [hl-], a

Jump_00c_420a:
jr_00c_420a:
    ld hl, $0019
    add hl, de
    ld a, [hl]
    ld hl, $000b
    add hl, de
    ld c, $d8
    cp $80
    jr nc, jr_00c_4222

    add [hl]
    ld [hl-], a
    ld [c], a
    ld b, a
    jr nc, jr_00c_4231

    inc [hl]
    jr jr_00c_422d

jr_00c_4222:
    cpl
    ld b, a
    ld a, [hl]
    scf
    sbc b
    ld [hl-], a
    ld [c], a
    ld b, a
    jr nc, jr_00c_4231

    dec [hl]

jr_00c_422d:
    ld a, [de]
    or $10
    ld [de], a

jr_00c_4231:
    inc c
    ld a, [hl]
    ld [c], a
    dec c
    inc hl
    inc hl
    inc hl
    dec [hl]
    jr nz, jr_00c_4268

    inc [hl]
    inc hl
    ld a, [hl+]
    or a
    jr z, jr_00c_4268

    ld l, [hl]
    ld h, a

jr_00c_4243:
    ld a, [hl+]
    cp $80
    jr c, jr_00c_424f

    jr nz, jr_00c_4256

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_00c_4243

jr_00c_424f:
    add b
    jr nc, jr_00c_425e

    ld a, $ff
    jr jr_00c_425e

jr_00c_4256:
    cpl
    ld b, a
    ld a, [c]
    scf
    sbc b
    jr nc, jr_00c_425e

    xor a

jr_00c_425e:
    ld [c], a
    ld b, l
    ld a, h
    ld hl, $000e
    add hl, de
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00c_4268:
    dec c
    ld hl, $0013
    add hl, de
    dec [hl]
    jr nz, jr_00c_429b

    inc hl

Jump_00c_4271:
    ld a, [hl+]
    or a
    jr z, jr_00c_4299

    ld l, [hl]
    ld h, a

jr_00c_4277:
    ld a, [hl+]
    cp $ff
    jr nz, jr_00c_4281

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_00c_4277

jr_00c_4281:
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
    jr jr_00c_429e

jr_00c_4299:
    dec hl
    dec hl

jr_00c_429b:
    dec hl
    ld a, [hl+]
    ld [c], a

jr_00c_429e:
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
    jr z, jr_00c_42b8

    jr c, jr_00c_432f

    ld [hl], a
    ld a, [de]
    or $03
    ld [de], a

jr_00c_42b8:
    ld a, l
    cp $02
    jr nz, jr_00c_42f9

    ld a, [de]
    bit 1, a
    jr z, jr_00c_42e5

    ld hl, $001b
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ldh [rNR30], a
    ld b, $08
    ld c, $30

jr_00c_42d0:
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_00c_42d0

    ldh a, [$d9]
    or $80
    ldh [$d9], a
    ldh [rNR30], a
    ld a, [de]
    or $01
    ld [de], a

jr_00c_42e5:
    ld hl, $ff1c
    ld c, $d7
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    ld a, [de]
    and $11
    jr z, jr_00c_4326

    inc c
    ld a, [c]
    ld [hl], a
    jr jr_00c_4326

jr_00c_42f9:
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
    jr nz, jr_00c_431c

    inc c
    inc hl
    ld a, [c]
    ld [hl+], a
    ld a, [de]
    bit 4, a
    jr z, jr_00c_4326

    inc c
    ld a, [c]
    ld [hl+], a
    jr jr_00c_4326

jr_00c_431c:
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    or $80
    ld [hl+], a

jr_00c_4326:
    ld hl, $001a
    add hl, de
    ldh a, [$db]
    or [hl]
    ldh [$db], a

Jump_00c_432f:
jr_00c_432f:
    ld hl, $0024
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c304
    inc [hl]
    ld a, [hl]
    cp $08
    jp nz, Jump_00c_414d

    ld hl, $c300
    ld b, $04
    ld c, $12

jr_00c_4346:
    ld a, [hl+]
    or a
    jr nz, jr_00c_434b

    ld [c], a

jr_00c_434b:
    ld a, $05
    add c
    ld c, a
    dec b
    jr nz, jr_00c_4346

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
    jr nz, jr_00c_4386

    ld a, [hl]
    or a
    jr z, jr_00c_4377

    dec hl
    ld [hl], a
    ld a, [c]
    add $11
    jr c, jr_00c_4388

    ld [c], a
    jr jr_00c_4388

jr_00c_4377:
    inc hl
    ld a, [hl-]
    or a
    jr z, jr_00c_4388

    dec hl
    ld [hl], a
    ld a, [c]
    sub $11
    jr c, jr_00c_4388

    ld [c], a
    jr jr_00c_4388

jr_00c_4386:
    dec hl
    dec [hl]

jr_00c_4388:
    ret


Jump_00c_4389:
    and $d7
    ld [de], a
    ldh a, [$d3]
    cp $03
    jr z, jr_00c_43b3

    ld hl, $0019
    add hl, de
    xor a
    ld [hl], a
    ld a, [$c30c]
    or a
    jp z, Jump_00c_4169

    ld hl, $0005
    add hl, de
    ld [hl+], a
    cp [hl]
    jr c, jr_00c_43a8

    ld a, [hl]

jr_00c_43a8:
    srl a
    dec a
    inc hl
    ld [hl+], a
    ld a, [$c30b]
    jp Jump_00c_41a4


jr_00c_43b3:
    ld a, [$c30e]
    or a
    jp z, Jump_00c_4169

    ld hl, $0005
    add hl, de
    ld [hl+], a
    cp [hl]
    jr c, jr_00c_43c3

    ld a, [hl]

jr_00c_43c3:
    srl a
    dec a
    inc hl
    ld [hl+], a
    ld a, [$c30d]
    jp Jump_00c_41a4


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
    jr jr_00c_4451

    ld a, [$c30a]
    pop hl
    or [hl]
    jr jr_00c_4451

    ld a, [$c30a]
    pop hl
    and [hl]

jr_00c_4451:
    ld [$c30a], a
    inc hl
    jp Jump_00c_416e


    ld bc, $c32a
    jr jr_00c_446a

    ld bc, $c327
    jr jr_00c_446a

    ld bc, $c324
    jr jr_00c_446a

    ld bc, $c321

jr_00c_446a:
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
    jr nz, jr_00c_4486

    pop hl
    ld a, [hl+]
    push hl

jr_00c_4486:
    dec a
    ld [$c30e], a
    ld a, [de]
    set 3, a
    ld [de], a
    pop bc
    jp Jump_00c_419a


    ld bc, $c32a
    jr jr_00c_44a4

    ld bc, $c327
    jr jr_00c_44a4

    ld bc, $c324
    jr jr_00c_44a4

    ld bc, $c321

jr_00c_44a4:
    pop hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    jp Jump_00c_416e


    ld hl, $0004
    xor a
    jp Jump_00c_4570


    ld bc, $c31e
    jr jr_00c_44d3

    ld bc, $c31b
    jr jr_00c_44d3

    ld bc, $c318
    jr jr_00c_44d3

    ld bc, $c315
    jr jr_00c_44d3

    ld bc, $c312
    jr jr_00c_44d3

    ld bc, $c30f

jr_00c_44d3:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00c_44e5

    ld [$c30c], a
    pop hl
    ld a, [hl+]
    ld [$c30b], a
    jr jr_00c_44ee

jr_00c_44e5:
    pop hl
    ld a, [hl+]
    ld [$c30b], a
    ld a, [hl+]
    ld [$c30c], a

jr_00c_44ee:
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
    jr nc, jr_00c_451f

    ld a, [$c30c]
    ld [hl], a
    xor a

jr_00c_451f:
    ld [$c30c], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    pop bc
    jp Jump_00c_419a


    ld bc, $c31e
    jr jr_00c_4546

    ld bc, $c31b
    jr jr_00c_4546

    ld bc, $c318
    jr jr_00c_4546

    ld bc, $c315
    jr jr_00c_4546

    ld bc, $c312
    jr jr_00c_4546

    ld bc, $c30f

jr_00c_4546:
    pop hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    jp Jump_00c_416e


    ld hl, $0011
    xor a
    jr jr_00c_4570

    ld hl, $000c
    xor a
    jr jr_00c_4570

    ld hl, $000c
    ld a, $01
    jr jr_00c_4570

    ld hl, $000c
    add hl, de
    ld a, $01
    ld [hl], a
    ld hl, $0006
    xor a

Jump_00c_4570:
jr_00c_4570:
    add hl, de
    ld [hl], a
    pop hl
    jp Jump_00c_416e


    ld hl, $4593
    jr jr_00c_4583

    ld hl, $4597
    jr jr_00c_4583

    ld hl, $459b

jr_00c_4583:
    ldh a, [$d3]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld hl, $001a
    add hl, de
    ld [hl], a
    pop hl
    jp Jump_00c_416e


    db $10
    jr nz, jr_00c_45d6

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
    jp Jump_00c_416e


    ld a, [de]
    res 5, a
    ld [de], a
    pop hl
    jp Jump_00c_416e


    ld a, [de]
    set 5, a
    ld [de], a
    pop hl
    jp Jump_00c_416e


    pop bc
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    or a
    jr nz, jr_00c_45c6

    ld a, [bc]
    inc bc

jr_00c_45c6:
    ld [hl+], a
    cp [hl]
    jr c, jr_00c_45cb

    ld a, [hl]

jr_00c_45cb:
    srl a
    dec a
    inc hl
    ld [hl+], a
    ld hl, $0002
    add hl, de
    ld a, c
    ld [hl+], a

jr_00c_45d6:
    ld a, b
    ld [hl+], a
    jp Jump_00c_420a


    ld hl, $0018
    jp Jump_00c_46c0


    ld hl, $0021
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00c_45f4

    pop bc
    ld b, a
    xor a
    ld [hl-], a
    ld l, [hl]
    ld h, b
    inc hl
    inc hl
    jp Jump_00c_416e


jr_00c_45f4:
    pop hl
    jp Jump_00c_416e


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
    jp Jump_00c_416e


    ld hl, $0023
    jr jr_00c_4610

    ld hl, $0022

jr_00c_4610:
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00c_4620

    dec [hl]
    jr nz, jr_00c_4624

    pop hl
    ld bc, $0003
    add hl, bc
    jp Jump_00c_416e


jr_00c_4620:
    pop bc
    ld a, [bc]
    ld [hl], a
    push bc

jr_00c_4624:
    pop hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_00c_416e


    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_00c_416e


    ld hl, $0004
    jp Jump_00c_46c0


    ld hl, $0009
    jp Jump_00c_46c0


    ld hl, $0008
    jp Jump_00c_46c0


    ld hl, $001f
    jp Jump_00c_46c0


    pop bc
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    or a
    jr nz, jr_00c_4656

    ld a, [bc]
    inc bc

jr_00c_4656:
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
    jr z, jr_00c_4673

    ld b, a
    ld a, [hl]
    and $f0
    or b

jr_00c_4673:
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    jp Jump_00c_41e9


    ld hl, $000c
    jp Jump_00c_46c0


    ld hl, $0010
    jr jr_00c_46a5

    ld hl, $0006
    add hl, de
    ld c, l
    ld b, h
    pop hl
    ld a, [hl+]
    add a
    ld [bc], a
    jp Jump_00c_416e


    ld hl, $001d
    jr jr_00c_46a5

    ld a, [de]
    or $02
    ld [de], a
    ld hl, $001b
    jr jr_00c_46a5

    ld hl, $0016

jr_00c_46a5:
    add hl, de
    ld c, l
    ld b, h
    pop hl
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    jp Jump_00c_416e


    ld hl, $001a
    jp Jump_00c_46c0


    ld hl, $0017
    add hl, de
    xor a
    ld [hl], a
    ld hl, $0012

Jump_00c_46c0:
    add hl, de
    ld c, l
    ld b, h
    pop hl
    ld a, [hl+]
    ld [bc], a
    jp Jump_00c_416e


    pop hl
    ldh a, [$d3]
    ld l, a
    ld h, $c3
    xor a
    ld [hl], a
    ld [de], a
    jp Jump_00c_432f


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
    ld a, [de]
    ld c, b
    ld [hl], b
    ld c, h
    add hl, hl
    ld c, a
    adc c
    ld d, d
    add hl, sp
    ld e, b
    ld d, $5d
    inc de
    ld e, [hl]
    ld b, b
    ld e, a
    ld h, d
    ld h, c
    call $9c65
    ld l, e
    pop bc
    ld l, a
    inc bc
    ld [hl], b
    ld c, c
    ld [hl], b
    add l
    ld [hl], b
    rst $00
    ld [hl], b
    inc bc
    ld [hl], c
    ld b, l
    ld [hl], c
    ld a, a
    ld [hl], c
    cp l
    ld [hl], c
    ld a, [$3671]
    ld [hl], d
    add c
    ld [hl], d
    adc $72
    ld [de], a
    ld [hl], e
    ld h, c
    ld [hl], e
    sbc e
    ld [hl], e
    db $dd
    ld [hl], e
    ld l, $74
    ld [hl], b
    ld [hl], h
    xor [hl]
    ld [hl], h
    xor $74
    ld l, $75
    ld [hl], b
    ld [hl], l
    or b
    ld [hl], l
    ld [$3475], a
    db $76
    ld a, d
    db $76
    or [hl]
    db $76
    ei
    db $76
    ld sp, $8877
    ld [hl], a
    call nz, $1077
    ld a, b
    ld c, h
    ld a, b
    add [hl]
    ld a, b
    call nz, $0678
    ld a, c
    ld b, h
    ld a, c
    add h
    ld a, c
    jp nz, $0779

    ld a, d
    ld b, l
    ld a, d
    ld a, a
    ld a, d
    pop bc
    ld a, d
    jr nz, jr_00c_47ed

jr_00c_47ed:
    rst $38
    db $eb
    ld b, a
    ld b, b
    nop
    rst $38
    ldh a, [rBGP]
    ld h, b
    nop
    rst $38
    push af
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
    dec hl
    ld c, b
    ld bc, $0301
    ld c, c
    ld [bc], a
    ld [bc], a
    db $eb
    ld c, c
    inc bc
    inc bc
    ld [hl], d
    ld c, e
    rst $38
    db $fc
    ld e, c
    ld c, h
    ld a, [$4c5d]
    rst $20
    db $ec
    nop
    push af
    ld [bc], a
    ld sp, hl
    inc b
    or $70
    ld a, [c]
    ld [$0f0e], sp
    db $10
    inc de
    db $10
    or $15
    or $10
    or $16
    dec d
    inc de
    dec d
    inc de
    db $10
    ld c, $0f
    db $10
    inc de
    db $10
    or $15
    or $10
    or $16
    dec d
    inc de
    ld a, [de]
    add hl, de
    rla
    dec d
    inc de
    rra
    or $17
    or $1a
    or $13
    ld a, [c]
    db $10
    rst $30
    inc b
    ld sp, hl
    nop
    add hl, de
    pop hl
    ld sp, hl
    inc b
    ld a, [c]
    ld [$1313], sp
    or $15
    dec d
    inc de
    or $f0
    ld bc, $485e
    rst $28
    ld bc, $483e
    ld sp, hl
    ld [$18f2], sp
    ld hl, $f21f
    db $10
    ld hl, $d31f
    inc e
    jr nz, jr_00c_48aa

    ld [$081c], sp
    ld a, [c]
    jr jr_00c_48b5

    rra
    ld a, [c]
    db $10
    ld hl, $08f2
    ld [hl+], a
    inc hl
    ld h, $23
    ld hl, $1c1f
    ld a, [de]
    db $ed
    ld a, [c]
    jr jr_00c_48ca

    ld [hl+], a
    ld a, [c]
    db $10
    inc h

jr_00c_48aa:
    ld [hl+], a
    db $d3
    rra
    jr nz, @+$21

    ld [$081f], sp
    ld a, [c]
    jr @+$26

jr_00c_48b5:
    dec h
    ld a, [c]
    db $10
    ld h, $f2
    jr jr_00c_48de

    inc h
    ld a, [c]
    db $10
    ld [hl+], a
    xor $82
    ld c, b
    ld a, [c]
    jr jr_00c_48e4

    inc e
    ld a, [c]
    jr nz, @+$20

jr_00c_48ca:
    ld a, [c]
    db $10
    rra
    ld hl, $d323
    ld sp, hl
    inc b
    rla
    ld [$1823], sp
    add hl, de
    ld [$1825], sp
    ld a, [de]
    ld [$1826], sp

jr_00c_48de:
    dec de
    ld [$1827], sp
    add sp, -$05

jr_00c_48e4:
    jr z, jr_00c_4906

    ld a, [c]
    ld [$04f9], sp
    add sp, $00
    ld [hl+], a
    inc hl
    ld h, $29
    db $d3
    cpl
    dec b
    inc l
    dec b
    add hl, hl
    ld b, $f2
    ld [$2326], sp
    jr z, jr_00c_4925

    or $f6
    db $d3
    pop af
    dec hl
    ld c, b
    db $fc
    ld h, c
    ld c, h

jr_00c_4906:
    ld a, [$4c65]
    rst $20
    db $ec
    ret nz

    push af
    ld [bc], a
    db $e4
    or $60
    add sp, -$05
    db $10
    jr nz, @-$16

    nop
    ld sp, hl
    ld [$18f2], sp
    inc b
    dec bc
    ld a, [c]
    db $10
    inc b
    ld a, [bc]
    inc b
    rlca
    or $f2

jr_00c_4925:
    jr jr_00c_492b

    dec bc
    ld a, [c]
    db $10
    rlca

jr_00c_492b:
    ld a, [bc]
    rlca
    ld c, $0d
    rlca
    inc b
    db $d3
    add hl, bc
    jr @+$06

    db $10
    ld a, [bc]
    ld [$10f2], sp
    inc b
    rlca
    inc b
    ld a, [bc]
    inc b
    db $d3
    dec bc
    jr @+$06

    db $10
    dec c
    ld [$10f2], sp
    inc b
    ld c, $0f
    ldh a, [rSB]
    add hl, de
    ld c, c
    ld a, [c]
    ld [$21e6], sp
    jr z, @+$3b

    dec l
    jr z, jr_00c_4991

    dec l
    dec l
    jr z, @+$3b

    inc e
    add hl, sp
    ld hl, $2839
    dec l
    push hl
    ld hl, $3928
    dec l
    jr z, jr_00c_49a2

    jr z, jr_00c_4998

    jr z, jr_00c_499a

    inc [hl]
    add hl, sp
    inc [hl]
    dec l
    jr z, jr_00c_49a0

    db $ed
    and $24
    dec hl
    inc a
    jr nc, jr_00c_49a5

    inc a
    jr nc, jr_00c_49ad

    dec hl
    inc a
    rra
    inc a
    jr nc, jr_00c_49bf

    scf
    inc a
    push hl
    jr nc, jr_00c_49bf

    jr nc, jr_00c_49ba

    dec hl
    inc h
    dec hl
    jr nc, jr_00c_49ba

    jr nc, @-$1a

jr_00c_4991:
    rst $20
    jr nc, @+$33

    jr nc, @+$30

    dec hl
    add hl, hl

jr_00c_4998:
    ld sp, hl
    inc b

jr_00c_499a:
    xor $4f
    ld c, c
    and $1e
    dec h

jr_00c_49a0:
    ld [hl], $2a

jr_00c_49a2:
    dec h
    ld [hl], $2a

jr_00c_49a5:
    ld a, [hl+]
    dec h
    ld [hl], $19
    ld [hl], $1e
    ld [hl], $25

jr_00c_49ad:
    ld a, [hl+]
    db $fc
    ld e, c
    ld c, h
    ld a, [$4c5d]
    db $ec
    nop
    db $d3
    rst $20
    ld sp, hl
    inc b

jr_00c_49ba:
    ld [de], a
    ld [$181e], sp
    inc d

jr_00c_49bf:
    ld [$1820], sp
    dec d
    ld [$1821], sp
    ld d, $08
    ld [hl+], a
    jr @-$16

    ei
    inc hl
    jr nz, @-$0c

    ld [$04f9], sp
    add sp, $00
    dec e
    ld e, $21
    inc h
    db $d3
    ld a, [hl+]
    dec b
    daa
    dec b
    inc h
    ld b, $f2
    ld [$1e21], sp
    rra
    rra
    or $f6
    db $d3
    pop af
    inc bc
    ld c, c
    rst $18
    or $19
    ld [bc], a
    sbc $ec
    ld [hl+], a
    inc b
    db $dd
    db $ec
    jr nc, jr_00c_49fb

    call c, $2dec
    inc b

jr_00c_49fb:
    db $db
    db $ec
    inc h
    inc b
    rst $20
    push af
    nop
    add sp, $00
    ld sp, hl
    ld [$ebfc], sp
    ld b, a
    ld a, [$47f0]
    ei
    ld a, [bc]
    ld c, b
    or $30
    add sp, -$0a
    add hl, de
    ld [$ece8], sp
    ld hl, $2108
    db $10
    add sp, -$0a
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    ld b, $f2
    ld [$ece8], sp
    ld hl, $21e6
    rst $20
    ld hl, $21e5
    rst $20
    add sp, $00
    db $d3
    reti


    db $10
    jr @-$0c

    ld [$17d9], sp
    ret c

    rla
    or $f2
    db $10

jr_00c_4a3e:
    reti


    db $10

jr_00c_4a40:
    reti


    ld d, $10
    ret c

    inc de
    reti


    inc de
    db $d3
    reti


    db $10
    jr jr_00c_4a3e

    ld [$17d9], sp
    ret c

    rla
    or $f2
    db $10
    reti


    inc de
    reti


    ld d, $f2
    ld [$d913], sp
    inc de
    ld a, [c]
    db $10
    ret c

    ld a, [de]
    add hl, de
    db $d3
    reti


    db $10
    jr jr_00c_4a40

    db $10
    ld [$10d8], sp
    db $10
    reti


    db $10
    db $10
    reti


    db $10
    jr jr_00c_4a83

    ld [$10d8], sp
    db $10
    reti


    db $10
    db $10
    db $ed
    reti


    db $10
    jr @+$1e

    ld [$10f2], sp
    ret c

jr_00c_4a83:
    dec bc
    reti


    dec c
    reti


    ld c, $f2
    ld [$d90d], sp
    dec c
    db $d3
    ret c

    ld c, $10
    rrca
    db $10
    xor $32

jr_00c_4a95:
    ld c, d
    reti


    db $10
    db $10
    ld a, [c]
    ld [$10d9], sp
    db $10
    ret c

    db $10
    ret c

    db $10
    reti


    db $10
    db $10
    reti


    db $10
    reti


    add hl, de

jr_00c_4aa9:
    reti


    db $10
    or $d8
    ld a, [de]
    and $d8
    ld a, [de]
    rst $20
    ret c

    dec de
    push hl
    ret c

    dec de
    db $d3
    rst $20
    reti


    dec d
    jr jr_00c_4a95

    dec d
    ld [$10f2], sp
    dec d
    reti


    dec d
    reti


    dec d
    reti


    dec d
    ret c

    dec d
    or $d3
    reti


jr_00c_4acd:
    dec d
    jr jr_00c_4aa9

jr_00c_4ad0:
    dec d
    ld [$10f2], sp
    ret c

    dec d
    reti


    dec d
    ld a, [c]
    ld [$16d9], sp
    rla
    ld a, [de]
    rla
    ret c

    dec d
    inc de
    reti


    db $10
    ret c

    ld c, $d3
    db $ed
    reti


    jr jr_00c_4b03

    ret c

    jr jr_00c_4af6

    ld a, [c]
    db $10

jr_00c_4af0:
    jr @-$25

    jr jr_00c_4acd

    jr @-$25

jr_00c_4af6:
    jr jr_00c_4ad0

    jr jr_00c_4af0

    db $d3
    reti


    jr jr_00c_4b16

    ld a, [c]
    ld [$19d9], sp
    ret c

jr_00c_4b03:
    add hl, de
    or $d9
    ld a, [de]
    or $d3
    reti


    ld d, $18
    ret c

    jr jr_00c_4b17

    ret c

    jr jr_00c_4b22

    db $e4
    reti


    ld d, $05

jr_00c_4b16:
    reti


jr_00c_4b17:
    ld d, $05
    reti


jr_00c_4b1a:
    ld d, $06
    ld sp, hl
    ld [$b9ee], sp
    ld c, d
    reti


jr_00c_4b22:
    ld [de], a
    jr @-$26

    db $10
    jr jr_00c_4b1a

    db $10
    reti


    ld [de], a
    reti


    ld [de], a
    ret c

    inc de
    ret c

    dec d
    ld a, [c]
    ld [$16d9], sp
    reti


    ld d, $e6
    ret c

    dec bc
    rst $20

jr_00c_4b3b:
    ret c

    rla
    or $e5
    reti


    rla
    and $d8
    dec c
    rst $20
    ret c

    add hl, de
    or $e5
    reti


    add hl, de
    rst $20
    ret c

    ld c, $d8
    ld a, [de]
    and $d9
    ld a, [de]
    reti


    ld a, [de]
    rst $20
    ret c

    rrca
    ret c

    dec de
    push hl
    ret c

    dec de
    ret c

    dec de
    rst $20
    ld a, [c]
    jr nz, jr_00c_4b3b

    inc e
    or $f6
    ld a, [c]
    ld [$1cd8], sp
    ret c

    inc e
    or $f6
    db $d3
    pop af
    db $eb
    ld c, c
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
    sla b
    or $10
    ld a, [c]
    ld [$cdce], sp
    db $d3
    call $ce10
    dec b
    adc $05
    adc $06
    ld a, [c]
    ld [$e6cd], sp
    call $cde7
    push hl
    call $d3e7
    adc $18
    adc $08
    ld a, [c]
    db $10
    call $cece
    or $cd
    adc $d3
    adc $18
    adc $08
    ld a, [c]
    db $10
    call $cece
    or $cd
    or $f0
    ld [bc], a
    and b
    ld c, e
    db $d3
    adc $18
    adc $08
    ld a, [c]
    db $10
    call $cece
    or $cd
    adc $d3
    adc $10
    adc $10
    call $cd08
    ld [$10ce], sp
    ld a, [c]
    ld [$cece], sp
    adc $f6
    call $cde6
    rst $20
    call $cde5
    rst $20
    ld a, [c]
    jr @-$30

    call $10f2
    adc $ce
    adc $cd
    or $f2
    jr @-$30

    ld a, [c]
    ld [$cdce], sp
    or $f2
    db $10
    adc $ce
    or $cd
    ld a, [c]
    ld [$cdce], sp
    ld a, [c]
    jr @-$30

    call $10f2
    adc $ce
    db $ed
    adc $cd
    or $f2
    jr @-$30

    ld a, [c]
    ld [$f2ce], sp
    db $10
    call $cece
    db $d3

jr_00c_4c1a:
    or $08
    call $cd08
    db $10
    adc $05
    adc $05
    adc $06
    xor $e5
    ld c, e
    call $f2cd
    ld [$cece], sp
    and $cd
    rst $20
    call $e5f6
    adc $e6
    call $cde7
    or $e5
    adc $e7
    call $e6cd
    adc $ce
    rst $20
    call $e5cd
    call $e7cd
    ld a, [c]
    jr nz, jr_00c_4c1a

    or $f6
    ld a, [c]
    ld [$cdcd], sp
    or $f6
    db $d3
    pop af
    ld [hl], d
    ld c, e
    pop af
    ld b, $b0
    nop
    db $10
    ld [bc], a
    ld [hl], b
    nop
    sub c
    ld [bc], a
    ld h, b
    nop
    db $10
    ld [bc], a
    jr nz, jr_00c_4c69

jr_00c_4c69:
    nop
    inc bc
    nop
    db $fd
    add b
    ld l, c
    ld c, h
    nop
    nop
    add c
    ld c, h
    ld bc, $8301
    ld c, l
    ld [bc], a
    ld [bc], a
    ld d, e
    ld c, [hl]
    inc bc
    inc bc
    di
    ld c, [hl]
    rst $38
    db $fc
    ld a, [$fa4e]
    ld bc, $e74f
    db $ec
    nop
    push af
    nop
    ld sp, hl
    rlca
    push hl
    ld h, $0f
    or $1e
    and $26
    rrca
    or $2d
    rst $20
    ld h, $0f
    or $0f
    and $26
    rrca
    or $1e
    push hl
    ld h, $0f
    rst $20
    ld h, $0f
    or $1e
    ld hl, sp+$0f
    ld c, a
    ld sp, hl
    rlca
    rst $30
    rrca
    dec h
    dec l
    db $e4
    pop hl
    ld h, $0f
    ld sp, hl
    rlca
    ld hl, sp+$0f
    ld c, a
    rst $30
    rrca
    jr z, jr_00c_4ced

    db $e4
    pop hl
    ld a, [hl+]
    rrca
    ld a, [c]
    rrca
    inc l
    ld a, [hl+]
    inc l
    dec l
    inc l
    ld a, [hl+]
    jr z, jr_00c_4cf5

    db $d3
    ldh a, [rSB]
    adc h
    ld c, h
    ld sp, hl
    rrca
    rst $30
    rrca
    rst $20
    ld hl, $263c
    inc a
    ld sp, hl
    ld c, e
    rst $30
    inc a
    ld hl, $e461
    pop hl
    inc hl
    ld [$0724], sp
    dec h
    ld [$0ff9], sp
    rst $30

jr_00c_4ced:
    ld e, $26
    inc a
    ld [hl-], a
    inc a
    ld sp, hl
    inc a
    rst $30

jr_00c_4cf5:
    ld c, e
    dec l
    ld e, d
    db $e4
    pop hl
    jr z, @+$09

    add hl, hl
    ld [$072b], sp
    dec l
    ld [$1af8], sp
    ld c, a
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    dec l
    ldh a, [rIF]
    rlca
    ld c, l
    db $d3
    ld sp, hl
    ld [$072e], sp
    add hl, hl
    ld [$0730], sp
    add hl, hl
    ld [$0731], sp
    add hl, hl
    ld [$072e], sp
    add hl, hl
    ld [$0730], sp
    add hl, hl
    ld [$0731], sp
    add hl, hl
    ld [$072e], sp
    add hl, hl
    ld [$0730], sp
    add hl, hl
    ld [$02f0], sp
    ld de, $304d
    rlca
    add hl, hl
    ld [$0731], sp

jr_00c_4d3b:
    add hl, hl
    ld [$0733], sp
    add hl, hl
    ld [$0731], sp
    inc l
    ld [$0733], sp
    ld l, $08
    dec [hl]
    rlca
    ld l, $08
    dec [hl]
    rlca
    inc sp
    ld [$0731], sp
    jr nc, jr_00c_4d5d

    db $f4
    cp $ef
    ld bc, $4d11
    db $f4
    nop

jr_00c_4d5d:
    db $e4
    rst $20
    ld a, [c]
    rrca
    add hl, hl
    jr z, jr_00c_4d8d

    jr z, jr_00c_4d8d

    jr z, jr_00c_4d3b

    ld sp, hl
    inc a
    rst $30
    ld c, e
    daa
    ld e, d
    pop hl
    db $e4
    ld a, [c]
    rrca
    daa
    ld h, $27
    ld h, $25
    ld h, $d3
    ld sp, hl
    inc a
    rst $30
    ld c, e
    dec h
    ld e, d
    pop hl
    pop af
    add c
    ld c, h
    db $fc
    db $f4
    ld c, [hl]
    ld a, [$4ef8]
    rst $20
    push af
    nop
    ld a, [c]

jr_00c_4d8d:
    rrca
    ld sp, hl
    rlca
    db $ec
    add b
    dec l
    rra
    ld hl, $262d
    ld hl, $2d1f
    dec de

jr_00c_4d9b:
    dec l
    ld hl, $2d1f
    dec l
    rra
    ld hl, $1e1a
    jr nz, jr_00c_4dc4

    dec h
    jr nz, jr_00c_4dc7

    jr nz, jr_00c_4d9b

    ld bc, $4da2
    db $d3
    rst $28
    ld bc, $4d83
    db $fc
    ld a, [$fa4e]
    ld bc, $ec4f
    ret nz

    push hl
    ld hl, sp+$0f
    ld c, a
    ld sp, hl
    rlca
    rst $30
    rrca
    inc e

jr_00c_4dc4:
    dec l
    db $e4
    pop hl

jr_00c_4dc7:
    ld a, [de]
    rrca
    ld sp, hl
    ld e, $f9
    rlca
    rst $30
    rrca
    ld hl, $e42d
    pop hl
    ld a, [de]
    rrca
    db $e4
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    inc e
    ld a, [de]
    ld hl, $d31a
    ldh a, [rSB]
    sub $4d
    and $ef
    ld [bc], a
    cp h
    ld c, l
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    ld [hl+], a
    jr nz, @+$20

    jr nz, @+$20

    dec e
    ld e, $20
    ld [hl+], a
    jr nz, jr_00c_4e15

    jr nz, jr_00c_4e17

    db $d3
    dec e
    rlca
    ld e, $08
    jr nz, jr_00c_4e07

    ld e, $08
    dec e
    rlca
    ld e, $08
    ld a, [c]

jr_00c_4e07:
    rrca
    dec e
    ld e, $20
    ld [hl+], a
    jr nz, jr_00c_4e2c

    jr nz, jr_00c_4e2e

    ld [hl+], a
    jr nz, jr_00c_4e31

    jr nz, jr_00c_4e33

jr_00c_4e15:
    db $d3
    dec e

jr_00c_4e17:
    rlca
    ld e, $08
    jr nz, jr_00c_4e23

    ld e, $08
    dec e
    rlca
    ld e, $08
    db $f4

jr_00c_4e23:
    cp $e5
    ldh a, [rSB]
    add sp, $4d
    db $f4
    nop
    db $e4

jr_00c_4e2c:
    ld a, [c]
    rrca

jr_00c_4e2e:
    and $18
    dec e

jr_00c_4e31:
    jr jr_00c_4e4a

jr_00c_4e33:
    inc e
    rla
    db $d3
    ld sp, hl
    inc a
    rst $30
    ld c, e
    ld d, $5a
    pop hl
    db $e4
    ld a, [c]
    rrca
    push hl
    ld d, $1c
    ld d, $15
    ld a, [de]
    dec d
    db $d3
    ld sp, hl
    inc a

jr_00c_4e4a:
    rst $30
    ld c, e
    inc d
    ld e, d
    pop hl
    rst $20
    pop af
    add e
    ld c, l
    db $fc
    db $eb
    ld b, a
    ld a, [$47f0]
    rst $20
    ei
    ld a, [bc]
    ld c, b
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    rrca
    ldh a, [rIF]
    ld h, c
    ld c, [hl]
    ld c, $f0
    rrca
    ld h, [hl]
    ld c, [hl]
    rst $28
    ld bc, $4e61
    db $d3
    ld sp, hl
    rrca
    ld d, $2d
    ld sp, hl
    rlca
    ld de, $f00f
    ld bc, $4e70
    ld a, [c]
    rrca
    ld d, $11
    ld de, $1116
    ld d, $16
    ld de, $f9d3
    rrca
    rla
    dec l
    ld sp, hl
    rlca
    ld de, $f00f
    ld bc, $4e87
    ld a, [c]
    rrca
    rla
    ld de, $1711
    ld de, $1717
    ld de, $f9d3
    ld e, $19
    inc a
    jr jr_00c_4ee0

    rla
    inc a
    ld d, $3c
    ld a, [c]
    rrca
    ld sp, hl
    rlca
    ld [de], a
    ldh a, [$0c]
    xor b
    ld c, [hl]
    db $d3
    ld sp, hl
    ld b, $12
    rlca
    ld [de], a
    ld [$07f9], sp
    ld [de], a
    rrca
    ld [de], a
    rrca
    rst $28
    ld bc, $4ea8
    ld a, [c]
    rrca
    ld sp, hl
    rlca
    db $10
    ldh a, [$0c]
    jp nz, $d34e

    ld sp, hl
    ld b, $10
    rlca
    db $10
    ld [$07f9], sp
    db $10
    rrca
    db $10
    rrca
    rst $28
    ld bc, $4ec2
    ld sp, hl
    ld e, $12
    dec l

jr_00c_4ee0:
    ld de, $f92d
    inc a
    db $10
    ld e, d
    ld sp, hl
    ld e, $10
    dec l
    rrca
    dec l
    ld sp, hl
    inc a
    ld c, $5a
    pop af
    ld d, e
    ld c, [hl]
    rst $38
    and c
    ld [bc], a
    add b
    nop
    ld d, b
    nop
    ld a, c
    dec b
    and b
    nop
    rst $38
    db $fc
    ld c, [hl]
    ld b, b
    inc bc
    ld [hl], b
    nop
    ld l, c
    inc b
    pop bc
    inc b
    sub b
    nop
    ld b, c
    inc bc
    stop
    nop
    ld bc, $0103
    nop
    rst $38
    db $fd
    rst $38
    add b
    rrca
    ld c, a
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
    ld c, a
    nop
    nop
    ld a, [hl-]
    ld c, a
    ld bc, $9c01
    ld c, a
    ld [bc], a
    ld [bc], a
    ret c

    ld d, b
    inc bc
    inc bc
    nop
    ld d, d
    rst $38
    db $fc
    ld [hl], e
    ld d, d
    ld a, [$527b]
    rst $20

jr_00c_4f41:
    db $ec
    ld b, b
    push af
    nop
    ld a, [c]
    jr nz, jr_00c_4f41

    db $10
    or $2b
    or $f6
    ld a, [hl+]
    or $f0
    ld bc, $4f49
    ld l, $2c

jr_00c_4f55:
    ld a, [hl+]
    db $ed
    inc l
    ld a, [hl+]
    jr z, jr_00c_4f89

    inc l
    ld a, [hl+]
    inc l
    or $f6
    xor $3a
    ld c, a
    jr nc, jr_00c_4f93

    inc l
    ld [hl-], a
    inc [hl]
    ld [hl], $34
    or $f6
    ld a, [c]
    jr nz, jr_00c_4f55

    cpl
    scf
    ld a, [c]
    db $10
    or $33
    ld a, [c]
    jr nz, jr_00c_4fa9

    or $33
    cpl
    dec hl
    ld a, [c]
    db $10
    or $27
    ld a, [c]
    jr nz, jr_00c_4fa8

    or $f6
    ld a, [c]
    ld h, b
    or $f6

jr_00c_4f89:
    db $ed
    or $f6
    xor $6c
    ld c, a
    ld a, [c]
    jr nz, @-$05

    db $10

jr_00c_4f93:
    jr nc, jr_00c_4fc1

    jr z, jr_00c_4fcd

    or $f6
    pop af
    ld a, [hl-]
    ld c, a
    db $fc
    add c
    ld d, d
    ld a, [$5285]
    push hl
    db $ec
    add b
    push af
    nop
    ld a, [c]

jr_00c_4fa8:
    db $10

jr_00c_4fa9:
    ld sp, hl
    ld [$2b28], sp
    jr nc, jr_00c_4fda

    db $d3
    db $e4
    ld sp, $3105
    dec b
    ld sp, $f006
    ld bc, $4faf
    ld a, [c]
    db $10
    ld sp, hl
    ld [$28e6], sp

jr_00c_4fc1:
    dec hl
    jr nc, jr_00c_4fef

    db $d3
    db $e4
    ld a, [hl+]
    dec b
    ld a, [hl+]
    dec b
    ld a, [hl+]
    ld b, $f0

jr_00c_4fcd:
    ld bc, $4fc4
    ld a, [c]
    db $10
    ld sp, hl
    ld [$28e5], sp
    dec hl
    jr nc, jr_00c_5004

    db $d3

jr_00c_4fda:
    db $e4
    ld sp, $3105
    dec b
    ld sp, $f006
    ld bc, $4fd9
    ld a, [c]
    db $10
    ld sp, hl
    rlca
    and $28
    dec hl
    jr nc, jr_00c_5019

    ld a, [c]

jr_00c_4fef:
    ld [$10f9], sp
    ld a, [hl+]
    jr nc, jr_00c_502b

    add hl, sp
    ld a, [c]
    db $10
    ld sp, hl
    ld [$32e6], sp
    inc l
    ldh a, [rSC]
    or $4f
    push hl
    jr nc, jr_00c_502e

jr_00c_5004:
    ldh a, [rSC]
    ld bc, $ed50
    rst $28
    ld bc, $4ff6
    xor $9c
    ld c, a
    push hl
    ld a, [c]
    db $10
    ld sp, hl
    ld [$2c32], sp
    ldh a, [rSC]

jr_00c_5019:
    db $10
    ld d, b
    jr nc, jr_00c_5047

    dec l
    jr nc, jr_00c_5054

    ld [hl], $fc
    ld [hl], e
    ld d, d
    ld a, [$527b]
    push hl
    db $ec
    ld b, b
    ld a, [c]

jr_00c_502b:
    jr nz, @-$05

    db $10

jr_00c_502e:
    dec hl
    daa
    ld a, [c]
    db $10
    or $23
    ld a, [c]
    jr nz, jr_00c_5058

    or $23
    dec hl
    daa
    ld a, [c]
    db $10
    or $23
    ld a, [c]
    jr nz, jr_00c_5063

    or $f6
    db $fc
    add c
    ld d, d

jr_00c_5047:
    ld a, [$5285]
    rst $20
    db $ec
    add b
    ld a, [c]
    db $10
    ld sp, hl
    ld [$2523], sp
    daa

jr_00c_5054:
    add hl, hl
    db $d3
    db $e4
    dec hl

jr_00c_5058:
    dec b
    dec hl
    dec b
    dec hl
    ld b, $f0
    ld bc, $5055
    ld a, [c]
    db $10

jr_00c_5063:
    ld sp, hl
    ld [$2927], sp
    dec hl
    dec l
    db $d3
    db $e4
    cpl
    dec b
    cpl
    dec b
    cpl
    ld b, $f0
    ld bc, $5069
    db $ed
    ld l, $05
    ld l, $05
    ld l, $06
    ldh a, [rSB]
    db $76
    ld d, b
    jr z, @+$07

    jr z, jr_00c_5089

    jr z, jr_00c_508c

    ldh a, [rSB]
    add b

jr_00c_5089:
    ld d, b
    ld h, $05

jr_00c_508c:
    ld h, $05
    ld h, $06
    ldh a, [rSB]
    adc d
    ld d, b
    daa
    dec b
    inc hl
    dec b
    daa
    ld b, $23
    dec b
    daa
    dec b
    inc hl
    ld b, $f0
    ld [bc], a
    sub h
    ld d, b
    xor $21
    ld d, b
    jr nc, @+$07

    jr nc, jr_00c_50b0

    jr nc, jr_00c_50b3

    ldh a, [rSB]
    and a

jr_00c_50b0:
    ld d, b
    inc l
    dec b

jr_00c_50b3:
    inc l
    dec b
    inc l
    ld b, $f0
    ld bc, $50b1
    jr z, @+$07

    jr z, jr_00c_50c4

    jr z, jr_00c_50c7

    ldh a, [rSB]
    cp e

jr_00c_50c4:
    ld d, b
    ld a, [hl+]
    dec b

jr_00c_50c7:
    inc h
    dec b
    ld a, [hl+]
    ld b, $24
    dec b
    ld a, [hl+]
    dec b
    inc h
    ld b, $f0
    ld [bc], a
    push bc
    ld d, b
    pop af
    sbc h
    ld c, a
    rst $18
    or $19
    ld [bc], a
    sbc $ec

jr_00c_50de:
    ld [hl+], a
    inc b
    db $dd
    db $ec
    dec l
    inc b
    call c, $26ec
    inc b
    db $db
    db $ec
    ld hl, $e704
    push af
    nop
    add sp, $00
    db $fc
    db $eb
    ld b, a
    ld a, [$47f0]
    ei
    ld a, [bc]
    ld c, b
    ld sp, hl
    ld [$15d9], sp
    db $10
    reti


    dec d

jr_00c_5101:
    db $10
    ld sp, hl
    jr nz, jr_00c_50de

    dec d
    jr nc, jr_00c_5101

    ld [$1010], sp
    ld sp, hl
    ld [$15d9], sp
    db $10
    reti


    dec d
    db $10
    or $20
    add sp, -$0a
    rra
    ld [$18f6], sp
    add sp, $00
    ld sp, hl
    ld [$15d9], sp
    db $10
    reti


jr_00c_5123:
    dec d

jr_00c_5124:
    db $10
    ld sp, hl
    jr nz, jr_00c_5101

    dec d
    jr nc, jr_00c_5124

    ld [$1010], sp
    ld sp, hl
    ld [$21d9], sp

jr_00c_5132:
    db $10
    reti


    inc e
    db $10
    ld sp, hl
    db $10
    dec d
    jr nz, jr_00c_5123

    or $1f
    ld [$18f6], sp
    add sp, $00
    reti


    inc e
    jr nz, @-$05

    jr nz, @+$19

    jr nc, jr_00c_5132

    or $1f
    ld [$08f6], sp
    add sp, $00
    reti


    ld a, [de]
    jr nz, @-$05

    jr nz, @+$17

    jr nc, @-$16

    or $1f
    ld [$08f6], sp
    add sp, $00
    reti


    inc e
    jr nz, @-$05

    jr nz, jr_00c_517d

    jr nc, @-$16

    or $1f
    ld [$08f6], sp
    add sp, $00

jr_00c_516f:
    db $ed
    ld sp, hl
    db $10
    ret c

    ld a, [de]
    jr nz, jr_00c_516f

    ld [$1ad7], sp
    db $10
    push de
    ld a, [de]
    db $10

jr_00c_517d:
    sub $18
    db $10
    rla
    db $10
    xor $d8

jr_00c_5184:
    ld d, b
    ret c

    ld a, [de]
    jr nz, @-$28

    ld a, [de]
    db $10
    push de
    ld a, [de]

jr_00c_518d:
    db $10
    sub $18
    jr nz, jr_00c_5184

    jr nz, jr_00c_518d

    db $10
    rla
    dec de
    ld a, [c]
    db $10
    or $1f
    ld a, [c]
    ld [$04f9], sp
    rla
    dec de
    rra
    ld hl, $10f2
    ld sp, hl
    ld [$1f23], sp
    dec de
    add hl, de
    ld a, [c]
    jr nz, @-$05

    db $10
    rla
    dec de
    ld a, [c]
    db $10
    or $1f
    ld a, [c]
    ld [$04f9], sp
    rla
    dec de
    rra
    ld hl, $10f2
    ld sp, hl
    ld [$1f23], sp
    dec h
    rra
    db $d3
    ld sp, hl
    db $10
    dec e
    jr nz, @+$1d

    db $10
    add hl, de
    jr nc, @+$21

    jr nz, @+$1f

    db $10
    dec de
    jr nc, @-$11

jr_00c_51d5:
    ld e, $20
    add hl, de
    db $10
    ld d, $30
    ld a, [c]
    db $10
    ld sp, hl
    ld [$1e17], sp
    inc hl
    ld [hl+], a
    db $d3
    inc hl
    jr nz, jr_00c_51d5

    sub c
    ld d, c
    inc e
    jr nz, jr_00c_520f

    db $10
    jr nz, jr_00c_521f

jr_00c_51ef:
    ld a, [c]
    db $10
    ld sp, hl
    ld [$21d5], sp
    inc e
    jr @-$26

    inc e
    ret c

    dec d
    db $10
    db $d3
    pop af

jr_00c_51fe:
    ret c

    ld d, b
    jp nc, $2661

    nop
    pop de
    pop hl
    inc b
    ld bc, $81d0
    inc bc
    nop
    rst $08
    ld h, e
    inc bc

jr_00c_520f:
    inc b
    rst $20

jr_00c_5211:
    push af
    nop
    ld a, [c]
    db $10
    adc $ce
    adc $f6
    or $f6
    adc $ce
    or $f6

jr_00c_521f:
    ld a, [c]
    jr nz, jr_00c_51ef

    ld a, [c]
    db $10
    adc $ce
    adc $f6
    or $f6

jr_00c_522a:
    adc $ce
    or $f6
    ld a, [c]
    jr nz, jr_00c_51fe

    adc $f6
    ld a, [c]
    db $10
    or $ce
    ld a, [c]
    jr nz, jr_00c_522a

    ld [bc], a
    ld sp, $cd52
    ld a, [c]
    db $10
    call z, $f2cc
    jr nz, jr_00c_5211

    rst $28

jr_00c_5246:
    ld bc, $5200
    ld a, [c]
    ld h, b
    or $f6
    or $f6
    ld a, [c]
    jr nc, jr_00c_5246

    dec b
    set 6, b
    dec b
    ld c, a
    ld d, d
    db $ed
    db $d3
    sla b
    rl b
    rl b
    sla b

jr_00c_5262:
    xor $49
    ld d, d
    db $f4
    nop
    db $d3
    call z, $f620
    db $10
    call $cd10
    jr nz, jr_00c_5262

    nop
    ld d, d
    pop hl
    dec b
    and c
    dec b
    ld h, d
    inc b
    stop
    ld [hl], c
    dec b
    ld [hl], $0c
    jr nz, jr_00c_5281

jr_00c_5281:
    pop bc
    ld b, $70
    nop
    ld b, b
    ld [bc], a
    stop
    nop
    nop
    sbc d
    ld d, d
    ld bc, $5801
    ld d, h
    ld [bc], a
    ld [bc], a
    add l
    ld d, l
    inc bc
    inc bc
    scf
    ld d, a
    rst $38
    db $fc
    ld c, $58
    ld a, [$5812]
    ld hl, sp+$2a
    ld e, b
    db $ec
    nop
    and $f7
    ld bc, $04f9
    ld hl, $2307
    ld [$0724], sp
    ld h, $08
    inc hl
    rlca
    inc h
    ld [$0726], sp
    jr z, @+$0a

    inc h
    rlca
    ld h, $08
    jr z, jr_00c_52c7

    add hl, hl
    ld [$0726], sp
    jr z, jr_00c_52ce

    add hl, hl

jr_00c_52c7:
    rlca
    ld a, [hl+]
    ld [$2be7], sp
    rlca
    dec hl

jr_00c_52ce:
    ld [$1ef6], sp
    dec hl
    rlca
    dec hl
    ld [$16f6], sp
    db $fc
    ld d, $58
    ld a, [$581c]
    db $ec
    ret nz

    pop hl
    jr z, jr_00c_52ea

    ld sp, hl
    rlca
    dec hl
    rrca
    dec l
    rrca
    ld sp, hl
    nop

jr_00c_52ea:
    ld l, $01
    ld sp, hl
    ld de, $152f
    ld sp, hl
    rlca
    cpl
    rrca
    dec l
    rrca
    ld sp, hl
    nop
    ld l, $01
    ld sp, hl
    ld de, $162f
    ld sp, hl
    rlca
    dec l
    rrca
    dec hl
    rrca
    dec l
    rrca
    ld sp, hl
    nop
    ld l, $01
    ld sp, hl
    ld de, $152f
    ld sp, hl
    rlca
    cpl
    rrca
    dec l
    rrca
    ld sp, hl
    nop
    ld l, $01
    ld sp, hl
    ld de, $162f
    ld sp, hl
    rlca
    dec l
    rrca
    dec hl
    rrca
    daa
    rrca
    ld sp, hl
    ld de, $1626
    ld sp, hl
    nop
    inc l
    ld bc, $11f9
    dec l
    ld d, $f9
    nop
    inc l
    ld bc, $1ef9
    rst $30
    inc a
    dec l
    ld c, d
    db $fc
    ld c, $58
    ld a, [$5812]
    db $ec
    nop
    db $e4
    ld sp, hl
    inc b
    ld [c], a
    db $ed
    or $07
    ld l, $0f
    dec l
    ld [$072b], sp
    add hl, hl
    ld [$0728], sp
    add hl, hl
    ld [$072b], sp
    add hl, hl
    ld [$0725], sp
    ld hl, $2908
    rlca
    dec h
    ld [$0721], sp
    rra
    ld [$16fc], sp
    ld e, b
    ld a, [$581c]
    db $ec
    ret nz

    pop hl
    ld sp, hl
    nop
    daa
    ld bc, $11f9
    jr z, @+$17

    ld sp, hl
    rlca
    jr z, jr_00c_5389

    add hl, hl
    rrca
    ld sp, hl
    nop
    daa
    ld bc, $11f9
    jr z, jr_00c_539a

    ld sp, hl
    rlca
    inc h
    rrca
    inc h

jr_00c_5389:
    rrca
    ld h, $0f
    ld sp, hl
    nop
    daa
    ld bc, $11f9
    jr z, @+$17

    ld sp, hl
    rlca
    add hl, hl
    rrca
    dec hl
    rrca

jr_00c_539a:
    ld sp, hl
    nop
    inc l
    ld bc, $11f9
    dec l
    ld d, $f9
    rlca
    jr z, jr_00c_53b5

    inc h
    rrca
    ld h, $0f
    ld sp, hl
    ld de, $1626
    ld sp, hl
    nop
    ld a, [hl+]
    ld bc, $11f9
    dec hl

jr_00c_53b5:
    ld d, $f9
    nop
    daa
    ld bc, $1ef9
    rst $30
    inc a
    jr z, @+$4c

    db $fc
    ld c, $58
    ld a, [$5812]
    db $ec
    nop
    db $e4
    ld sp, hl
    inc b
    pop hl
    or $07
    dec hl
    rla
    jr nc, @+$18

    ld [hl-], a
    ld [$16f6], sp
    xor $d7
    ld d, d
    or $07
    dec h
    ld [$0729], sp
    dec hl
    ld [$072d], sp
    add hl, hl
    ld [$072d], sp
    jr nc, @+$0a

    ld sp, $2d07
    ld [$0729], sp
    dec h
    ld [$05f2], sp
    dec l
    ld l, $2d
    add hl, hl
    dec h
    ld hl, $fcd3
    ld d, $58
    ld a, [$581c]
    db $ec
    ret nz

    pop hl
    ld sp, hl
    nop
    daa
    ld bc, $11f9
    jr z, @+$17

    ld sp, hl
    rlca
    jr z, jr_00c_541e

    add hl, hl
    rrca
    ld sp, hl
    nop
    daa
    ld bc, $11f9
    jr z, jr_00c_542f

    ld sp, hl
    rlca
    inc h
    rrca
    inc h

jr_00c_541e:
    rrca
    ld h, $0f
    ld sp, hl
    nop
    daa
    ld bc, $11f9
    jr z, @+$17

    ld sp, hl
    rlca
    add hl, hl
    rrca
    dec hl
    rrca

jr_00c_542f:
    ld sp, hl
    nop
    inc l
    ld bc, $11f9
    dec l
    ld d, $f9
    rlca
    dec hl
    rrca
    dec l
    rrca
    jr nc, @+$11

    ld sp, hl
    nop
    ld sp, $f901
    ld de, $1532
    ld sp, hl
    nop
    ld sp, $f901
    ld de, $1632
    ld sp, hl
    ld e, $f7
    inc a
    jr nc, @+$4d

    pop af
    sbc d
    ld d, d
    db $fc
    ld c, $58
    ld a, [$5812]
    ld hl, sp+$2a
    ld e, b
    push af
    nop
    db $ec
    nop
    push hl
    rst $30
    ld bc, $04f9
    dec e
    rlca
    jr jr_00c_5476

    dec d
    rlca
    jr jr_00c_547a

    ldh a, [$03]
    ld l, d
    ld d, h

jr_00c_5476:
    rst $20
    dec e
    rlca
    dec e

jr_00c_547a:
    ld [$1ef6], sp
    ldh a, [rSB]
    ld [hl], a
    ld d, h
    or $1e
    push hl
    db $fc
    ld [hl+], a
    ld e, b
    ld a, [$5826]
    pop hl
    db $ec
    ret nz

    inc c
    rrca
    ld h, $07
    inc c
    rrca
    jr z, jr_00c_54a4

    inc c
    ld [$0726], sp
    inc hl
    ld [$071f], sp
    jr z, jr_00c_54ae

    ld h, $08
    inc hl
    rlca
    rra

jr_00c_54a4:
    ld [$0f13], sp
    daa
    rlca
    inc de
    rrca
    inc hl
    rrca
    inc de

jr_00c_54ae:
    ld [$0727], sp
    inc hl
    ld [$0721], sp
    daa
    rrca
    inc hl
    ld [$0721], sp
    ld e, $08
    db $10
    rrca
    ld h, $07
    db $10
    rrca
    ld [hl+], a
    rrca
    db $10
    ld [$0726], sp
    ld [hl+], a
    ld [$071f], sp
    ld h, $0f
    ld [hl+], a
    ld [$071f], sp
    inc e
    ld [$0f15], sp
    dec h
    rlca
    dec d
    rrca
    rra
    rrca
    dec d
    ld [$0725], sp
    ld hl, $1f08
    rlca
    add hl, hl
    rrca
    dec h
    ld [$0721], sp
    rra
    ld [$0f11], sp
    inc h
    rlca
    ld de, $280f
    rrca
    ld de, $2408
    rlca
    ld hl, $1d08
    rlca
    jr z, jr_00c_550e

    inc h
    ld [$0721], sp
    dec e
    ld [$13ed], sp
    rrca
    inc h
    rlca
    inc de
    rrca
    add hl, hl
    rrca

jr_00c_550e:
    inc de
    ld [$0724], sp
    ld hl, $1d08
    rlca
    add hl, hl
    rrca
    inc h
    ld [$0721], sp
    dec e
    ld [$0f0c], sp
    ld h, $07
    inc c
    rrca
    jr z, jr_00c_5535

    inc c
    ld [$0726], sp
    inc hl
    ld [$071f], sp
    jr z, @+$11

    ld h, $08
    inc hl
    rlca
    rra

jr_00c_5535:
    ld [$0efc], sp
    ld e, b
    ld a, [$5812]
    push af
    ld bc, $00ec
    and $f7
    ld bc, $04f9
    or $07
    daa
    rla
    inc h
    ld d, $21
    ld [$3cf6], sp
    xor $84
    ld d, h
    inc de
    rrca
    add hl, hl
    rlca
    inc de
    rrca
    inc h
    rrca
    inc de
    ld [$0729], sp
    inc h
    ld [$0721], sp
    dec l
    rrca
    add hl, hl
    ld [$0724], sp
    ld hl, $0c08
    rrca
    ld h, $07
    inc c
    rrca
    jr z, jr_00c_5581

    inc c
    ld [$0726], sp
    inc hl
    ld [$071f], sp
    jr z, jr_00c_558b

    ld h, $08
    inc hl
    rlca
    rra

jr_00c_5581:
    ld [$58f1], sp
    ld d, h
    rst $18
    or $19
    ld [bc], a
    sbc $f6

jr_00c_558b:
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
    db $eb
    ld b, a
    ld a, [$47f0]
    ei
    ld a, [bc]
    ld c, b
    ld a, [c]
    rrca
    ld sp, hl
    rlca
    reti


    inc de
    ldh a, [rTAC]
    and a
    ld d, l
    db $d3
    db $e4
    ret c

    inc de
    rlca
    ret c

    inc de
    ld [$e8ed], sp
    db $ec
    push hl
    ld sp, $e707
    dec l
    ld [$1de6], sp
    rlca
    or $08
    add sp, $00
    rst $20
    xor $b1
    ld d, l
    or $16
    add sp, -$14
    ld sp, $e508
    ld sp, $e707
    dec l
    ld [$1de6], sp
    rlca
    or $08
    add sp, $00
    rst $20
    reti


    jr @+$11

    or $07
    reti


    jr jr_00c_55f1

    add sp, -$0a
    ld hl, $f607
    rrca
    add sp, $00

jr_00c_55f1:
    reti


    jr jr_00c_5603

    or $08
    reti


    dec d
    rrca
    ret c

    inc de
    rrca
    dec d
    rrca
    reti


    inc de
    rrca
    or $07

jr_00c_5603:
    reti


    inc de
    ld [$f6e8], sp
    ld hl, $f607
    rrca
    add sp, $00
    reti


    rra
    rrca
    or $08
    reti


    dec de
    rrca
    ret c

    rla
    rrca
    inc de
    rlca
    ret c

    inc de
    ld [$1cd9], sp
    rrca
    or $07
    reti


    inc e
    ld [$f6e8], sp
    ld hl, $f607
    rrca
    add sp, $00
    reti


    inc e
    rrca
    or $08
    reti


    ld d, $0f
    ret c

    inc de
    rrca
    ld d, $0f
    reti


    dec d
    rrca
    or $07
    reti


    dec d
    ld [$f6e8], sp
    ld hl, $f607
    rrca
    add sp, $00
    reti


    dec d
    rrca
    or $08
    reti


    add hl, de
    rrca
    ret c

    dec e
    rlca
    inc e
    ld [$0719], sp
    ret c

    dec d
    ld [$11d9], sp
    rrca
    or $07
    reti


    ld de, $e808
    or $21
    rlca
    or $0f
    add sp, $00
    reti


    dec e
    rrca
    or $08
    reti


    inc e
    rrca
    ret c

    jr jr_00c_5687

    inc e
    rrca
    reti


    inc de
    rrca
    or $07
    reti


    ld c, $08
    add sp, -$0a
    ld hl, $f607

jr_00c_5687:
    rrca
    add sp, $00
    reti


    rra
    rrca
    or $08
    reti


    ld a, [de]
    rrca
    ret c

    inc de
    rrca
    ld c, $07
    ret c

    ld c, $08
    db $ed
    reti


    jr @+$11

    or $07
    reti


    jr jr_00c_56ab

    add sp, -$0a
    ld hl, $f607
    rrca
    add sp, $00

jr_00c_56ab:
    reti


    jr @+$09

    push hl
    rst $10
    jr @+$0a

    and $d6
    jr jr_00c_56bd

    rst $20
    reti


    inc de
    ld [$13d7], sp
    rlca

jr_00c_56bd:
    ret c

    ld hl, $d608
    dec d
    ld [$18d7], sp
    rrca
    or $07
    ret c

    ld d, $08
    or $07
    db $fc
    ldh a, [rBGP]
    reti


    ld d, $08
    db $fc
    db $eb
    ld b, a
    ret c

    inc d
    rlca
    or $08
    db $fc
    ldh a, [rBGP]
    reti


    inc d
    rlca
    db $fc
    db $eb
    ld b, a
    ret c

    inc de
    ld [$16f6], sp
    add sp, -$14
    and $31
    ld [$31e5], sp
    rlca
    rst $20
    add sp, -$0a
    add hl, de
    ld [$ece8], sp
    and $2d
    rlca
    push hl
    dec e
    ld [$deee], sp
    ld d, l
    reti


    jr jr_00c_5713

    or $07
    rst $10
    jr @+$0a

    reti


    jr jr_00c_5713

    add sp, -$14
    push hl
    dec e
    ld [$31e7], sp

jr_00c_5713:
    rlca
    and $2d
    ld [$00e8], sp
    rst $20
    reti


    jr jr_00c_5724

    and $d7
    jr @+$0a

    push hl
    push de
    inc de

jr_00c_5724:
    rlca
    rst $20
    reti


    inc de
    ld [$18d8], sp
    rlca
    ret c

    jr jr_00c_5737

    sub $18
    rlca
    or $08
    pop af
    add l
    ld d, l

jr_00c_5737:
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
    rrca
    adc $f0
    rlca
    ld b, a
    ld d, a
    db $d3
    call $cd07
    ld [$e5ed], sp
    call z, $e707
    call z, $e608
    call z, $f607
    ld [$eee7], sp
    ld c, a
    ld d, a
    or $16
    call z, $e508
    call z, $e707
    call z, $e608
    call z, $f607
    ld [$cee7], sp
    rlca
    or $0f
    adc $08
    call $f607
    rrca
    adc $08
    or $0f
    adc $07
    or $08
    call $f607
    rla
    adc $07
    or $0f
    adc $08
    call $f607
    rrca
    adc $08
    or $0f
    adc $07
    or $08
    call $f607
    rrca
    call $f008
    ld [bc], a
    ld [hl], d
    ld d, a
    db $ed
    adc $0f
    or $07
    adc $08
    call $f607
    rrca
    adc $07
    push hl
    call z, $e608
    call z, $e707
    adc $08
    call z, $cd07
    ld [$08cc], sp
    call z, $f60f
    rlca
    call $f608
    rlca
    adc $08
    call $f607
    ld [$07ce], sp
    call $f608
    ld d, $e6
    call z, $e508
    call z, $ce07
    ld [$cce6], sp
    rlca
    push hl
    call z, $ee08
    ld [hl], d
    ld d, a
    adc $0f
    or $07
    call z, $ce08
    rlca
    push hl
    call z, $e708
    call z, $e607
    call z, $e708
    adc $07
    and $cc
    ld [$cce5], sp
    rlca
    rst $20
    adc $08
    call $cd07
    ld [$07cc], sp
    or $08
    pop af
    scf
    ld d, a
    pop hl
    ld b, $a0
    nop
    db $10
    ld bc, $0060
    pop de
    ld bc, $01a1
    add b
    nop
    db $10
    ld bc, $0239
    ld h, b
    nop
    and c
    ld b, $70
    nop
    ld b, b
    ld [bc], a
    stop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    ld a, [hl+]
    ld e, b
    nop
    nop
    ld c, d
    ld e, b
    ld bc, $4301
    ld e, c
    ld [bc], a
    ld [bc], a
    inc [hl]
    ld e, d
    inc bc
    inc bc
    jr jr_00c_58a5

    rst $38
    db $fc
    ld b, $5d
    ld a, [$5d0a]
    db $ec
    ld b, b
    and $f9
    dec b
    push af
    nop
    ld a, [c]
    ld a, [bc]
    dec e
    ld c, $0e
    rra
    ld c, $0e
    jr nz, @+$10

    ld c, $1f
    ld c, $0e
    dec e
    ld c, $18
    add hl, de
    ld c, $1d
    ld c, $0e
    rra
    ld c, $0e
    jr nz, jr_00c_5880

    ld c, $1f
    ld c, $ed
    ld a, [c]
    dec b
    rra
    jr nz, jr_00c_589c

    dec e
    ld a, [c]
    ld a, [bc]
    jr @+$1b

jr_00c_5880:
    xor $4a
    ld e, b
    ld a, [c]
    dec b
    rra
    jr nz, @+$23

    ld [hl+], a
    db $d3
    inc hl
    ld a, [bc]
    inc h
    inc d
    inc hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld hl, $2014
    ld a, [bc]
    rra
    ld a, [bc]
    ld e, $14
    dec e
    ld a, [bc]

jr_00c_589c:
    inc e
    ld a, [bc]
    dec de
    inc d
    ld a, [c]
    ld a, [bc]
    dec d
    jr jr_00c_58be

jr_00c_58a5:
    ld a, [de]
    ld a, [de]
    dec e
    ld hl, $24d3
    inc d
    ld a, [c]
    ld a, [bc]
    inc hl
    ld hl, $1dd3
    inc d
    ld hl, $f20a
    inc d
    rra
    inc e
    ld a, [de]
    ld a, [c]
    ld a, [bc]
    ld a, [de]
    dec e

jr_00c_58be:
    ld hl, $24d3
    inc d
    inc hl
    ld a, [bc]
    ld hl, $280a
    inc d
    jr z, jr_00c_58d4

    ld a, [c]
    inc d
    ld h, $ed
    inc hl
    ld a, [de]
    ld a, [c]
    ld a, [bc]
    xor $a6

jr_00c_58d4:
    ld e, b
    db $d3
    inc hl
    ld e, $e6
    ld sp, hl
    dec b
    ld a, [c]
    dec b

jr_00c_58dd:
    ld hl, $2122
    ld a, [c]
    rrca
    rra
    ldh a, [rSB]
    reti


    ld e, b
    db $ed
    ld sp, hl
    ld a, [bc]
    ld a, [c]
    inc d
    inc h
    push hl
    xor $d9
    ld e, b
    ld sp, hl
    ld a, [bc]
    ld a, [c]
    inc d
    jr z, jr_00c_58dd

    ld sp, hl
    dec b
    ld a, [c]
    dec b
    ld hl, $2122
    ld a, [c]
    rrca
    rra
    push hl
    ldh a, [rSB]
    rst $30
    ld e, b
    db $fc
    ld c, $5d
    ld a, [$5d12]
    rst $20
    ld a, [c]
    ld a, [bc]
    inc h
    inc hl
    ld [hl+], a
    ld hl, $1f20
    ld e, $1d
    inc e
    dec de
    and $fc
    ld b, $5d
    ld a, [$5d0a]
    ld a, [de]
    ld a, [de]
    dec e
    ld hl, $24d3
    inc d
    ld a, [c]
    ld a, [bc]
    inc hl
    ld hl, $1dd3
    inc d
    ld hl, $f20a
    inc d
    rra
    inc e
    ld a, [c]
    ld a, [bc]
    ld a, [de]
    or $f2
    ld e, $21
    rra
    ld e, $f2
    inc a
    inc e
    pop af
    ld c, d
    ld e, b
    db $fc
    ld b, $5d
    ld a, [$5d0a]
    db $ec
    ld b, b
    push hl
    ld sp, hl
    dec b
    push af
    nop
    ld a, [c]
    ld a, [bc]
    jr jr_00c_5969

    dec d
    ld a, [de]
    dec d
    dec d
    dec de
    dec d
    dec d
    ld a, [de]
    dec d
    dec d
    jr @+$17

    inc de
    inc d
    dec d
    jr @+$17

    dec d
    ld a, [de]
    dec d

jr_00c_5968:
    dec d

jr_00c_5969:
    dec de
    dec d
    dec d
    ld a, [de]
    dec d
    db $ed
    ld a, [c]
    dec b
    ld a, [de]
    dec de
    inc e
    jr jr_00c_5968

jr_00c_5976:
    ld a, [bc]
    inc de
    inc d
    xor $43
    ld e, c
    ld a, [c]

jr_00c_597d:
    dec b
    jr jr_00c_5999

    ld a, [de]
    dec de
    db $d3
    inc e
    ld a, [bc]
    dec e
    inc d
    inc e
    ld a, [bc]
    dec de
    ld a, [bc]
    ld a, [de]
    inc d
    add hl, de
    ld a, [bc]
    jr jr_00c_599b

    rla
    inc d
    ld d, $0a
    dec d
    ld a, [bc]
    inc d
    inc d

jr_00c_5999:
    ld a, [c]
    ld a, [bc]

jr_00c_599b:
    ld c, $0f
    db $10
    ld de, $1511
    jr jr_00c_5976

    inc e
    inc d
    ld a, [c]
    ld a, [bc]
    ld a, [de]
    jr jr_00c_597d

    dec d
    inc d
    jr jr_00c_59b8

    ld a, [c]
    inc d
    rla
    inc de
    ld de, $0af2
    ld de, $1815

jr_00c_59b8:
    db $d3
    inc e
    inc d
    ld a, [de]
    ld a, [bc]
    jr @+$0c

    rra
    inc d
    rra
    ld a, [bc]
    ld a, [c]
    inc d
    dec e
    db $ed
    ld a, [de]
    ld de, $0af2
    xor $9f
    ld e, c
    db $d3
    ld a, [de]
    ld e, $e6
    ld a, [c]
    dec b
    dec e
    rra
    dec e
    ld a, [c]
    rrca
    inc e
    ldh a, [rSB]
    jp nc, $ed59

    ld a, [c]
    inc d
    ld hl, $eee5
    jp nc, $f259

    inc d
    inc h

jr_00c_59e9:
    and $f2
    dec b
    dec e
    rra
    dec e
    ld a, [c]

jr_00c_59f0:
    rrca
    inc e
    push hl
    ldh a, [rSB]
    ld [$fc59], a
    ld c, $5d
    ld a, [$5d12]
    rst $20
    ld a, [c]
    ld a, [bc]
    ld hl, $1f20
    ld e, $1d
    inc e
    dec de
    ld a, [de]
    add hl, de
    jr jr_00c_59f0

    db $fc
    ld b, $5d
    ld a, [$5d0a]
    ld de, $1511
    jr jr_00c_59e9

    inc e
    inc d
    ld a, [c]
    ld a, [bc]
    ld a, [de]
    jr jr_00c_59f0

    dec d
    inc d
    jr @+$0c

    ld a, [c]
    inc d
    rla
    inc de
    ld a, [c]
    ld a, [bc]
    ld de, $f2f6
    ld e, $1a
    jr jr_00c_5a45

    ld a, [c]
    inc a
    dec d
    pop af
    ld b, e
    ld e, c
    rst $18
    or $19
    ld [bc], a
    sbc $ec
    ld [hl+], a
    inc b
    db $dd
    db $ec
    ld sp, $dc04
    db $ec
    dec l
    inc b
    db $db

jr_00c_5a45:
    db $ec
    ld h, $04
    jp c, $1dec

    inc b
    rst $20
    push af
    nop
    add sp, $00
    db $fc
    db $eb
    ld b, a
    ld a, [$47f0]
    ei
    ld a, [bc]

jr_00c_5a59:
    ld c, b

jr_00c_5a5a:
    ld sp, hl
    dec b
    ld a, [c]
    ld a, [bc]
    ret c

    ld a, [de]
    rst $10
    ld a, [de]
    reti


    ld a, [de]
    ret c

    ld a, [de]
    sub $1a
    reti


    ld a, [de]
    ret c

    ld a, [de]
    push de
    ld a, [de]
    reti


    ld a, [de]
    ret c

    ld a, [de]
    sub $1a
    reti


    ld a, [de]
    db $e4
    ld a, [c]
    dec b
    rst $10
    dec e
    rst $10
    dec e
    sub $1a
    sub $1a
    push de
    jr jr_00c_5a59

    jr jr_00c_5a5a

    add hl, de

jr_00c_5a87:
    call nc, $f919
    dec b
    ld a, [c]
    ld a, [bc]
    reti


    ld a, [de]
    ret c

    ld a, [de]
    rst $10
    ld a, [de]
    reti


    ld a, [de]
    ret c

    ld a, [de]
    sub $1a
    reti


    ld a, [de]

jr_00c_5a9b:
    ret c

    ld a, [de]
    push de
    ld a, [de]
    reti


    ld a, [de]
    ret c

    ld a, [de]
    db $ed
    sub $1a
    ld a, [c]
    dec b
    db $e4
    reti


    ld a, [de]
    dec de
    rst $10
    inc e
    rst $10
    jr jr_00c_5a87

    inc de
    sub $13
    push de
    inc d
    push de
    inc d
    xor $34
    ld e, d
    reti


    ld a, [de]
    ld a, [c]
    dec b
    db $e4
    ret c

jr_00c_5ac1:
    jr jr_00c_5a9b

    add hl, de
    ret c

    ld a, [de]
    ret c

    dec de
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    ret c

    inc e
    ld a, [c]
    inc d
    ld sp, hl
    ld a, [bc]
    reti


    dec e
    ld a, [c]
    dec b
    db $e4
    sub $1c
    sub $1c
    push de
    dec de
    push de
    dec de
    ld a, [c]
    inc d
    ld sp, hl
    ld a, [bc]
    ret c

    ld a, [de]
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    sub $19
    rst $10
    jr jr_00c_5ac1

    ret c

    rla
    inc d
    ld a, [c]
    dec b
    db $e4
    rst $10
    ld d, $d7
    ld d, $d6

jr_00c_5af9:
    dec d
    sub $15
    ld a, [c]
    inc d
    ld sp, hl
    ld a, [bc]
    ret c

    inc d
    ld a, [c]
    dec b
    db $e4
    rst $10
    dec d
    rst $10
    dec d
    sub $18
    sub $18
    ret c

    add hl, de
    ret c

    add hl, de
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    reti


    ld a, [de]
    reti


    dec d
    ret c

    ld de, $15d9
    ret c

    jr jr_00c_5af9

    jr @-$25

    rla
    ret c

    dec d
    reti


    ld de, $11d9
    ret c

    dec d
    reti


    inc de
    call nc, $d913
    db $10
    ret c

    db $10
    db $d3
    ld sp, hl
    ld a, [bc]
    reti


    ld a, [de]
    inc d
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    reti


    dec d
    ret c

    ld de, $15d9
    ret c

    jr @-$25

    jr @-$25

    rla
    ret c

    dec d
    reti


    inc e
    reti


    inc e
    ret c

    inc e
    reti


    ld a, [de]
    db $ed
    ld a, [c]
    dec b
    db $e4
    push de
    ld a, [de]
    call nc, $f21a
    ld a, [bc]
    ld sp, hl
    dec b
    reti


    rla
    ret c

    rla
    ld sp, hl
    ld a, [bc]
    reti


    ld a, [de]
    inc d
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    xor $17
    ld e, e
    ld a, [c]
    dec b
    db $e4
    push de
    ld a, [de]
    call nc, $d91a
    db $10
    ret c

    db $10
    ret c

    ld de, $11d8
    ret c

    ld [de], a
    ret c

    ld [de], a
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    reti


    inc de
    ldh a, [rTIMA]
    add [hl]
    ld e, e
    db $ed

jr_00c_5b8d:
    ret c

    inc de
    reti


    inc de
    reti


    inc de
    ldh a, [$03]
    sub c
    ld e, e
    ld a, [c]
    dec b
    db $e4
    rst $10
    inc de
    rst $10
    inc de
    sub $10
    sub $10
    push de
    ld de, $11d5
    call nc, $d412

jr_00c_5ba9:
    ld [de], a
    ld a, [c]

jr_00c_5bab:
    ld a, [bc]
    ld sp, hl
    dec b
    xor $86
    ld e, e
    ret c

    jr jr_00c_5b8d

    rla
    ret c

    ld d, $d9
    dec d
    ret c

    inc d
    reti


    inc de
    ret c

    ld [de], a
    reti


    ld de, $10d8
    reti


    rrca
    reti


    ld a, [de]
    reti


    dec d
    ret c

    ld de, $15d9
    ret c

    jr jr_00c_5ba9

    jr jr_00c_5bab

    rla
    ret c

    dec d
    reti


    ld de, $11d9
    ret c

    dec d
    reti


    inc de
    rst $10
    inc de
    reti


    db $10
    ret c

    db $10
    db $d3
    ld sp, hl
    ld a, [bc]
    reti


    dec d
    inc d
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    ret c

    ld a, [de]
    rst $10
    ld e, $d9
    ld hl, $18d8
    sub $1c
    reti


    rra
    ret c

    rla
    push de
    ld a, [de]
    reti


    ld e, $d8
    dec d
    call nc, $f215
    dec b
    db $e4
    ret c

    add hl, de
    ld a, [de]
    ret c

    inc e
    ret c

    ld hl, $1cd8
    ret c

    inc e
    ret c

    ld hl, $21d8
    pop af
    inc [hl]
    ld e, d
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
    ld a, [bc]
    call $cecc
    call $cecc
    call $cecc
    call $cecc
    ld a, [c]
    dec b
    call z, $cccc
    call z, $cccc
    call z, $f2cc
    ld a, [bc]
    adc $cd
    call z, $02f0
    ld b, b
    ld e, h
    db $ed
    ld a, [c]
    ld a, [bc]
    adc $cd
    call z, $f2ce
    dec b
    call z, $cccc
    call z, $cccc
    xor $28
    ld e, h
    ld a, [c]
    ld a, [bc]
    adc $cd
    adc $f2
    dec b
    call z, $cccc
    call z, $0af2
    adc $cd
    or $f2
    dec b
    call z, $cccc
    call z, $14f2
    call $0af2
    db $ed
    call z, $cdcc
    xor $6a
    ld e, h
    ld a, [c]
    dec b
    call z, $cccc
    call z, $cdcd
    ld a, [c]
    ld a, [bc]
    adc $ce
    call $cdce
    adc $ce
    call $cece
    call $ccce
    adc $cd
    adc $ce
    adc $cd
    adc $cd
    adc $ce
    call $cece
    call $edce
    ld a, [c]
    dec b
    call z, $f2cc
    ld a, [bc]
    adc $cd
    adc $ee
    add l
    ld e, h
    ld a, [c]
    dec b
    call z, $cecc
    call $cdcd
    call $f2cd
    ld a, [bc]
    adc $ce
    adc $ce
    adc $ce
    call $edce
    adc $ce
    adc $ce
    ld a, [c]
    dec b
    call z, $cccc
    call z, $cccc
    call z, $eecc
    cp d
    ld e, h
    call $cdce
    adc $cd
    adc $cd
    adc $ce
    adc $cd
    adc $cd
    adc $ce
    call $cece
    call $ccce
    adc $cd
    adc $cd
    call $cecc
    call $cecc
    call $cecc
    call $cdcc
    ld a, [c]
    dec b
    call z, $cccc
    call z, $cccc
    pop af
    jr @+$5e

    reti


    ld [bc], a
    ldh a, [rP1]
    jr nz, jr_00c_5d0d

    add b

jr_00c_5d0d:
    nop
    xor c
    inc bc
    ret nz

    nop
    jr nz, jr_00c_5d15

    ld h, b

jr_00c_5d15:
    nop
    nop
    nop
    daa
    ld e, l
    ld bc, $4a01
    ld e, l
    ld [bc], a
    ld [bc], a
    ld l, l
    ld e, l
    inc bc
    inc bc
    ret nz

    ld e, l
    rst $38
    db $fc
    or $5d
    ld a, [$5dfd]
    rst $20
    push af
    inc bc
    ld sp, hl
    inc c
    db $ec
    ret nz

    ld hl, sp+$04
    ld e, [hl]
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
    or $5d
    ld a, [$5dfd]
    rst $20
    push af
    inc bc
    ld sp, hl
    inc c
    db $ec
    ret nz

    ld hl, sp+$04
    ld e, [hl]
    jr @+$18

    jr jr_00c_5d66

    or $07
    ld a, [de]
    ld [$2df7], sp
    dec de
    ld c, e

jr_00c_5d66:
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
    db $eb
    ld b, a
    ld a, [$47f0]
    ei
    ld a, [bc]
    ld c, b
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


    jr jr_00c_5dbd

    ldh a, [rSC]
    or l
    ld e, l
    ret c

jr_00c_5dbd:
    jr @+$11

    rst $38
    jp nc, Jump_00c_4271

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
    ld hl, sp+$5d
    ld [hl], c
    ld b, $20
    nop
    rst $38
    rst $38
    ld e, l
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
    ld e, [hl]
    nop
    nop
    inc h
    ld e, [hl]
    ld bc, $b401
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    pop af
    ld e, [hl]
    inc bc
    inc bc
    inc d
    ld e, a
    rst $38
    db $fc
    ld e, $5f
    ld a, [$5f22]
    rst $20
    push af
    inc bc
    db $ec
    add b
    ld hl, sp+$24
    ld e, a
    dec h
    ld bc, $0126
    daa
    ld bc, $04f9
    jr z, jr_00c_5e55

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
    jr z, jr_00c_5e4e

    add hl, hl

jr_00c_5e4e:
    ld bc, $012a
    dec hl
    rrca
    add hl, hl
    inc de

jr_00c_5e55:
    jr z, jr_00c_5e6a

    inc h
    ld bc, $0125
    ld h, $01
    ld h, $19
    inc h
    ld c, $26
    ld c, $f0
    ld bc, $5e32
    rst $30
    ld c, $25

jr_00c_5e6a:
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
    jr z, jr_00c_5ec1

    ld h, $0e
    jr z, @+$10

    rst $30
    ld c, $26
    ld bc, $0127
    jr z, jr_00c_5e96

    add hl, hl

jr_00c_5e96:
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
    ld hl, sp+$33
    ld e, a
    rst $30
    jr c, jr_00c_5ecd

    ld bc, $0122
    inc hl
    ld bc, $6d24
    rst $38
    db $fc
    dec d
    ld e, a
    ld a, [$5f1c]
    push hl
    push af
    inc bc
    ld sp, hl
    ld c, $ec
    ld b, b

jr_00c_5ec1:
    ld hl, sp+$24
    ld e, a
    ld a, [c]
    inc e
    dec d
    jr jr_00c_5ee5

    jr jr_00c_5edb

    inc de
    db $d3

jr_00c_5ecd:
    rla
    ld c, $13
    ld c, $10
    inc e
    and $f0
    ld bc, $5ec4
    ld a, [c]
    inc e
    rst $20

jr_00c_5edb:
    jr jr_00c_5ef2

    ld a, [de]
    rla
    inc e
    jr jr_00c_5ef7

    or $1a
    dec d

jr_00c_5ee5:
    inc d
    rla
    db $d3
    db $e4
    ld hl, sp+$33
    ld e, a
    rst $30
    jr c, jr_00c_5f04

    ld [hl], b
    rst $38
    db $fc

jr_00c_5ef2:
    db $eb
    ld b, a
    ld a, [$47f0]

jr_00c_5ef7:
    rst $20
    ei
    ld a, [bc]
    ld c, b
    dec d
    ld [hl], b
    db $10
    ld [hl], b
    dec d
    ld [hl], b
    db $10
    ld [hl], b
    dec d

jr_00c_5f04:
    jr c, jr_00c_5f1d

    jr c, jr_00c_5f20

    jr c, jr_00c_5f1f

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
    rla
    ld e, a
    ld b, b

jr_00c_5f1d:
    nop
    ld l, e

jr_00c_5f1f:
    inc bc

jr_00c_5f20:
    sub b
    nop
    jr nc, jr_00c_5f24

jr_00c_5f24:
    nop
    ld bc, $0201
    ld bc, $0001
    rst $38
    rst $38
    cp $ff
    rst $38
    add b
    inc h
    ld e, a
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    cp $fd
    cp $00
    add b
    inc sp
    ld e, a
    nop
    nop
    ld d, c
    ld e, a
    ld bc, $1a01
    ld h, b
    ld [bc], a
    ld [bc], a
    bit 4, b
    inc bc
    inc bc
    ld a, [hl-]
    ld h, c
    rst $38
    db $fc
    dec sp
    ld h, c
    ld a, [$6143]
    ld hl, sp+$53
    ld h, c
    pop hl
    rst $20
    db $ec
    ret nz

    push af
    inc b
    ld sp, hl
    inc bc
    or $4b
    rra
    ld [$0824], sp
    ld h, $09
    db $e4
    rst $30
    add hl, de
    dec hl
    ld h, h
    pop hl
    ld sp, hl
    ld b, $f6
    ld c, e
    rra
    ld [$0824], sp
    ld h, $09
    db $e4
    rst $30
    add hl, de
    add hl, hl
    ld h, h
    ldh a, [rSB]
    ld h, b
    ld e, a
    ld sp, hl
    rlca
    or $32
    jr z, jr_00c_5fa2

    inc h
    inc c
    rst $30
    add hl, de
    db $e4
    dec hl
    ld [hl], c
    pop hl
    ld sp, hl
    rlca
    or $32
    add hl, hl
    add hl, de
    ld h, $0c
    rst $30
    add hl, de
    db $e4
    dec hl
    ld e, b
    pop hl
    ld sp, hl
    ld b, $28

jr_00c_5fa2:
    inc c
    add hl, hl
    dec c
    dec hl
    add hl, de
    jr nc, @+$1b

    cpl
    add hl, de
    jr nc, jr_00c_5fb9

    dec hl
    ld h, $30
    add hl, de
    cpl
    add hl, de
    jr nc, jr_00c_5fc1

    db $e4
    dec l
    ccf
    ld sp, hl

jr_00c_5fb9:
    inc b
    ld hl, $2408
    ld [$0928], sp
    inc h

jr_00c_5fc1:
    ld [$0828], sp
    dec l
    add hl, bc
    inc [hl]
    ld [$0830], sp
    dec l
    add hl, bc
    jr z, @+$0a

    inc h
    ld [$0921], sp
    ld hl, $2d10
    ld de, $112f
    ld sp, hl
    ld b, $30
    inc c
    dec hl
    dec c
    dec hl
    ld [hl-], a
    jr z, jr_00c_5fee

    dec hl
    dec c
    add hl, hl
    add hl, de
    jr z, jr_00c_5ff4

    ld h, $26
    inc hl
    add hl, de
    inc h
    add hl, de

jr_00c_5fee:
    ld h, $19
    jr z, @+$1b

    inc h
    inc c

jr_00c_5ff4:
    rst $30
    add hl, de
    db $e4
    ld hl, $e171
    ld sp, hl
    dec b
    rra
    add hl, de
    inc h
    add hl, de
    jr z, jr_00c_601b

    dec hl
    inc c
    dec l
    ld h, $29
    add hl, de
    inc h
    add hl, de
    ld h, $0c
    rst $30
    add hl, de
    db $e4
    inc h
    ccf

jr_00c_6011:
    ld hl, $2332
    ld [hl-], a
    inc h
    ld [hl-], a
    pop af
    ld d, c
    ld e, a
    db $fc

jr_00c_601b:
    ld c, e
    ld h, c
    rst $20
    ld a, [$614f]
    ld sp, hl
    ld b, $ec
    nop
    ld a, [c]
    add hl, de
    and $24
    rst $20
    jr z, jr_00c_6011

    ld h, $e7
    dec hl
    ldh a, [rSB]
    daa
    ld h, b
    and $24
    rst $20
    add hl, hl

jr_00c_6037:
    push hl
    ld h, $e7
    dec hl
    and $24
    rst $20
    add hl, hl
    push hl
    ld h, $ed
    rst $20
    dec hl
    xor $27
    ld h, b
    rst $20
    rra
    and $24

jr_00c_604b:
    rst $20
    dec hl
    push hl
    jr z, jr_00c_6037

    dec hl
    ldh a, [rSB]
    ld c, c
    ld h, b
    and $24
    rst $20
    add hl, hl
    push hl
    ld h, $e7
    dec hl
    ldh a, [rSB]

jr_00c_605f:
    ld d, l
    ld h, b
    and $24
    rst $20
    jr z, jr_00c_604b

    ld h, $e7
    dec hl
    ldh a, [rSB]

jr_00c_606b:
    ld h, c
    ld h, b
    and $21
    rst $20
    inc h
    push hl
    jr z, @-$17

    inc h
    and $2d
    rst $20
    jr z, jr_00c_605f

    inc h
    rst $20
    ld hl, $1fe6
    rst $20
    inc h
    push hl
    jr z, jr_00c_606b

    inc h
    and $20
    rst $20

jr_00c_6088:
    inc hl
    push hl
    ld h, $e7
    inc hl
    jr z, jr_00c_60b8

    dec hl
    db $d3
    jr z, jr_00c_609f

    db $e4
    inc h
    ld e, b
    ld sp, hl
    ld b, $1f
    inc c
    inc h
    dec c
    inc h
    inc c
    rra

jr_00c_609f:
    dec c
    inc h
    inc c
    jr z, jr_00c_60b1

    dec hl
    ld [hl-], a
    inc h
    inc c
    ld hl, $240d

jr_00c_60ab:
    inc c
    add hl, hl
    dec c
    dec l
    ld [hl-], a
    dec l

jr_00c_60b1:
    inc c
    jr z, jr_00c_60c1

    inc h
    add hl, de
    add hl, hl
    inc c

jr_00c_60b8:
    inc h
    dec c
    ld hl, $2b19
    inc c
    ld h, $0d
    inc hl

jr_00c_60c1:
    add hl, de
    inc l
    inc c
    daa
    dec c
    inc h
    add hl, de
    pop af
    ld a, [de]
    ld h, b
    db $fc
    db $eb
    ld b, a
    ld a, [$47f0]
    rst $20
    ei
    ld a, [bc]
    ld c, b
    ld sp, hl
    ld h, h
    jr jr_00c_6088

    ld sp, hl
    inc c
    jr jr_00c_60f6

    ldh a, [rSC]
    push de
    ld h, b
    jr jr_00c_60ab

    ld sp, hl
    inc c
    jr jr_00c_6132

    jr jr_00c_6102

    db $ed
    ld sp, hl
    add hl, de
    jr @+$66

    ldh a, [rSB]
    db $e3
    ld h, b
    xor $e3
    ld h, b
    ld sp, hl

jr_00c_60f6:
    inc c
    inc e
    ld c, e
    inc e
    add hl, de
    ld sp, hl
    inc c
    dec e
    ld c, e
    dec e
    add hl, de
    ld sp, hl

jr_00c_6102:
    inc c
    ld e, $4b
    ld e, $19
    ld sp, hl
    add hl, de
    rra
    ld [hl-], a
    jr jr_00c_613f

    jr nz, jr_00c_6141

    inc e
    ld [hl-], a
    ld sp, hl
    inc c
    ld hl, $2319
    add hl, de
    inc h
    add hl, de
    ld hl, $1d0c
    ld h, $18
    add hl, de
    dec e
    add hl, de
    rra
    inc c
    rra
    dec c
    rra
    ld c, e
    rra
    inc c
    rra
    dec c
    rra
    ld h, h
    ld sp, hl
    add hl, de
    dec e
    ld [hl-], a
    rra

jr_00c_6132:
    ld [hl-], a
    ld hl, $2232
    ld [hl-], a
    pop af
    bit 4, b
    rst $38
    ld l, c
    inc b
    pop bc
    inc b

jr_00c_613f:
    sub b
    ld [hl-], a

jr_00c_6141:
    add b
    nop
    db $10
    inc bc
    ld b, b
    inc b
    jr nz, jr_00c_6162

    jr nc, jr_00c_614b

jr_00c_614b:
    pop de
    nop
    ld [hl], c
    nop
    db $10
    ld bc, $0030
    nop
    ld bc, $0302
    ld [bc], a
    ld bc, $ff00
    cp $fd
    cp $ff
    add b
    ld d, e
    ld h, c

jr_00c_6162:
    nop
    nop
    ld [hl], e
    ld h, c
    ld bc, $2d01
    ld h, d
    ld [bc], a
    ld [bc], a
    ld d, a
    ld h, e
    inc bc
    inc bc
    sbc l
    ld h, h
    rst $38
    db $fc
    and l
    ld h, l
    ld a, [$65ab]
    ld hl, sp-$3f
    ld h, l
    rst $20
    db $ec
    nop
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    inc de
    jr jr_00c_61a1

    rra
    dec e
    ld a, [de]
    ld d, $1a
    inc de
    jr jr_00c_61a9

    rra
    dec e
    ld a, [de]
    ld d, $22
    ldh a, [rSB]
    add e
    ld h, c
    db $fc
    sbc l
    ld h, l
    ld a, [$65a1]
    db $ec
    ret nz

    db $e4
    db $d3

jr_00c_61a1:
    rst $30
    jr z, @+$2d

    inc a
    ld sp, hl
    dec b
    ld l, $0a

jr_00c_61a9:
    add hl, hl
    ld d, b
    pop hl
    ld sp, hl
    dec b
    dec hl
    ld a, [bc]
    ld sp, hl
    ld a, [bc]
    ld a, [c]
    inc d
    inc l
    dec hl
    daa
    inc h
    ld a, [c]
    ld e, $2b
    add hl, hl
    db $ed
    ld a, [c]
    ld a, [bc]
    daa
    add hl, hl
    xor $97
    ld h, c
    db $d3
    ld [hl+], a
    inc d
    inc h
    ld e, $2b
    ld e, $22
    inc d
    inc h
    ld e, $2b
    ld e, $22
    inc d
    inc h
    ld e, $2b
    ld e, $22
    ld e, $f2
    ld a, [bc]
    ld sp, hl
    dec b
    dec e
    rra
    ld [hl+], a
    inc h
    ld h, $27
    add hl, hl
    ldh a, [rSB]
    sub a
    ld h, c
    db $d3
    rra
    ld e, $1d
    ld e, $22
    inc d
    ldh a, [rDIV]
    add sp, $61
    rra
    ld e, $1d
    inc d
    rra
    ld a, [bc]
    jr nz, jr_00c_6205

    ld [hl+], a
    ld a, [bc]
    rst $30
    ld a, b
    inc h
    sub [hl]
    dec e
    ld a, [bc]
    inc e
    and b

jr_00c_6205:
    pop hl
    rst $28
    ld bc, $6173
    db $fc
    and l
    ld h, l
    ld a, [$65ab]
    rst $20
    db $ec
    nop
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    inc de
    jr jr_00c_6235

    rra
    dec e
    ld a, [de]
    ld d, $1a
    inc de
    jr @+$1d

    rra
    dec e
    ld a, [de]
    ld d, $ed
    ld [hl+], a
    xor $17
    ld h, d
    jr @+$01

    db $fc
    xor a
    ld h, l
    db $e4
    push hl
    db $ec
    nop
    ld a, [c]

jr_00c_6235:
    ld a, [bc]
    inc de
    jr jr_00c_6254

    rra
    dec e
    ld a, [de]
    ld d, $1a
    inc de
    jr @+$1d

    rra
    dec e
    ld a, [de]
    ld d, $22
    and $f0
    ld bc, $6236
    db $d3
    push hl
    db $fc
    or e
    ld h, l
    ld a, [$65b9]
    ld sp, hl

jr_00c_6254:
    inc b
    jr jr_00c_6261

    jr jr_00c_625e

    jr jr_00c_6260

    jr jr_00c_6267

    dec de

jr_00c_625e:
    inc d
    ld a, [de]

jr_00c_6260:
    inc d

jr_00c_6261:
    ld a, [c]
    ld a, [bc]
    jr jr_00c_627b

    ld a, [c]
    dec b

jr_00c_6267:
    ld d, $16
    ld d, $16
    ld d, $16
    ld a, [c]
    ld a, [bc]
    ld de, $1613
    ld a, [de]
    inc d
    db $d3
    inc d
    dec b
    inc d
    dec b
    inc d
    ld a, [bc]

jr_00c_627b:
    dec de
    inc d
    ld a, [de]
    inc d
    ld a, [c]
    ld a, [bc]
    jr @-$11

    ld d, $f2
    dec b
    ld d, $16
    ld d, $16
    ld d, $16
    ld a, [c]
    ld a, [bc]
    ld de, $1613
    ld a, [de]
    db $d3
    and $ee
    ld c, l
    ld h, d
    dec e
    ld a, [c]
    dec b
    dec e
    dec e
    ld a, [c]
    ld a, [bc]
    dec e
    dec e
    dec de
    ld a, [de]
    jr jr_00c_62be

    db $d3
    rst $20
    ld d, $0a
    ld d, $05
    ld d, $05
    ld d, $0a
    inc d
    inc d
    inc d
    ld a, [bc]
    dec de
    inc d
    ld d, $0a
    ld d, $05
    ld d, $05
    ld d, $0a
    inc d
    inc d

jr_00c_62be:
    inc d
    ld a, [bc]
    dec de
    inc d
    ld d, $0a
    ld d, $05
    ld d, $05
    ld d, $0a
    ld d, $14
    ld d, $0a
    ld d, $1e
    and $f2
    ld a, [bc]
    ld de, $1613
    jr jr_00c_62f2

    dec de
    dec e
    push hl
    db $d3
    ldh a, [rSB]
    ld c, l
    ld h, d
    ld a, [c]
    ld a, [bc]
    ld sp, hl
    dec b
    rst $20
    add hl, de
    dec e
    jr nz, jr_00c_630e

    add hl, hl
    dec h
    jr nz, jr_00c_630a

    add hl, de
    dec e
    jr nz, @+$27

    add hl, hl

jr_00c_62f2:
    dec h
    jr nz, jr_00c_6312

    db $ed
    dec de
    rra
    ld [hl+], a
    dec h
    add hl, hl
    dec h
    ld [hl+], a
    rra
    ld a, [c]
    dec b
    ld sp, hl
    inc bc
    dec hl
    daa
    ld [hl+], a
    rra
    dec hl
    dec h
    jr nz, jr_00c_6327

jr_00c_630a:
    daa
    inc h
    jr nz, @+$1d

jr_00c_630e:
    dec h
    ld [hl+], a
    rra
    ld a, [de]

jr_00c_6312:
    xor $e0
    ld h, d
    jr @+$1f

    rra
    jr @+$1f

    rra
    jr jr_00c_633f

    jr jr_00c_633c

    rra
    jr jr_00c_633f

    rra
    jr @+$24

    jr jr_00c_6343

jr_00c_6327:
    rra
    jr jr_00c_6346

    rra
    jr @+$24

    jr jr_00c_634b

    rra
    jr jr_00c_634e

    rra
    jr jr_00c_6357

    rst $28
    ld bc, $622d
    db $fc
    xor a
    ld h, l

jr_00c_633c:
    db $e4
    push hl
    ld a, [c]

jr_00c_633f:
    ld a, [bc]
    inc de
    jr jr_00c_635e

jr_00c_6343:
    rra
    dec e
    ld a, [de]

jr_00c_6346:
    ld d, $1a
    inc de
    jr jr_00c_6366

jr_00c_634b:
    rra
    dec e
    ld a, [de]

jr_00c_634e:
    ld d, $ed
    ld [hl+], a
    and $ee
    ld b, b
    ld h, e
    jr @+$01

jr_00c_6357:
    rst $18
    or $19
    ld [bc], a
    sbc $ec
    ld [hl+], a

jr_00c_635e:
    inc b
    db $dd
    db $ec
    jr nc, jr_00c_6367

    call c, $2dec

jr_00c_6366:
    inc b

jr_00c_6367:
    db $db
    db $ec
    inc h
    inc b
    rst $20
    push af
    nop
    add sp, $00
    ld sp, hl
    dec b
    db $fc
    push af
    ld b, a
    ei
    ld a, [bc]
    ld c, b
    or $64
    add sp, -$14

jr_00c_637c:
    dec l
    ld a, [bc]
    add sp, $00
    or $1e
    add sp, -$14
    dec e
    ld a, [bc]
    add sp, $00
    or $0a
    ldh a, [rSB]
    ld a, b
    ld h, e
    db $fc
    db $eb
    ld b, a
    ld a, [$47f0]
    reti


    jr @+$16

    ld a, [c]
    ld a, [bc]
    ret c

    jr jr_00c_63b7

    reti


    dec de
    ld a, [de]
    ret c

    ld a, [de]
    jr jr_00c_637c

    jr jr_00c_63bb

    ret c

    ld d, $16
    reti


    ld de, $d813
    ld d, $1a
    db $d3
    reti


    inc d
    inc d
    ld a, [c]
    ld a, [bc]
    ret c

    inc d
    dec de

jr_00c_63b7:
    reti


    dec de
    ld a, [de]
    ret c

jr_00c_63bb:
    ld a, [de]
    inc d
    reti


    inc d
    ld d, $d8
    ld d, $16
    reti


    ld de, $d813
    ld d, $ed
    ld a, [de]
    db $d3
    xor $94
    ld h, e
    ld a, [de]
    db $d3
    reti


    inc d
    inc d
    ld a, [c]
    ld a, [bc]
    ret c

    inc d
    dec de
    reti


    dec de

jr_00c_63da:
    ld a, [de]
    ret c

    ld a, [de]
    inc de
    reti


    inc d
    inc d
    ret c

    inc d
    inc d
    reti


    inc d
    inc d
    ret c

    inc d
    inc d
    db $d3
    reti


    ld d, $14
    ld a, [c]
    ld a, [bc]
    ret c

    ld d, $1b
    reti


    dec de
    ld a, [de]
    ret c

    ld a, [de]
    ld d, $f6
    push de
    ld de, $13d5
    reti


    ld d, $d7
    jr jr_00c_63da

    ld a, [de]
    reti


    dec de
    ret c

    dec e
    db $d3
    ldh a, [rSB]
    sub h
    ld h, e
    reti


    add hl, de
    inc d
    add hl, de
    ld a, [bc]
    reti


    jr jr_00c_6429

    jr jr_00c_6421

    ret c

    ld d, $1e
    reti


    add hl, de
    inc d
    reti


    add hl, de
    ld a, [bc]
    reti


jr_00c_6421:
    jr jr_00c_6437

    ret c

    ld d, $14
    db $ed
    reti


    dec de

jr_00c_6429:
    inc d
    dec de
    ld a, [bc]
    reti


    jr jr_00c_6443

    jr jr_00c_643b

    ret c

    ld d, $1e
    reti


    dec de
    inc d

jr_00c_6437:
    reti


    jr jr_00c_6444

    reti


jr_00c_643b:
    jr @+$16

    ret c

    ld d, $14
    xor $0d
    ld h, h

jr_00c_6443:
    reti


jr_00c_6444:
    jr jr_00c_6464

    reti


jr_00c_6447:
    jr @+$20

jr_00c_6449:
    ret c

jr_00c_644a:
    jr jr_00c_646a

    reti


    jr jr_00c_6463

    reti


    jr @+$0c

    reti


    jr @+$16

    ret c

    dec e
    ld a, [bc]
    rra
    ld a, [bc]
    reti


    jr @+$20

    reti


    jr jr_00c_647e

    ret c

    jr @+$16

jr_00c_6463:
    ld a, [c]

jr_00c_6464:
    ld a, [bc]
    rst $10
    jr @-$25

    jr jr_00c_6443

jr_00c_646a:
    jr jr_00c_6443

    jr jr_00c_6447

    jr jr_00c_6449

    jr jr_00c_644a

    jr jr_00c_648c

    db $d3
    rst $28
    ld bc, $6357
    reti


    jr jr_00c_6490

    or $1e

jr_00c_647e:
    push de
    jr @+$0c

    jr @+$0c

    jr @+$0c

    db $ed
    or $32
    jr jr_00c_6494

    jr jr_00c_6496

jr_00c_648c:
    jr @+$0c

    xor $79

jr_00c_6490:
    ld h, h
    or $32
    ret c

jr_00c_6494:
    jr jr_00c_64a0

jr_00c_6496:
    ret c

    ld d, $0a
    ret c

    jr @+$0c

    rst $38
    jp nc, Jump_00c_4271

jr_00c_64a0:
    ld bc, $a1d1
    inc b
    ld bc, $81d0
    inc bc
    nop
    rst $20
    ld a, [c]
    ld a, [bc]
    cp $41
    ld [bc], a
    ldh a, [$09]
    xor h
    ld h, h
    call z, Call_00c_41fe
    ld [bc], a
    cp $41
    ld [bc], a
    cp $41
    ld [bc], a
    call z, Call_00c_41fe
    ld [bc], a
    cp $41
    ld [bc], a
    ldh a, [$09]
    pop bc
    ld h, h
    call z, Call_00c_41fe
    ld [bc], a
    cp $41
    ld [bc], a
    cp $41
    ld [bc], a
    call z, Call_00c_41fe
    ld [bc], a
    db $d3
    adc $0a
    cp $41
    ld [bc], a
    dec b
    cp $41
    ld [bc], a
    dec b
    call $fe0a
    ld b, c
    ld [bc], a
    dec b
    cp $41
    ld [bc], a
    dec b
    ldh a, [$15]
    rst $10
    ld h, h
    ld a, [c]
    ld a, [bc]
    or $cc
    call z, $ccce
    call z, $cdce
    db $d3
    adc $0a
    cp $41
    ld [bc], a
    dec b
    cp $41
    ld [bc], a
    dec b
    call $fe0a
    ld b, c
    ld [bc], a
    dec b
    cp $41
    ld [bc], a
    dec b
    ldh a, [$15]
    ld a, [$f264]
    ld a, [bc]
    or $cc
    call z, $ccce
    call z, $cdce
    adc $fe
    ld b, c
    ld [bc], a
    cp $41
    ld [bc], a
    adc $fe
    ld b, c
    ld [bc], a
    cp $41
    ld [bc], a
    call Call_00c_41fe
    ld [bc], a
    or $ce
    cp $41
    ld [bc], a
    adc $ce
    cp $41
    ld [bc], a
    call Call_00c_41fe
    ld [bc], a
    ldh a, [rSC]
    inc e
    ld h, l
    adc $fe
    ld b, c
    ld [bc], a
    cp $41
    ld [bc], a
    adc $fe
    ld b, c
    ld [bc], a
    cp $41
    ld [bc], a
    call Call_00c_41fe
    ld [bc], a
    cp $41
    ld [bc], a
    adc $fe
    ld b, c
    ld [bc], a
    adc $ce
    cp $41
    ld [bc], a
    call Call_00c_41fe
    ld [bc], a
    adc $fe
    ld b, c
    ld [bc], a
    cp $41
    ld [bc], a
    adc $fe
    ld b, c
    ld [bc], a
    cp $41
    ld [bc], a
    call Call_00c_41fe
    ld [bc], a
    call z, $cece
    call z, $cece
    call Call_00c_41fe
    ld [bc], a
    rst $28

jr_00c_657f:
    ld bc, $649d
    db $d3
    adc $32
    call z, $f60a
    inc d
    db $ed
    or $14
    call z, $f614
    jr z, jr_00c_657f

    add e
    ld h, l
    or $14
    call z, $f21e
    ld a, [bc]
    call $cdcd
    rst $38
    ld l, l
    ld e, $b0
    nop
    db $10
    inc bc
    ld [hl], b
    nop
    pop de
    inc bc
    and c
    ld bc, $0090
    db $10
    ld [bc], a
    ld h, b
    nop
    db $10
    inc bc
    ld d, b
    nop
    pop bc
    inc bc
    sub c
    inc bc
    add b
    nop
    db $10
    ld b, $40
    inc bc
    jr nc, jr_00c_65c1

    jr nz, jr_00c_65c1

jr_00c_65c1:
    nop
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    cp $fc
    cp $80
    pop bc
    ld h, l
    nop
    nop
    sbc $65
    ld bc, $3401
    ld h, a
    ld [bc], a
    ld [bc], a
    ld [hl], e
    ld l, b
    inc bc
    inc bc
    ld a, e
    ld l, d
    rst $38
    db $fc
    ld a, d
    ld l, e
    ld a, [$6b80]
    rst $20
    db $f4
    db $f4
    db $ec
    nop
    push af
    inc b
    ld hl, sp-$71
    ld l, e
    rst $30
    nop
    ld sp, hl
    inc b
    or $12
    ld hl, $2309
    add hl, bc
    rst $30
    inc b
    inc h
    ld [hl], $f7
    nop
    ld hl, $2309
    add hl, bc
    inc h
    ld [de], a
    ld a, [c]
    add hl, bc
    inc hl
    inc h
    ld h, $24
    inc hl
    ld hl, $211f
    inc hl
    ld hl, $1d1f
    ld a, [c]
    inc h
    rst $30
    add hl, bc
    inc e
    pop hl
    ld a, [c]
    add hl, bc
    dec e
    rra
    ld hl, $1c18
    ld hl, $09f7
    db $d3
    inc h
    inc h
    pop hl
    ld a, [c]
    add hl, bc
    ldh a, [rSB]
    inc e
    ld h, [hl]
    ld h, $1a
    dec e
    ld hl, $04f7
    ld h, $12
    db $d3
    pop hl
    or $04
    dec e
    dec b
    ld hl, $2604
    dec b
    daa
    add hl, bc
    dec de
    add hl, bc
    ld e, $09
    ld hl, $f709
    dec b
    daa
    ld [de], a
    pop hl
    or $04
    ld e, $05

jr_00c_664f:
    ld hl, $2704
    dec b
    ld sp, hl
    inc b
    ld a, [c]
    add hl, bc
    jr z, jr_00c_6682

    dec hl
    add hl, hl
    or $28
    ld h, $24
    or $28
    ld h, $24
    ld h, $24
    inc hl
    jr nz, jr_00c_664f

    ld hl, $2423
    ld h, $d3
    dec h
    ld bc, $0126
    daa
    ld bc, $0628
    ld h, $09
    inc h
    add hl, bc
    inc hl
    ld bc, $0124
    dec h
    ld bc, $0626
    inc h

jr_00c_6682:
    add hl, bc
    inc hl
    add hl, bc
    ld hl, $2201
    ld bc, $0123
    inc h
    ld b, $23
    add hl, bc
    ld hl, $2009
    ld bc, $0121
    ld [hl+], a
    ld bc, $0623
    ld hl, $1f09
    add hl, bc
    dec e
    dec de
    dec h
    ld bc, $0126
    daa
    ld bc, $24f9
    rst $30
    ld c, b
    jr z, jr_00c_671d

    ld sp, hl
    inc b
    pop hl
    ld a, [c]
    add hl, bc
    ldh a, [rSB]
    ld l, b
    ld h, [hl]
    push hl
    dec hl
    ld h, $23
    cpl
    dec hl
    ld h, $32
    cpl
    dec hl
    scf
    ld [hl-], a
    cpl
    dec hl
    add hl, hl
    jr z, @+$28

    db $ed
    db $d3
    rst $20
    inc h
    ld bc, $0125
    ld h, $01
    daa
    ld b, $28
    add hl, bc
    dec l
    ld [de], a
    inc h
    ld bc, $0125
    ld h, $01
    daa
    ld b, $26
    add hl, bc
    inc h
    ld [de], a
    ld a, [c]
    add hl, bc
    ld h, $24
    ld h, $27
    ld h, $24
    db $d3
    ld hl, $f212
    add hl, bc
    and $ee
    or l
    ld h, [hl]
    rst $20
    ld hl, $2d28
    jr z, jr_00c_6726

    jr nc, @+$31

    dec l
    cpl
    jr nc, jr_00c_672f

    inc sp
    ld [hl-], a
    jr nc, @+$31

    inc l
    db $d3
    inc sp
    inc b
    inc [hl]
    dec b
    ld a, [c]
    add hl, bc
    add hl, sp
    inc sp
    ld [hl-], a
    jr nc, jr_00c_6740

    inc [hl]
    jr nc, jr_00c_6743

    jr nc, jr_00c_6745

    db $d3
    jr nc, @+$03

    ld sp, $3201
    ld bc, $0633
    ld [hl-], a

jr_00c_671d:
    add hl, bc
    jr nc, jr_00c_6729

    dec l
    ld [de], a
    ld a, [c]
    add hl, bc
    ld sp, hl
    inc b

jr_00c_6726:
    inc e
    or $f6

jr_00c_6729:
    ldh a, [$03]
    inc h
    ld h, a
    push hl
    inc e

jr_00c_672f:
    or $e6
    inc e
    or $ff
    db $fc
    add h
    ld l, e
    ld a, [$6b8b]
    db $f4
    db $f4
    rst $20
    db $ec
    ld b, b
    push af

jr_00c_6740:
    inc bc
    ld hl, sp-$71

jr_00c_6743:
    ld l, e
    ld sp, hl

jr_00c_6745:
    inc b
    rst $30
    dec b
    inc h
    add hl, bc
    ld hl, $f909
    add hl, bc
    ld a, [c]
    ld [de], a
    inc e
    jr jr_00c_676f

    ld a, [c]
    add hl, bc
    ld sp, hl
    inc b
    dec e
    inc e
    dec e
    rra
    ld hl, $1d1f
    inc e
    db $d3
    ld sp, hl
    add hl, bc
    ld a, [c]
    ld [de], a
    ld a, [de]
    rra
    inc hl
    rra
    ld sp, hl
    inc b
    ld a, [c]
    add hl, bc
    inc h
    ld h, $28

jr_00c_676f:
    ld h, $24
    inc hl
    ld hl, $d31f
    ld sp, hl
    add hl, bc
    ld a, [c]
    ld [de], a
    ld hl, $181d
    dec e
    inc e
    jr jr_00c_67a1

    inc e
    ld a, [c]
    add hl, bc
    ld sp, hl
    inc b
    dec e
    ld a, [de]
    dec e
    ld hl, $2126
    dec e
    ld a, [de]
    ld e, $1b
    ld e, $21
    inc h
    ld hl, $1b1e
    inc e
    ld a, [de]
    inc e
    ld a, [de]
    or $1c
    ld a, [de]
    inc e
    or $1c
    ld a, [de]
    inc e

jr_00c_67a1:
    ld a, [de]
    inc e
    ld a, [de]
    inc e
    db $d3
    ld sp, hl
    add hl, bc
    and $2d
    ld [de], a
    inc [hl]
    ld [de], a
    jr nc, jr_00c_67b8

    ld [hl-], a
    ld [de], a
    ld sp, hl
    inc b
    ld a, [c]
    add hl, bc
    dec l
    or $34

jr_00c_67b8:
    or $30
    ld [hl-], a
    ld [hl-], a
    jr nc, jr_00c_67f0

    ld sp, hl
    add hl, bc
    db $d3
    dec l
    ld [de], a
    inc [hl]
    ld [de], a
    jr nc, jr_00c_67d0

    ld [hl-], a
    ld [de], a
    db $ed
    db $e4
    rst $30
    inc b
    inc [hl]
    ld [de], a
    ld sp, hl

jr_00c_67d0:
    inc b
    rst $30
    dec b
    ld a, [c]
    add hl, bc
    jr nc, jr_00c_6809

    dec l
    jr nc, jr_00c_6809

jr_00c_67da:
    jr nc, jr_00c_680e

    db $d3
    xor $a6
    ld h, a
    db $e4
    rst $30
    inc b
    scf
    ld [de], a
    ld sp, hl
    inc b
    rst $30
    dec b
    ld a, [c]
    add hl, bc
    dec [hl]
    inc [hl]
    ld [hl-], a
    dec [hl]
    inc [hl]

jr_00c_67f0:
    ld [hl-], a
    jr nc, jr_00c_67da

    dec hl
    ld [hl-], a
    scf
    ld [hl-], a
    dec hl
    add hl, sp

jr_00c_67f9:
    ld [hl-], a
    dec hl
    scf
    ld [hl-], a
    dec hl
    add hl, sp
    cpl
    dec l
    dec hl
    add hl, hl
    db $ed
    db $d3
    add hl, hl
    ld bc, $012a

jr_00c_6809:
    dec hl
    ld bc, $062c
    dec l

jr_00c_680e:
    add hl, bc
    jr nc, jr_00c_6823

    jr z, jr_00c_6814

    add hl, hl

jr_00c_6814:
    ld bc, $012a
    dec hl
    ld b, $2a
    add hl, bc
    jr z, jr_00c_682f

    ld a, [c]

jr_00c_681e:
    add hl, bc
    ld a, [hl+]
    jr z, jr_00c_684c

    dec hl

jr_00c_6823:
    ld a, [hl+]
    jr z, jr_00c_67f9

    inc h
    ld [de], a
    ld a, [c]
    add hl, bc
    xor $f2
    ld h, a
    rst $20
    inc h

jr_00c_682f:
    ld hl, $211c
    inc h
    dec l
    inc e
    ld hl, $2326
    jr nz, jr_00c_685d

    ld h, $23
    jr nz, jr_00c_6861

    jr z, jr_00c_6864

    rra
    inc h
    jr z, jr_00c_6868

    rra
    inc h
    ld e, $21
    inc h
    jr z, jr_00c_681e

    add hl, sp

jr_00c_684c:
    inc b
    inc [hl]
    dec b
    jr nc, jr_00c_6855

    dec l
    dec b
    jr nc, jr_00c_6859

jr_00c_6855:
    dec l
    dec b
    ld a, [hl+]
    inc b

jr_00c_6859:
    ld h, $05
    db $fc
    ld a, d

jr_00c_685d:
    ld l, e
    ld a, [$6b80]

jr_00c_6861:
    ld a, [c]
    add hl, bc
    ld sp, hl

jr_00c_6864:
    inc b
    inc hl
    or $f6

jr_00c_6868:
    ldh a, [$03]
    ld h, c
    ld l, b
    and $23
    or $e5
    inc hl
    or $ff
    rst $18
    or $19
    ld [bc], a
    sbc $f6
    ld [hl+], a
    inc bc
    rst $20
    push af
    nop
    add sp, $00
    db $fc
    db $eb
    ld b, a
    ld a, [$47f0]
    ei
    ld a, [bc]
    ld c, b
    ld sp, hl
    inc h
    reti


    dec d
    ld c, b
    reti


    ld a, [de]
    ld c, b
    reti


    inc de
    ld c, b
    reti


    jr @+$38

    db $e4
    add sp, -$14
    dec e
    ld b, $e8
    nop
    ldh a, [rSC]
    sbc b
    ld l, b
    db $fc
    db $eb
    ld b, a
    reti


    ld de, $d924
    ld de, $e812
    db $ec
    and $1d
    ld b, $e7
    dec e
    ld b, $e5
    dec e
    ld b, $e8
    nop
    rst $20
    db $fc
    db $eb
    ld b, a
    reti


    dec d
    inc h
    reti


    dec d
    ld [de], a
    add sp, -$14
    and $1d
    ld b, $e7
    dec e
    ld b, $e5
    dec e
    ld b, $e8
    nop
    rst $20
    db $fc
    db $eb
    ld b, a
    reti


    ld c, $12
    reti


    ld c, $12
    ret c

    ld c, $06
    ldh a, [rSC]
    reti


    ld l, b
    add sp, -$14
    and $1d
    ld b, $e7
    dec e
    ld b, $e5
    dec e
    ld b, $e8
    nop
    rst $20
    reti


    rrca
    ld [de], a
    reti


    rrca
    ld [de], a
    ret c

    rrca
    ld b, $f0
    ld [bc], a
    db $f4
    ld l, b
    add sp, -$14
    and $1d
    ld b, $e7
    dec e
    ld b, $e5
    dec e
    ld b, $e8
    nop
    rst $20
    ld a, [c]
    add hl, bc
    ret c

    db $10
    ret c

    ld de, $13d8
    ret c

    ld de, $d8f6
    db $10
    ret c

    ld c, $d8
    inc c
    ldh a, [rSB]
    inc de
    ld l, c
    ret c

    ld c, $d3
    ret c

    inc c
    inc b
    ret c

    inc c
    dec b
    ret c

    dec bc
    add hl, bc
    ret c

    ld [$f209], sp
    ld [de], a
    reti


    dec d
    ret c

    inc de
    reti


    dec d
    ld a, [c]
    add hl, bc
    ret c

    inc de
    dec d
    reti


    dec d
    dec d
    ret c

    inc de
    reti


    inc de
    dec d
    reti


    dec d
    ld a, [c]
    ld [de], a
    ret c

    inc de
    reti


    ld de, $10d8
    reti


    ld de, $09f2
    ret c

    db $10
    ld de, $d9ed
    ld de, $d811
    db $10
    reti


    db $10
    ld de, $10d9
    ret c

    ld de, $f213
    ld [de], a
    xor $2f
    ld l, c
    ld a, [c]
    add hl, bc
    reti


    ld de, $d811
    db $10
    reti


    db $10
    ret c

    ld de, $d9d3
    db $10
    inc b
    db $fc
    ldh a, [rBGP]
    reti


    db $10
    dec b
    db $fc
    db $eb
    ld b, a
    ld sp, hl
    inc b
    ret c

    ld de, $d809
    ld [de], a
    add hl, bc
    db $e4
    ret c

    inc de
    ld [de], a
    reti


    inc de
    add hl, bc
    ret c

    ld c, $12
    reti


    ld c, $09
    ldh a, [rSB]
    add a
    ld l, c
    ret c

    inc de
    add hl, bc
    reti


    inc de
    add hl, bc
    db $ed
    ld a, [c]
    ld [de], a
    ret c

    ld c, $d9
    dec d
    ret c

    inc de
    reti


    dec d
    ld a, [c]
    add hl, bc
    ret c

    inc de
    dec d
    reti


    dec d
    dec d
    ret c

    inc de
    reti


    inc de
    dec d
    reti


    inc de
    ret c

    db $10
    ld de, $eed3
    add a
    ld l, c
    ret c

    inc d
    ld [de], a
    reti


    dec d
    ld [de], a
    ret c

    dec d
    ld [de], a
    reti


    dec d
    add hl, bc
    add sp, -$14
    push hl
    ld sp, $3104
    dec b
    and $2d
    inc b
    dec l
    dec b
    add sp, $00
    push hl
    ret c

    rla
    inc b
    db $fc
    ldh a, [rBGP]
    ret c

    rla
    dec b
    ld sp, hl
    inc b
    rst $20
    or $09
    reti


    rla
    add hl, bc
    db $fc
    db $eb
    ld b, a
    ret c

    rla
    add hl, bc
    reti


    rla
    add hl, bc
    rla
    add hl, bc
    reti


    rla
    add hl, bc
    db $e4
    ret c

    rla
    inc b
    ret c

    rla
    dec b
    reti


    rla
    add hl, bc
    reti


    jr jr_00c_6a17

    ret c

    jr jr_00c_6a1a

    reti


    jr jr_00c_6a14

    add sp, -$14
    push hl
    ld sp, $3104
    dec b
    and $2d

jr_00c_6a14:
    inc b
    dec l
    dec b

jr_00c_6a17:
    add sp, $00
    push hl

jr_00c_6a1a:
    ret c

    ld a, [de]
    inc b
    ret c

    ld a, [de]
    dec b
    ld a, [c]
    add hl, bc
    or $e7
    reti


    ld a, [de]
    ret c

    ld a, [de]
    reti


    ld a, [de]
    ld a, [de]
    reti


    ld a, [de]
    db $d3
    ret c

    ld a, [de]
    inc b
    ret c

    ld a, [de]
    dec b
    ld a, [c]
    add hl, bc
    reti


    ld a, [de]
    ret c

    inc e
    add sp, -$14
    push hl
    ld sp, $00e8
    rst $20
    reti


    inc e
    ret c

    rla
    add sp, -$14
    and $2d
    add sp, $00
    rst $20
    reti


    rla
    reti


    db $10
    add sp, -$14
    push hl
    dec e
    add sp, $00
    rst $20
    reti


    db $10
    add sp, -$14
    db $d3
    push hl
    ld sp, $3104
    dec b
    rst $20
    dec l
    inc b
    dec l
    dec b
    and $1d
    inc b
    dec e
    dec b
    add sp, $00
    rst $20
    ret c

    db $10
    add hl, bc
    reti


    db $10
    add hl, bc
    ret c

    rla
    add hl, bc
    reti


    rla
    add hl, bc
    rst $38
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
    adc $48
    ldh a, [rSC]
    adc e
    ld l, d
    adc $36
    call z, $f006
    ld [bc], a
    sub e
    ld l, d
    adc $24
    adc $12
    and $cc
    ld b, $e7
    call z, $e506
    call z, $e706
    ldh a, [rSB]
    sbc c
    ld l, d
    adc $12
    adc $12
    call $cd06
    ld b, $cd
    ld b, $e6
    call z, $e706
    call z, $e506
    call z, $e706
    ldh a, [rSB]
    xor e
    ld l, d
    ld a, [c]
    add hl, bc
    call $cdcd
    call $cdf6
    call $f0cd
    ld bc, $6ac9
    db $d3
    call $cd09
    inc b
    call $cd05
    add hl, bc
    call $f209
    ld [de], a
    adc $cd
    adc $cd
    adc $d3
    call $ce09
    ld [de], a
    adc $09
    call $f012
    ld [bc], a
    call c, $f26a
    ld [de], a
    adc $cd
    adc $cd
    adc $d3
    call $ce09
    add hl, bc
    call $cd09
    inc b
    call $cd05
    add hl, bc
    call $cd09
    ld [de], a
    adc $09
    ldh a, [$03]
    ld b, $6b
    call $ce09
    add hl, bc
    call $ed12
    ld a, [c]
    ld [de], a
    adc $cd
    adc $cd
    adc $d3
    call $ce09
    ld [de], a
    adc $09
    call $ee12
    ld b, $6b
    adc $12
    call $ce12
    add hl, bc
    push hl
    call z, $cc04
    dec b
    and $f0
    ld bc, $6b2f
    push hl
    call $cd04
    dec b
    ld a, [c]
    add hl, bc
    rst $20
    or $ce
    call $f6ce
    adc $d3
    call $cd04
    dec b
    adc $09
    rst $28
    ld bc, $6b28
    ld a, [c]
    add hl, bc
    call $cce5
    rst $20
    adc $cd
    and $cc
    rst $20
    call $e5cd
    call z, $cee7
    db $d3
    push hl
    call z, $cc04
    dec b
    rst $20
    ldh a, [rSB]
    ld h, h
    ld l, e
    and $cc
    inc b
    call z, $f205
    add hl, bc
    rst $20
    call $cdce
    adc $ff
    xor e
    ld [de], a
    ld sp, hl
    ld b, $d0
    nop
    ld b, b
    inc bc
    add b
    nop
    ld l, c
    inc b
    add b
    nop
    rst $38
    add [hl]
    ld l, e
    jr nc, @+$05

    ld d, b
    nop
    ld bc, $0201
    ld bc, $ff01
    rst $38
    cp $ff
    rst $38
    add b
    adc a
    ld l, e
    nop
    nop
    xor l
    ld l, e
    ld bc, $0401
    ld l, l
    ld [bc], a
    ld [bc], a
    ld [$036d], a
    inc bc
    ld c, $6f
    rst $38
    db $fc
    ld a, e
    ld l, a
    ld a, [$6f82]
    push hl
    db $ec
    nop
    push af
    nop
    ld a, [c]
    dec bc
    or $f8
    xor b
    ld l, a
    pop hl
    ld sp, hl
    dec bc
    rra
    ld [c], a
    db $e4
    inc h
    pop hl
    ld sp, hl
    dec bc
    rra
    db $d3
    jr z, jr_00c_6be2

    ld [c], a
    db $e4
    inc h
    dec bc
    pop hl
    daa
    ld bc, $0128
    add hl, hl
    ld bc, $0bf9
    ld a, [hl+]
    inc de
    inc h
    ld d, $28
    ld bc, $0129
    ld a, [hl+]

jr_00c_6be2:
    ld bc, $132b
    inc h
    ld d, $2a
    ld bc, $012b
    inc l
    ld bc, $132d
    db $e4
    jr z, @+$0d

    inc l
    ld bc, $012d
    ld l, $01
    ld sp, hl
    dec bc
    cpl
    ld [$b6f8], sp
    ld l, a
    rst $30
    dec bc
    dec l
    ld hl, $0bf2
    db $e4
    pop hl
    dec hl
    ld a, [hl+]
    jr z, @-$05

    dec bc
    ld a, [hl+]
    db $e4
    dec hl
    ld sp, hl
    dec bc
    dec l
    db $d3
    db $e4
    db $ed
    daa
    ld bc, $0128
    add hl, hl
    ld bc, $082a
    jr z, jr_00c_6c24

    ld h, $06
    rst $30
    ld b, $f9

jr_00c_6c24:
    dec b
    jr z, jr_00c_6c3d

    push af
    inc b
    xor $b8
    ld l, e
    dec hl
    ld bc, $012c
    dec l
    ld bc, $012e

jr_00c_6c34:
    cpl
    rlca
    dec l
    dec b
    dec hl
    ld b, $2d
    dec b
    dec hl

jr_00c_6c3d:
    ld b, $2a
    dec b
    ld h, $06
    rst $20
    db $ec
    ld b, b
    db $fc
    add [hl]
    ld l, a
    ld a, [$6f8a]
    rst $30
    dec de
    ld sp, hl
    ld d, $2d
    ld b, d
    db $fc
    adc [hl]
    ld l, a
    ld a, [$6f92]
    ld sp, hl
    inc bc
    ld a, [c]
    dec bc
    dec hl
    add hl, hl
    jr z, jr_00c_6c88

    jr z, jr_00c_6c34

    db $fc
    add [hl]
    ld l, a
    ld a, [$6f8a]
    rst $30
    dec bc
    ld sp, hl
    dec bc
    inc h
    ld hl, $26e4
    dec b
    jr z, jr_00c_6c78

    add hl, hl
    dec b
    dec hl
    ld b, $fc
    adc [hl]

jr_00c_6c78:
    ld l, a
    ld a, [$6f92]
    ld sp, hl
    inc bc
    pop hl
    dec l
    ld d, $26
    dec bc
    rst $30
    dec bc
    ld [hl-], a
    ld d, $f2

jr_00c_6c88:
    dec bc
    jr nc, jr_00c_6cb9

    dec l
    dec hl
    dec l
    ld l, $30
    db $e4
    db $d3
    dec l
    dec b
    ld l, $06
    dec l
    dec b
    dec hl
    ld b, $2d
    dec b
    dec hl
    ld b, $29
    dec b
    jr z, jr_00c_6ca8

    ld h, $05
    add hl, hl
    ld b, $2d
    dec b

jr_00c_6ca8:
    add hl, hl
    ld b, $32
    dec b
    dec l
    ld b, $29
    dec b
    ld hl, $f006
    ld bc, $6ca2
    jr z, jr_00c_6cbd

    dec hl

jr_00c_6cb9:
    ld b, $30
    dec b
    dec hl

jr_00c_6cbd:
    ld b, $34
    dec b
    jr nc, jr_00c_6cc8

    dec hl
    dec b
    jr nc, jr_00c_6ccc

    jr z, jr_00c_6ccd

jr_00c_6cc8:
    dec hl
    ld b, $30
    dec b

jr_00c_6ccc:
    dec hl

jr_00c_6ccd:
    ld b, $34
    dec b
    dec [hl]
    ld b, $34
    dec b
    jr nc, jr_00c_6cdc

    db $fc
    add [hl]
    ld l, a
    ld a, [$6f8a]

jr_00c_6cdc:
    rst $30
    ld d, $f9
    ld b, $32
    inc l
    db $fc
    adc [hl]
    ld l, a
    db $e4
    ld h, $05
    dec hl
    ld b, $2d
    dec b
    jr nc, jr_00c_6cf4

    dec hl
    dec b
    dec l
    ld b, $30
    dec b

jr_00c_6cf4:
    ld sp, hl
    ld b, $32
    dec bc
    db $e4
    db $fc
    sub [hl]
    ld l, a
    ld [hl-], a
    dec bc
    db $fc
    sbc h
    ld l, a
    ld [hl-], a
    db $10
    rst $38
    db $fc
    ld a, e
    ld l, a
    ld a, [$6f82]
    and $ec
    nop
    push af
    nop
    ld a, [c]
    dec bc
    or $f8
    xor b
    ld l, a
    pop hl
    ld sp, hl
    dec bc
    inc e
    ld [c], a
    db $e4
    rra
    pop hl
    ld sp, hl
    dec bc
    inc e
    db $d3
    inc h
    ld d, $e2
    db $e4
    rra
    dec bc
    pop hl
    ld hl, $2201
    ld bc, $0123
    ld sp, hl
    dec bc
    inc h
    inc de
    rra
    ld d, $25
    ld bc, $0126
    daa
    ld bc, $1328
    rra
    ld d, $21
    ld bc, $0122
    inc hl
    ld bc, $1324
    db $e4
    inc h
    dec bc
    jr z, jr_00c_6d4c

    add hl, hl

jr_00c_6d4c:
    ld bc, $012a
    ld sp, hl
    dec bc
    dec hl
    ld [$b6f8], sp
    ld l, a
    rst $30
    dec bc
    ld a, [hl+]
    ld hl, $0bf2
    db $e4
    pop hl
    jr z, @+$28

jr_00c_6d60:
    inc h
    ld sp, hl
    dec bc
    ld h, $e4
    jr z, jr_00c_6d60

    dec bc
    ld a, [hl+]
    db $d3
    db $e4
    db $ed
    inc hl
    ld bc, $0124
    dec h
    ld bc, $0826
    inc h
    dec b
    inc hl
    ld b, $f7
    ld b, $f9
    dec b
    inc h
    ld d, $f5
    inc b
    xor $0f
    ld l, l
    daa
    ld bc, $0128
    add hl, hl
    ld bc, $012a
    dec hl
    rlca
    ld a, [hl+]
    dec b
    jr z, jr_00c_6d97

    ld a, [hl+]
    dec b
    jr z, jr_00c_6d9b

    ld h, $05

jr_00c_6d97:
    ld hl, $fc06
    and b

jr_00c_6d9b:
    ld l, a
    ld a, [$6fa4]
    pop hl
    ld a, [c]
    dec bc
    ld sp, hl
    dec b
    push hl
    dec e
    ld a, [de]
    ld d, $e6
    dec e
    ld a, [de]
    ld d, $e5
    dec e
    ld a, [de]
    and $1f
    inc e
    jr @-$19

    rra
    inc e
    jr @-$18

    rra
    inc e
    ldh a, [rSC]
    and h
    ld l, l
    push hl
    ld a, [de]
    rra
    ld hl, $e61f
    db $fc
    adc [hl]
    ld l, a
    ld a, [$6f8a]
    db $d3
    db $e4
    dec d
    dec b
    ld a, [de]
    ld b, $1c
    dec b
    rra
    ld b, $1a
    dec b
    inc e
    ld b, $1f
    dec b
    ld sp, hl
    ld b, $21
    dec bc
    db $e4
    db $fc
    sub [hl]
    ld l, a
    ld hl, $fc0b
    sbc h
    ld l, a
    ld hl, $ff10
    rst $18
    or $19
    ld [bc], a
    sbc $f6
    ld [hl+], a
    inc bc
    rst $20
    push af
    nop
    add sp, $00
    db $fc
    db $eb
    ld b, a
    ld a, [$47f0]
    ei
    ld a, [bc]
    ld c, b
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    reti


    add hl, bc
    db $fc
    db $eb
    ld b, a
    add hl, bc
    ret c

    dec d
    reti


    db $10
    db $d3
    reti


    add hl, bc
    ld d, $d8
    dec d
    dec bc
    reti


    add hl, bc
    ld d, $f2
    dec bc
    reti


    db $10
    ret c

    dec d
    add hl, bc
    reti


    inc de
    db $ed
    reti


    ld [de], a
    ret c

    db $10
    db $e4
    reti


    add hl, bc
    db $fc
    ldh a, [rBGP]
    reti


    add hl, bc
    db $fc
    db $eb
    ld b, a
    ld sp, hl
    dec b
    xor $09
    ld l, [hl]
    db $d3
    db $e4
    reti


    ld [de], a
    dec b
    db $fc
    ldh a, [rBGP]
    reti


    ld [de], a
    ld b, $fc
    db $eb
    ld b, a
    ld sp, hl
    dec b
    ld a, [c]
    dec bc
    ret c

    db $10
    db $e4
    reti


    add hl, bc
    db $fc
    ldh a, [rBGP]
    ldh a, [rSB]
    nop
    ld l, [hl]
    db $fc
    db $eb
    ld b, a
    ld sp, hl
    dec b
    ret c

    ld a, [bc]
    db $fc
    db $eb
    ld b, a
    reti


    ld a, [bc]
    ret c

    ld d, $d9
    ld de, $0ed8
    reti


    ld de, $16d8
    db $e4
    reti


    inc c
    db $fc
    ldh a, [rBGP]
    ret c

    inc c
    db $fc
    db $eb
    ld b, a
    ld sp, hl
    dec b
    reti


    inc de
    ret c

    jr @-$11

    reti


    inc de
    ret c

    inc c
    reti


    rlca
    ret c

    add hl, bc
    db $e4
    reti


    ld a, [bc]
    db $fc
    ldh a, [rBGP]
    xor $57
    ld l, [hl]
    db $d3
    db $e4
    ret c

    inc de
    dec b
    db $fc
    ldh a, [rBGP]
    ret c

    inc de
    ld b, $fc
    db $eb
    ld b, a
    reti


    inc c
    dec b
    db $fc
    ldh a, [rBGP]

jr_00c_6ea1:
    ret c

    inc c
    ld b, $fc
    db $eb
    ld b, a
    ld sp, hl
    dec b
    reti


    rlca
    dec bc
    db $e4
    ret c

    add hl, bc
    dec b
    db $fc
    ldh a, [rBGP]
    ret c

    add hl, bc
    ld b, $fc
    db $eb
    ld b, a
    ld a, [c]
    dec bc
    reti


    ld a, [bc]
    db $fc
    ldh a, [rBGP]
    xor $57
    ld l, [hl]
    reti


    inc de
    ret c

    jr jr_00c_6ea1

    inc de
    ret c

    inc c
    db $e4
    reti


    ld c, $fc
    ldh a, [rBGP]
    ret c

    ld c, $fc
    db $eb
    ld b, a
    ld sp, hl
    dec b
    reti


    dec d
    db $d3
    db $e4
    ret c

    ld a, [de]
    dec b
    db $fc
    ldh a, [rBGP]
    ret c

    ld a, [de]
    ld b, $fc
    db $eb
    ld b, a
    ld sp, hl
    dec b
    reti


    dec d
    dec bc
    db $e4
    and $d8
    ld c, $05
    rst $20
    ret c

    inc de
    ld b, $e5
    reti


    dec d
    dec b
    rst $20
    reti


    jr jr_00c_6f04

    ret c

    inc de
    dec b
    and $d8
    dec d

jr_00c_6f04:
    ld b, $e7
    ret c

    jr jr_00c_6f0e

    push hl
    ret c

    ld a, [de]
    ld b, $ff

jr_00c_6f0e:
    jp nc, $2661

    nop
    pop de
    pop hl
    inc b
    ld bc, $e4e7
    push af
    nop
    ld a, [c]
    dec bc
    adc $eb
    call $cece
    db $eb
    call $ebce
    adc $cd
    db $eb
    adc $ed
    adc $cd
    adc $ee
    ld a, [de]
    ld l, a
    db $d3
    adc $05
    adc $06
    ld a, [c]
    dec bc
    call $f0ce
    ld bc, $6f1a
    call $f0ce
    inc c
    dec a
    ld l, a
    call $cdd3
    dec b
    call $ce06
    dec b
    call $ce06
    dec bc
    call $cd05
    ld b, $f2
    dec bc
    adc $cd
    adc $f0
    ld [$6f56], sp
    db $d3
    call $cd05
    ld b, $ce
    dec bc
    and $cd
    dec b
    rst $20
    call $e506
    adc $05
    rst $20
    adc $06
    call $e605
    call $e706
    call $e505
    call $ff16
    ld a, c
    dec b
    ret nc

    nop
    rst $38
    ld a, l
    ld l, a
    jr nz, jr_00c_6f87

    ld [hl], b
    nop
    ld l, l

jr_00c_6f87:
    ld e, $b0
    nop
    jr nz, jr_00c_6f8f

    ld h, b
    nop
    sbc c

jr_00c_6f8f:
    inc bc
    or b
    nop
    jr nz, jr_00c_6f95

    add b

jr_00c_6f95:
    nop
    ld c, c
    ld [bc], a
    ld h, b
    dec b
    jr nz, jr_00c_6f9c

jr_00c_6f9c:
    jr nc, jr_00c_6fa3

    stop
    ret nz

    inc bc
    ld d, b

jr_00c_6fa3:
    nop
    and b
    ld [bc], a
    jr nc, jr_00c_6fa8

jr_00c_6fa8:
    ld bc, $ff02
    add b
    xor b
    ld l, a
    nop
    ld bc, $0102
    nop
    rst $38
    cp $ff
    nop
    ld [bc], a
    inc b

jr_00c_6fb9:
    ld [bc], a
    nop
    cp $fc
    cp $80
    or [hl]
    ld l, a
    dec b
    ld bc, $6fc7
    rst $38
    rst $38
    rst $20
    cp $e4
    add sp, -$08
    db $ec
    add b
    inc sp
    jr z, jr_00c_6fb9

    ld b, $27
    inc d
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    db $db
    ld l, a
    and b
    nop
    rst $38
    ldh [$6f], a
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    push hl
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
    db $f4
    ld l, a
    dec b
    ld bc, $7009
    rst $38
    rst $38
    rst $20
    db $ec
    add b
    add sp, $14
    cp $e3
    inc h
    ld b, $fe
    ld b, e
    inc h
    add hl, bc
    add sp, $00
    ldh a, [$0b]
    add hl, bc
    ld [hl], b
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld hl, $a070
    nop
    rst $38
    ld h, $70
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    dec hl
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
    ld a, [hl-]
    ld [hl], b
    inc b
    inc bc
    ld d, c
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $b4
    ld d, b
    inc c
    cp $f7
    ld h, b
    ld e, d
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld e, l
    ld [hl], b
    and b
    nop
    rst $38
    ld h, d
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
    ld h, a
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
    db $76
    ld [hl], b
    dec b
    ld bc, $708b
    rst $38
    rst $38
    cp $c1
    rst $20
    add sp, -$14
    db $ec
    ret nz

    inc h
    inc b
    cp $f5
    jr nc, jr_00c_70d4

    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    sbc a
    ld [hl], b
    and b
    nop
    rst $38
    and h
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
    xor c
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
    cp b
    ld [hl], b
    ld b, $03
    rst $08
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $e2
    add sp, $14

jr_00c_70d4:
    jr nc, jr_00c_70db

    add sp, $00
    cp $d7
    ld [hl], b

jr_00c_70db:
    ld a, [bc]
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    rst $18
    ld [hl], b
    and b
    nop
    rst $38
    db $e4
    ld [hl], b
    nop
    inc b
    ld [$0004], sp
    db $fc
    ld hl, sp-$04
    add b
    jp hl


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
    db $f4
    ld [hl], b
    inc b
    ld bc, $7109
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
    add hl, bc
    ld [hl], c
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    dec e
    ld [hl], c
    and b
    nop
    rst $38
    ld [hl+], a
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
    daa
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
    ld [hl], $71
    rlca
    inc bc
    ld c, l
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
    ld d, a
    ld [hl], c
    and b
    nop
    rst $38
    ld e, h
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
    ld h, c
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
    ld [hl], b
    ld [hl], c
    rlca
    ld bc, $7185
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
    sub l
    ld [hl], c
    and b
    nop
    rst $38
    sbc d
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
    sbc a
    ld [hl], c
    nop
    inc b
    ld [$080a], sp
    inc b

jr_00c_71b4:
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    xor [hl]
    ld [hl], c
    dec b
    ld bc, $71c2
    rst $38
    rst $20
    cp $b7
    add sp, $15
    db $ec
    add b
    rrca
    jr jr_00c_71b4

    nop
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    jp nc, $a071

    nop
    rst $38
    rst $10
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
    call c, $0071
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    db $eb
    ld [hl], c
    inc b
    ld bc, $7200
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
    ld c, $72
    and b
    nop
    rst $38
    inc de
    ld [hl], d
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a

jr_00c_721e:
    nop
    cp $fc
    ld a, [$fefc]
    add b
    jr jr_00c_7299

    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    daa
    ld [hl], d
    inc b
    ld bc, $723f
    ld b, $03
    ld c, [hl]
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
    jr jr_00c_721e

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
    ld e, c
    ld [hl], d
    and b
    nop
    rst $38
    ld e, [hl]
    ld [hl], d
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop

jr_00c_726a:
    cp $fc
    ld a, [$fefc]
    add b
    ld h, e
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
    ld [hl], d
    ld [hl], d
    inc b
    ld bc, $728b
    dec b
    inc bc
    sbc e
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
    jr nc, jr_00c_726a

    add sp, $00

jr_00c_7299:
    rst $38
    rst $38
    rst $20
    ld a, [c]
    inc b
    cp $a0
    jr nc, jr_00c_72d2

    db $d3
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    and [hl]
    ld [hl], d
    and b
    nop
    rst $38
    xor e
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
    or b
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
    cp a
    ld [hl], d
    inc b
    ld bc, $72d4

jr_00c_72d2:
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
    call nc, $ff72
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld [$a072], a
    nop
    rst $38
    rst $28
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
    db $f4
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
    inc bc
    ld [hl], e
    ld b, $01
    jr jr_00c_7389

    rst $38
    rst $38
    rst $20
    cp $b4
    add sp, -$03
    ld a, [c]
    ld [$40ec], sp
    ld [c], a
    ld hl, sp+$43
    ld [hl], e
    inc a
    ld a, [hl-]
    jr c, jr_00c_735f

    inc [hl]
    ld [hl-], a
    jr nc, @+$30

    inc l
    ld a, [hl+]
    jr z, jr_00c_7357

    inc h
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    add hl, sp
    ld [hl], e
    and b
    nop
    rst $38
    ld a, $73
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld b, e
    ld [hl], e
    nop
    inc b
    ld [$080a], sp

jr_00c_7357:
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b

jr_00c_735f:
    ld d, d
    ld [hl], e
    inc b
    inc bc
    ld l, c
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $e0
    add sp, -$01
    jr nc, jr_00c_737a

    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld [hl], e
    ld [hl], e
    and b
    nop

jr_00c_737a:
    rst $38
    ld a, b
    ld [hl], e
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]

jr_00c_7389:
    add b
    ld a, l
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
    adc h
    ld [hl], e
    inc b
    ld bc, $73a1
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
    or l
    ld [hl], e
    and b
    nop
    rst $38
    cp d
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
    cp a
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
    adc $73
    dec b
    ld bc, $73e7
    inc b
    inc bc
    db $fc
    ld [hl], e
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
    jr nc, jr_00c_740d

    jr nc, jr_00c_740f

    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld b, $74
    and b
    nop

jr_00c_740d:
    rst $38
    dec bc

jr_00c_740f:
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
    db $10
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
    rra
    ld [hl], h
    inc b
    ld bc, $7434
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
    ld c, b
    ld [hl], h
    and b
    nop
    rst $38
    ld c, l
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
    ld d, d
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
    ld h, c
    ld [hl], h
    dec b
    ld bc, $7476
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
    add [hl]
    ld [hl], h
    and b
    nop
    rst $38
    adc e
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
    sub b
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
    sbc a
    ld [hl], h
    inc b
    inc bc
    or [hl]
    ld [hl], h
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
    add $74
    and b
    nop
    rst $38
    bit 6, h
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ret nc

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
    rst $18
    ld [hl], h
    inc b
    ld bc, $74f4
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
    ld b, $75
    and b
    nop
    rst $38
    dec bc
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
    db $10
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
    rra
    ld [hl], l
    rlca
    ld bc, $7534
    rst $38
    rst $38
    rst $20
    add sp, $03
    cp $c4
    rst $30
    ld [bc], a
    db $ec
    add b
    ld hl, sp+$2e
    ld [hl], l
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
    ld c, [hl]
    ld [hl], l
    and b
    nop
    rst $38
    ld d, e
    ld [hl], l
    ld [bc], a
    ld b, $02
    cp $fa
    cp $80
    ld e, b
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
    ld h, c
    ld [hl], l
    inc b
    inc bc
    ld a, b
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $b3
    add sp, $01
    jr nc, jr_00c_7586

    add sp, $00
    cp $b7
    ld b, b
    inc a
    rst $38

jr_00c_7586:
    pop af
    ld b, $90
    nop
    rst $38
    adc b
    ld [hl], l
    and b
    nop
    rst $38
    adc l
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
    sub d
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
    and c
    ld [hl], l
    inc b
    ld bc, $75b6
    rst $38
    rst $38
    cp $d7
    rst $20
    db $ec
    ret nz

    ld [c], a
    ld hl, sp-$1d
    ld [hl], l
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
    jp z, $a075

    nop
    rst $38
    rst $08
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
    call nc, $0075
    ld a, [bc]
    nop
    or $80
    db $e3
    ld [hl], l
    inc b
    ld [bc], a
    push af
    ld [hl], l
    dec b
    inc bc
    ld [bc], a
    db $76
    rst $38
    rst $38
    rst $38
    rst $20
    cp $20
    ei
    ld a, [bc]
    ld c, b
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
    inc c
    db $76
    and b
    nop
    rst $38
    ld de, $0076
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld d, $76
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    dec h
    db $76
    inc b
    ld bc, $763a
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
    ld d, d
    db $76
    and b
    nop
    rst $38
    ld d, a
    halt
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld e, h
    halt
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld l, e
    db $76
    rlca
    inc bc
    add d
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
    adc [hl]
    db $76
    and b
    nop
    rst $38
    sub e
    halt
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    sbc b
    halt
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    and a
    db $76
    inc b
    nop
    cp a
    db $76
    dec b
    ld bc, $76c7
    rst $38
    cp $e1
    rst $20
    jr nc, @+$09

    jr nc, jr_00c_76de

    rst $38
    cp $e1
    rst $20
    jr z, @+$09

    jr z, jr_00c_76e6

    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    db $d3
    db $76
    and b
    nop
    rst $38
    ret c

    halt

jr_00c_76de:
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc

jr_00c_76e6:
    ld a, [$fefc]
    add b
    db $dd
    halt
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    db $ec
    db $76
    inc b
    ld bc, $7701
    rst $38
    rst $38
    db $fc
    inc de
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
    rla
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
    ld [hl+], a
    ld [hl], a
    ld b, $02
    inc a
    ld [hl], a
    dec b
    inc bc
    ld c, a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $20
    cp $20
    ld [c], a
    ld hl, sp+$6a
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
    ld hl, sp+$6a
    ld [hl], a
    jr nz, jr_00c_7787

    add sp, $00
    pop hl
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld h, b
    ld [hl], a
    and b
    nop
    rst $38
    ld h, l
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
    ld l, d
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
    ld a, c

jr_00c_7787:
    ld [hl], a
    inc b
    inc bc
    sub b
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
    sbc h
    ld [hl], a
    and b
    nop
    rst $38
    and c
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
    and [hl]
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
    or l
    ld [hl], a
    ld b, $00
    call $0777
    ld bc, $77db
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
    call $ff77
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    add sp, $77
    and b
    nop
    rst $38
    db $ed
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
    ld a, [c]
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
    ld bc, $0478
    inc bc
    jr jr_00c_788c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    ld [c], a
    cp $e0
    ld hl, sp+$2e
    ld a, b
    jr nz, jr_00c_782b

    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    inc h
    ld a, b
    and b
    nop

jr_00c_782b:
    rst $38
    add hl, hl
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
    ld l, $78
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    dec a
    ld a, b
    dec b
    inc bc
    ld d, h
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $f3
    add sp, $02
    ld b, b
    rrca
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld e, [hl]
    ld a, b
    and b
    nop
    rst $38
    ld h, e
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
    ld l, b
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
    ld [hl], a
    ld a, b
    inc b
    inc bc
    adc [hl]
    ld a, b
    rst $38
    rst $38

jr_00c_788c:
    rst $38
    rst $38
    rst $20
    cp $b3
    ld [hl], b
    inc bc
    add sp, -$01
    cp $c5
    ld b, b
    inc d
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    sbc h
    ld a, b
    and b
    nop
    rst $38
    and c
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
    and [hl]
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
    or l
    ld a, b
    dec b
    ld bc, $78ca
    rst $38
    rst $38
    db $ec
    ret nz

    rst $20
    cp $c4
    add sp, $14
    ld a, [c]
    ld a, [bc]
    ld d, $1d
    jr nz, @+$26

    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    sbc $78
    and b
    nop
    rst $38
    db $e3
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
    add sp, $78
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    rst $30
    ld a, b
    ld b, $01
    inc c
    ld a, c
    rst $38
    rst $38
    rst $20
    cp $e4
    add sp, -$14
    db $ec
    ld b, b
    ld l, $1e
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    inc e
    ld a, c
    and b
    nop
    rst $38
    ld hl, $0079
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    ld h, $79
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    dec [hl]
    ld a, c
    dec b
    inc bc
    ld c, h
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    add sp, $05
    cp $e0
    ld h, b
    rrca
    add sp, $00
    cp $e0
    jr nz, @+$05

    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld e, h
    ld a, c
    and b
    nop
    rst $38
    ld h, c
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
    ld h, [hl]
    ld a, c
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld [hl], l
    ld a, c
    ld b, $01
    adc d
    ld a, c
    rst $38
    rst $38
    rst $20
    db $ec
    ret nz

    cp $d1
    ld b, [hl]
    dec b
    cp $91
    ld b, [hl]
    dec b
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    sbc d
    ld a, c
    and b
    nop
    rst $38
    sbc a
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
    and h
    ld a, c
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    or e
    ld a, c
    ld b, $01
    call z, $0779
    inc bc
    db $db
    ld a, c
    rst $38
    rst $38
    rst $20
    cp $b0
    add sp, $0f
    ld a, [bc]
    ld e, $e8
    ld [c], a
    ld a, [bc]
    ld e, $e8
    nop
    rst $38
    rst $38
    rst $20
    cp $10
    db $10
    ld e, $fe
    rst $20
    ld h, b
    ld e, d
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    rst $20
    ld a, c
    and b
    nop
    rst $38
    db $ec
    ld a, c
    nop
    ld a, [bc]
    nop
    or $80
    pop af
    ld a, c
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld hl, sp+$79
    dec b
    ld bc, $7a0d
    rst $38
    rst $38
    rst $20
    cp $d0
    add sp, $04
    db $ec
    add b
    add hl, bc
    inc a
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    dec e
    ld a, d
    and b
    nop
    rst $38
    ld [hl+], a
    ld a, d
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    daa
    ld a, d
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld [hl], $7a
    ld b, $01
    ld c, e
    ld a, d
    rst $38
    rst $38
    rst $20
    cp $e0
    db $ec
    add b
    add sp, -$04
    ld a, [de]
    inc a
    add sp, $00
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    ld e, e
    ld a, d
    and b
    nop
    rst $38
    ld h, b
    ld a, d
    nop
    dec b
    ld a, [bc]
    dec b
    nop
    ei
    or $fb
    add b
    ld h, l
    ld a, d
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    ld [hl], b
    ld a, d
    ld b, $01
    add l
    ld a, d
    rst $38
    rst $38
    rst $20
    cp $e7
    add sp, -$32
    dec hl
    dec b
    add sp, $14
    jr nc, jr_00c_7a93

    add sp, $00
    scf

jr_00c_7a93:
    inc bc
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    sbc c
    ld a, d
    and b
    nop
    rst $38
    sbc [hl]
    ld a, d
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    and e
    ld a, d
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    or d
    ld a, d
    dec b
    ld bc, $7ac7
    rst $38
    rst $38
    rst $20
    db $ec
    add b
    cp $d4
    ld [c], a
    add sp, $02
    ld hl, sp-$1a
    ld a, d
    ld [de], a
    jr z, @-$1d

    add sp, $00
    rst $38

jr_00c_7ad8:
    rst $38
    rst $38
    pop af
    ld b, $90
    nop
    rst $38
    call c, $a07a
    nop
    rst $38
    pop hl
    ld a, d
    nop
    inc b
    ld b, $04
    nop
    db $fc
    ld a, [$80fc]
    and $7a
    nop
    inc b
    ld [$080a], sp
    inc b
    nop
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$04
    add b
    pop af
    ld a, d
    and b
    adc d
    ld [$607b], sp
    adc d
    ld e, a
    ld a, e
    cp a
    db $10
    jr c, jr_00c_7b34

    jr c, jr_00c_7b36

    jr c, jr_00c_7b38

    rst $38
    jr c, jr_00c_7b3b

    jr c, jr_00c_7b3d

    jr c, jr_00c_7b3f

    jr c, jr_00c_7b41

    cp $38
    jr z, @+$3a

    jr z, jr_00c_7b57

    jr z, @+$3a

    or $5c
    ld h, h
    ld e, h
    ld h, h
    ld a, h
    jr c, jr_00c_7ad8

    nop
    jr nc, @+$3a

    jr z, jr_00c_7b5a

    inc [hl]
    rst $38
    inc e
    inc d
    ld d, $1a

jr_00c_7b34:
    ld c, $0a

jr_00c_7b36:
    ld c, $0a

jr_00c_7b38:
    rst $38
    ld c, $0a

jr_00c_7b3b:
    inc e
    inc d

jr_00c_7b3d:
    ld [hl], h
    ld a, h

jr_00c_7b3f:
    cp b
    ret z

jr_00c_7b41:
    jp c, $c8b8

    ld hl, sp+$70
    nop
    adc e
    nop
    inc a
    ld e, d
    ld h, [hl]
    rst $38
    db $fd
    sbc e
    rst $20
    push hl
    ld [hl], a
    ld [hl], l
    cp e
    call $befa

jr_00c_7b57:
    jp z, $fccc

jr_00c_7b5a:
    ld [hl], b
    nop
    add b
    nop
    nop
    cp a
    rst $38
    cp a
    ret nz

    sbc $a3
    sbc $e7
    rst $38
    cp b
    rst $00
    cp b
    rst $00
    cp b
    rst $00
    cp e
    call nz, $ffff
    db $fc
    add e
    db $fd
    or e
    call z, $ccb3
    rst $38
    or e
    call z, $acd3
    db $d3
    db $ed
    or e
    call z, $ffbf
    cp l
    ld b, e
    ld a, l
    rst $00
    ld a, l
    rst $08
    rst $38
    ld [hl], c
    rst $08
    ld [hl], c
    rst $08
    ld a, a
    rst $38
    pop hl
    rra
    rst $38
    db $ed
    sub a
    db $ed
    sbc a
    pop hl
    rra
    pop hl
    rra
    rst $38
    pop hl
    rra
    db $ed
    sub a
    db $ed
    sbc a
    pop hl
    rra
    rst $38
    ld a, a
    add c
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    db $fc
    ret c

    ccf
    cp h
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
    ld a, a
    add c
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    db $fc
    ret c

    ccf
    cp h
    ld a, a
    ld a, [hl]
    rst $38
    add b
    nop
    add b
    nop
    adc d
    nop
    ld bc, $ff07
    inc e
    dec de
    ld a, b
    ld h, a
    ld hl, sp-$79
    ldh a, [rIF]
    rst $38
    ldh a, [rIF]
    ldh a, [$cf]
    ld a, b
    ld a, a
    ld c, a
    ld [hl], a
    rst $38
    ccf
    inc hl
    dec l
    inc sp
    rla
    add hl, de
    rra
    ld de, $1fff
    ld de, $3729
    inc a
    inc hl
    ld e, [hl]
    ld h, c
    rst $38
    ld a, a
    ld b, c
    ld a, a
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp-$78
    ldh a, [$90]
    and b
    ld h, b
    nop
    add b
    nop
    add b
    nop
    rst $38
    db $fd
    dec b
    rst $30
    rrca
    rst $28
    add hl, de
    ld sp, hl
    rst $30
    and b
    ld e, $00
    add b
    nop
    add b
    nop
    and e
    nop
    add b
    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld sp, hl
    add hl, bc
    rst $38
    ld l, c
    reti


    cp $97
    ld l, a
    sbc $7b
    add [hl]
    rst $38
    ld a, a
    cp $3f
    ld [c], a
    ccf
    ld [c], a
    ei
    add $80
    nop
    cp a
    ld h, b
    sub b
    ldh a, [$88]
    ld hl, sp+$08
    ld hl, sp-$01
    inc b
    db $fc
    db $e4
    inc e
    ld a, [$fe06]
    ld [bc], a
    rst $38
    rst $38
    inc bc
    cp $02
    ld a, [$f406]
    inc c
    rst $38
    call nz, $083c
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [$a0]
    ld h, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $01a0
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    ret nz

    rst $38
    ld [hl], b
    or b
    inc a
    call z, $c23e
    rra

jr_00c_7c7f:
    pop hl
    cp $1f
    pop hl
    ld e, $e6
    jr c, jr_00c_7c7f

    ldh [rIE], a
    ldh [rNR41], a
    ld h, b
    and b
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    sbc $be
    ld sp, hl
    daa
    db $db
    or l
    rst $38
    add c
    rst $38
    db $fd
    inc bc
    cp $02
    cp $02
    ld a, [$8006]
    nop
    xor e
    nop
    ld bc, $0203
    inc bc
    adc d
    inc bc
    ld bc, $8000
    nop
    cp a
    ld sp, $7b4a
    ld b, [hl]
    ld a, a
    ld c, [hl]
    ld [hl], a
    rst $38
    ccf
    inc hl

jr_00c_7cbc:
    db $ed
    di
    or a
    ld a, b
    rst $18
    ldh a, [rIE]
    ld l, $f1
    cpl
    pop de
    ld a, [hl]
    add c
    rst $38
    add b
    rst $38
    cp a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    cp a
    ld sp, $7b4a
    ld b, [hl]
    ld a, a
    adc $f7
    rst $38
    cp a
    and e
    ld l, l
    di
    rst $10
    ret c

    rst $38
    ldh a, [rIE]
    sbc [hl]
    pop af
    sub a
    jp hl


    cp [hl]
    pop bc
    ld a, a
    ld b, b
    rst $38
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    sub e
    nop
    ld b, b
    nop
    jr nz, jr_00c_7cbc

    jr nc, jr_00c_7d37

    jr z, @+$2e

    inc [hl]
    ld d, $1a
    rst $38
    ld [de], a
    ld e, $13
    dec e
    add hl, bc
    rrca
    ld [$fe0f], sp
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $1bbf
    inc h
    ccf
    ld [hl+], a
    ccf
    daa
    ld a, [hl-]
    rst $38
    rra
    ld de, $1916
    dec bc
    inc c
    rla
    jr @+$01

    rra
    db $10
    cpl
    jr nc, jr_00c_7d6b

    jr nz, jr_00c_7d8b

    ld h, e
    rst $38
    ld a, [hl]
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, h

jr_00c_7d37:
    ld b, e
    and e
    nop
    add b
    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld sp, hl
    add hl, bc
    rst $38
    ld l, c
    reti


    cp $97
    ld l, [hl]
    rst $18
    ld_long a, $ffc7
    ld a, $ff
    ld a, $e3
    ld a, [hl]
    jp $07fa


    cp a
    jr jr_00c_7d80

    dec a
    inc hl
    ccf
    inc hl
    ccf
    rst $38
    daa
    add hl, sp
    ld a, a
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    rla
    jr @+$01

    cpl

jr_00c_7d6b:
    jr nc, jr_00c_7dab

    ld hl, $417f
    cp [hl]
    pop bc
    rst $38
    sbc a
    ldh [$87], a
    ld hl, sp+$6f
    ld [hl], b
    ld a, a
    ld b, b
    rst $38
    ld e, a
    ld h, a
    dec sp
    inc l

jr_00c_7d80:
    inc e
    dec de
    inc c
    dec bc
    and b
    rlca
    nop
    add b
    nop
    add b
    nop

jr_00c_7d8b:
    cp a
    ld sp, $7b4a
    ld b, [hl]
    ld a, a
    ld c, [hl]
    ld [hl], a
    rst $38
    ccf
    inc hl
    dec l
    inc sp
    ld [hl], a
    ld a, b
    ld a, a
    ld [hl], b
    rst $38
    sbc [hl]
    pop af
    sub a
    jp hl


    cp [hl]
    pop bc
    ld a, a
    ld b, b
    rst $38
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld a, a

jr_00c_7dab:
    ld b, b
    ld a, a
    ld b, b
    cp a
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    and b
    rst $38
    ldh [rNR41], a
    ld h, b
    and b
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    ret c

    cp b
    db $fc
    inc h
    call c, $feb4
    ld [bc], a
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, [$bf06]
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    and b
    rst $38
    ldh [rNR41], a
    ld h, b
    and b
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    sbc $be
    ld sp, hl
    daa
    db $db
    or l
    rst $38
    ld bc, $fdff
    inc bc
    cp $02
    cp $02
    ld a, [$8006]
    nop
    add e
    nop
    inc b
    ld b, $fe
    add sp, -$08
    ret nc

    jr nc, jr_00c_7e20

    ldh [$c0], a
    add b
    nop
    and e
    nop
    add b
    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    ld l, c
    reti


    cp $9f
    db $76
    reti


    ldh a, [$ef]
    rst $38
    inc hl
    rst $38
    ld a, $fe

jr_00c_7e20:
    ld a, [hl]
    jp nz, $06fa

jr_00c_7e24:
    add b
    nop

jr_00c_7e26:
    cp a
    ld h, b
    ldh a, [$90]
    ld hl, sp-$78
    ld hl, sp+$08
    rst $38
    inc a
    call nz, $f40c
    ld b, $fa
    ld [bc], a
    cp $ff
    inc bc
    rst $38
    ld [bc], a
    cp $06
    ld a, [$e41c]
    cp a
    ret nz

    jr nz, jr_00c_7e24

    jr nz, jr_00c_7e26

    db $10
    ldh a, [rIE]
    or b
    ret nc

    ldh a, [$90]
    or b
    ld d, b
    ld hl, sp+$08
    rst $38
    ld hl, sp+$08
    call c, $fab4
    ld h, $dd
    or e
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    cp $02
    ld_long a, $ff06
    cp $06
    rst $38
    adc c
    ld sp, hl
    sub a
    ld sp, hl
    rst $30
    and b
    ld c, $00
    add b
    nop
    add b
    nop
    cp a
    ld sp, $7b4a
    ld b, [hl]
    ld a, a
    ld c, [hl]
    ld [hl], a
    rst $38
    ccf
    inc hl
    ld l, l
    ld [hl], e
    ld [hl], a
    ld a, b
    rra
    db $10
    rst $38
    ld l, $31
    cpl
    ld sp, $213e
    ld e, a
    ld h, b
    rst $38
    ld e, e
    ld h, h
    ld h, a
    ld a, h
    ld h, a
    ld a, h
    ld a, a
    ld e, b
    cp $5f
    ld h, b
    ccf
    ld l, $1f
    ld de, $801f
    nop
    add b
    nop
    add b
    nop
    cp a
    dec de
    inc h
    ccf
    ld [hl+], a
    ccf
    daa
    ld a, [hl-]
    rst $38
    rra
    ld de, $1916
    dec sp
    inc a
    scf
    jr c, @+$01

    rra
    db $10
    cpl
    jr nc, jr_00c_7efa

    jr nz, jr_00c_7f1b

    ld h, c
    rst $38
    ld a, [hl]
    ld b, c
    ld [hl], h
    ld c, e
    ld a, h
    ld b, a
    ld e, a
    ld h, e
    rst $38
    ccf
    jr nz, jr_00c_7f2a

    ld [hl], b
    ld l, a
    ld e, h
    ld e, a
    ld h, e
    and b
    inc a
    nop
    add b
    nop
    add b
    nop
    cp a
    jr nc, jr_00c_7f23

    ld a, c
    ld c, c
    ld a, c
    ld c, l
    ld [hl], l
    rst $38
    dec a
    dec h
    ccf
    inc hl
    rst $18
    ret nc

    rst $38
    ldh a, [rIE]
    dec l
    inc sp
    ccf
    ld [hl+], a
    ld e, l
    ld h, e
    ld a, a
    ld b, b
    rst $38
    cp a
    ret nz

    sbc a
    ldh [$87], a
    ld hl, sp+$6f
    ld [hl], b

jr_00c_7efa:
    rst $38
    ccf
    jr nz, @+$31

    inc sp
    rla
    inc e
    ld c, $09
    and b
    rrca
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    ld [hl], e
    rst $38
    adc h
    rst $38
    sbc e
    rst $20
    ld e, a
    ld h, b
    ld [hl], $39
    rst $38
    rra
    ld de, $706f

jr_00c_7f1b:
    adc a
    ldh a, [$9f]
    ldh [rIE], a
    cp a
    ret nz

    ld a, a

jr_00c_7f23:
    ld b, b
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    ld e, a

jr_00c_7f2a:
    ld h, b
    ccf
    jr nz, @+$39

    jr c, jr_00c_7f6f

    cpl
    add sp, $2e
    ld [hl-], a
    inc e
    nop
    add b
    nop
    add b
    nop
    cp a
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    and b
    rst $38
    ldh [rNR41], a
    ld h, b
    and b
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    ret c

    cp b
    db $fc
    inc h
    call c, $fcb4
    inc b
    rst $38
    cp $02
    cp $02
    cp $02
    ld a, [$fe06]
    db $fc
    inc b
    db $f4
    inc c
    xor $1a
    cp $80
    nop
    add b
    nop
    add b
    nop
    and e
    nop
    add b
    ret nz

jr_00c_7f6f:
    ld b, b
    rst $38
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    ld l, b
    ret c

    db $fc
    sub h
    ld l, h

jr_00c_7f7f:
    call c, $04fc
    rst $38
    ld a, [hl]
    add d
    cp $82
    cp $82
    ld_long a, $ff06
    db $fc
    inc b
    or $0e
    rst $28
    add hl, de
    ld sp, hl
    rst $30
    and b
    ld e, $00
    add b
    nop
    add b
    nop
    cp a
    ret nz

    jr nz, jr_00c_7f7f

    jr nz, @-$1e

    ld h, b
    and b
    rst $38
    ldh [rNR41], a
    ld h, b
    and b
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    cp b
    ld l, b
    db $fc
    ld b, h
    cp h
    ld h, h
    cp $02
    rst $38
    rst $38
    ld bc, $03fd
    ld sp, hl
    rlca
    ld_long a, $ff06
    db $fc
    inc b
    db $f4
    adc h
    add sp, $58
    ld e, h
    db $e4
    and b
    cp h
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    add b
    rst $38
    ld b, b
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ret c

    cp b
    rst $38
    ld hl, sp+$28
    or [hl]
    sbc $fd
    rlca
    db $fd
    inc bc
    rst $38

jr_00c_7fe4:
    db $fd
    inc bc
    cp $02
    cp $02
    ld a, [$fe06]
    db $fc
    inc b
    db $f4
    inc c
    ret c

    jr c, jr_00c_7fe4

    add sp, -$10
    sub b
    ld h, b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld d, b
    ld b, b
    sub b
    ld b, b
    ret nc

    ld b, b
    db $10
    ld b, c
    ld d, b
    ld b, c
    sub b
    ld b, c
    ret nc

    ld b, c
    db $10
    ld b, d
    ld d, b
    ld b, d
    sub b
    ld b, d
    ret nc

    ld b, d
    db $10
    ld b, e
    ld d, b
    ld b, e
    sub b
    ld b, e
    ret nc

    ld b, e
    db $10
    ld b, h
    ld d, b
    ld b, h
    sub b
    ld b, h
    ret nc

    ld b, h
    db $10
    ld b, l
    ld d, b
    ld b, l
    sub b
    ld b, l
    ret nc

    ld b, l
    db $10
    ld b, [hl]
    ld d, b
    ld b, [hl]
    sub b
    ld b, [hl]
    ret nc

    ld b, [hl]
    db $10
    ld b, a
    ld d, b
    ld b, a
    sub b
    ld b, a
    ret nc

    ld b, a
    db $10
    ld c, b
    ld d, b
    ld c, b
    sub b
    ld c, b
    ret nc

    ld c, b
    db $10
    ld c, c
    ld d, b
    ld c, c
    sub b
    ld c, c
    ret nc

    ld c, c
    db $10
    ld c, d
    inc c
    ld bc, $0480
    ld b, b
    ld bc, $0000
    inc c
    ld bc, $0a00
    ld b, b
    ld [bc], a
    nop
    nop
    ld c, $01
    add b
    dec b
    ld b, b
    inc bc
    nop
    nop
    dec c
    ld bc, $0200
    nop
    ld [bc], a
    nop
    nop
    dec c
    ld bc, $0680
    ld b, b
    inc b
    nop
    nop
    rrca
    ld bc, $0880
    nop
    inc bc
    nop
    nop
    rrca
    ld bc, $0280
    ret nz

    inc b
    nop
    nop
    ld [$0000], sp
    inc d
    add b
    dec b
    nop
    rst $38
    inc bc
    ld bc, $1f80
    nop
    rrca
    nop
    nop
    ld de, $8002
    inc e
    nop
    rrca
    nop
    nop
    ld de, $8002
    rrca
    nop
    dec c
    jr nz, jr_001_40a8

jr_001_40a8:
    ld de, $8002
    add hl, bc
    nop
    dec c
    nop
    nop
    ld de, $8002
    inc b
    nop
    rrca
    jr nz, @+$01

    ld bc, $0001
    dec e
    nop
    inc c
    nop
    rst $38
    ld bc, $8001
    ld hl, $0f00
    nop
    rst $38
    ld [bc], a
    ld bc, $1d80
    nop
    rrca
    nop
    rst $38
    ld [de], a
    ld [bc], a
    nop
    dec bc
    nop
    ld d, $20
    nop
    inc de
    ld bc, $1900
    nop
    inc de
    jr nz, jr_001_40e0

jr_001_40e0:
    inc b
    ld bc, $1b00
    nop
    ld d, $00
    nop
    inc de
    ld bc, $2500
    nop
    inc de
    nop
    nop
    ld [de], a
    ld [bc], a
    add b
    ld sp, $1200
    jr nz, jr_001_40f8

jr_001_40f8:
    inc c
    dec b
    add b
    inc h
    nop
    ld [de], a
    nop
    rst $38
    inc c
    dec b
    add b
    dec hl
    nop
    ld [de], a
    nop
    rst $38
    inc c
    dec b
    add b
    jr c, jr_001_410d

jr_001_410d:
    ld [de], a
    nop
    rst $38
    inc d
    ld bc, $2c80
    nop
    ld a, [de]
    nop
    nop
    dec d
    ld bc, $2180
    nop
    dec e
    nop
    nop
    dec d
    ld bc, $1a80
    nop
    dec e
    nop
    nop
    dec d
    ld bc, $1d80
    nop
    dec e
    nop
    rst $38
    dec d
    ld bc, $1780
    nop
    dec e
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $10
    ld bc, $1b00
    nop
    ld h, $00
    nop
    db $10
    ld bc, $1d80
    nop
    ld h, $00
    nop
    db $10
    ld bc, $2000
    nop
    ld h, $00
    nop
    db $10
    ld bc, $2780
    nop
    ld h, $00
    nop
    db $10
    ld bc, $2a80
    nop
    ld h, $00
    nop
    db $10
    ld bc, $2080
    nop
    ld h, $00
    rst $38
    db $10
    ld bc, $2880
    nop
    ld h, $00
    rst $38
    ld [$8001], sp
    rla
    nop
    inc h
    nop
    rst $38
    rlca
    inc b
    add b
    inc l
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, $02
    add b
    inc [hl]
    nop
    inc [hl]
    nop
    nop
    rla
    ld bc, $3b80
    nop
    ld [hl], $00
    nop
    rla
    ld bc, $4880
    nop
    dec [hl]
    nop
    nop
    ld d, $02
    add b
    ld b, b
    nop
    dec [hl]
    nop
    rst $38
    rla
    ld bc, $2d80
    nop
    ld [hl], $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr jr_001_4215

    nop
    inc [hl]
    nop

jr_001_4215:
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $8001
    ld d, $00
    ld c, $00
    nop
    dec e
    ld [bc], a
    add b
    ld a, [de]
    nop
    dec c
    jr nz, jr_001_42a0

jr_001_42a0:
    dec e
    ld [bc], a
    add b
    dec h
    nop
    rrca
    jr nz, jr_001_42a8

jr_001_42a8:
    inc e
    ld [bc], a
    add b
    ld sp, $0e00
    nop
    nop
    dec e
    ld [bc], a
    add b
    dec l
    nop
    dec c
    jr nz, @+$01

    dec e
    ld [bc], a
    add b
    ld hl, $0f00
    nop
    rst $38
    inc e
    ld [bc], a
    nop
    ld [hl], $00
    inc c
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    ld bc, $3380
    nop
    dec d
    nop
    nop
    ld e, $05
    add b
    dec l
    or b
    inc d
    nop
    nop
    rra
    inc bc
    add b
    inc e
    nop
    rla
    jr nz, jr_001_42e8

jr_001_42e8:
    nop
    inc bc
    add b
    jr jr_001_42ed

jr_001_42ed:
    ld d, $00
    rst $38
    nop
    inc bc
    add b
    ld d, $00
    ld d, $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [hl+], a
    ld [bc], a
    add b
    dec c
    nop
    add hl, de
    jr nz, jr_001_4318

jr_001_4318:
    ld [hl+], a
    ld [bc], a
    add b
    stop
    add hl, de
    jr nz, jr_001_4320

jr_001_4320:
    ld a, [de]
    ld bc, $2b80
    nop
    dec e
    nop
    nop
    ld a, [de]
    ld bc, $2c80
    nop
    dec e
    nop
    nop
    ld a, [de]
    ld bc, $2d80
    nop
    dec e
    nop
    nop
    ld a, [de]
    ld bc, $2e80
    nop
    dec e
    nop
    nop
    ld h, $04
    add b
    jr jr_001_4345

jr_001_4345:
    dec h
    nop
    rst $38
    ld h, $02
    add b
    inc h
    nop
    inc e
    jr nz, @+$01

    ld hl, $8003
    dec bc
    nop
    ld h, $00
    nop
    jr nz, jr_001_435d

    add b
    dec bc
    db $10

jr_001_435d:
    dec h
    nop
    nop
    ld [bc], a
    ld bc, $2680
    nop
    inc h
    nop
    nop
    ld [$8004], sp
    ld b, e
    nop
    daa
    nop
    nop
    inc hl
    inc bc
    add b
    ld a, [de]
    nop
    ld h, $00
    nop
    inc hl
    inc bc
    add b
    dec bc
    nop
    ld h, $00
    rst $38
    inc b
    ld bc, $0780
    nop
    dec h
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc h
    inc b
    nop
    inc c
    nop
    inc l
    jr nz, jr_001_4398

jr_001_4398:
    dec b
    inc b
    add b
    ld a, [hl+]
    nop
    cpl
    nop
    nop
    ld d, e
    inc b
    nop
    inc bc
    nop
    ld l, $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec de
    inc bc
    add b
    ld l, $00
    scf
    nop
    nop
    dec de
    inc b
    add b
    dec hl
    nop
    scf
    jr nz, jr_001_43e0

jr_001_43e0:
    dec de
    dec b
    add b
    add hl, hl
    nop
    scf
    nop
    nop
    dec de
    ld b, $80
    ld h, $00
    scf
    nop
    nop
    dec de
    ld bc, $2480
    nop
    scf
    jr nz, @+$01

    dec de
    ld bc, $2380
    nop
    scf
    nop
    rst $38
    inc d
    ld bc, $1c80
    nop
    dec [hl]
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec h
    inc b
    nop
    add hl, sp
    nop
    ccf
    jr nz, jr_001_4418

jr_001_4418:
    nop
    ld bc, $3900
    nop
    ccf
    jr nz, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld l, $04
    add b
    add hl, de
    nop
    ld b, $20
    nop
    ld l, $02
    add b
    rra
    nop
    ld b, $00
    rst $38
    dec l
    inc b
    nop
    dec l
    nop
    ld b, $20
    nop
    dec l
    inc bc
    add b
    add hl, sp
    nop
    ld b, $20
    rst $38
    inc bc
    ld bc, $0d00
    nop
    rlca
    nop
    nop
    inc c
    ld [bc], a
    add b
    inc hl
    nop
    ld b, $20
    rst $38
    inc c
    ld [bc], a
    add b
    add hl, hl
    nop
    ld b, $20
    rst $38
    inc c
    ld [bc], a
    add b
    dec l
    nop
    ld b, $00
    rst $38
    cpl
    inc b
    nop
    jr nz, jr_001_4495

jr_001_4495:
    rrca
    nop
    nop
    ld [hl-], a
    dec b
    nop
    ld b, h
    nop
    ld c, $20
    nop
    jr nc, jr_001_44a3

    nop

jr_001_44a3:
    ld [hl+], a
    nop
    rrca
    nop
    rst $38
    ld sp, $0001
    dec h
    nop
    rrca
    nop
    rst $38
    inc sp
    ld bc, $3e00
    nop
    ld c, $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec hl
    ld [bc], a
    add b
    ld b, b
    nop
    ld d, $00
    nop
    dec hl
    ld [bc], a
    nop
    ld b, [hl]
    nop
    inc d
    jr nz, jr_001_44e0

jr_001_44e0:
    inc l
    ld [bc], a
    add b
    jr nc, jr_001_44e5

jr_001_44e5:
    ld d, $00
    nop
    inc l
    ld [bc], a
    add b
    scf
    nop
    rla
    jr nz, jr_001_44f0

jr_001_44f0:
    inc [hl]
    ld bc, $2200
    nop
    inc de
    nop
    nop
    dec l
    inc bc
    add b
    ld de, $1300
    jr nz, @+$01

    inc l
    ld [bc], a
    add b
    dec [hl]
    nop
    rla
    jr nz, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [bc], a
    ld bc, $3380
    nop
    ld e, $00
    nop
    dec hl
    inc bc
    add b
    add hl, sp
    nop
    rra
    nop
    nop
    dec hl
    inc bc
    nop
    ld a, $00
    rra
    nop
    rst $38
    add hl, bc
    ld b, $80
    ld b, a
    nop
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add hl, hl
    ld [bc], a
    add b
    ld b, e
    nop
    daa
    jr nz, jr_001_4558

jr_001_4558:
    ld a, [hl+]
    ld [bc], a
    add b
    ld a, [de]
    nop
    daa
    nop
    nop
    ld a, [hl+]
    ld [bc], a
    add b
    ld c, $00
    daa
    nop
    nop
    dec b
    ld bc, $0300
    nop
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add hl, hl
    ld [bc], a
    add b
    ccf
    nop
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr z, jr_001_45d4

    add b
    ld [hl+], a

jr_001_45d4:
    nop
    ld [hl-], a
    nop
    nop
    daa
    ld [bc], a
    add b
    dec h
    nop
    inc [hl]
    jr nz, jr_001_45e0

jr_001_45e0:
    jr z, jr_001_45e4

    add b
    dec l

jr_001_45e4:
    nop
    inc sp
    jr nz, jr_001_45e8

jr_001_45e8:
    daa
    ld [bc], a
    add b
    ld [hl], $00
    scf
    nop
    nop
    daa
    ld [bc], a
    add b
    ld c, e
    nop
    dec [hl]
    jr nz, jr_001_45f8

jr_001_45f8:
    jr z, jr_001_45fc

    add b
    inc e

jr_001_45fc:
    nop
    inc [hl]
    jr nz, @+$01

    jr z, jr_001_4604

    add b
    dec [hl]

jr_001_4604:
    nop
    inc [hl]
    nop
    rst $38
    daa
    ld [bc], a
    add b
    dec a
    nop
    dec [hl]
    jr nz, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec sp
    inc bc
    add b
    inc a
    db $10
    dec b
    jr nz, jr_001_4658

jr_001_4658:
    inc a
    ld [bc], a
    add b
    ld [hl-], a
    nop
    ld b, $20
    rst $38
    dec sp
    ld [bc], a
    add b
    ld b, l
    nop
    ld b, $20
    rst $38
    inc c
    inc bc
    add b
    ccf
    nop
    dec b
    jr nz, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    ld bc, $4800
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    scf
    ld [bc], a
    add b
    inc c
    nop
    inc de
    jr nz, jr_001_46d8

jr_001_46d8:
    jr c, jr_001_46dc

    add b
    inc de

jr_001_46dc:
    nop
    rla
    jr nz, jr_001_46e0

jr_001_46e0:
    scf
    ld [bc], a
    add b
    jr jr_001_46e5

jr_001_46e5:
    rla
    nop
    nop
    scf
    ld [bc], a
    add b
    inc e
    nop
    rla
    jr nz, jr_001_46f0

jr_001_46f0:
    jr c, jr_001_46f4

    add b
    dec h

jr_001_46f4:
    nop
    inc de
    jr nz, @+$01

    add hl, sp
    ld [bc], a
    add b
    ld b, c
    nop
    rla
    nop
    nop
    ld bc, $0001
    stop
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, $02
    add b
    inc h
    nop
    dec e
    nop
    nop
    ld [hl], $01
    add b
    ld hl, $1c00
    jr nz, jr_001_4720

jr_001_4720:
    dec a
    ld bc, $1f80
    nop
    inc e
    nop
    nop
    ld bc, $8001
    ld d, $00
    rra
    nop
    rst $38
    ld b, e
    ld b, $00
    ld c, l
    nop
    rra
    jr nz, jr_001_4738

jr_001_4738:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, $02
    add b
    ld a, [hl+]
    nop
    ld h, $00
    nop
    dec a
    inc bc
    add b
    inc hl
    nop
    inc h
    nop
    rst $38
    ld [hl], $02
    add b
    rra
    nop
    inc h
    jr nz, jr_001_4768

jr_001_4768:
    dec a
    inc bc
    add b
    ld a, [de]
    nop
    inc h
    nop
    nop
    inc b
    ld bc, $1a80
    nop
    daa
    nop
    nop
    add hl, bc
    ld [$4400], sp
    nop
    ld [hl+], a
    jr nz, jr_001_4780

jr_001_4780:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [bc], a
    ld bc, $1a80
    nop
    cpl
    nop
    nop
    ld b, b
    inc bc
    add b
    dec l
    nop
    ld l, $20
    nop
    ld b, b
    inc bc
    add b
    ld b, c
    nop
    ld l, $20
    nop
    ld b, b
    inc bc
    add b
    ld [hl], $00
    inc l
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, c
    inc b
    nop
    dec de
    nop
    scf
    jr nz, jr_001_47d8

jr_001_47d8:
    ld b, d
    inc bc
    nop
    dec de
    db $10
    ld [hl], $20
    nop
    inc bc
    ld bc, $2300
    nop
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld e, e
    ld bc, $4d00
    nop
    rlca
    jr nz, jr_001_4858

jr_001_4858:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld c, a
    ld [bc], a
    nop
    dec h
    nop
    dec c
    nop
    nop
    ld d, b
    ld [$2680], sp
    nop
    dec c
    jr nz, jr_001_48a0

jr_001_48a0:
    ld h, c
    ld bc, $4f00
    nop
    ld [$0000], sp
    ld h, d
    ld b, $00
    ld c, l
    nop
    rrca
    jr nz, jr_001_48b0

jr_001_48b0:
    dec b
    ld bc, $4e00
    nop
    rrca
    nop
    nop
    ld d, b
    ld [$2b00], sp
    nop
    dec c
    jr nz, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld c, e
    ld [bc], a
    nop
    dec [hl]
    nop
    dec d
    nop
    nop
    ld h, h
    ld bc, $4f00
    nop
    stop
    nop
    ld h, l
    ld bc, $4c80
    nop
    rla
    nop
    nop
    ld [bc], a
    ld bc, $2b80
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, c
    ld bc, $0900
    nop
    add hl, de
    nop
    nop
    ld d, h
    inc bc
    nop
    inc hl
    nop
    rra
    nop
    nop
    ld d, l
    ld [bc], a
    ld l, a
    rra
    nop
    rra
    nop
    nop
    ld d, [hl]
    ld [bc], a
    and b
    ld h, $00
    rra
    nop
    nop
    inc b
    ld bc, $3e80
    nop
    dec de
    nop
    nop
    inc bc
    ld bc, $0a80
    nop
    inc e
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld c, d
    ld [bc], a
    nop
    dec a
    nop
    ld h, $20
    nop
    ld c, d
    ld [bc], a
    nop
    ld b, d
    nop
    ld h, $20
    nop
    ld c, d
    ld [bc], a
    nop
    ld c, b
    nop
    ld h, $20
    nop
    ld c, l
    ld [bc], a
    nop
    dec d
    nop
    daa
    nop
    nop
    ld c, [hl]
    ld [$1000], sp
    nop
    daa
    nop
    nop
    ld a, [bc]
    dec b
    add b
    ld bc, $2400
    nop
    nop
    ld e, d
    ld bc, $2700
    nop
    ld hl, $0000
    inc bc
    ld bc, $0b80
    nop
    dec h
    nop
    nop
    ld c, c
    ld bc, $3f80
    nop
    ld l, $00
    nop
    ld c, c
    ld bc, $4080
    nop
    ld l, $00
    nop
    ld c, c
    ld bc, $4180
    nop
    ld l, $00
    nop
    ld c, c
    ld bc, $4280
    nop
    ld l, $00
    nop
    ld d, e
    inc b
    add b
    inc bc
    nop
    ld l, $00
    nop
    ld bc, $8001
    ld c, b
    nop
    ld l, $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, l
    ld bc, $0e00
    nop
    inc sp
    nop
    nop
    ld b, [hl]
    ld [bc], a
    nop
    stop
    dec [hl]
    jr nz, jr_001_49e0

jr_001_49e0:
    ld b, [hl]
    ld [bc], a
    nop
    ld a, [de]
    nop
    ld [hl], $00
    nop
    ld b, l
    ld bc, $1c00
    nop
    inc sp
    nop
    nop
    ld bc, $8001
    ld b, a
    nop
    inc [hl]
    nop
    nop
    inc bc
    ld bc, $1600
    nop
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, l
    ld bc, $3100
    nop
    dec sp
    nop
    nop
    ld b, a
    ld [bc], a
    add b
    ld [hl-], a
    nop
    dec a
    jr nz, jr_001_4a20

jr_001_4a20:
    ld b, l
    ld bc, $3f00
    nop
    dec sp
    nop
    nop
    ld c, b
    ld [bc], a
    add b
    ld a, $00
    ld a, $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [$c2dd]
    and a
    jp nz, Jump_001_4b6f

    ldh a, [$ad]
    and $03
    jp nz, Jump_001_4b6f

    ldh a, [$8b]
    ld b, a
    ldh a, [$b6]
    and $30
    jr nz, jr_001_4a71

    bit 4, b
    jp nz, Jump_001_4b32

    bit 5, b
    jp nz, Jump_001_4af0

jr_001_4a71:
    ldh a, [$b6]
    and $c0
    jp nz, Jump_001_4b6f

    bit 7, b
    jr nz, jr_001_4aae

    bit 6, b
    jp z, Jump_001_4b6f

    ldh a, [$ad]
    cp $30
    jp nc, Jump_001_4b6f

    ldh a, [$8c]
    bit 1, a
    jp z, Jump_001_4b6f

    ldh a, [$ad]
    and $f0
    ld b, a
    cp $20
    jp z, Jump_001_4b6f

    add $80
    swap a
    ld [$c2c7], a
    ld a, b
    add $10
    ldh [$bb], a
    add $80
    swap a
    ld [$c2c6], a
    jr jr_001_4ad8

jr_001_4aae:
    ldh a, [$ad]
    cp $30
    jp nc, Jump_001_4b6f

    ldh a, [$8c]
    bit 1, a
    jp z, Jump_001_4b6f

    ldh a, [$ad]
    and $f0
    ld b, a
    and a
    jp z, Jump_001_4b6f

    add $80
    swap a
    ld [$c2c7], a
    ld a, b
    sub $10
    ldh [$bb], a
    add $80
    swap a
    ld [$c2c6], a

jr_001_4ad8:
    ld a, $30
    ldh [$ad], a
    xor a
    ld [$c480], a
    ld [$c481], a
    ldh [$e2], a
    inc a
    ldh [$b4], a
    ld e, $22
    call $29fb
    jp Jump_001_4b6f


Jump_001_4af0:
    ldh a, [$ae]
    add $a0
    ld l, a
    ldh a, [$ad]
    and $f0
    cp $30
    jr c, jr_001_4aff

    ld a, $10

jr_001_4aff:
    rlca
    add l
    ld l, a
    ld h, $7c
    ld a, [hl]
    and a
    jr z, jr_001_4b6f

    ld c, a
    ldh a, [$a8]
    bit 7, a
    jr z, jr_001_4b14

    cp c
    jr z, jr_001_4b6f

    jr c, jr_001_4b6f

jr_001_4b14:
    ldh a, [$a9]
    ld d, a
    ldh a, [$ae]
    add $e0
    ld l, a
    ld h, $7e
    ld a, [hl]
    add d
    ld d, a
    ldh a, [$99]
    and $0f
    rra
    add d
    ld l, a
    ld h, $7d
    ld d, [hl]
    ldh a, [$a8]
    sub d
    ldh [$a8], a
    jr jr_001_4b6f

Jump_001_4b32:
    ldh a, [$ae]
    add $40
    ld l, a
    ldh a, [$ad]
    and $f0
    cp $30
    jr c, jr_001_4b41

    ld a, $10

jr_001_4b41:
    rlca
    add l
    ld l, a
    ld h, $7c
    ld a, [hl]
    and a
    jr z, jr_001_4b6f

    ld c, a
    ldh a, [$a8]
    ld b, a
    bit 7, a
    jr nz, jr_001_4b55

    cp c
    jr nc, jr_001_4b6f

jr_001_4b55:
    ldh a, [$a9]
    ld d, a
    ldh a, [$ae]
    add $e0
    ld l, a
    ld h, $7e
    ld a, [hl]
    add d
    ld d, a
    ldh a, [$99]
    and $0f
    rra
    add d
    ld l, a
    ld h, $7d
    ld a, [hl]
    add b
    ldh [$a8], a

Jump_001_4b6f:
jr_001_4b6f:
    ldh a, [$ae]
    add $c0
    ld l, a
    ld h, $7e
    ld b, [hl]
    ldh a, [$99]
    and b
    jr nz, jr_001_4b8d

    ldh a, [$a8]
    bit 7, a
    jr nz, jr_001_4b89

    sub $01
    jr nc, jr_001_4b8b

    xor a
    jr jr_001_4b8b

jr_001_4b89:
    add $01

jr_001_4b8b:
    ldh [$a8], a

jr_001_4b8d:
    ldh a, [$ad]
    bit 1, a
    jp nz, Jump_001_4da2

    ld a, [$c2dd]
    and a
    jp nz, Jump_001_4da2

    ldh a, [$b6]
    bit 0, a
    jp nz, Jump_001_4c3b

    ldh a, [$ad]
    and $f0
    srl a
    srl a
    srl a
    ld hl, $4fbc
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$8c]
    bit 0, a
    jr z, jr_001_4c3b

    jp Jump_001_4d79


    ldh a, [$af]
    and a
    jr nz, jr_001_4be1

    ld a, [$c2c0]
    and a
    jr nz, jr_001_4be1

    ldh a, [$aa]
    bit 7, a
    jr z, jr_001_4c3b

    cp $f0
    jr nc, jr_001_4c3b

    ldh a, [$8b]
    bit 0, a
    jr nz, jr_001_4c3b

    ld a, $f0
    ldh [$aa], a
    jr jr_001_4c3b

jr_001_4be1:
    ldh a, [$8c]
    bit 0, a
    jr z, jr_001_4c3b

    ld e, $12
    call $29fb
    jp Jump_001_4d79


    ldh a, [$8c]
    bit 0, a
    jr z, jr_001_4c3b

    ldh a, [$e2]
    cp $9f
    jp nc, Jump_001_4d79

    ld a, $9f
    ldh [$e2], a
    ldh a, [$af]
    and a
    jp nz, Jump_001_4c0d

    ld a, [$c2c0]
    and a
    jp z, Jump_001_4d79

Jump_001_4c0d:
    ldh a, [$a5]
    bit 5, a
    jr z, jr_001_4c19

    ldh a, [$a8]
    sub $04
    jr jr_001_4c1d

jr_001_4c19:
    ldh a, [$a8]
    add $04

jr_001_4c1d:
    ldh [$a8], a
    jp Jump_001_4d79


    ldh a, [$af]
    and a
    jr nz, jr_001_4c2d

    ld a, [$c2c0]
    and a
    jr z, jr_001_4c3b

jr_001_4c2d:
    ldh a, [$8b]
    bit 0, a
    jp z, Jump_001_4d79

    ld a, $f0
    ldh [$aa], a
    jp Jump_001_4d79


Jump_001_4c3b:
jr_001_4c3b:
    ldh a, [$b6]
    bit 1, a
    jp nz, Jump_001_4da2

    ldh a, [$ad]
    and $f0
    srl a
    srl a
    srl a
    ld hl, $4fd2
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$bc]
    cp $01
    jp nz, Jump_001_4da2

    ldh a, [$8c]
    bit 1, a
    jp z, Jump_001_4da2

    ldh a, [$ad]
    set 0, a
    ldh [$ad], a
    ld a, $01
    ld [$c480], a
    ld a, $06
    ld [$c48b], a
    ld [$c48c], a
    ld e, $1c
    call $29fb
    jp Jump_001_4da2


    ldh a, [$8c]
    bit 1, a
    jp z, Jump_001_4da2

    xor a
    ld [$c48b], a
    ld a, $03
    ld [$c48c], a
    ldh a, [$ad]
    or $01
    ldh [$ad], a
    ld a, $04
    ld [$c480], a
    ldh a, [$a4]
    sub $80
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    ldh a, [$a5]
    bit 5, a
    jr z, jr_001_4cbf

    ldh a, [$a2]
    sub $80
    ld [$c483], a
    ldh a, [$a1]
    sbc $00
    ld [$c484], a
    jr jr_001_4ccd

jr_001_4cbf:
    ldh a, [$a2]
    add $80
    ld [$c483], a
    ldh a, [$a1]
    adc $00
    ld [$c484], a

jr_001_4ccd:
    ld e, $16
    call $29fb
    jp Jump_001_4da2


    ldh a, [$8c]
    bit 1, a
    jp z, Jump_001_4da2

    ldh a, [$8b]
    bit 4, a
    jr z, jr_001_4cf0

    ldh a, [$a8]
    cp $28
    jp nc, Jump_001_4da2

    add $08
    ldh [$a8], a
    jp Jump_001_4da2


jr_001_4cf0:
    bit 5, a
    jp z, Jump_001_4da2

    ldh a, [$a8]
    cp $d8
    jp c, Jump_001_4da2

    sub $08
    ldh [$a8], a
    jp Jump_001_4da2


    ldh a, [$8c]
    bit 1, a
    jp z, Jump_001_4da2

    ld a, $04
    ld [$c48b], a
    ld a, $02
    ld [$c48c], a
    ldh a, [$ad]
    or $01
    ldh [$ad], a
    ld a, $05
    ld [$c480], a
    ldh a, [$a4]
    sub $40
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    ldh a, [$a2]
    ld [$c483], a
    ld e, $1e
    call $29fb
    jr jr_001_4da2

    ldh a, [$8c]
    bit 1, a
    jr z, jr_001_4da2

    ld a, $01
    ld [$c48b], a
    ld [$c48c], a
    ldh a, [$ad]
    or $01
    ldh [$ad], a
    ld a, $02
    ld [$c480], a
    ld e, $1f
    call $29fb
    jr jr_001_4da2

    ldh a, [$8c]
    bit 1, a
    jr z, jr_001_4da2

    ld a, $05
    ld [$c48b], a
    ld [$c48c], a
    ldh a, [$ad]
    or $01
    ldh [$ad], a
    ld a, $03
    ld [$c480], a
    ld e, $21
    call $29fb
    jr jr_001_4da2

Jump_001_4d79:
    xor a
    ld [$c2c0], a
    ldh a, [$bc]
    bit 0, a
    jr z, jr_001_4d87

    ldh a, [$b2]
    jr jr_001_4d89

jr_001_4d87:
    ldh a, [$b0]

jr_001_4d89:
    and a
    jr z, jr_001_4dd5

    ld b, a
    ldh a, [$aa]
    bit 7, a
    jr z, jr_001_4d98

    cp b
    jr z, jr_001_4dd5

    jr c, jr_001_4dd5

jr_001_4d98:
    ldh a, [$ac]
    ld d, a
    ldh a, [$aa]
    sub d
    ldh [$aa], a
    jr jr_001_4dd5

Jump_001_4da2:
jr_001_4da2:
    ld a, [$c2c0]
    and a
    jr z, jr_001_4db1

    ldh a, [$aa]
    bit 7, a
    jr nz, jr_001_4db1

    xor a
    jr jr_001_4dd3

jr_001_4db1:
    ldh a, [$bc]
    bit 0, a
    jr z, jr_001_4dbb

    ldh a, [$b3]
    jr jr_001_4dbd

jr_001_4dbb:
    ldh a, [$b1]

jr_001_4dbd:
    and a
    jr z, jr_001_4dd5

    ld b, a
    ldh a, [$aa]
    ld c, a
    bit 7, a
    jr nz, jr_001_4dd0

    cp b
    jr z, jr_001_4dd5

    jr c, jr_001_4dd0

    dec a
    jr jr_001_4dd3

jr_001_4dd0:
    ldh a, [$bc]
    add c

jr_001_4dd3:
    ldh [$aa], a

jr_001_4dd5:
    xor a
    ldh [$b6], a
    ldh [$b9], a
    ldh a, [$aa]
    ldh [$ab], a
    ldh a, [$ae]
    cp $18
    jr c, jr_001_4e26

    ld d, a
    sub $18
    swap a
    add $a0
    ld l, a
    ldh a, [$a2]
    and $f0
    swap a
    add l
    ld l, a
    ld h, $7f
    ld b, [hl]
    ldh a, [$a4]
    sub b
    jr c, jr_001_4e26

    ldh a, [$aa]
    ld b, a
    bit 7, a
    jr nz, jr_001_4e26

    ld a, d
    cp $1a
    jr nc, jr_001_4e17

    ldh a, [$a8]
    bit 7, a
    jr z, jr_001_4e10

    cpl
    inc a

jr_001_4e10:
    add $10
    add b
    ldh [$ab], a
    jr jr_001_4e26

jr_001_4e17:
    ldh a, [$a8]
    bit 7, a
    jr z, jr_001_4e1f

    cpl
    inc a

jr_001_4e1f:
    srl a
    add b
    add $10
    ldh [$ab], a

jr_001_4e26:
    ldh a, [$a8]
    ld b, a
    ld a, [$c0fb]
    add b
    ld b, a
    bit 7, a
    jr z, jr_001_4e3f

    ldh a, [$a2]
    add b
    ldh [$a2], a
    ldh a, [$a1]
    adc $ff
    ldh [$a1], a
    jr jr_001_4e4a

jr_001_4e3f:
    ldh a, [$a2]
    add b
    ldh [$a2], a
    ldh a, [$a1]
    adc $00
    ldh [$a1], a

jr_001_4e4a:
    ldh a, [$ab]
    ld b, a
    ld a, [$c0fc]
    add b
    ld b, a
    bit 7, a
    jr z, jr_001_4e64

    ldh a, [$a4]
    add b
    ldh [$a4], a
    ldh a, [$a3]
    adc $ff
    ldh [$a3], a
    jp $0635


jr_001_4e64:
    ldh a, [$a4]
    add b
    ldh [$a4], a
    ldh a, [$a3]
    adc $00
    ldh [$a3], a
    jp $0635


    ldh a, [$bd]
    cp $70
    jp nc, Jump_001_4f5a

    ldh a, [$bf]
    and a
    jp nz, Jump_001_4eff

    ldh a, [$cc]
    bit 2, a
    jr z, jr_001_4e9b

    ld h, $c1
    ldh a, [$cf]
    add $15
    ld l, a
    ld a, [hl]
    ld e, a
    cp $ff
    jp z, Jump_001_4f5a

    ld d, $c2
    ld a, $ff
    ld [de], a
    jp Jump_001_4f5a


jr_001_4e9b:
    ldh a, [$c7]
    cp $01
    jr nz, jr_001_4ed9

    ldh a, [$c1]
    add $02
    ldh [$c1], a
    ldh a, [$9d]
    ld b, a
    ldh a, [$c2]
    sub b
    jr c, jr_001_4eb5

    cp $0f
    jr nc, jr_001_4ec9

    jr jr_001_4eb9

jr_001_4eb5:
    cp $fc
    jr c, jr_001_4ec9

jr_001_4eb9:
    ldh a, [$9f]
    ld b, a
    ldh a, [$c4]
    sub b
    jp c, Jump_001_4f72

    cp $0a
    jp c, Jump_001_4f72

    jr jr_001_4ec9

jr_001_4ec9:
    ld a, [$c2f0]
    cp $02
    jp nz, Jump_001_4f5a

    ld a, $ff
    ld [$c2f0], a
    jp Jump_001_4f5a


jr_001_4ed9:
    ld h, $c1
    ldh a, [$cf]
    add $15
    ld l, a
    ld e, [hl]
    ld d, $c2
    ld a, $ff
    ld [de], a
    ldh a, [$cb]
    set 4, a
    ldh [$cb], a
    ld a, $01
    ldh [$c7], a
    ldh a, [$bd]
    cp $1e
    jr z, jr_001_4efa

    ld a, $d0
    ldh [$c1], a

jr_001_4efa:
    xor a
    ldh [$be], a
    jr jr_001_4f72

Jump_001_4eff:
    ld a, [$c2cf]
    and a
    jr z, jr_001_4f11

    ld b, $02
    cp $08
    jr c, jr_001_4f0c

    inc b

jr_001_4f0c:
    ld a, b
    ldh [$c7], a
    jr jr_001_4f29

jr_001_4f11:
    ldh a, [$cb]
    bit 1, a
    jr z, jr_001_4f29

    ldh a, [$ce]
    inc a
    ldh [$ce], a
    cp $40
    jr c, jr_001_4f29

    xor a
    ldh [$ce], a
    ldh a, [$cb]
    res 1, a
    ldh [$cb], a

jr_001_4f29:
    ldh a, [$9d]
    ld b, a
    ldh a, [$c2]
    sub b
    jr c, jr_001_4f37

    cp $0f
    jr nc, jr_001_4f47

    jr jr_001_4f3b

jr_001_4f37:
    cp $fc
    jr c, jr_001_4f47

jr_001_4f3b:
    ldh a, [$9f]
    ld b, a
    ldh a, [$c4]
    sub b
    jr c, jr_001_4f72

    cp $09
    jr c, jr_001_4f72

jr_001_4f47:
    ld h, $c1
    ldh a, [$cf]
    add $15
    ld l, a
    ld e, [hl]
    ld d, $c2
    xor a
    ld [de], a
    ld a, e
    sub $06
    ld e, a
    ldh a, [$bf]
    ld [de], a

Jump_001_4f5a:
    ld h, $c1
    ldh a, [$cf]
    ld l, a
    xor a
    ld [hl], a
    ld a, l
    add $0a
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Jump_001_4f72:
jr_001_4f72:
    ld h, $c1
    ldh a, [$cf]
    ld l, a
    ldh a, [$bd]
    ld [hl+], a
    ldh a, [$be]
    ld [hl+], a
    ldh a, [$bf]
    ld [hl+], a
    ldh a, [$c0]
    ld [hl+], a
    ldh a, [$c1]
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    ldh a, [$c7]
    ld [hl+], a
    ldh a, [$ca]
    ld [hl+], a
    ldh a, [$cb]
    ld [hl+], a
    ldh a, [$cc]
    ld [hl+], a
    ld a, [$c0fd]
    ld [hl+], a
    ld a, [$c0fe]
    ld [hl+], a
    ldh a, [$cd]
    ld [hl+], a
    ldh a, [$ce]
    ld [hl+], a
    ld a, [$c2cf]
    ld [hl+], a
    ld a, [$c2d0]
    ld [hl+], a
    ld a, [$c2d1]
    ld [hl], a
    ret


    or a
    ld c, e
    ret nz

    ld c, e
    rst $28
    ld c, e
    dec sp
    ld c, h
    dec sp
    ld c, h
    ld [hl+], a
    ld c, h
    ret nz

    ld c, e
    ret nz

    ld c, e
    ret nz

    ld c, e
    ret nz

    ld c, e
    ret nz

    ld c, e
    ld d, a
    ld c, h
    add b
    ld c, h
    and d
    ld c, l
    and d
    ld c, l
    and d
    ld c, l
    push de
    ld c, h
    inc bc
    ld c, l
    add hl, sp
    ld c, l
    and d
    ld c, l
    add b
    ld c, h
    ld e, c
    ld c, l
    ld [$f114], a
    inc d
    rst $30
    inc d
    pop af
    inc d
    db $fd
    inc d
    pop af
    inc d
    rst $30
    inc d
    pop af
    inc d
    db $fd
    inc d
    pop af
    inc d
    rst $30
    inc d
    pop af
    inc d
    db $fd
    inc d
    pop af
    inc d
    rst $30
    inc d
    db $e3
    inc d
    db $e3
    inc d
    cp c
    ld [$0888], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$0890], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$089e], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$08b9], sp
    sbc [hl]
    ld [$089e], sp
    sbc [hl]
    ld [$08b9], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$08b9], sp
    cp c
    ld [$08b9], sp
    ld sp, hl
    ld [$08c8], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08d0], sp
    ld sp, hl
    ld [$08f9], sp
    sbc $08
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08de], sp
    sbc $08
    sbc $08
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$096a], sp
    ld b, a
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    rla
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld c, a
    add hl, bc
    ld c, a
    add hl, bc
    ld c, a
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld l, d
    add hl, bc
    ld a, e
    add hl, bc
    ld a, e
    add hl, bc
    ld a, e
    add hl, bc
    ld a, e
    add hl, bc
    ld a, e
    add hl, bc
    ld a, e
    add hl, bc
    ld a, e
    add hl, bc
    ld a, e
    add hl, bc
    db $ec
    ld de, $0e39
    add hl, sp
    ld c, $39
    ld c, $ce
    ld de, $11dd
    add hl, sp
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $0a
    dec bc
    ld d, [hl]
    dec bc
    pop bc
    inc c
    ld c, $0d
    add hl, sp
    ld c, $45
    ld [de], a
    ld b, l
    ld [de], a
    ld b, l
    ld [de], a
    ld b, l
    ld [de], a
    ld b, l
    ld [de], a
    ld b, l
    ld [de], a
    ld b, l
    ld [de], a
    ld b, l
    ld [de], a
    adc h
    add hl, bc
    adc h
    add hl, bc
    adc h
    add hl, bc
    adc h
    add hl, bc
    adc h
    add hl, bc
    adc h
    add hl, bc
    adc h
    add hl, bc
    adc h
    add hl, bc
    db $ec
    ld de, $0e39
    add hl, sp
    ld c, $39
    ld c, $ce
    ld de, $11dd
    add hl, sp
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $0a
    dec bc
    ld d, [hl]
    dec bc
    pop bc
    inc c
    ld c, $0d
    add hl, sp
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $9d
    add hl, bc
    sbc l
    add hl, bc
    ld a, [bc]
    dec bc
    ld d, [hl]
    dec bc
    and d
    dec bc
    and d
    dec bc
    and d
    dec bc
    ld e, e
    dec c
    db $ec
    ld de, $0e39
    add hl, sp
    ld c, $39
    ld c, $ce
    ld de, $11dd
    add hl, sp
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $0a
    dec bc
    ld d, [hl]
    dec bc
    pop bc
    inc c
    ld c, $0d
    add hl, sp
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $39
    ld c, $1d
    ld a, [bc]
    pop de
    add hl, bc
    inc a
    ld a, [bc]
    sub b
    inc de
    sub b
    inc de
    ret nz

    ld a, [bc]
    adc $0a
    xor $0a
    di
    ld a, [bc]
    pop de
    add hl, bc
    ld hl, sp+$0a
    and $0b
    dec l
    inc c
    inc a
    inc c
    sub b
    inc de
    sub b
    inc de
    ld d, d
    inc c
    ld e, e
    inc c
    xor $0a
    di
    ld a, [bc]
    dec l
    inc c
    ld l, d
    inc c
    and b
    dec c
    xor c
    dec c
    or a
    dec c
    dec b
    ld c, $90
    inc de
    call z, $dc0d
    dec c
    ld [$ef0d], a
    dec c
    xor c
    dec c
    db $f4
    dec c
    db $fc
    ld c, $5b
    ld c, $37
    rrca
    sub b
    inc de
    sub b
    inc de
    sbc [hl]
    rrca
    xor d
    rrca
    ld b, $10
    ld h, d
    db $10
    ld e, e
    ld c, $b1
    db $10
    dec h
    ld de, $116c
    or b
    ld de, $1390
    sub b
    inc de
    ret nz

    ld de, $0faa
    ld b, $10
    ld h, d
    db $10
    ld l, h
    ld de, $10b1
    ld bc, $0112
    ld [de], a
    dec e
    ld [de], a
    sub b
    inc de
    sub b
    inc de
    inc a
    ld [de], a
    ld bc, $0112
    ld [de], a
    ld b, d
    ld [de], a
    ld bc, $b112
    db $10
    dec e
    inc de
    ld e, e
    ld c, $2c
    inc de
    sub b
    inc de
    sub b
    inc de
    ld [hl], $13
    xor d
    rrca
    ld b, $10
    ld h, d
    db $10
    ld e, e
    ld c, $b1
    db $10
    inc b
    inc b
    inc b
    rst $38
    rst $38
    rst $38
    ld a, $4d
    ld d, h
    inc b
    ld h, c

jr_001_522d:
    inc d
    dec de
    nop
    ld d, $43
    ld d, $98
    ld d, $14
    dec de
    cp [hl]
    dec d
    rst $18
    rla
    sub a
    rla
    and c
    rla
    ret nz

    rla
    inc hl
    add hl, de
    rst $00
    jr jr_001_522d

    jr jr_001_524f

    add hl, de
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]

jr_001_524f:
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    adc d
    ld a, [de]
    nop
    nop
    jr nc, jr_001_52bd

    nop
    nop
    ret nc

    ret nz

    nop
    jr nz, jr_001_529c

    jr nc, jr_001_5286

jr_001_5286:
    ldh [$e8], a
    ret nc

    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, b
    ld b, a
    ld b, [hl]
    ld b, l
    ld b, h
    ld a, [hl-]
    add b
    rst $38
    inc b
    ld [bc], a
    ld h, b
    rst $38
    rlca
    ld [bc], a

jr_001_529c:
    ret nz

    nop
    ld a, [bc]
    ld [bc], a
    ldh [rP1], a
    inc c
    ld [bc], a
    jr nz, @+$03

    ld c, $02
    add b
    nop
    inc b
    ld [bc], a
    and b
    nop
    rlca
    ld [bc], a
    ld b, b
    rst $38
    ld a, [bc]
    ld [bc], a
    jr nz, @+$01

    inc c
    ld [bc], a
    ldh [$fe], a
    ld c, $02
    nop

jr_001_52bd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_52c5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$0d02], sp
    ld [bc], a
    nop
    nop
    jr nc, @-$2e

jr_001_52d5:
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld [$0d02], sp
    ld [bc], a
    nop
    nop
    jr nc, @-$2e

jr_001_52e5:
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld [$0d02], sp
    ld [bc], a
    nop
    nop
    jr nc, jr_001_52c5

jr_001_52f5:
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld [$0d02], sp
    ld [bc], a
    nop
    nop
    jr nc, jr_001_52d5

jr_001_5305:
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld [$0d02], sp
    ld [bc], a
    nop
    nop
    jr nc, jr_001_52e5

jr_001_5315:
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld [$0d02], sp
    ld [bc], a
    nop
    nop
    jr nc, jr_001_52f5

jr_001_5325:
    ld bc, $0000
    nop
    nop
    nop
    nop
    rlca
    add hl, bc
    inc bc
    rrca
    inc b
    nop
    nop
    jr nc, jr_001_5305

jr_001_5335:
    ld bc, $0000
    nop
    nop
    nop
    nop
    rlca
    add hl, bc
    inc bc
    rrca
    inc b
    nop
    nop
    jr nc, jr_001_5315

jr_001_5345:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    add hl, bc
    inc bc
    rrca
    inc b
    nop
    nop
    jr nc, jr_001_5325

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    add hl, bc
    inc bc
    rrca
    inc b
    nop
    nop
    jr nc, jr_001_5335

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    add hl, bc
    inc bc
    rrca
    inc b
    nop
    nop
    jr nc, jr_001_5345

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_53b5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    inc bc
    rrca
    inc bc
    nop
    nop
    jr nc, jr_001_53b5

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld bc, $302d
    ret nc

jr_001_53d5:
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    inc bc
    ld c, $03
    nop
    jr nz, jr_001_5404

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    add hl, bc
    inc bc
    dec bc
    inc b
    ld [bc], a
    nop
    jr nz, jr_001_53d5

    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [$0904], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_001_5404:
    cp $03
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [$0c01], sp
    ld bc, $0202

jr_001_5413:
    jr z, jr_001_5413

    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    inc bc
    dec bc
    inc bc
    nop
    ld [bc], a
    jr @-$1e

    ld b, $00
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    inc bc
    ld d, $03
    nop
    nop
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    inc b
    db $10
    add hl, bc
    inc bc
    inc [hl]
    inc [hl]
    call z, $0005
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5455:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    inc bc
    rrca
    inc bc
    nop
    nop
    jr nc, jr_001_5455

    nop
    nop
    nop

jr_001_5468:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld b, $02
    ld [bc], a
    jr nz, jr_001_5484

    ldh a, [rSC]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld bc, $3000

jr_001_5484:
    ret nc

jr_001_5485:
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld [bc], a
    dec l
    jr nc, jr_001_5468

    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$0409], sp
    rrca
    inc b
    nop
    nop
    jr nc, @-$2e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld [bc], a
    nop
    jr nc, jr_001_5485

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0608], sp
    dec c
    inc b
    inc bc
    jr nc, jr_001_54f4

    ret nc

    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0608], sp
    dec c
    inc b
    ld [bc], a
    jr z, jr_001_5504

    ret c

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    ld [bc], a
    add hl, bc
    inc bc
    ld [bc], a
    nop
    ld [$02e0], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    inc bc
    dec c
    inc bc
    ld bc, $3030

jr_001_54f4:
    ret nc

    ld bc, $0000
    nop
    nop
    nop
    nop
    dec bc
    ld c, $06
    jr jr_001_5507

    nop
    jr nc, jr_001_5534

jr_001_5504:
    ret nc

    nop
    nop

jr_001_5507:
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    dec bc
    inc b
    inc e
    dec b
    ld bc, $3030
    ret nc

jr_001_5515:
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    inc bc
    rrca
    inc bc
    nop
    nop
    jr nc, jr_001_5515

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    add hl, bc
    inc b
    inc c
    inc b
    inc b
    ld [bc], a
    inc b

jr_001_5534:
    db $fc
    ld b, $00
    nop

jr_001_5538:
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    inc b
    ld bc, $fc06

jr_001_5545:
    ld b, $00
    nop

jr_001_5548:
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    inc b
    nop
    jr z, jr_001_5545

    nop
    nop
    nop

jr_001_5558:
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    dec c
    inc bc
    inc b
    db $10
    jr z, jr_001_5538

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    dec c
    inc bc
    ld [bc], a
    dec l
    jr nc, jr_001_5548

    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld [bc], a
    dec l
    jr nc, jr_001_5558

    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$040e], sp
    rrca
    ld b, $00
    jr nz, jr_001_55c4

    ldh [rSB], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    ld c, $03
    nop
    jr nz, jr_001_55d4

    ldh [rTIMA], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld c, $06
    inc e
    ld b, $00
    jr nc, jr_001_55e4

    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld [bc], a
    dec l
    inc [hl]

jr_001_55c4:
    ret nc

    ld bc, $0000

jr_001_55c8:
    nop
    nop
    nop
    nop
    dec bc
    ld c, $04
    jr jr_001_55d7

    nop
    jr nz, jr_001_5604

jr_001_55d4:
    ldh [rP1], a
    nop

jr_001_55d7:
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld c, $04
    inc e
    ld b, $02
    jr nc, jr_001_5614

jr_001_55e4:
    ret nc

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld [bc], a
    dec l
    jr nc, jr_001_55c8

    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5604:
    nop

jr_001_5605:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5614:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld b, $02
    ld bc, $2020
    ldh [rSB], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld [bc], a
    dec l
    jr nc, jr_001_5605

jr_001_5635:
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0409], sp
    inc c
    inc bc
    ld bc, $3030
    ret nc

    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld bc, $3030
    ret nc

jr_001_5655:
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $07
    inc bc
    ld a, [bc]
    inc bc
    ld [bc], a
    dec l
    jr nc, jr_001_5635

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld bc, $3030
    ret nc

    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$0309], sp
    rrca
    inc bc
    nop
    nop
    jr nc, jr_001_5655

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    nop
    jr nc, jr_001_56c4

    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc c
    inc bc
    rrca
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld [bc], a
    jr nz, @+$22

    ret nc

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    dec c
    inc bc
    ld bc, $3030

jr_001_56c4:
    ret nc

    ld bc, $0000
    nop
    nop
    nop
    nop
    dec bc
    ld c, $04
    ld [de], a
    ld b, $02
    db $10
    jr nc, jr_001_56e5

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    dec c
    inc bc
    ld bc, $3030
    ret nc

jr_001_56e5:
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $0e
    inc b
    jr nz, jr_001_56f9

    ld bc, $3030
    ret nc

jr_001_56f5:
    ld bc, $0000
    nop

jr_001_56f9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5705:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld b, $02
    ld [bc], a
    inc b
    inc b
    db $fc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    ld c, $03
    ld [bc], a
    dec l
    jr nc, jr_001_56f5

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld [bc], a
    dec l
    jr nc, jr_001_5705

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    ld [de], a
    inc bc
    ld [bc], a
    jr nz, jr_001_5774

    ret nc

jr_001_5745:
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    inc bc
    rrca
    inc bc
    nop
    nop
    jr nc, jr_001_5745

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld bc, $3030
    ret nc

    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    ld d, $03
    ld bc, $302d

jr_001_5774:
    ret nc

jr_001_5775:
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    ld bc, $302d
    ret nc

jr_001_5785:
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $09
    ld [bc], a
    inc de
    inc bc
    ld bc, $302d
    ret nc

jr_001_5795:
    ld bc, $0000
    nop
    nop
    nop
    nop
    add hl, bc
    db $10
    inc b
    jr nz, jr_001_57a5

    ld [bc], a
    nop
    jr nc, jr_001_5775

jr_001_57a5:
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    ld c, $03
    nop
    dec l
    jr nc, jr_001_5785

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $0f
    inc b
    inc l
    inc b
    ld [bc], a
    dec l
    jr nc, jr_001_5795

jr_001_57c5:
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    rrca
    ld b, $20
    ld b, $00
    nop
    jr c, @-$36

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc c
    inc bc
    add hl, de
    inc bc
    inc bc
    dec l
    jr nc, jr_001_57c5

    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    rrca
    ld b, $1c
    ld b, $00
    jr z, jr_001_5834

    ret nc

    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    inc b
    ld e, $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    inc b
    ld e, $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    inc b
    ld c, $04
    nop
    nop
    nop

jr_001_5834:
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    rrca
    ld b, $20
    ld b, $00
    nop
    jr c, @-$36

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    nop
    jr nc, jr_001_58d4

    ret nc

    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    nop
    jr nc, jr_001_58e4

    ret nc

    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_58d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    inc c
    inc bc
    nop
    jr nc, jr_001_5914

jr_001_58e4:
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5914:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld bc, $8011
    add c
    add d
    nop
    nop
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    nop
    nop
    nop
    nop
    add [hl]
    add a
    nop
    ld d, b
    nop
    sbc h
    ld hl, $830b
    add h
    add l
    add d
    nop
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    sbc b
    ret


    ld [$1606], sp
    ld h, $36
    ld a, b
    ld a, d
    ld a, h
    ld a, [hl]
    nop
    sbc b
    db $e3
    ld c, $77
    ld l, [hl]
    db $76
    db $76
    ld l, a
    dec b
    rlca
    rla
    daa
    scf
    ld a, c
    ld a, e
    ld a, l
    ld a, a
    nop
    sbc c
    ld h, $08
    ld e, e
    ld e, b
    ld d, d
    ld d, h
    ld e, l
    ld h, d
    ld d, h
    ld d, e
    nop
    sbc c
    ld c, c
    ld [bc], a
    ld d, c
    ld l, b
    nop
    sbc c
    ld h, [hl]
    ld [$585d], sp
    ld e, l
    ld h, e
    ld d, h
    ld e, l
    ld d, e
    ld e, [hl]
    nop
    call $2961
    call $2997
    call $3302
    jp $2896


    xor a
    ld [$c2e6], a

jr_001_59bc:
    ld e, $00
    call Call_001_7644
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a
    cp $0f
    jr c, jr_001_59bc

    ld a, $01
    ld [$c0f3], a
    xor a
    ld [$c2e7], a
    ld [$c2e6], a
    ld a, $2b
    ld [$c202], a
    ld a, $0c
    ld [$c0f5], a
    ld a, $01
    ld [$2000], a
    ldh [$9b], a
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
    ldh [$9f], a
    ld [$c2e0], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $90
    ldh [rWY], a
    ld [$c0e9], a
    xor a
    ldh [rIF], a
    ld a, $07
    ldh [rIE], a
    ld a, $e3
    ldh [rLCDC], a
    ld e, $07
    call $2a30
    ld a, [$c202]
    ld e, a
    ld b, $68
    ld c, $18
    xor a
    call Call_001_75b4
    ld e, $14
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0b
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $90
    ld [$c0f1], a

jr_001_5a52:
    ld a, $01
    ldh [$97], a

jr_001_5a56:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5a56

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5a52

jr_001_5a69:
    ld a, $01
    ldh [$97], a

jr_001_5a6d:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5a6d

    xor a
    ldh [$98], a
    ld a, [$c2e6]
    cp $0c
    jr nc, jr_001_5a89

    ld e, $01
    call Call_001_7623
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a

jr_001_5a89:
    ld a, [$c202]
    cp $3b
    jr nc, jr_001_5aca

    ldh a, [$99]
    and $07
    jr nz, jr_001_5aa1

    ld a, [$c202]
    inc a
    ld [$c202], a
    cp $3b
    jr nc, jr_001_5aad

jr_001_5aa1:
    ld a, [$c202]
    ld e, a
    ld b, $68
    ld c, $18
    xor a
    call Call_001_75b4

jr_001_5aad:
    ld a, $14
    ld [$c203], a
    ld e, a
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0b
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    jr jr_001_5a69

jr_001_5aca:
    ld a, $40
    ld [$c0f1], a

jr_001_5acf:
    ld a, $01
    ldh [$97], a

jr_001_5ad3:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5ad3

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5acf

jr_001_5ae6:
    ld a, $01
    ldh [$97], a

jr_001_5aea:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5aea

    xor a
    ldh [$98], a
    ld a, [$c2e7]
    inc a
    ld [$c2e7], a
    and $07
    jr nz, jr_001_5b09

    ld a, [$c203]
    inc a
    ld [$c203], a
    cp $16
    jr z, jr_001_5b24

jr_001_5b09:
    ld a, [$c203]
    ld e, a
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0b
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    jr jr_001_5ae6

jr_001_5b24:
    ld a, $40
    ld [$c0f1], a

jr_001_5b29:
    ld e, $16
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0b
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_5b44:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5b44

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5b29

    call $3be8
    ldh a, [rLCDC]
    set 3, a
    ldh [rLCDC], a
    xor a
    ld [$c2e6], a
    ld a, $f0
    ld [$c0f1], a

jr_001_5b69:
    ld a, [$c2e6]
    cp $0a
    jr nc, jr_001_5b7c

    ld e, $02
    call Call_001_7623
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a

jr_001_5b7c:
    ld a, $01
    ldh [$97], a

jr_001_5b80:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5b80

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5b69

    ld a, $90
    ld [$c0f1], a

jr_001_5b98:
    ld a, $01
    ldh [$97], a

jr_001_5b9c:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5b9c

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5b98

    ldh a, [rLCDC]
    res 3, a
    ldh [rLCDC], a
    xor a
    ld [$c2e6], a
    ld e, $05
    ld b, $30
    ld c, $34
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $f0
    ld [$c0f1], a

jr_001_5bcb:
    ld a, [$c2e6]
    cp $0a
    jr nc, jr_001_5bde

    ld e, $03
    call Call_001_7623
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a

jr_001_5bde:
    ld a, $01
    ldh [$97], a

jr_001_5be2:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5be2

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5bcb

    ld a, $90
    ld [$c0f1], a

jr_001_5bfa:
    ld a, $01
    ldh [$97], a

jr_001_5bfe:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5bfe

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5bfa

    ldh a, [rLCDC]
    set 3, a
    ldh [rLCDC], a
    xor a
    ld [$c2e6], a
    ld [$c2e7], a
    ld a, $06
    ld [$c202], a
    ld e, $06
    ld b, $50
    ld c, $48
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $a0
    ld [$c0f1], a

jr_001_5c35:
    ld a, [$c2e6]
    cp $0f
    jr nc, jr_001_5c48

    ld e, $00
    call Call_001_7623
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a

jr_001_5c48:
    ld a, $01
    ldh [$97], a

jr_001_5c4c:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5c4c

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5c35

    ld a, $80
    ld [$c0f1], a

jr_001_5c64:
    ldh a, [$99]
    and $03
    jr nz, jr_001_5c7b

    ld a, [$c202]
    cp $06
    jr z, jr_001_5c77

    dec a
    ld [$c202], a
    jr jr_001_5c7b

jr_001_5c77:
    inc a
    ld [$c202], a

jr_001_5c7b:
    ld a, [$c202]
    ld e, a
    ld b, $50
    ld c, $48
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_5c8e:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5c8e

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5c64

    ld a, $20
    ld [$c0f1], a

jr_001_5ca6:
    ld e, $07
    ld b, $50
    ld c, $48
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_5cb7:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5cb7

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5ca6

jr_001_5cca:
    ld a, $01
    ldh [$97], a

jr_001_5cce:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5cce

    xor a
    ldh [$98], a
    ld a, [$c202]
    cp $0a
    jr z, jr_001_5d0d

    ld a, [$c2e7]
    add $04
    ld [$c2e7], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5d05
    add hl, bc
    ld a, [hl]
    ld [$c202], a
    ld e, a
    ld b, $50
    ld c, $48
    xor a
    call Call_001_75b4
    call $3be8
    jr jr_001_5cca

    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0a09], sp

jr_001_5d0d:
    ld a, $f0
    ld [$c0f1], a

jr_001_5d12:
    ld a, $01
    ldh [$97], a

jr_001_5d16:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5d16

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5d12

    ldh a, [rLCDC]
    res 3, a
    ldh [rLCDC], a
    xor a
    ld [$c2e6], a
    ld [$c2e7], a
    ld a, $0f
    ld [$c202], a
    ld a, $14
    ld [$c119], a
    ld e, $0f
    ld b, $50
    ld c, $14
    xor a
    call Call_001_75b4
    ld e, $16
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0c
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $78
    ld [$c0f1], a

jr_001_5d66:
    ld a, [$c2e6]
    cp $0a
    jr nc, jr_001_5d79

    ld e, $04
    call Call_001_7623
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a

jr_001_5d79:
    ld a, $01
    ldh [$97], a

jr_001_5d7d:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5d7d

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5d66

jr_001_5d90:
    ld a, $01
    ldh [$97], a

jr_001_5d94:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5d94

    xor a
    ldh [$98], a
    ldh a, [$99]
    and $01
    ld b, a
    ld a, [$c119]
    add b
    ld [$c119], a
    cp $3c
    jr nc, jr_001_5ded

    ld a, [$c2e7]
    add $08
    ld [$c2e7], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5f74
    add hl, bc
    ld a, [hl]
    ld [$c202], a
    ld a, [$c202]
    ld e, a
    ld b, $50
    ld a, [$c119]
    ld c, a
    xor a
    call Call_001_75b4
    ld e, $16
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0c
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    jr jr_001_5d90

jr_001_5ded:
    ld a, $88
    ld [$c0f1], a

jr_001_5df2:
    ld e, $0f
    ld b, $50
    ld c, $3c
    xor a
    call Call_001_75b4
    ld e, $16
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0c
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_5e17:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5e17

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5df2

    xor a
    ld [$c2e7], a
    ld a, $19
    ld [$c205], a
    ld a, $98
    ld [$c0f1], a

jr_001_5e38:
    ld a, [$c2e7]
    add $04
    ld [$c2e7], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5f7c
    add hl, bc
    ld a, [hl]
    ld [$c205], a
    ld e, a
    ld b, $38
    ld c, $64
    xor a
    call Call_001_75b4
    ld e, $0f
    ld b, $50
    ld c, $3c
    xor a
    call Call_001_75b4
    ld e, $16
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0c
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_5e7f:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5e7f

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5e38

    xor a
    ldh [$99], a
    ld a, $12
    ld [$c202], a
    ld a, $17
    ld [$c203], a
    ld a, $0d
    ld [$c204], a

jr_001_5ea4:
    ld a, $01
    ldh [$97], a

jr_001_5ea8:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5ea8

    xor a
    ldh [$98], a
    ldh a, [$99]
    and $07
    jr nz, jr_001_5ec8

    ld a, $13
    ld [$c202], a
    ld a, $18
    ld [$c203], a
    ld a, $0e
    ld [$c204], a
    jr jr_001_5f13

jr_001_5ec8:
    ld a, [$c2e7]
    add $04
    ld [$c2e7], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5f7c
    add hl, bc
    ld a, [hl]
    ld [$c205], a
    ld e, a
    ld b, $38
    ld c, $64
    xor a
    call Call_001_75b4
    ld a, [$c202]
    ld e, a
    ld b, $50
    ld c, $3c
    xor a
    call Call_001_75b4
    ld a, [$c203]
    ld e, a
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld a, [$c204]
    ld e, a
    ld b, $50
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    jr jr_001_5ea4

jr_001_5f13:
    ld a, $78
    ld [$c0f1], a

jr_001_5f18:
    ld a, [$c2e7]
    add $04
    ld [$c2e7], a
    srl a
    and $f0
    swap a
    ld c, a
    ld b, $00
    ld hl, $5f7c
    add hl, bc
    ld a, [hl]
    ld [$c205], a
    ld e, a
    ld b, $38
    ld c, $64
    xor a
    call Call_001_75b4
    ld e, $13
    ld b, $50
    ld c, $3c
    xor a
    call Call_001_75b4
    ld e, $18
    ld b, $58
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $0e
    ld b, $50

jr_001_5f52:
    ld c, $74
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_5f5f:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5f5f

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5f18

    jr @+$12

    rrca
    db $10
    rrca
    ld de, $100f
    rrca
    ld de, $1a19
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_5f52

    adc [hl]
    ld [hl], $f0
    ld b, b
    set 3, a
    ldh [rLCDC], a
    ld a, $05
    ld [$c0f3], a
    xor a
    ldh [rLYC], a
    ld [$c2e6], a
    ld [$c2e7], a
    ld a, $a8
    ld [$c208], a
    ld e, $22
    ld b, $78
    ld c, $64
    xor a
    call Call_001_75b4
    call $3be8
    xor a
    ldh [$99], a
    ld a, $20
    ld [$c0f1], a

jr_001_5fb5:
    ldh a, [$99]
    bit 3, a
    jr z, jr_001_5fc5

    ld e, $21
    ld b, $28
    ld c, $58
    xor a
    call Call_001_75b4

jr_001_5fc5:
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_5fcc:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5fcc

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5fb5

    ld a, $40
    ld [$c0f1], a

jr_001_5fe4:
    ldh a, [$99]
    bit 2, a
    jr z, jr_001_5ff4

    ld e, $21
    ld b, $28
    ld c, $58
    xor a
    call Call_001_75b4

jr_001_5ff4:
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_5ffb:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_5ffb

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_5fe4

    ld a, $60
    ld [$c0f1], a

jr_001_6013:
    ldh a, [$99]
    bit 1, a
    jr z, jr_001_6023

    ld e, $21
    ld b, $28
    ld c, $58
    xor a
    call Call_001_75b4

jr_001_6023:
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_602a:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_602a

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_6013

jr_001_603d:
    ld a, $01
    ldh [$97], a

jr_001_6041:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_6041

    xor a
    ldh [$98], a
    ld b, $03
    ld a, [$c208]
    cp $48
    jr nc, jr_001_6055

    ld b, $07

jr_001_6055:
    ldh a, [$99]
    and b
    jr nz, jr_001_6065

    ld a, [$c208]
    dec a
    ld [$c208], a
    cp $3c
    jr z, jr_001_6080

jr_001_6065:
    ld e, $21
    ld b, $28
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $22
    ld a, [$c208]
    ld b, a
    ld c, $64
    xor a
    call Call_001_75b4
    call $3be8
    jr jr_001_603d

jr_001_6080:
    ld a, $60
    ld [$c0f1], a

jr_001_6085:
    ld e, $21
    ld b, $28
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $22
    ld b, $3c
    ld c, $64
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_60a0:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_60a0

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_6085

jr_001_60b3:
    ld a, $01
    ldh [$97], a

jr_001_60b7:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_60b7

    xor a
    ldh [$98], a
    ldh a, [$99]
    and $0f
    jr nz, jr_001_6105

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
    jr nz, jr_001_6105

    ld a, $28
    ld [$c0f1], a

jr_001_60ec:
    ld a, $01
    ldh [$97], a

jr_001_60f0:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_60f0

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_60ec

    jr jr_001_611e

jr_001_6105:
    ld e, $21
    ld b, $28
    ld c, $58
    xor a
    call Call_001_75b4
    ld e, $22
    ld b, $3c
    ld c, $64
    xor a
    call Call_001_75b4
    call $3be8
    jr jr_001_60b3

jr_001_611e:
    call $368e
    call $2961
    jp $28af


    xor a
    ld [$c2e6], a

jr_001_612b:
    ld e, $06
    call Call_001_7644
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a
    cp $0a
    jr c, jr_001_612b

    xor a
    ld [$c2e7], a
    ld [$c2e6], a
    ld [$c119], a
    ld a, $23
    ld [$c202], a
    ld a, $70
    ld [$c207], a
    ld a, $05
    ld [$c0f3], a
    ld a, $01
    ld [$2000], a
    ldh [$9b], a
    ld a, $e4
    ldh [rBGP], a
    ld [$c0ea], a
    ld a, $90
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $e0
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ldh [rIF], a
    ld a, $07
    ldh [rIE], a
    ld a, $e3
    ldh [rLCDC], a
    ld a, $40
    ld [$c0f1], a

jr_001_6180:
    ld a, $01
    ldh [$97], a

jr_001_6184:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_6184

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_6180

jr_001_6197:
    ld a, $01
    ldh [$97], a

jr_001_619b:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_619b

    xor a
    ldh [$98], a
    ldh a, [$99]
    and $07
    jr nz, jr_001_61d3

    ld a, [$c2e7]
    inc a
    ld [$c2e7], a
    sla a
    ld b, $00
    ld c, a
    ld hl, $61e8
    add hl, bc
    ld a, [hl+]
    cp $ff
    jr z, jr_001_6205

    ld [$c207], a
    ld a, [hl]
    ld [$c119], a
    ld a, [$c202]
    inc a
    cp $29
    jr c, jr_001_61d0

    ld a, $23

jr_001_61d0:
    ld [$c202], a

jr_001_61d3:
    ld a, [$c202]
    ld e, a
    ld a, [$c207]
    ld b, a
    ld a, [$c119]
    ld c, a
    xor a
    call Call_001_75b4
    call $3be8
    jr jr_001_6197

    ld [hl], b
    nop
    ld h, h
    db $10
    ld e, e
    jr nz, jr_001_6241

    jr nc, @+$51

    jr c, @+$4e

    ld b, b
    ld c, d
    ld c, b
    ld c, c
    ld c, h
    ld b, a
    ld d, b
    ld b, [hl]
    ld d, h
    ld b, l
    ld e, b
    ld b, l
    ld e, h
    ld b, h
    ld h, b
    ld b, h
    ld h, h
    rst $38

jr_001_6205:
    call $3be8
    ld a, $60
    ld [$c0f1], a

jr_001_620d:
    ld a, $01
    ldh [$97], a

jr_001_6211:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_6211

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_620d

jr_001_6224:
    ld a, $01
    ldh [$97], a

jr_001_6228:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_6228

    xor a
    ldh [$98], a
    ldh a, [$99]
    and $0f
    jr nz, jr_001_6224

    ld a, [$c0eb]
    sla a
    sla a
    ld [$c0eb], a

jr_001_6241:
    ld a, [$c0ec]
    sla a
    sla a
    ld [$c0ec], a
    ld a, [$c0ea]
    sla a
    sla a
    ld [$c0ea], a
    and a
    jr nz, jr_001_6224

    ld a, $28
    ld [$c0f1], a

jr_001_625d:
    ld a, $01
    ldh [$97], a

jr_001_6261:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_6261

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_625d

    call $368e
    call $2961
    jp $28c3


    xor a
    ld [$c2e6], a

jr_001_6281:
    ld e, $05
    call Call_001_7644
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a
    cp $0a
    jr c, jr_001_6281

    xor a
    ld [$c2e7], a
    ld [$c2e6], a
    ldh [$9d], a
    ldh [rSCX], a
    ld a, $29
    ld [$c202], a
    ld a, $01
    ld [$2000], a
    ldh [$9b], a
    ld a, $e4
    ldh [rBGP], a
    ld [$c0ea], a
    ldh [rOBP1], a
    ld [$c0ec], a
    ld a, $90
    ldh [rOBP0], a
    ld [$c0eb], a
    xor a
    ldh [rIF], a
    ld a, $05
    ldh [rIE], a
    ld a, $e3
    ldh [rLCDC], a
    ld e, $29
    ld b, $50
    ld c, $50
    xor a
    call Call_001_75b4
    call $3be8

jr_001_62d3:
    ld a, [$c2e7]
    inc a
    ld [$c2e7], a
    cp $08
    jr nc, jr_001_6311

    ld a, $ac
    ld [$c0f1], a

jr_001_62e3:
    ld e, $29
    ld a, [$c2e7]
    cp $03
    jr c, jr_001_62ed

    inc e

jr_001_62ed:
    ld b, $50
    ld c, $50
    xor a
    call Call_001_75b4
    call $3be8
    ld a, $01
    ldh [$97], a

jr_001_62fc:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_62fc

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_62e3

    jr jr_001_62d3

jr_001_6311:
    ld e, $02
    call $2a4a
    ld a, $10
    call $3e24
    call $368e
    jp $28d7


Jump_001_6321:
    ld a, $01
    ldh [$97], a

jr_001_6325:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_6325

    xor a
    ldh [$98], a
    ld a, [$c2e0]
    add $04
    ld [$c2e0], a
    ldh a, [$9f]
    adc $00
    ldh [$9f], a
    ld a, [$c2e0]
    and $7f
    jp nz, Jump_001_6410

    ld a, [$c2e4]
    add $20
    ld [$c2e4], a
    ld a, [$c2e3]
    adc $00
    cp $9c
    jr c, jr_001_6357

    ld a, $98

jr_001_6357:
    ld [$c2e3], a
    ld a, [$c2e5]
    inc a
    ld [$c2e5], a
    ld c, a
    ld b, $00
    ld hl, $64e3
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_001_64af

    bit 7, a
    jr nz, jr_001_63a0

jr_001_6372:
    ld e, a
    ld hl, $69ff
    sla e
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, [$c2e3]
    ld [hl+], a
    ld a, [$c2e4]
    ld [hl+], a
    ld a, $14
    ld [hl+], a
    ld b, $14

jr_001_6390:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_001_6390

    xor a
    ld [hl+], a
    ldh a, [$95]
    add $17
    ldh [$95], a
    jr jr_001_6410

jr_001_63a0:
    res 7, a
    ld d, a
    ld c, a
    ld b, $00
    ld hl, $657c
    add hl, bc
    ld a, [hl+]
    cp $01
    jr z, jr_001_63d6

    cp $02
    jr z, jr_001_63f4

    ld a, d
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $655c
    add hl, bc
    ld a, [hl+]
    ld [$c102], a
    ld a, [hl+]
    ld [$c103], a
    ld a, [hl+]
    ld [$c119], a
    ld a, [hl]
    ld [$c202], a
    cp $3f
    jr nz, jr_001_6410

    xor a
    jr jr_001_6372

jr_001_63d6:
    ld a, d
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $655c
    add hl, bc
    ld a, [hl+]
    ld [$c106], a
    ld a, [hl+]
    ld [$c107], a
    ld a, [hl+]
    ld [$c118], a
    ld a, [hl]
    ld [$c203], a
    jr jr_001_6410

jr_001_63f4:
    ld a, d
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $655c
    add hl, bc
    ld a, [hl+]
    ld [$c10a], a
    ld a, [hl+]
    ld [$c10b], a
    ld a, [hl+]
    ld [$c11d], a
    ld a, [hl]
    ld [$c204], a

Jump_001_6410:
jr_001_6410:
    ld a, [$c202]
    and a
    jr z, jr_001_6443

    ld e, a
    ld a, [$c2e0]
    ld c, a
    ld a, [$c103]
    sub c
    ld c, a
    ldh a, [$9f]
    ld b, a
    ld a, [$c102]
    sbc b
    jr nc, jr_001_642f

    xor a
    ld [$c202], a
    jr jr_001_6443

jr_001_642f:
    and $0f
    swap a
    ld b, a
    ld a, c
    swap a
    and $0f
    or b
    ld b, a
    ld a, [$c119]
    ld c, a
    xor a
    call Call_001_75b4

jr_001_6443:
    ld a, [$c203]
    and a
    jr z, jr_001_6476

    ld e, a
    ld a, [$c2e0]
    ld c, a
    ld a, [$c107]
    sub c
    ld c, a
    ldh a, [$9f]
    ld b, a
    ld a, [$c106]
    sbc b
    jr nc, jr_001_6462

    xor a
    ld [$c203], a
    jr jr_001_6476

jr_001_6462:
    and $0f
    swap a
    ld b, a
    ld a, c
    swap a
    and $0f
    or b
    ld b, a
    ld a, [$c118]
    ld c, a
    xor a
    call Call_001_75b4

jr_001_6476:
    ld a, [$c204]
    and a
    jr z, jr_001_64a9

    ld e, a
    ld a, [$c2e0]
    ld c, a
    ld a, [$c10b]
    sub c
    ld c, a
    ldh a, [$9f]
    ld b, a
    ld a, [$c10a]
    sbc b
    jr nc, jr_001_6495

    xor a
    ld [$c204], a
    jr jr_001_64a9

jr_001_6495:
    and $0f
    swap a
    ld b, a
    ld a, c
    swap a
    and $0f
    or b
    ld b, a
    ld a, [$c11d]
    ld c, a
    xor a
    call Call_001_75b4

jr_001_64a9:
    call $3be8
    jp Jump_001_6321


Jump_001_64af:
    ld a, $0b
    ld [$c2e7], a

jr_001_64b4:
    ld a, $f8
    ld [$c0f1], a

jr_001_64b9:
    ld a, $01
    ldh [$97], a

jr_001_64bd:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_001_64bd

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_001_64b9

    ld a, [$c2e7]
    dec a
    jr z, jr_001_64db

    ld [$c2e7], a
    jr jr_001_64b4

jr_001_64db:
    ld a, $0a
    call $3e24
    jp $0150


    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    add b
    inc bc
    add c
    inc b
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    add d
    ld b, $00
    nop
    rlca
    nop
    nop
    nop
    nop
    ld [$0000], sp
    add hl, bc
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    add e
    dec bc
    nop
    inc c
    dec c
    nop
    ld c, $00
    rrca
    nop
    stop
    nop
    nop
    nop
    add h
    ld de, $0000
    ld [de], a
    nop
    inc de
    nop
    nop
    nop
    nop
    add l
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    add [hl]
    dec d
    ld d, $00
    nop
    rla
    nop
    jr jr_001_6535

jr_001_6535:
    add hl, de
    nop
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    add a
    jr nz, jr_001_6568

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld c, $00
    inc a
    dec sp
    rrca
    nop
    ld c, h
    inc a
    inc de
    add b
    inc a
    dec sp

jr_001_6568:
    dec e
    nop
    inc a
    dec a
    inc h
    add b
    inc a
    dec a
    ld a, [hl+]
    nop
    inc a
    ld a, $2e
    add b
    inc [hl]
    ccf
    ld a, [hl-]
    add b
    inc l
    ld b, b
    nop
    ld bc, $0002
    ld bc, $0002
    ld bc, $6592
    xor [hl]
    ld h, l
    add $65
    jp c, $ee65

    ld h, l
    jr jr_001_65f6

    inc b
    ld h, [hl]
    inc l
    ld h, [hl]
    ld sp, $3666
    ld h, [hl]
    dec sp
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld b, a
    ld h, [hl]
    ld c, h
    ld h, [hl]
    ld d, e
    ld h, [hl]
    ld e, b
    ld h, [hl]
    ld e, a
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld l, h
    ld h, [hl]
    ld [hl], c
    ld h, [hl]
    adc c
    ld h, [hl]
    and c
    ld h, [hl]
    and [hl]
    ld h, [hl]
    xor e
    ld h, [hl]
    or b
    ld h, [hl]
    cp b
    ld h, [hl]
    cp l
    ld h, [hl]
    push de
    ld h, [hl]
    db $ed
    ld h, [hl]
    dec b
    ld h, a
    dec e
    ld h, a
    dec [hl]
    ld h, a
    ld c, l
    ld h, a
    inc l
    ld h, [hl]
    ld sp, $3666
    ld h, [hl]
    dec sp
    ld h, [hl]
    ld h, l
    ld h, a
    ld l, d
    ld h, a
    ld l, a
    ld h, a
    ld [hl], h
    ld h, a
    ld a, c
    ld h, a
    ld a, [hl]
    ld h, a
    and c
    ld h, [hl]
    and [hl]
    ld h, [hl]
    add e
    ld h, a
    adc b
    ld h, a
    adc l
    ld h, a
    sub d
    ld h, a
    sub a
    ld h, a
    sbc h
    ld h, a
    and c
    ld h, a
    and [hl]
    ld h, a
    and c
    ld h, [hl]
    and [hl]
    ld h, [hl]
    xor e
    ld h, a
    or b
    ld h, a

jr_001_65f6:
    or l
    ld h, a
    cp d
    ld h, a
    cp a
    ld h, a
    rst $10
    ld h, a
    rst $28
    ld h, a
    rlca
    ld l, b
    inc b
    ld h, [hl]
    rra
    ld l, b
    scf
    ld l, b
    ld c, a
    ld l, b
    ld h, a
    ld l, b
    ld a, a
    ld l, b
    sub a
    ld l, b
    xor a
    ld l, b
    rst $00
    ld l, b
    rst $18
    ld l, b
    rst $30
    ld l, b
    rrca
    ld l, c
    daa
    ld l, c
    ccf
    ld l, c
    ld d, a
    ld l, c
    ld l, a
    ld l, c
    add a
    ld l, c
    sbc a
    ld l, c
    or a
    ld l, c
    rst $08
    ld l, c
    rst $20
    ld l, c
    sbc b
    ld h, b
    ld d, h
    stop
    sbc b
    add b
    ld d, h
    stop
    sbc b
    and b
    ld d, h
    stop
    sbc b
    ret nz

    ld d, h
    stop
    sbc b
    ldh [$03], a
    db $10
    inc bc
    inc de
    nop
    sbc b
    db $e3
    ld d, c
    stop
    sbc c
    nop
    inc bc
    db $10
    inc b
    inc d
    nop
    sbc c
    inc bc
    ld d, c
    stop
    sbc c
    jr nz, jr_001_665e

    db $10
    dec b
    dec d

jr_001_665e:
    nop
    sbc c
    inc hl
    ld d, c
    stop
    sbc c
    ld b, b
    inc b
    rlca
    ld b, $16
    ld [$9900], sp
    ld b, h
    ld d, b
    stop
    sbc c
    ld h, b
    inc d
    ld bc, $0111
    ld de, $1101
    ld bc, $0111
    ld de, $1101
    ld bc, $0111
    ld de, $1101
    ld bc, $0011
    sbc c
    add b
    inc d
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    nop
    sbc h
    ld h, b
    ld d, h
    stop
    sbc h
    add b
    ld d, h
    stop
    sbc h
    and b
    ld c, c
    stop
    sbc h
    xor c
    inc b
    ld c, c
    ld e, c
    ld [hl+], a
    ld [hl-], a
    nop
    sbc h
    xor l
    ld b, a
    stop
    sbc h
    ret nz

    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    add hl, de
    add hl, hl
    nop
    nop
    ld b, d
    ld d, d
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    sbc h
    ldh [rNR14], a
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, [bc]
    ld a, [de]
    nop
    nop
    ld a, [hl-]
    nop
    ld e, d
    inc hl
    inc sp
    ld b, e
    db $10
    db $10
    db $10
    db $10
    stop
    sbc l
    nop
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    dec bc
    dec de
    dec hl
    nop
    dec sp
    ld c, e
    ld e, e
    inc h
    inc [hl]
    ld b, h
    ld d, e
    db $10
    db $10
    db $10
    stop
    sbc l
    jr nz, @+$16

    db $10
    db $10
    db $10
    db $10
    ld d, h
    inc c
    inc e
    inc l
    nop
    ld c, h
    ld e, h
    dec h
    dec [hl]
    nop
    ld b, l
    db $10
    db $10
    db $10
    db $10
    stop
    sbc l
    ld b, b
    inc d
    db $10
    db $10
    db $10
    db $10
    ld d, l
    dec c
    dec e
    dec l
    dec a
    ld c, l
    ld e, l
    ld h, $36
    nop
    ld b, [hl]
    ld d, [hl]
    db $10
    db $10
    db $10
    stop
    sbc l
    ld h, b
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, $1e
    ld l, $3e
    ld c, [hl]
    ld e, [hl]
    daa
    scf
    nop
    ld b, a
    ld d, a
    db $10
    db $10
    db $10
    stop
    sbc l
    add b
    inc d
    db $10
    db $10
    jr jr_001_679e

    ld l, c
    rrca
    rra
    cpl
    ccf
    ld c, a
    db $10
    db $10
    ld c, a
    ld e, a
    jr z, jr_001_6798

    ld c, b
    ld e, b
    db $10
    stop
    sbc b
    ldh [rHDMA4], a
    stop
    sbc c
    nop
    ld d, h
    stop
    sbc c
    jr nz, jr_001_67c6

    stop
    sbc c
    ld b, b
    ld d, h
    stop
    sbc c
    ld h, b
    ld d, h
    stop
    sbc c
    add b
    ld d, h
    stop
    sbc h
    and b
    ld d, h
    stop
    sbc h
    ret nz

    ld d, h
    stop
    sbc h
    ldh [rHDMA4], a
    stop
    sbc l
    nop
    ld d, h
    stop
    sbc l

jr_001_6798:
    jr nz, @+$56

    stop
    sbc l
    ld b, b

jr_001_679e:
    ld d, h
    stop
    sbc l
    ld h, b
    ld d, h
    stop
    sbc l
    add b
    ld d, h
    stop
    sbc h
    and b
    ld d, h
    stop
    sbc h
    ret nz

    ld d, h
    stop
    sbc h
    ldh [rHDMA4], a
    stop
    sbc l
    nop
    ld d, h
    stop
    sbc l
    jr nz, @+$16

    db $10
    db $10
    db $10
    db $10

jr_001_67c6:
    ld b, b
    ld d, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_001_6801

    db $10
    db $10
    db $10
    db $10
    stop
    sbc l
    ld b, b
    inc d
    db $10
    db $10
    db $10
    ld h, h
    ld [hl], h
    ld h, a
    db $10
    db $10
    db $10
    db $10
    ld l, h
    ld a, h
    db $10
    ld hl, $4131
    ld d, c
    ld [hl], a
    db $10
    stop
    sbc l
    ld h, b
    inc d
    db $10
    db $10
    db $10
    ld h, l
    ld [hl], l
    ld l, b
    ld a, b
    db $10
    ld l, d
    ld a, d
    ld l, l
    ld a, [hl+]
    db $10
    ld h, b
    ld [hl], b

jr_001_6801:
    ld h, d
    ld [hl], d
    db $10
    db $10
    stop
    sbc l
    add b
    inc d
    db $10
    db $10
    db $10
    ld h, [hl]
    db $76
    ld [hl], c
    ld a, c
    db $10
    ld l, e
    ld a, e
    ld l, [hl]
    inc a
    db $10
    ld h, c
    ld [hl], c
    ld h, e
    ld [hl], e
    db $10
    db $10
    stop
    sbc b
    ld h, b
    inc d
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    add h
    add a
    nop
    sbc b
    add b
    inc d
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    nop
    sbc b
    and b
    inc d
    add d
    add d
    add e
    add e
    add d
    add d
    add e
    add e
    add d
    add d
    add e
    add e
    add d
    add d
    add e
    add e
    add d
    add d
    add e
    add e
    nop
    sbc b
    ret nz

    inc d
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    nop
    sbc b
    ldh [rNR14], a
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    ldh a, [$f5]
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    nop
    sbc c
    nop
    inc d
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    pop af
    or $83
    add e
    add e
    add e
    add e
    add e
    add e
    nop
    sbc c
    jr nz, jr_001_68c6

    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    ld a, [c]
    rst $30
    add e
    add e
    add e
    add e
    add e
    add e
    add e

jr_001_68c6:
    nop
    sbc c
    ld b, b
    inc d
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    di
    ld hl, sp-$7d
    add e
    add e
    add e
    add e
    add e
    add e
    nop
    sbc c
    ld h, b
    inc d
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$a9f4]
    xor a
    ld sp, hl
    ld a, [$fafa]
    ld a, [$fafa]
    nop
    sbc c
    add b
    inc d
    and c
    and e
    sbc l
    sbc a
    and c
    and e
    sbc l
    sbc a
    and c
    and e
    sbc l
    sbc a
    and c
    and e
    sbc l
    sbc a
    and c
    and e
    sbc l
    sbc a
    nop
    sbc b
    ld h, b
    inc d
    adc $00
    rst $00
    db $10
    db $10
    jp z, $00ce

    rst $00
    db $10
    db $10
    jp z, $00ce

    rst $00
    db $10
    db $10
    jp z, $00ce

    nop
    sbc b
    add b
    inc d
    rst $08
    call $10c8
    db $10
    set 1, a
    call $10c8
    db $10
    set 1, a
    call $10c8
    db $10
    set 1, a
    call $9800
    and b
    inc d
    nop
    adc $c9
    db $10
    db $10
    call z, $ce00
    ret


    db $10
    db $10
    call z, $ce00
    ret


    db $10
    db $10
    call z, $ce00
    nop
    sbc b
    ret nz

    inc d
    call $10cf
    db $10
    db $10
    db $10
    ld a, l
    add b
    sub b
    db $10
    db $10
    add h
    sub h
    adc b
    db $10
    db $10
    db $10
    db $10
    call $00cf
    sbc b
    ldh [rNR14], a
    adc $00
    db $10
    db $10
    db $10
    db $10
    ld a, [hl]
    add c
    sub c
    xor [hl]
    xor a
    add l
    sub l
    adc c
    sbc b
    db $10
    db $10
    db $10
    adc $00
    nop
    sbc c
    nop
    inc d
    and [hl]
    cp e
    db $10
    db $10
    db $10
    cp [hl]
    ld a, a
    add d
    sub d
    nop
    nop
    add [hl]
    sub [hl]
    adc d
    sbc c
    db $10
    db $10
    db $10
    xor h
    cp b
    nop
    sbc c
    jr nz, jr_001_69b6

    and e
    or e
    xor l
    db $10
    db $10
    cp a
    ld l, a
    add e
    sub e
    nop
    nop
    add a
    sub a
    adc e
    sbc d
    db $10
    db $10
    sbc a
    cp l
    or c

jr_001_69b6:
    nop
    sbc c
    ld b, b
    inc d
    cp c
    and h
    and b
    or b
    jp nz, $c0c6

    call nz, $c2c0
    add $aa
    cp d
    ret nz

    jp nz, $a2c6

    or d
    rla
    xor e
    nop
    sbc c
    ld h, b
    inc d
    or a
    or l
    and c
    or c
    sbc h
    adc a
    pop bc
    push bc
    pop bc
    sbc l
    adc l
    and e
    or e
    adc h
    jp $a79e


    or e
    xor c
    and a
    nop
    sbc c
    add b
    inc d
    and e
    or e
    cp h
    xor c
    and a
    or e
    xor c
    adc [hl]
    add hl, sp
    xor b
    and l
    or l
    and h
    or h
    or [hl]
    sbc e
    or c
    cp h
    sbc e
    or c
    nop
    ld c, c
    ld l, d
    ld e, l
    ld l, d
    ld [hl], c
    ld l, d
    add l
    ld l, d
    sbc c
    ld l, d
    xor l
    ld l, d
    pop bc
    ld l, d
    push de
    ld l, d
    jp hl


    ld l, d
    db $fd
    ld l, d
    ld de, $256b
    ld l, e
    add hl, sp
    ld l, e
    ld c, l
    ld l, e
    ld h, c
    ld l, e
    ld [hl], l
    ld l, e
    adc c
    ld l, e
    sbc l
    ld l, e
    or c
    ld l, e
    push bc
    ld l, e
    reti


    ld l, e
    db $ed
    ld l, e
    ld bc, $156c
    ld l, h
    add hl, hl
    ld l, h
    dec a
    ld l, h
    ld d, c
    ld l, h
    ld h, l
    ld l, h
    ld a, c
    ld l, h
    adc l
    ld l, h
    and c
    ld l, h
    or l
    ld l, h
    ret


    ld l, h
    db $dd
    ld l, h
    pop af
    ld l, h
    dec b
    ld l, l
    add hl, de
    ld l, l
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $3446
    ld b, h
    ld c, b
    ld c, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [de], a
    ld b, a
    dec [hl]
    ld b, l
    ld c, c
    ld c, e
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, e
    ld e, b
    ld h, c
    ld d, h
    ld d, d
    ld h, e
    ld e, [hl]
    ld h, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, a
    ld h, c
    ld e, [hl]
    ld d, [hl]
    ld h, c
    ld d, b
    ld e, h
    ld e, h
    ld d, h
    ld h, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld l, b
    ld h, h
    ld e, b
    ld d, d
    ld d, a
    ld e, b
    db $10
    ld h, h
    ld d, h
    ld d, e
    ld d, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, e
    ld d, h
    ld h, d
    ld e, b
    ld d, [hl]
    ld e, l
    ld d, h
    ld h, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, e
    ld e, [hl]
    ld h, d
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    ld e, d
    ld e, [hl]
    db $10
    ld e, l
    ld d, b
    ld h, c
    ld e, b
    ld h, e
    ld d, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, e
    ld d, h
    ld h, d
    ld e, b
    ld d, [hl]
    ld e, l
    ld d, h
    ld h, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, c
    ld e, b
    ld d, h
    ld e, d
    ld e, [hl]
    db $10
    ld h, d
    ld d, b
    ld e, d
    ld d, b
    ld e, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, b
    ld e, d
    ld e, b
    ld e, d
    ld e, [hl]
    db $10
    ld e, h
    ld e, [hl]
    ld h, c
    ld e, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, d
    ld e, [hl]
    ld e, h
    ld e, a
    ld e, [hl]
    ld h, d
    ld d, h
    ld h, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    cp d
    xor h
    cp h
    xor [hl]
    cp [hl]
    ret nz

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    cp e
    xor l
    cp l
    xor a
    cp a
    pop bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, h
    ld d, b
    ld h, d
    ld d, b
    ld l, b
    ld h, h
    ld e, d
    ld e, b
    db $10
    ld e, b
    ld h, [hl]
    ld d, b
    ld h, e
    ld d, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, e
    ld h, d
    ld h, h
    ld h, e
    ld e, [hl]
    ld e, h
    ld h, h
    db $10
    ld e, b
    ld h, d
    ld d, a
    ld e, b
    ld d, e
    ld d, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, b
    ld h, e
    ld h, d
    ld h, h
    ld h, d
    ld d, a
    ld e, b
    db $10
    ld e, h
    ld e, b
    ld d, a
    ld e, b
    ld h, c
    ld e, [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, a
    ld h, c
    ld e, [hl]
    ld d, [hl]
    ld h, c
    ld d, b
    ld e, h
    ld e, h
    ld d, h
    ld h, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, h
    ld d, b
    ld e, l
    ld d, b
    ld e, h
    ld e, b
    db $10
    ld e, h
    ld d, b
    ld h, e
    ld h, d
    ld h, h
    ld e, h
    ld d, b
    ld d, h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, d
    ld d, a
    ld e, b
    ld e, l
    ld e, b
    ld d, d
    ld d, a
    ld e, b
    db $10
    ld h, d
    ld d, h
    ld l, b
    ld d, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, e
    ld e, [hl]
    ld e, h
    ld e, [hl]
    ld e, h
    ld e, b
    db $10
    ld h, d
    ld d, b
    ld e, d
    ld d, b
    ld e, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, e
    ld d, a
    ld d, b
    ld e, l
    ld e, d
    ld h, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, e
    ld e, [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, a
    ld e, b
    ld h, c
    ld e, [hl]
    ld l, b
    ld h, h
    ld e, d
    ld e, b
    db $10
    ld h, d
    ld h, h
    ld l, c
    ld h, h
    ld e, d
    ld e, b
    db $10
    db $10
    db $10
    db $10
    ld e, d
    ld d, b
    ld l, c
    ld h, h
    ld l, b
    ld h, h
    ld e, d
    ld e, b
    db $10
    ld h, [hl]
    ld d, b
    ld h, e
    ld d, b
    ld e, l
    ld d, b
    ld d, c
    ld d, h
    db $10
    db $10
    db $10
    db $10
    ld e, h
    ld e, b
    ld d, a
    ld e, [hl]
    ld e, d
    ld e, [hl]
    db $10
    ld e, [hl]
    ld e, d
    ld d, b
    ld l, c
    ld d, b
    ld e, d
    ld e, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, e
    ld d, b
    ld h, e
    ld h, d
    ld h, h
    ld e, [hl]
    db $10
    ld e, h
    ld e, [hl]
    ld h, c
    ld e, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$2818], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_001_6c8f

    inc e
    inc l
    inc a
    ld c, h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_001_6c8f:
    db $10
    db $10
    db $10
    db $10
    add hl, de
    add hl, hl
    add hl, sp
    dec c
    dec e
    dec l
    dec a
    ld c, l
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl-]
    ld c, $1e
    ld l, $3e
    ld c, [hl]
    add hl, bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec bc
    dec de
    dec hl
    dec sp
    rrca
    rra
    cpl
    ccf
    ld c, a
    dec d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, c
    ld l, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $16
    ld h, $36
    ld a, b
    ld a, d
    ld a, h
    ld a, [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec b
    rlca
    rla
    daa
    scf
    ld a, c
    ld a, e
    ld a, l
    ld a, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_001_6d3c

    ld b, b
    inc h
    db $10
    db $10
    inc h
    ld [hl+], a
    ld [hl-], a
    ld b, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld hl, $4131
    dec h
    db $10
    db $10
    dec h
    inc hl
    inc sp
    ld b, e
    db $10
    db $10
    db $10
    db $10
    db $10
    xor a
    ld l, l
    ret c

    ld l, l
    ld bc, $2a6e
    ld l, [hl]
    ld d, e
    ld l, [hl]
    ld a, h
    ld l, [hl]
    dec d
    ld l, a
    add [hl]

jr_001_6d3c:
    ld l, a
    db $eb
    ld l, a
    ld e, h
    ld [hl], b
    pop de
    ld [hl], b
    ld b, d
    ld [hl], c
    ld e, e
    ld [hl], c
    ld a, h
    ld [hl], c
    sbc l
    ld [hl], c
    cp [hl]
    ld [hl], c
    rst $10
    ld [hl], c
    ldh a, [$71]
    add hl, bc
    ld [hl], d
    ld [hl+], a
    ld [hl], d
    dec sp
    ld [hl], d
    ld e, l
    ld [hl], d
    ld c, h
    ld [hl], d
    ld l, [hl]
    ld [hl], d
    ld a, a
    ld [hl], d
    sub b
    ld [hl], d
    and c
    ld [hl], d
    or d
    ld [hl], d
    jp $d472


    ld [hl], d
    push hl
    ld [hl], d
    or $72
    rlca
    ld [hl], e
    jr jr_001_6de4

    ld h, c
    ld [hl], e
    ld a, d
    ld [hl], e
    ld a, a
    ld [hl], e
    add h
    ld [hl], e
    adc c
    ld [hl], e
    adc [hl]
    ld [hl], e
    sub e
    ld [hl], e
    sbc b
    ld [hl], e
    xor c
    ld [hl], e
    cp d
    ld [hl], e
    db $e3
    ld [hl], e
    ld hl, sp+$73
    dec c
    ld [hl], h
    ld [hl+], a
    ld [hl], h
    scf
    ld [hl], h
    ld c, h
    ld [hl], h
    ld h, c
    ld [hl], h
    db $76
    ld [hl], h
    adc e
    ld [hl], h
    and b
    ld [hl], h
    or l
    ld [hl], h
    jp z, $df74

    ld [hl], h
    db $f4
    ld [hl], h
    dec b
    ld [hl], l
    ld [de], a
    ld [hl], l
    daa
    ld [hl], l
    inc l
    ld [hl], l
    ld b, c
    ld [hl], l
    ld [hl], d
    ld [hl], l
    adc a
    ld [hl], l
    nop
    ld hl, sp+$70
    stop
    nop
    ld [hl], b
    db $10
    ld [$70f8], sp
    db $10
    ld [$7000], sp
    db $10
    db $10
    ld hl, sp+$70
    db $10
    stop

jr_001_6dc5:
    ld [hl], b
    db $10
    jr @-$0e

    ld [hl], b
    db $10
    jr jr_001_6dc5

    ld [hl], b
    db $10
    jr jr_001_6dd1

jr_001_6dd1:
    ld [hl], b
    db $10
    jr jr_001_6ddd

    ld [hl], b
    db $10
    rst $38
    nop
    ld hl, sp-$46
    nop
    nop

jr_001_6ddd:
    nop
    cp d
    nop
    ld [$baf8], sp
    nop

jr_001_6de4:
    ld [$ba00], sp
    nop
    db $10
    ld hl, sp-$46
    nop
    stop

jr_001_6dee:
    cp d
    nop
    jr @-$0e

    cp d
    nop
    jr jr_001_6dee

    cp d
    nop
    jr jr_001_6dfa

jr_001_6dfa:
    cp d
    nop
    jr jr_001_6e06

    cp d
    nop
    rst $38
    nop
    ld hl, sp-$45
    nop
    nop

jr_001_6e06:
    nop
    cp e
    nop
    ld [$bbf8], sp
    nop
    ld [$bb00], sp
    nop
    db $10
    ld hl, sp-$45
    nop
    stop

jr_001_6e17:
    cp e
    nop
    jr @-$0e

    cp e
    nop
    jr jr_001_6e17

    cp e
    nop
    jr jr_001_6e23

jr_001_6e23:
    cp e
    nop
    jr jr_001_6e2f

    cp e
    nop
    rst $38
    nop
    ld hl, sp-$44
    nop
    nop

jr_001_6e2f:
    nop
    cp h
    nop
    ld [$bcf8], sp
    nop
    ld [$bc00], sp
    nop
    db $10
    ld hl, sp-$44
    nop
    stop

jr_001_6e40:
    cp h
    nop
    jr @-$0e

    cp h
    nop
    jr jr_001_6e40

    cp h
    nop
    jr jr_001_6e4c

jr_001_6e4c:
    cp h
    nop
    jr jr_001_6e58

    cp h
    nop
    rst $38
    nop
    ld hl, sp-$43
    nop
    nop

jr_001_6e58:
    nop
    cp l
    nop
    ld [$bdf8], sp
    nop
    ld [$bd00], sp
    nop
    db $10
    ld hl, sp-$43
    nop
    stop

jr_001_6e69:
    cp l
    nop
    jr @-$0e

    cp l
    nop
    jr jr_001_6e69

    cp l
    nop
    jr jr_001_6e75

jr_001_6e75:
    cp l
    nop
    jr jr_001_6e81

    cp l
    nop
    rst $38
    nop
    inc d
    ret nc

    nop
    nop

jr_001_6e81:
    inc e
    ldh [rP1], a
    nop
    inc h
    ldh a, [rP1]
    ld [$d114], sp
    nop
    ld [$e11c], sp
    nop
    ld [$f124], sp
    nop
    db $10
    inc d
    jp nc, $1000

    inc e
    ld [c], a
    nop
    db $10
    inc h
    ld a, [c]
    nop
    jr jr_001_6eba

    reti


    nop
    jr jr_001_6ec6

    jp hl


    nop
    jr nz, jr_001_6eb2

    ret c

    nop
    jr nz, jr_001_6ebe

    add sp, $00
    jr nz, @+$1a

jr_001_6eb2:
    rst $10
    nop
    jr nz, jr_001_6ee6

    db $eb

jr_001_6eb7:
    nop
    jr z, @+$12

jr_001_6eba:
    db $d3
    nop
    jr z, jr_001_6ed6

jr_001_6ebe:
    db $e3

jr_001_6ebf:
    nop
    jr z, jr_001_6ee2

    di
    nop
    jr z, jr_001_6eee

jr_001_6ec6:
    call c, $2800
    jr nc, jr_001_6eb7

    nop
    jr nc, jr_001_6ece

jr_001_6ece:
    jp c, $3000

    ld [$00ea], sp
    jr nc, jr_001_6ee6

jr_001_6ed6:
    call nc, $3000
    jr jr_001_6ebf

    nop
    jr nc, jr_001_6efe

    db $f4
    nop
    jr nc, @+$2a

jr_001_6ee2:
    db $dd
    nop
    jr nc, @+$32

jr_001_6ee6:
    db $ed
    nop
    jr nc, jr_001_6f22

    db $db
    nop
    jr c, jr_001_6efe

jr_001_6eee:
    push de
    nop
    jr c, @+$1a

jr_001_6ef2:
    push hl
    nop
    jr c, @+$22

    push af
    nop
    jr c, jr_001_6f22

    sbc $00
    jr c, @+$32

jr_001_6efe:
    xor $00
    ld b, b
    db $10

jr_001_6f02:
    sub $00
    ld b, b
    jr @-$18

    nop
    ld b, b
    jr nz, jr_001_6ef2

    nop
    ld b, b
    jr z, jr_001_6eee

    nop
    ld b, b
    jr nc, jr_001_6f02

    nop
    rst $38
    ld hl, sp+$00
    ld b, $00
    ld hl, sp+$08
    ld d, $00
    nop
    nop
    ld h, $00
    nop

jr_001_6f22:
    ld [$0036], sp
    nop
    db $10
    ld b, [hl]
    nop
    ld [$0c00], sp
    nop
    ld [$1c08], sp
    nop
    ld [$2c10], sp
    nop
    ld [$3c18], sp
    nop
    stop
    dec c
    nop
    db $10
    ld [$001d], sp
    db $10
    db $10
    dec l
    nop
    db $10
    jr jr_001_6f85

    nop
    db $10
    jr nz, jr_001_6f99

    nop
    jr jr_001_6f4f

jr_001_6f4f:
    ld c, $00
    jr jr_001_6f5b

    ld e, $00
    jr jr_001_6f67

    ld l, $00
    jr jr_001_6f73

jr_001_6f5b:
    ld a, $00
    jr jr_001_6f7f

    ld c, [hl]
    nop
    jr jr_001_6f8b

    ld e, [hl]
    nop
    jr @+$32

jr_001_6f67:
    ld l, [hl]
    nop
    jr nz, jr_001_6f6b

jr_001_6f6b:
    rrca
    nop
    jr nz, jr_001_6f77

    rra
    nop
    jr nz, jr_001_6f83

jr_001_6f73:
    cpl
    nop
    jr nz, @+$1a

jr_001_6f77:
    ccf
    nop
    jr nz, @+$22

    ld c, e
    nop
    jr nz, jr_001_6fa7

jr_001_6f7f:
    ld e, a
    nop
    jr nz, @+$32

jr_001_6f83:
    ld l, a
    nop

jr_001_6f85:
    rst $38
    nop
    ld [$0020], sp
    nop

jr_001_6f8b:
    db $10
    jr nc, jr_001_6f8e

jr_001_6f8e:
    ld [$0c00], sp
    nop
    ld [$1c08], sp
    nop
    ld [$2c10], sp

jr_001_6f99:
    nop
    ld [$3c18], sp
    nop
    stop
    dec c
    nop
    db $10
    ld [$001d], sp
    db $10

jr_001_6fa7:
    db $10
    dec l
    nop
    db $10
    jr jr_001_6fea

    nop
    db $10
    jr nz, jr_001_6ffe

    nop
    jr jr_001_6fb4

jr_001_6fb4:
    ld c, $00
    jr jr_001_6fc0

    ld e, $00
    jr jr_001_6fcc

    ld l, $00
    jr jr_001_6fd8

jr_001_6fc0:
    ld a, $00
    jr jr_001_6fe4

    ld c, [hl]
    nop
    jr jr_001_6ff0

    ld e, [hl]
    nop
    jr @+$32

jr_001_6fcc:
    ld l, [hl]
    nop
    jr nz, jr_001_6fd0

jr_001_6fd0:
    rrca
    nop
    jr nz, jr_001_6fdc

    rra
    nop
    jr nz, jr_001_6fe8

jr_001_6fd8:
    cpl
    nop
    jr nz, jr_001_6ff4

jr_001_6fdc:
    ccf
    nop
    jr nz, @+$22

    ld c, e
    nop
    jr nz, @+$2a

jr_001_6fe4:
    ld e, a
    nop
    jr nz, jr_001_7018

jr_001_6fe8:
    ld l, a
    nop

jr_001_6fea:
    rst $38
    nop
    inc bc
    rlca
    nop
    nop

jr_001_6ff0:
    dec bc
    rla
    nop
    nop

jr_001_6ff4:
    inc de
    daa
    nop
    nop
    dec de
    scf
    nop
    ld [$0800], sp

jr_001_6ffe:
    nop
    ld [$1808], sp
    nop
    ld [$2810], sp
    nop
    ld [$3818], sp
    nop
    ld [$4820], sp
    nop
    stop
    inc bc
    nop
    db $10
    ld [$0009], sp
    db $10

jr_001_7018:
    db $10
    add hl, de
    nop
    db $10
    jr jr_001_7047

    nop
    db $10
    jr nz, jr_001_705b

    nop
    jr jr_001_7025

jr_001_7025:
    ld a, [bc]
    nop
    jr jr_001_7031

    ld a, [de]
    nop
    jr jr_001_703d

    ld a, [hl+]
    nop
    jr jr_001_7049

jr_001_7031:
    ld a, [hl-]
    nop
    jr jr_001_7055

    ld c, d
    nop
    jr @+$2a

    ld c, h
    nop
    jr jr_001_706d

jr_001_703d:
    ld e, h
    nop
    jr nz, jr_001_7041

jr_001_7041:
    dec bc
    nop
    jr nz, jr_001_704d

    dec de
    nop

jr_001_7047:
    jr nz, jr_001_7059

jr_001_7049:
    dec hl
    nop
    jr nz, jr_001_7065

jr_001_704d:
    dec sp
    nop
    jr nz, jr_001_7071

    ld c, e
    nop
    jr nz, @+$2a

jr_001_7055:
    ld e, l
    nop
    jr nz, @+$32

jr_001_7059:
    ld l, l
    nop

jr_001_705b:
    rst $38
    ld hl, sp+$05
    ld h, e
    nop
    ld hl, sp+$1e
    ld e, b
    nop
    nop

jr_001_7065:
    nop
    ld h, h
    nop
    nop
    ld [$0065], sp
    nop

jr_001_706d:
    db $10
    ld hl, $0000

jr_001_7071:
    jr jr_001_70cc

    nop
    nop
    jr nz, @+$6b

    nop
    ld [$5608], sp
    nop
    ld [$6610], sp
    nop
    ld [$5a18], sp
    nop
    ld [$6a20], sp
    nop
    stop
    inc bc
    nop
    db $10
    ld [$0057], sp
    db $10
    db $10
    ld h, a
    nop
    db $10
    jr @+$5d

    nop
    db $10
    jr nz, jr_001_7106

    nop
    db $10
    jr z, jr_001_70e6

    nop
    jr jr_001_70a2

jr_001_70a2:
    inc b
    nop
    jr jr_001_70ae

    inc d
    nop
    jr jr_001_70ba

    inc h
    nop
    jr jr_001_70c6

jr_001_70ae:
    inc [hl]
    nop
    jr @+$22

    ld l, h
    nop
    jr jr_001_70de

    ld c, c
    nop
    jr nz, jr_001_70ba

jr_001_70ba:
    dec b
    nop
    jr nz, jr_001_70c6

    dec d
    nop
    jr nz, @+$12

    dec h
    nop
    jr nz, jr_001_70de

jr_001_70c6:
    dec [hl]
    nop
    jr nz, @+$22

    ld b, l
    nop

jr_001_70cc:
    jr nz, @+$2a

    ld c, a
    nop
    rst $38
    ld hl, sp+$08
    stop
    ld hl, sp+$20
    ld b, b
    nop
    nop
    ld [$0011], sp
    nop

jr_001_70de:
    db $10
    ld hl, $0000
    jr jr_001_7115

    nop
    nop

jr_001_70e6:
    jr nz, jr_001_7129

    nop
    ld [$1208], sp
    nop
    ld [$2210], sp
    nop
    ld [$3218], sp
    nop
    ld [$4220], sp
    nop
    stop
    inc bc
    nop
    db $10
    ld [$0013], sp
    db $10
    db $10
    inc hl
    nop
    db $10

jr_001_7106:
    jr jr_001_713b

    nop
    db $10
    jr nz, @+$45

    nop
    db $10
    jr z, jr_001_7163

    nop
    jr jr_001_7113

jr_001_7113:
    inc b
    nop

jr_001_7115:
    jr jr_001_711f

    inc d
    nop
    jr jr_001_712b

    inc h
    nop
    jr jr_001_7137

jr_001_711f:
    inc [hl]
    nop
    jr jr_001_7143

    ld b, h
    nop
    jr @+$2a

    ld d, h
    nop

jr_001_7129:
    jr nz, jr_001_712b

jr_001_712b:
    dec b
    nop
    jr nz, jr_001_7137

    dec d
    nop
    jr nz, jr_001_7143

    dec h
    nop
    jr nz, @+$1a

jr_001_7137:
    dec [hl]
    nop
    jr nz, jr_001_715b

jr_001_713b:
    ld b, l
    nop
    jr nz, @+$2a

    ld d, l
    nop
    rst $38
    nop

jr_001_7143:
    nop
    sub b
    jr nz, @+$0a

    nop
    sub e
    jr nz, jr_001_7153

    ld [$2096], sp
    stop
    cp c
    jr nz, jr_001_7163

jr_001_7153:
    ld [$20a9], sp
    db $10
    db $10
    sbc c
    jr nz, @+$01

jr_001_715b:
    nop
    nop
    or b
    jr nz, jr_001_7160

jr_001_7160:
    ld [$20a0], sp

jr_001_7163:
    ld [$b100], sp
    jr nz, jr_001_7170

    ld [$20a1], sp
    ld [$9110], sp
    jr nz, @+$12

jr_001_7170:
    nop
    or d
    jr nz, jr_001_7184

    ld [$20a2], sp
    db $10
    db $10
    sub d
    jr nz, @+$01

    nop
    nop
    or e
    jr nz, jr_001_7181

jr_001_7181:
    ld [$20a3], sp

jr_001_7184:
    ld [$b400], sp
    jr nz, jr_001_7191

    ld [$20a4], sp
    ld [$9410], sp
    jr nz, @+$12

jr_001_7191:
    nop
    or l
    jr nz, jr_001_71a5

    ld [$20a5], sp
    db $10
    db $10
    sub l
    jr nz, @+$01

    nop
    nop
    or [hl]
    jr nz, jr_001_71a2

jr_001_71a2:
    ld [$20a6], sp

jr_001_71a5:
    ld [$b700], sp
    jr nz, jr_001_71b2

    ld [$20a7], sp
    ld [$9710], sp
    jr nz, jr_001_71c2

jr_001_71b2:
    nop
    cp b
    jr nz, jr_001_71c6

    ld [$20a8], sp
    db $10
    db $10
    sbc b
    jr nz, @+$01

    nop
    nop
    ld a, b
    nop

jr_001_71c2:
    nop
    ld [$0088], sp

jr_001_71c6:
    ld [$7900], sp
    nop
    ld [$8908], sp
    nop
    stop
    ld a, d
    nop
    db $10
    ld [$008a], sp
    rst $38
    nop
    nop
    sbc d
    nop
    nop
    ld [$00aa], sp
    ld [$9b00], sp
    nop
    ld [$ab08], sp
    nop
    stop
    sbc h
    nop
    db $10
    ld [$00ac], sp
    rst $38
    nop
    nop
    ld a, l
    nop
    nop
    ld [$008d], sp
    ld [$7e00], sp
    nop
    ld [$8e08], sp
    nop
    stop
    ld a, a
    nop
    db $10
    ld [$008f], sp
    rst $38
    nop
    nop
    sbc l
    nop
    nop
    ld [$00ad], sp
    ld [$9e00], sp
    nop
    ld [$ae08], sp
    nop
    stop
    sbc a
    nop
    db $10
    ld [$00af], sp
    rst $38
    nop
    nop
    ld a, b
    nop
    nop
    rlca
    ld a, b
    nop
    ld [$7b00], sp
    nop
    ld [$8b08], sp
    nop
    stop
    ld a, h
    nop
    db $10
    ld [$008c], sp
    rst $38
    nop
    nop
    ld [hl], d
    nop
    nop
    ld [$0082], sp
    ld [$7300], sp
    nop
    ld [$8308], sp
    nop
    rst $38
    nop
    inc b
    add d
    jr nz, jr_001_7251

jr_001_7251:
    inc c
    ld [hl], d
    jr nz, jr_001_725d

    inc b
    add e
    jr nz, jr_001_7261

    inc c
    ld [hl], e
    jr nz, @+$01

jr_001_725d:
    nop
    nop
    ld [hl], h
    nop

jr_001_7261:
    nop
    ld [$0084], sp
    ld [$7500], sp
    nop
    ld [$8508], sp
    nop
    rst $38
    nop
    inc b
    add [hl]
    jr nz, jr_001_7273

jr_001_7273:
    inc c
    db $76
    jr nz, jr_001_727f

    inc b
    add a
    jr nz, @+$0a

    inc c
    ld [hl], a
    jr nz, @+$01

jr_001_727f:
    nop
    inc b
    add b
    jr nz, jr_001_7284

jr_001_7284:
    inc c
    ld [hl], d
    jr nz, jr_001_7290

    inc b
    add c
    jr nz, jr_001_7294

    inc c
    ld [hl], c
    jr nz, @+$01

jr_001_7290:
    ldh a, [$fa]
    db $fc
    nop

jr_001_7294:
    ld hl, sp-$0c
    cp $00
    db $fd
    ld [bc], a
    nop
    nop
    ld [$02fc], sp
    nop
    rst $38
    ldh a, [$fa]
    db $fd
    nop
    ld hl, sp-$0c
    rst $38
    nop
    db $fd
    ld [bc], a
    nop
    nop
    ld [$fcfc], sp
    nop
    rst $38
    ldh a, [$fa]
    cp $00
    ld hl, sp-$0c
    ld [bc], a
    nop
    db $fd
    ld [bc], a
    db $fc
    nop
    ld [$00fc], sp
    nop
    rst $38
    ldh a, [$fa]
    rst $38
    nop
    ld hl, sp-$0c
    db $fc
    nop
    db $fd
    ld [bc], a
    db $fd
    nop
    ld [$00fc], sp
    nop
    rst $38
    ldh a, [$fa]
    ld [bc], a
    nop
    ld hl, sp-$0c
    nop
    nop
    db $fd
    ld [bc], a
    cp $00
    ld [$fcfc], sp
    nop
    rst $38
    ldh a, [$fa]
    db $fc
    nop
    ld hl, sp-$0c
    nop
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld [$fdfc], sp
    nop
    rst $38
    ldh a, [$fa]
    nop
    nop
    ld hl, sp-$0c
    db $fc
    nop
    db $fd
    ld [bc], a
    ld [bc], a
    nop
    ld [$fefc], sp
    nop
    rst $38
    ldh a, [$fa]
    nop
    nop
    ld hl, sp-$0c
    db $fd
    nop
    db $fd
    ld [bc], a
    db $fc
    nop
    ld [$fffc], sp
    nop
    rst $38
    nop
    ld hl, sp-$42
    nop
    nop
    nop
    cp a
    nop
    ld [$c0ed], sp
    nop
    ld [$c3f5], sp
    nop
    ld [$c7fd], sp
    nop
    ld [$cc05], sp
    nop

jr_001_7330:
    db $10
    xor $c1
    nop
    db $10
    or $c4
    nop
    db $10
    cp $c8
    nop
    db $10
    ld b, $cd
    nop
    jr jr_001_7330

    jp nz, $1800

    or $c5

jr_001_7347:
    nop

jr_001_7348:
    jr jr_001_7348

    ret


    nop
    jr jr_001_7354

    adc $00
    jr nz, jr_001_7347

    add $00

jr_001_7354:
    jr nz, @-$01

    jp z, $2000

    dec b
    rst $08
    nop

jr_001_735c:
    jr z, jr_001_735c

    rlc b
    rst $38
    nop
    nop
    or $00
    nop
    rlca
    ld sp, hl
    nop
    ld [$f700], sp
    nop
    ld [$fa08], sp
    nop
    stop
    ld hl, sp+$00
    db $10
    ld [$00fb], sp
    rst $38
    nop
    nop
    inc c
    nop
    rst $38
    nop
    nop
    dec c
    nop
    rst $38
    nop
    nop
    ld c, $00
    rst $38
    nop
    nop
    rrca
    nop
    rst $38
    nop
    nop
    inc e
    nop
    rst $38
    nop
    nop
    add b
    nop
    rst $38
    nop
    nop
    ld d, b
    stop
    ld [$1060], sp
    ld [$5100], sp
    db $10
    ld [$6108], sp
    db $10
    rst $38
    nop
    nop
    ld d, d
    stop
    ld [$1062], sp
    ld [$0100], sp
    db $10
    ld [$6808], sp
    db $10
    rst $38
    ldh [$f8], a
    ld [hl], b
    db $10
    ldh [rP1], a
    ld [hl], b
    db $10
    add sp, -$08
    ld [hl], b
    db $10
    add sp, $00
    ld [hl], b
    db $10
    ldh a, [$f8]
    ld [hl], b
    db $10
    ldh a, [rP1]
    ld [hl], b
    db $10
    ld hl, sp-$10
    ld [hl], b
    db $10
    ld hl, sp-$08
    ld [hl], b
    db $10
    ld hl, sp+$00
    ld [hl], b
    db $10
    ld hl, sp+$08
    ld [hl], b
    db $10
    rst $38
    ld [c], a
    db $fc
    cp d
    db $10
    db $ec
    nop
    cp d
    db $10
    db $eb
    ld hl, sp-$46
    db $10
    or $01
    cp d
    db $10
    or $f8
    cp d
    db $10
    rst $38
    push hl
    cp $bd
    db $10
    db $ec
    nop
    cp d
    db $10
    db $eb
    ld hl, sp-$46
    db $10
    or $01
    cp d
    db $10
    or $f8
    cp d
    db $10
    rst $38
    ld [$bc00], a
    db $10
    xor $02
    cp l
    db $10
    db $eb
    ld hl, sp-$46
    db $10
    or $01
    cp d
    db $10
    or $f8
    cp d
    db $10
    rst $38
    pop af
    ld [bc], a
    cp e
    db $10
    ldh a, [rDIV]
    cp h
    db $10
    db $ec
    ld sp, hl
    cp l
    db $10
    or $01
    cp d
    db $10
    or $f8
    cp d
    db $10
    rst $38
    ld hl, sp+$03
    cp d
    db $10
    db $f4
    ld b, $bb
    db $10
    xor $fa
    cp h
    db $10
    rst $30
    inc bc
    cp l
    db $10
    or $f8
    cp d
    db $10
    rst $38
    db $f4
    inc b
    cp l
    db $10
    ld hl, sp+$07
    cp d
    db $10
    di
    ei
    cp e
    db $10
    ld hl, sp+$05
    cp h
    db $10
    rst $30
    ld hl, sp-$43
    db $10
    rst $38
    pop af
    dec b
    cp h
    db $10
    push af
    ld [$10bd], sp
    ld hl, sp-$05
    cp d
    db $10
    push af
    rlca
    cp e
    db $10
    ld hl, sp-$08
    cp h
    db $10
    rst $38
    ldh a, [rTMA]
    cp e
    db $10
    ld a, [c]
    add hl, bc
    cp h
    db $10
    push af
    db $fc
    cp l
    db $10
    di
    add hl, bc
    cp d
    db $10
    push af
    ld sp, hl
    cp e
    db $10
    rst $38
    pop af
    rlca
    cp d
    db $10
    pop af
    ld a, [bc]
    cp e
    db $10
    ld a, [c]
    db $fd
    cp h
    db $10
    ld a, [c]
    dec bc
    cp l
    db $10
    di
    ld a, [$10ba]
    rst $38
    db $f4
    ld [$10bd], sp
    ld a, [c]
    dec bc
    cp d
    db $10
    pop af
    cp $bb
    db $10
    di
    dec c
    cp h
    db $10
    ld a, [c]
    ei
    cp l
    db $10
    rst $38
    ld hl, sp+$09
    cp h
    db $10
    push af
    inc c
    cp l
    db $10
    ld a, [c]
    rst $38
    cp d
    db $10
    push af
    rrca
    cp e
    db $10
    di
    db $fc
    cp h
    db $10
    rst $38
    cp $0a
    cp e
    db $10
    ld hl, sp+$0d
    cp h
    db $10
    push af
    nop
    cp l
    db $10
    ld hl, sp+$11
    cp d
    db $10
    push af
    db $fd
    cp e
    db $10
    rst $38
    ld b, $0b
    cp d
    db $10
    cp $0e
    cp e
    db $10
    ld hl, sp+$01
    cp h
    db $10
    db $fc
    inc de
    cp l
    db $10
    ld hl, sp-$02
    cp d
    db $10
    rst $38
    rlca
    rrca
    cp d
    db $10
    cp $02
    cp e
    db $10
    ld bc, $bc15
    db $10
    cp $ff
    cp l
    db $10
    rst $38

jr_001_7505:
    rlca
    inc bc
    cp d
    db $10
    rlca

jr_001_750a:
    rla
    cp e
    db $10
    or $00

jr_001_750f:
    cp h
    db $10
    rst $38
    ld [$9c08], sp
    db $10

jr_001_7516:
    ld [$a010], sp
    db $10
    ld [$a118], sp
    db $10
    ld [$9e20], sp
    db $10
    ld [$9f28], sp
    db $10
    rst $38
    ld [$ab08], sp
    db $10
    rst $38
    ld [$a308], sp
    db $10
    ld [$a910], sp
    db $10
    ld [$a718], sp
    db $10
    ld [$a120], sp
    db $10
    ld [$9c28], sp
    db $10
    rst $38
    ld [$a008], sp
    db $10
    ld [$c210], sp
    db $10
    ld [$a518], sp
    db $10
    ld [$9e20], sp
    db $10
    ld [$a628], sp
    db $10
    stop
    sbc d
    db $10
    db $10
    ld [$109d], sp
    db $10
    db $10
    xor d
    db $10
    db $10
    jr jr_001_7505

    db $10
    db $10
    jr nz, jr_001_750f

    db $10
    db $10
    jr z, jr_001_750a

    db $10
    db $10
    jr nc, jr_001_7516

    db $10
    rst $38
    ld [$a708], sp
    db $10
    ld [$a510], sp
    db $10
    ld [$9e18], sp
    db $10
    ld [$9c20], sp
    db $10
    ld [$a128], sp
    db $10
    ld [$9a30], sp
    db $10
    ld [$a238], sp
    db $10
    rst $38
    ld [$a508], sp
    db $10
    ld [$a610], sp
    db $10
    ld [$9e18], sp
    db $10
    ld [$a720], sp
    db $10
    ld [$9e28], sp
    db $10
    ld [$a430], sp
    db $10
    ld [$a838], sp
    db $10
    ld [$9e40], sp
    db $10
    ld [$9d48], sp
    db $10
    rst $38

Call_001_75b4:
    ldh [$dc], a
    sla e
    ld d, $00
    rl d
    ld hl, $6d2d
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ldh a, [$92]
    ld l, a
    ld h, $c0
    ldh a, [$91]
    and a
    jr nz, jr_001_75f6

jr_001_75cd:
    ld a, l
    cp $a0
    jr c, jr_001_75d9

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_001_75d9:
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
    jr nz, jr_001_75cd

    ld a, l
    ldh [$92], a
    ret


jr_001_75f6:
    ld a, l
    cp $a0
    jr c, jr_001_7602

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_001_7602:
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
    jr nz, jr_001_75f6

    ld a, l
    ldh [$92], a
    ret


Call_001_7623:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld hl, $6584
    sla e
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [$c2e6]
    rlca
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    call $32b0
    ret


Call_001_7644:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld hl, $6584
    sla e
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [$c2e6]
    rlca
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    call $29b9
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
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    dec bc
    jr nc, jr_001_7a03

    nop
    dec bc
    jr nc, jr_001_7a07

    nop
    dec bc
    jr nc, jr_001_7a0b

    nop
    dec bc
    jr nc, jr_001_7a0f

    nop
    dec bc
    jr nc, jr_001_7a13

    nop
    dec bc
    jr nc, jr_001_7a17

    nop
    dec bc
    jr nc, jr_001_7a1b

    nop
    dec bc
    jr nc, jr_001_7a1f

    nop
    dec bc
    jr nc, jr_001_7a23

    nop
    dec bc
    jr nc, jr_001_7a27

    nop
    dec bc
    jr nc, jr_001_7a2b

    nop
    dec bc
    jr nc, jr_001_7a2f

    nop
    dec bc
    jr nc, jr_001_7a33

    nop
    dec bc
    jr nc, jr_001_7a37

    nop
    dec bc
    jr nc, jr_001_7a3b

    nop
    dec bc
    jr nc, jr_001_7a3f

    nop
    dec bc
    jr nc, jr_001_7a43

jr_001_7a03:
    nop
    dec bc
    jr nc, jr_001_7a47

jr_001_7a07:
    nop
    dec bc
    jr nc, jr_001_7a4b

jr_001_7a0b:
    nop
    dec bc
    jr nc, jr_001_7a4f

jr_001_7a0f:
    nop
    dec bc
    jr nc, jr_001_7a53

jr_001_7a13:
    nop
    dec bc
    jr nc, jr_001_7a57

jr_001_7a17:
    nop
    dec bc
    jr nc, jr_001_7a5b

jr_001_7a1b:
    nop
    dec bc
    jr nc, jr_001_7a5f

jr_001_7a1f:
    nop
    dec bc
    jr nc, jr_001_7a63

jr_001_7a23:
    nop
    dec bc
    jr nc, jr_001_7a67

jr_001_7a27:
    nop
    dec bc
    jr nc, jr_001_7a6b

jr_001_7a2b:
    nop
    dec bc
    jr nc, jr_001_7a6f

jr_001_7a2f:
    nop
    dec bc
    jr nc, jr_001_7a73

jr_001_7a33:
    nop
    dec bc
    jr nc, jr_001_7a77

jr_001_7a37:
    nop
    dec bc
    jr nc, jr_001_7a7b

jr_001_7a3b:
    nop
    dec bc
    jr nc, jr_001_7a7f

jr_001_7a3f:
    nop
    ld [$5c50], sp

jr_001_7a43:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a47:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a4b:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a4f:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a53:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a57:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a5b:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a5f:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a63:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a67:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a6b:
    ld d, $08
    ld d, b
    ld e, h

jr_001_7a6f:
    ld d, $09
    ld e, h
    ld b, b

jr_001_7a73:
    nop
    add hl, bc
    ld e, h
    ld b, b

jr_001_7a77:
    nop
    add hl, bc
    ld e, h
    ld b, b

jr_001_7a7b:
    nop
    add hl, bc
    ld e, h
    ld b, b

jr_001_7a7f:
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    add hl, bc
    ld e, h
    ld b, b
    nop
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    dec b
    ld l, e
    ld h, d
    or d
    ld a, [bc]
    add c
    ld a, [hl]
    ld a, [de]
    dec bc
    add d
    ld a, l
    ld a, [bc]
    dec bc
    add d
    ld a, l
    ld a, [bc]
    inc c
    add h
    ld a, e
    nop
    inc c
    add h
    ld a, e
    nop
    dec c
    add [hl]
    ld a, c
    ccf
    dec c
    add [hl]
    ld a, c
    ccf
    ld c, $88
    ld [hl], e
    cp d
    ld c, $88
    ld [hl], e
    cp d
    rrca
    adc d
    ld h, h
    inc b
    rrca
    adc d
    ld h, h
    inc b
    rrca
    adc d
    ld h, h
    inc b
    rrca
    adc d
    ld h, h
    inc b
    ld [bc], a
    adc [hl]
    ld b, b
    nop
    ld [bc], a
    adc [hl]
    ld b, b
    nop
    ld [bc], a
    adc [hl]
    ld b, b
    nop
    ld [bc], a
    adc [hl]
    ld b, b
    nop
    ld [bc], a
    adc [hl]
    ld b, b
    nop
    ld [bc], a
    adc [hl]
    ld b, b
    nop
    inc bc
    sub h
    ld b, b
    nop
    inc bc
    sub h
    ld b, b
    nop
    inc bc
    sub h
    ld b, b
    nop
    inc bc
    sub h
    ld b, b
    nop
    inc bc
    sub h
    ld b, b
    nop
    inc bc
    sub h
    ld b, b
    nop
    inc bc
    sub h
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld [$1002], sp
    inc d
    ld [$0010], sp
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    inc bc
    nop
    inc d
    ld [$0000], sp
    inc d
    nop
    ld d, $00
    ld d, $00
    nop
    db $10
    db $10
    jr nz, jr_001_7c6c

    ld b, $14
    ld [bc], a
    ld b, $10
    db $10
    db $10
    db $10

jr_001_7c6c:
    jr jr_001_7c78

    db $10
    ld b, $10
    db $10
    db $10
    jr nz, jr_001_7c7d

    inc d
    ld [bc], a
    nop

jr_001_7c78:
    ld [$0a20], sp
    jr jr_001_7c87

jr_001_7c7d:
    jr jr_001_7c7f

jr_001_7c7f:
    nop
    jr jr_001_7c9a

    jr nz, @+$12

    ld [bc], a
    inc d
    ld [bc], a

jr_001_7c87:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_001_7c95

jr_001_7c95:
    inc d
    nop
    nop
    nop
    ld [hl+], a

jr_001_7c9a:
    nop
    ld e, $00
    ld e, $00
    nop
    ld a, [$fefa]
    ld hl, sp-$10
    ld hl, sp-$12
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    cp $f8
    db $ec
    nop
    db $ec
    nop
    ld [$ea00], a
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$20
    ld a, [$ecfe]
    ld a, [$f0f0]
    ldh a, [$f0]
    or $e8
    ldh a, [$fa]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh [$fe], a
    db $ec
    nop
    ldh [$f8], a
    add sp, -$0a
    add sp, -$0a
    nop
    nop
    add sp, -$18
    ldh a, [$e0]
    cp $fe

jr_001_7ce6:
    db $ec
    cp $fe
    cp $fe
    cp $fd
    cp $fe
    cp $fe
    cp $fe
    nop
    ldh [rP1], a

jr_001_7cf6:
    db $ec
    nop
    sbc $00
    ld [c], a
    nop
    ld [c], a
    nop
    nop
    nop
    and b
    db $10
    ldh a, [rNR10]
    jr z, jr_001_7cf6

    dec b
    add hl, bc
    inc bc
    ld c, $00
    nop
    nop
    nop

jr_001_7d0e:
    nop
    nop
    ret nz

    ld [$30e8], sp
    jr nc, jr_001_7ce6

jr_001_7d16:
    dec b
    add hl, bc
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ldh [rNR10], a
    ldh a, [rNR23]
    jr jr_001_7d0e

jr_001_7d26:
    dec b
    add hl, bc
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    inc d
    db $ec
    jr nc, @+$32

    ret nc

jr_001_7d36:
    dec b
    add hl, bc
    ld bc, $0010
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [$30e8], sp
    jr nc, jr_001_7d16

jr_001_7d46:
    dec b
    add hl, bc
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [$30e8], sp
    jr nc, jr_001_7d26

jr_001_7d56:
    dec b
    add hl, bc
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [$30e8], sp
    jr nc, jr_001_7d36

    dec bc
    ld c, $08
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [$30e8], sp
    jr nc, jr_001_7d46

    inc bc
    rlca
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [$30e8], sp
    jr nc, jr_001_7d56

    ld b, $0a
    dec b
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
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
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$1009], sp
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_001_7e2d

    jr nz, jr_001_7e37

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_001_7e47

    jr nc, jr_001_7e51

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_7e61

    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_001_7e2d:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_001_7e37:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld [hl], b

jr_001_7e47:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop

jr_001_7e51:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b

jr_001_7e61:
    rrca
    add hl, de
    inc hl
    dec l
    scf
    ld b, c
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr nz, jr_001_7eb3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr nc, jr_001_7ecb

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, b
    ld h, c
    ld h, d

jr_001_7eb3:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop

jr_001_7ecb:
    nop
    nop
    nop
    inc bc
    rlca
    nop
    ld bc, $0103
    ld bc, $0707
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_7efe

    jr jr_001_7f00

    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr jr_001_7ef1

jr_001_7ef1:
    ld [$0010], sp
    nop
    jr jr_001_7f0f

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7efe:
    nop
    nop

jr_001_7f00:
    nop
    ld bc, $0200
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7f0f:
    nop
    nop
    ld bc, $0200
    inc bc
    dec bc
    inc c
    nop
    rrca
    db $10
    ld de, $1212
    ld de, $0f10
    nop
    ld bc, $0200
    inc bc
    nop
    nop
    nop
    rla
    jr jr_001_7f44

    ld a, [de]
    add hl, de
    jr jr_001_7f46

    dec de
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, c
    ld c, e

jr_001_7f44:
    ld c, h
    nop

jr_001_7f46:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    inc bc
    dec bc
    inc c
    nop
    db $10
    ld de, $1312
    inc de
    ld [de], a
    ld de, $5c10
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nc, jr_001_7fce

    stop
    nop
    db $10
    jr nz, jr_001_7fe4

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

jr_001_7fce:
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

jr_001_7fe4:
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    jr nc, @+$32

    jr nz, @+$22

    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    jr nz, @+$22

    jr nc, @+$32

    ld b, b
    ld b, b
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b

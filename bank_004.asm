SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    ldh [rLCDC], a
    jp hl


    ld b, b
    ld a, [c]
    ld b, b
    ei
    ld b, b
    inc b
    ld b, c
    ld b, b
    ld b, d
    ld c, c
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    ld b, d
    ld e, e
    ld b, d
    ld l, l
    ld b, d
    dec c
    ld b, c
    ld d, $41
    rra
    ld b, c
    jr z, jr_004_405f

    ld sp, $3a41
    ld b, c
    ld b, e
    ld b, c
    ld c, h
    ld b, c
    ld d, l
    ld b, c
    ld e, [hl]
    ld b, c
    ld h, a
    ld b, c
    ld [hl], b
    ld b, c
    ld a, c
    ld b, c
    add d
    ld b, c
    adc e
    ld b, c
    sub h
    ld b, c
    sbc l
    ld b, c
    and [hl]
    ld b, c
    xor a
    ld b, c
    cp b
    ld b, c
    pop bc
    ld b, c
    jp z, $d341

    ld b, c
    call c, $e541
    ld b, c
    xor $41
    rst $30
    ld b, c
    nop
    ld b, d
    dec b
    ld b, d
    ld c, $42
    db $76
    ld b, d
    ld a, a
    ld b, d
    adc b
    ld b, d
    adc l
    ld b, d
    sub d
    ld b, d
    sbc e
    ld b, d
    and h

jr_004_405f:
    ld b, d
    xor l
    ld b, d
    or [hl]
    ld b, d
    cp a
    ld b, d
    ret z

    ld b, d
    pop de
    ld b, d
    jp c, $e342

    ld b, d
    db $ec
    ld b, d
    push af
    ld b, d
    cp $42
    rlca
    ld b, e
    inc d
    ld b, e
    ld hl, $2e43
    ld b, e
    dec sp
    ld b, e
    ld c, b
    ld b, e
    ld d, c
    ld b, e
    ld e, [hl]
    ld b, e
    ld l, e
    ld b, e
    ld a, b
    ld b, e
    add l
    ld b, e
    sub [hl]
    ld b, e
    and a
    ld b, e
    cp b
    ld b, e
    ret


    ld b, e
    sbc $43
    rst $28
    ld b, e
    nop
    ld b, h
    ld de, $2244
    ld b, h
    inc sp
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld b, h
    ld h, [hl]
    ld b, h
    ld h, [hl]
    ld b, h
    ld h, [hl]
    ld b, h
    ld l, e
    ld b, h
    adc b
    ld b, h
    and l
    ld b, h
    ld l, e
    ld b, h
    rst $18
    ld b, h
    jp nz, $df44

    ld b, h
    db $fc
    ld b, h
    ld de, $2645
    ld b, l
    dec sp
    ld b, l
    ld d, b
    ld b, l
    ld h, l
    ld b, l
    db $76
    ld b, l
    adc e
    ld b, l
    sub b
    ld b, l
    sub l
    ld b, l
    sbc [hl]
    ld b, l
    and a
    ld b, l
    ldh [rLCDC], a
    or b
    ld b, l
    cp l
    ld b, l
    or b
    ld b, l
    rla
    ld b, d
    jr nz, @+$44

    add hl, hl
    ld b, d
    ld [hl-], a
    ld b, d
    dec sp
    ld b, d
    nop
    or $00
    stop
    cp $10
    db $10
    rst $38
    nop
    or $02
    stop
    cp $12
    db $10
    rst $38
    nop
    or $04
    stop
    cp $14
    db $10
    rst $38
    nop
    or $06
    stop
    cp $16
    db $10
    rst $38
    nop
    or $08
    stop
    cp $18
    db $10
    rst $38
    nop
    or $0a
    stop
    cp $1a
    db $10
    rst $38
    nop
    or $0c
    stop
    cp $1c
    db $10
    rst $38
    nop
    or $20
    stop
    cp $30
    db $10
    rst $38
    nop
    or $22
    stop
    cp $32
    db $10
    rst $38
    nop
    or $24
    stop
    cp $34
    db $10
    rst $38
    nop
    or $26
    stop
    cp $36
    db $10
    rst $38
    nop
    or $28
    stop
    cp $38
    db $10
    rst $38
    nop
    or $2a
    stop
    cp $3a
    db $10
    rst $38
    nop
    or $0a
    stop
    cp $1a
    db $10
    rst $38
    nop
    or $0c
    stop
    cp $1c
    db $10
    rst $38
    nop
    or $0e
    stop
    cp $10
    db $10
    rst $38
    nop
    or $2e
    stop
    cp $3e
    db $10
    rst $38
    nop
    or $22
    stop
    cp $32
    db $10
    rst $38
    nop
    or $24
    stop
    cp $34
    db $10
    rst $38
    nop
    or $26
    stop
    cp $36
    db $10
    rst $38
    nop
    ld hl, sp+$28
    stop
    nop
    jr c, @+$12

    rst $38
    nop
    ld hl, sp+$20
    stop
    nop
    jr nc, @+$12

    rst $38
    nop
    or $2a
    stop
    cp $3a
    db $10
    rst $38
    nop
    or $2c
    stop
    cp $3c
    db $10
    rst $38
    nop
    or $20
    stop
    cp $30
    db $10
    rst $38
    nop
    or $2e
    stop
    cp $3e
    db $10
    rst $38
    ld [bc], a
    or $0a
    db $10
    ld [bc], a
    cp $1a
    db $10
    rst $38
    ld [bc], a
    or $0c
    db $10
    ld [bc], a
    cp $1c
    db $10
    rst $38
    ld [bc], a
    or $0e
    db $10
    ld [bc], a
    cp $1e
    db $10
    rst $38
    ld [$26f8], sp
    db $10
    ld [$3600], sp
    db $10
    rst $38
    ld [$28f8], sp
    db $10
    ld [$3800], sp
    db $10
    rst $38
    ld [$2af8], sp
    db $10
    ld [$3a00], sp
    db $10
    rst $38
    ld [$2cfc], sp
    db $10
    rst $38
    ld [$22f8], sp
    db $10
    ld [$3200], sp
    db $10
    rst $38
    ld [$24f8], sp
    db $10
    ld [$3400], sp
    db $10
    rst $38
    nop
    ld hl, sp+$60
    stop
    nop
    ld [hl], b
    db $10
    rst $38
    nop
    ld hl, sp+$62
    stop
    nop
    ld h, d
    jr nc, @+$01

    nop
    ld hl, sp+$72
    stop
    nop
    ld [hl], d
    jr nc, @+$01

    nop
    ld hl, sp+$64
    stop
    nop
    ld h, h
    jr nc, @+$01

    nop
    db $fc
    ld [hl], h
    db $10
    rst $38
    nop
    or $48
    stop
    cp $58
    db $10
    rst $38
    nop
    or $46
    stop
    cp $56
    db $10
    rst $38
    nop
    or $4a
    stop
    cp $5a
    db $10
    rst $38
    nop
    or $40
    stop
    cp $50
    db $10
    rst $38
    nop
    or $42
    stop
    cp $52
    db $10
    rst $38
    nop
    or $44
    stop
    cp $54
    db $10
    rst $38
    nop
    ld hl, sp+$76
    nop
    nop
    nop
    db $76
    jr nz, @+$01

    nop
    ld hl, sp+$66
    nop
    nop
    nop
    ld h, [hl]
    jr nz, @+$01

    nop
    db $fc
    ld a, b
    nop
    rst $38
    nop
    db $fc
    ld l, b
    nop
    rst $38
    nop
    ld hl, sp+$0a
    stop
    nop
    ld a, [de]
    db $10
    rst $38
    nop
    ld hl, sp+$0c
    stop
    nop
    inc e
    db $10
    rst $38
    nop
    ld hl, sp+$0c
    stop
    nop
    inc e
    db $10
    rst $38
    inc bc
    ld hl, sp+$2c
    db $10
    inc bc
    nop
    inc a
    db $10
    rst $38
    db $fd
    ld hl, sp+$2c
    db $10
    db $fd
    nop
    inc a
    db $10
    rst $38
    ld [bc], a
    ld hl, sp+$2e
    db $10
    ld [bc], a
    nop
    ld a, $10
    rst $38
    ld [bc], a
    ld hl, sp+$3e
    jr nc, @+$04

    nop
    ld l, $30
    rst $38
    ld [bc], a
    ld hl, sp+$0e
    db $10
    ld [bc], a
    nop
    ld e, $10
    rst $38
    ld [bc], a
    ld hl, sp+$1e
    jr nc, @+$04

    nop
    ld c, $30
    rst $38
    inc bc
    ld hl, sp+$0c
    db $10
    inc bc
    nop
    inc e
    db $10
    rst $38
    db $fd
    ld hl, sp+$0c
    db $10
    db $fd
    nop
    inc e
    db $10
    rst $38
    nop
    push af
    inc l
    stop
    db $fd
    inc a
    db $10
    rst $38
    nop
    ei
    inc l
    stop
    inc bc
    inc a
    db $10
    rst $38
    nop
    or $00
    stop
    cp $10
    stop
    ldh a, [$2a]
    db $10
    rst $38
    nop
    or $02
    stop
    cp $12
    stop
    rst $28
    ld a, [hl+]
    db $10
    rst $38
    nop
    or $04
    stop
    cp $14
    stop
    ldh a, [$2a]
    db $10
    rst $38
    nop
    or $06
    stop
    cp $16
    stop
    ldh a, [$2a]
    db $10
    rst $38
    nop
    or $08
    stop
    cp $18
    db $10
    db $fc
    ldh a, [$2a]
    db $10
    rst $38
    nop
    or $00
    stop
    cp $10
    db $10
    rst $38
    nop
    or $20
    stop
    cp $30
    stop
    ldh a, [$2a]
    db $10
    rst $38
    nop
    or $20
    stop
    cp $30
    db $10
    inc bc
    ldh a, [$2a]
    db $10
    rst $38
    nop
    or $22
    stop
    cp $32
    db $10
    ld sp, hl
    pop af
    ld a, [hl+]
    db $10
    rst $38
    nop
    or $00
    stop
    cp $10
    db $10
    cp $f0
    ld a, [hl+]
    db $10
    rst $38
    nop
    or $24
    stop
    cp $34
    stop
    db $f4
    ld a, [hl+]
    stop
    xor $2a
    db $10
    rst $38
    nop
    or $3a
    jr nc, jr_004_439b

jr_004_439b:
    cp $28
    jr nc, jr_004_439f

jr_004_439f:
    pop af
    ld a, [hl+]
    stop
    db $ec
    ld a, [hl+]
    db $10
    rst $38
    nop
    or $28
    stop
    cp $3a
    stop
    inc b
    ld a, [hl+]
    stop
    dec bc
    ld a, [hl+]
    db $10
    rst $38
    nop
    or $28
    stop
    cp $3a
    stop
    ld b, $2a
    stop
    rrca
    ld a, [hl+]
    db $10
    rst $38
    nop
    or $28
    stop
    cp $38
    stop
    ld b, $2a
    stop
    ld c, $2a
    stop
    ld d, $2a
    db $10
    rst $38
    nop
    or $00
    stop
    cp $10
    db $10
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    db $10
    rst $38
    nop
    or $02
    stop
    cp $12
    db $10
    db $f4
    ld hl, sp+$2c
    db $10
    db $f4
    nop
    inc a
    db $10
    rst $38
    nop
    or $04
    stop
    cp $14
    db $10
    db $f4
    ld hl, sp+$2e
    db $10
    db $f4
    nop
    ld a, $10
    rst $38
    nop
    or $06
    stop
    cp $16
    db $10
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    db $10
    rst $38
    nop
    or $08
    stop
    cp $18
    db $10
    db $f4
    rst $30
    ld c, [hl]
    db $10
    db $f4
    rst $38
    ld e, [hl]
    db $10
    rst $38
    nop
    or $0a
    stop
    cp $1a
    db $10
    di
    or $2c
    db $10
    di
    cp $3c
    db $10
    rst $38
    nop
    or $0c
    stop
    cp $1c
    db $10
    db $f4
    ld hl, sp+$2e
    db $10
    db $f4
    nop
    ld a, $10
    rst $38
    nop
    or $20
    stop
    cp $30
    db $10
    db $f4
    rst $30
    inc l
    db $10
    db $f4
    rst $38
    inc a
    db $10
    rst $38
    ld [bc], a
    db $fc
    ld c, $10
    rst $38
    db $fc
    db $ec
    nop
    db $10
    ldh a, [$f4]
    db $10
    db $10
    ldh a, [$fc]
    jr nz, jr_004_4487

    ldh a, [rDIV]
    jr nc, jr_004_448b

    nop
    db $f4
    ld [de], a
    stop
    db $fc
    ld [hl+], a
    stop
    inc b
    ld [hl-], a
    db $10

jr_004_4487:
    rst $38
    ei
    db $eb
    nop

jr_004_448b:
    db $10
    ldh a, [$f3]
    inc d
    db $10
    ldh a, [$fb]
    inc h
    db $10
    ldh a, [$03]
    inc [hl]
    stop
    di
    ld d, $10
    nop
    ei
    ld h, $10
    nop
    inc bc
    ld [hl], $10
    rst $38
    ei
    db $ed
    nop
    db $10
    ldh a, [$f5]
    jr @+$12

    ldh a, [$fd]
    jr z, jr_004_44c1

    ldh a, [rTIMA]
    jr c, @+$12

    nop
    push af
    ld a, [de]
    stop
    db $fd
    ld a, [hl+]
    stop
    dec b
    ld a, [hl-]
    db $10

jr_004_44c1:
    rst $38
    nop
    db $ec
    ld c, $10
    ldh a, [$f4]
    ld a, [bc]
    db $10
    ldh a, [$fc]
    ld b, $10
    ldh a, [rDIV]
    ld [bc], a
    stop
    db $f4
    inc c
    stop
    db $fc
    ld [$0010], sp
    inc b
    inc b
    db $10
    rst $38
    ei
    db $ed
    nop
    db $10
    ldh a, [$f5]
    jr jr_004_44f7

    ldh a, [$fd]
    inc l
    db $10
    ldh a, [rTIMA]
    inc a
    stop
    push af
    ld e, $10
    nop
    db $fd
    ld l, $10

jr_004_44f7:
    nop
    dec b
    ld a, $10
    rst $38
    ld a, [c]
    rst $30
    nop
    db $10
    ld a, [c]
    rst $38
    db $10
    db $10
    ld [bc], a
    rst $28
    ld [bc], a
    db $10
    ld [bc], a
    rst $30
    ld [de], a
    db $10
    ld [bc], a
    rst $38
    ld [hl+], a
    db $10
    rst $38
    ldh a, [$f6]
    nop
    db $10
    ldh a, [$fe]
    db $10
    stop
    rst $28
    inc b
    stop
    rst $30
    inc d
    stop
    rst $38
    inc h
    db $10
    rst $38
    pop af
    rst $30
    nop
    db $10
    pop af
    rst $38
    db $10
    db $10
    ld bc, $06f0
    db $10
    ld bc, $16f8
    db $10
    ld bc, $2600
    db $10
    rst $38
    ldh a, [$f6]
    nop
    db $10
    ldh a, [$fe]
    db $10
    db $10
    cp $ee
    ld [$0010], sp
    or $18
    stop
    cp $28
    db $10
    rst $38
    pop af
    rst $30
    nop
    db $10
    pop af
    rst $38
    db $10
    db $10
    ld bc, $0aef
    db $10
    ld bc, $1af7
    db $10
    ld bc, $2aff
    db $10
    rst $38
    ldh a, [$f7]
    inc l
    db $10
    ldh a, [rIE]
    inc a
    stop
    di
    ld l, $10
    nop
    ei
    ld a, $10
    rst $38
    ldh a, [$fa]
    inc c
    db $10
    ldh a, [rSC]
    inc e
    db $10
    ld hl, sp-$0e
    ld a, [hl-]
    stop
    ld a, [$100e]
    nop
    ld [bc], a
    ld e, $10
    rst $38
    ld [$38fd], sp
    db $10
    rst $38
    ld [$36fc], sp
    db $10
    rst $38
    ld [$30f8], sp
    jr nc, jr_004_45a2

    nop
    inc [hl]
    db $10
    rst $38
    ld [$20f8], sp
    db $10

jr_004_45a2:
    ld [$3000], sp
    db $10
    rst $38
    ld [$32f8], sp
    jr nc, @+$0a

    nop
    ld [hl-], a
    db $10
    rst $38
    nop
    xor $ba
    stop
    or $b8
    stop
    cp $b6
    db $10
    rst $38
    nop
    xor $fe
    stop
    or $be
    stop
    cp $bc
    db $10
    rst $38
    sub h
    ld b, [hl]
    sub [hl]
    ld b, [hl]
    sbc b
    ld b, [hl]
    sbc d
    ld b, [hl]
    sbc h
    ld b, [hl]
    xor h
    ld b, [hl]
    cp h
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    ld a, [$fc46]
    ld b, [hl]
    ld a, [$fc46]
    ld b, [hl]
    cp $46
    ld b, $47
    inc d
    ld b, a
    ld l, $47
    ld c, [hl]
    ld b, a
    ld e, [hl]
    ld b, a
    ld a, [hl]
    ld b, a
    sbc [hl]
    ld b, a
    cp [hl]
    ld b, a
    sbc $47
    ld [c], a
    ld b, a
    ld [hl], b
    ld b, a
    ld [$1047], a
    ld c, b
    ld c, d
    ld c, b
    ld e, h
    ld c, b
    sbc d
    ld c, b
    sbc d
    ld c, b
    xor b
    ld c, b
    cp [hl]
    ld c, b
    db $fc
    ld c, b
    ld a, [de]
    ld c, c
    jr c, @+$4b

    ld a, [hl-]
    ld c, c
    ld e, d
    ld c, c
    ld [hl], h
    ld c, c
    sbc [hl]
    ld c, c
    ret nz

    ld c, c
    sbc $48
    call nc, $ea49
    ld c, c
    ld a, [bc]
    ld c, d
    ld e, $4a
    jr z, jr_004_4678

    ld l, $4a
    ld d, h
    ld c, d
    sub h
    ld b, [hl]
    sub h
    ld b, [hl]
    ld e, h
    ld c, d
    ld l, d
    ld c, d
    adc d
    ld c, d
    sbc [hl]
    ld c, d
    or [hl]
    ld c, d
    call nz, $e24a
    ld c, d
    ldh a, [rWY]
    cp $4a
    inc d
    ld c, e
    ld e, $48
    ld e, $4b
    ld a, [hl-]
    ld c, e
    ld e, b
    ld c, e
    ld [hl], h
    ld c, e
    ld a, h
    ld c, e
    xor d
    ld c, e
    adc d
    ld c, e
    jp nc, $3c4b

    ld c, h
    or $4b
    ld b, $4c
    jr nz, jr_004_46b0

    ld b, b
    ld c, h
    ld e, b
    ld c, h
    xor h
    ld c, h
    cp d
    ld c, h
    sub h
    ld b, [hl]
    ld a, $4c
    sub h
    ld c, h
    ld [c], a
    ld c, h
    or $4c
    ld d, $4d

jr_004_4678:
    ld [hl], $4d
    ld [hl], $4d
    sub h
    ld b, [hl]
    sub h
    ld b, [hl]
    ld a, [hl-]
    ld c, l
    inc a
    ld c, l
    ld e, b
    ld c, l
    ld e, [hl]
    ld c, l
    sub h
    ld c, l
    sub h
    ld b, [hl]
    sub h
    ld b, [hl]
    jp z, $944d

    ld b, [hl]
    sub h
    ld b, [hl]
    ld a, [c]
    ld c, l
    di
    ld c, l
    db $fc
    ld c, l
    dec b
    ld c, [hl]
    ld c, $4e
    rla
    ld c, [hl]
    jr nz, jr_004_46f0

    rla
    ld c, [hl]
    ld c, $4e
    add hl, hl
    ld c, [hl]
    ld [hl-], a
    ld c, [hl]
    add hl, hl
    ld c, [hl]
    ld c, $4e
    dec sp
    ld c, [hl]

jr_004_46b0:
    ld b, h
    ld c, [hl]
    dec sp
    ld c, [hl]
    ld c, $4e
    ld d, c
    ld c, [hl]
    ld e, d
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld h, a
    ld c, [hl]
    ld a, b
    ld c, [hl]
    adc c
    ld c, [hl]
    sbc d
    ld c, [hl]
    or e
    ld c, [hl]
    ld a, b
    ld c, [hl]
    call z, $784e
    ld c, [hl]
    db $dd
    ld c, [hl]
    xor $4e
    rst $38
    ld c, [hl]
    db $10
    ld c, a
    ld hl, $364f
    ld c, a
    ld c, e
    ld c, a
    db $10
    ld c, a
    ld hl, $364f
    ld c, a
    ld c, e
    ld c, a
    ld h, b
    ld c, a
    ld a, c
    ld c, a
    db $10
    ld c, a
    ld hl, $364f
    ld c, a
    sub d
    ld c, a
    xor a
    ld c, a

jr_004_46f0:
    call z, Call_004_4b4f
    ld c, a
    ld [hl], $4f
    ld hl, $104f
    ld c, a
    jp hl


    ld c, a
    ld [bc], a
    ld d, b
    inc de
    ld d, b
    inc e
    ld d, b
    dec h
    ld d, b
    ld a, [hl+]
    ld d, b
    jr c, jr_004_4758

    ld h, e
    ld d, b
    ld b, c
    ld d, b
    ld d, d
    ld d, b
    jr c, jr_004_4760

    ld h, e
    ld d, b
    ld l, h
    ld d, b
    ld [hl], l
    ld d, b
    add sp, $50
    add d
    ld d, b
    sub a
    ld d, b
    ld [hl], l
    ld d, b
    or b
    ld d, b
    cp l
    ld d, b
    jp z, Jump_004_7550

    ld d, b
    rst $10
    ld d, b
    add sp, $50
    ld sp, hl
    ld d, b
    ld [bc], a
    ld d, c
    rrca
    ld d, c
    ld h, a
    ld d, c
    jr jr_004_4785

    add hl, hl
    ld d, c
    rrca
    ld d, c
    ld a, [hl-]
    ld d, c
    ld b, e
    ld d, c
    ld c, h
    ld d, c
    ld d, l
    ld d, c
    ld e, [hl]
    ld d, c
    ld h, a
    ld d, c
    ld [hl], b
    ld d, c
    rrca
    ld d, c
    ld a, c
    ld d, c
    add d
    ld d, c
    adc e
    ld d, c
    sbc b
    ld d, c
    jp $a151


    ld d, c
    or d
    ld d, c
    sbc b
    ld d, c

jr_004_4758:
    jp $cc51


    ld d, c
    push de
    ld d, c
    sbc $51

jr_004_4760:
    db $e3
    ld d, c
    add sp, $51
    push af
    ld d, c
    sbc $51
    db $e3
    ld d, c
    ld [bc], a
    ld d, d
    rlca
    ld d, d
    inc c
    ld d, d
    ld de, $3552
    ld d, d
    ld d, $52
    inc hl
    ld d, d
    ld de, $3052
    ld d, d
    dec [hl]
    ld d, d
    ld [$ad53], sp
    ld d, d
    ld b, a
    ld d, d
    ld e, h

jr_004_4785:
    ld d, d
    ld a, [hl-]
    ld d, d
    ld [hl], c
    ld d, d
    add d
    ld d, d
    sub e
    ld d, d
    and b
    ld d, d
    xor l
    ld d, d
    cp d
    ld d, d
    rst $00
    ld d, d
    call nc, $e152
    ld d, d
    xor $52
    ei
    ld d, d
    dec d
    ld d, e
    ld e, c
    ld d, e
    ld [hl+], a
    ld d, e
    scf
    ld d, e
    ld c, h
    ld d, e
    ld e, c
    ld d, e
    ld l, d
    ld d, e
    ld [hl], e
    ld d, e
    add h
    ld d, e
    ld c, h
    ld d, e
    add h
    ld d, e
    ld [hl], e
    ld d, e
    ld l, d
    ld d, e
    ld e, c
    ld d, e
    ld c, h
    ld d, e
    add h
    ld d, e
    xor d
    ld d, e
    add d
    ld d, h
    xor d
    ld d, e
    xor d
    ld d, e
    sub c
    ld d, e
    bit 2, e
    db $e4
    ld d, e
    scf
    ld d, h
    ld d, b
    ld d, h
    db $fd
    ld d, e
    ld a, [de]
    ld d, h
    ld l, c
    ld d, h
    add d
    ld d, h
    sbc e
    ld d, h
    add d
    ld d, h
    ld l, c
    ld d, h
    cp b
    ld d, h
    cp b
    ld d, h
    cpl
    ld d, b
    ret


    ld d, h
    jp nc, $db54

    ld d, h
    ldh [rHDMA4], a
    cpl
    ld d, l
    jp hl


    ld d, h
    ld a, [$2654]
    ld d, l
    cpl
    ld d, l
    jr c, jr_004_484d

    ldh [rHDMA4], a
    dec bc
    ld d, l
    ldh [rHDMA4], a
    dec bc
    ld d, l
    dec bc
    ld d, l
    inc d
    ld d, l
    dec e
    ld d, l
    ld h, $55
    ld b, c
    ld d, l
    ld b, c
    ld d, l
    ld b, c
    ld d, l
    ld b, c
    ld d, l
    ld c, d
    ld d, l
    add a
    ld d, l
    ld d, e
    ld d, l
    ld h, h
    ld d, l
    ld [hl], l
    ld d, l
    ld a, [hl]
    ld d, l
    add a
    ld d, l
    add sp, $55
    inc [hl]
    ld d, [hl]
    sub b
    ld d, l
    and c
    ld d, l
    add sp, $55
    pop af
    ld d, l
    ld a, [$0355]
    ld d, [hl]
    inc c
    ld d, [hl]
    dec d
    ld d, [hl]
    add sp, $55
    daa
    ld d, [hl]
    ld e, $56
    add sp, $55
    or d
    ld d, l
    cp e
    ld d, l
    call nz, $cd55
    ld d, l
    sub $55
    rst $18
    ld d, l
    rst $18
    ld d, l
    rst $18
    ld d, l
    ld l, a
    ld d, [hl]
    or h

jr_004_484d:
    ld d, [hl]
    dec a
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    add b
    ld d, [hl]
    sub c
    ld d, [hl]
    and d
    ld d, [hl]
    xor e
    ld d, [hl]
    or h
    ld d, [hl]
    rst $28
    ld d, [hl]
    ld a, [hl]
    ld d, a
    push bc
    ld d, [hl]
    jp c, $ef56

    ld d, [hl]
    db $fc
    ld d, [hl]
    add hl, bc
    ld d, a
    ld d, $57
    inc hl
    ld d, a
    jr nc, jr_004_48c7

    ld h, h
    ld d, a
    rst $28
    ld d, [hl]
    inc hl
    ld d, a
    ld d, a
    ld d, a
    dec a
    ld d, a
    dec a
    ld d, a
    ld c, d
    ld d, a
    jr nc, jr_004_48d7

    rst $28
    ld d, [hl]
    ld [hl], c
    ld d, a
    ld a, [hl]
    ld d, a
    adc e
    ld d, a
    sub h
    ld d, a
    and l
    ld d, a
    or d
    ld d, a
    cp a
    ld d, a
    and l
    ld d, a
    sub h
    ld d, a
    adc e
    ld d, a
    ld a, [hl]
    ld d, a
    ld [hl], c
    ld d, a
    cp $57
    jr nz, jr_004_48f6

    call z, $e557
    ld d, a
    cp $57
    rrca
    ld e, b
    jr nz, @+$5a

    ld d, e
    ld e, b
    adc c
    ld e, b
    ld sp, $4258
    ld e, b
    ld d, e
    ld e, b
    ld e, h
    ld e, b
    ld h, l
    ld e, b
    ld l, [hl]
    ld e, b
    ld [hl], a
    ld e, b
    add b
    ld e, b
    adc c
    ld e, b
    or h
    ld e, b
    db $fc
    ld e, b
    sub d
    ld e, b
    and e
    ld e, b
    or h

jr_004_48c7:
    ld e, b
    add $58
    rst $08
    ld e, b
    ret c

    ld e, b
    pop hl
    ld e, b
    ld [$b458], a
    ld e, b
    cp l
    ld e, b
    di

jr_004_48d7:
    ld e, b
    db $fc
    ld e, b
    dec b
    ld e, c
    ret c

    ld e, b
    jr nc, jr_004_4939

    add hl, sp
    ld e, c
    ld c, $59
    rra
    ld e, c
    jr nc, jr_004_4941

    add hl, sp
    ld e, c
    ld b, d
    ld e, c
    ld l, l
    ld e, c
    db $76
    ld e, c
    ld a, a
    ld e, c
    jr nc, jr_004_494d

    ld c, e
    ld e, c

jr_004_48f6:
    ld d, h
    ld e, c
    adc b
    ld e, c
    ld l, l
    ld e, c
    sub c
    ld e, c
    ld bc, $cb5b
    ld e, c
    ldh a, [$59]
    xor [hl]
    ld e, c
    dec d
    ld e, d
    ld [hl-], a
    ld e, d
    ld c, a
    ld e, d
    ld l, h
    ld e, d
    adc c
    ld e, d
    and [hl]
    ld e, d
    and [hl]
    ld e, d
    jp $e45a


    ld e, d
    ld bc, $1e5b
    ld e, e
    and $5b
    ld e, $5b
    scf
    ld e, e
    ld e, $5b
    scf
    ld e, e
    ld d, b
    ld e, e
    ld l, c
    ld e, e
    add d
    ld e, e
    sbc e
    ld e, e
    or h
    ld e, e
    call $e65b
    ld e, e
    rst $38
    ld e, e
    inc c
    ld e, h
    add hl, de

jr_004_4939:
    ld e, h
    ld c, h
    ld e, h
    ld h, [hl]
    ld e, h
    ld [hl+], a
    ld e, h
    scf

jr_004_4941:
    ld e, h
    ld c, h
    ld e, h
    ld e, c
    ld e, h
    ld h, [hl]
    ld e, h
    ld [hl], e
    ld e, h
    add b
    ld e, h
    adc l

jr_004_494d:
    ld e, h
    sbc d
    ld e, h
    and a
    ld e, h
    add sp, $5c
    push af
    ld e, h
    ld [bc], a
    ld e, l
    rrca
    ld e, l
    ld b, [hl]
    ld e, l
    add a
    ld e, l
    inc e
    ld e, l
    ld sp, $465d
    ld e, l
    ld d, e
    ld e, l
    ld h, b
    ld e, l
    ld l, l
    ld e, l
    ld a, d
    ld e, l
    add a
    ld e, l
    sbc b
    ld e, l
    and l
    ld e, l
    or d
    ld e, l
    ld d, b
    ld e, [hl]
    di
    ld e, l
    cp a
    ld e, l
    ret nc

    ld e, l
    pop hl
    ld e, l
    ld [$f35d], a
    ld e, l
    ld d, b
    ld e, [hl]
    ld e, c
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld l, e
    ld e, [hl]
    pop hl
    ld e, l
    db $fc
    ld e, l
    dec b
    ld e, [hl]
    ld c, $5e
    rla
    ld e, [hl]
    jr nz, jr_004_49f4

    dec l
    ld e, [hl]
    ld a, [hl-]
    ld e, [hl]
    ld b, a
    ld e, [hl]
    ld d, b
    ld e, [hl]
    ldh a, [$5e]
    call z, Call_004_745e
    ld e, [hl]
    add l
    ld e, [hl]
    sub [hl]
    ld e, [hl]
    sbc a
    ld e, [hl]
    xor b
    ld e, [hl]
    or c
    ld e, [hl]
    cp d
    ld e, [hl]
    jp $cc5e


    ld e, [hl]
    sub [hl]
    ld e, [hl]
    call z, $d55e
    ld e, [hl]
    sbc $5e
    rst $20
    ld e, [hl]
    ldh a, [$5e]
    dec de
    ld e, a
    dec l
    ld e, a
    ld sp, hl
    ld e, [hl]
    ld a, [bc]
    ld e, a
    dec de
    ld e, a
    inc h
    ld e, a
    dec l
    ld e, a
    dec de
    ld e, a
    ld [hl], $5f
    ccf
    ld e, a
    add d
    ld e, a
    xor h
    ld e, a
    ld c, b
    ld e, a
    ld h, l
    ld e, a
    add d
    ld e, a
    sub a
    ld e, a
    xor h
    ld e, a
    add d
    ld e, a
    pop bc
    ld e, a
    sub $5f
    db $eb
    ld e, a
    ld a, [hl+]
    ld h, b
    ld l, e
    ld h, b
    nop
    ld h, b
    dec d
    ld h, b
    ld d, c
    ld h, b

jr_004_49f4:
    ld e, [hl]
    ld h, b
    ld l, e
    ld h, b
    ld a, b
    ld h, b
    scf
    ld h, b
    ld a, [hl+]
    ld h, b
    ld b, h
    ld h, b
    ld b, h
    ld h, b
    ld a, [hl+]
    ld h, b
    ld b, h
    ld h, b
    ld a, [hl+]
    ld h, b
    add l
    ld h, b
    sub d
    ld h, b
    scf
    ld h, c
    sub d
    ld h, b
    sub d
    ld h, b
    sub d
    ld h, b
    or e
    ld h, b
    call nc, $9260
    ld h, b
    push af
    ld h, b
    ld d, $61
    ld l, h
    ld h, c
    ld [hl], l
    ld h, c
    ld a, [hl]
    ld h, c
    add a
    ld h, c
    sub b
    ld h, c
    sub l
    ld h, c
    xor [hl]
    ld h, c
    xor [hl]
    ld h, c
    rst $00
    ld h, c
    ret z

    ld h, d
    db $e4
    ld h, c
    add hl, bc
    ld h, d
    rst $00
    ld h, c
    ld l, $62
    ld b, a
    ld h, d
    ld h, b
    ld h, d
    ld a, c
    ld h, d
    sub d
    ld h, d
    xor a
    ld h, d
    ret z

    ld h, d
    push hl
    ld h, d
    ld [bc], a
    ld h, e
    xor a
    ld h, d
    ret z

    ld h, d
    rst $00
    ld h, c
    rra
    ld h, e
    ld b, b
    ld h, e
    ld [hl], l
    ld h, c
    ld a, [hl]
    ld h, c
    add a
    ld h, c
    sub b
    ld h, c
    ld [hl], a
    ld h, e
    add c
    ld h, e
    ld e, l
    ld h, e
    ld l, d
    ld h, e
    ld [hl], a
    ld h, e
    ld a, h
    ld h, e
    add c
    ld h, e
    xor b
    ld h, e
    or c
    ld h, e
    add [hl]
    ld h, e
    sub a
    ld h, e
    xor b
    ld h, e
    or c
    ld h, e
    cp d
    ld h, e
    jp $cc63


    ld h, e
    push de
    ld h, e
    sbc $63
    rst $20
    ld h, e
    call z, $d563
    ld h, e
    ldh a, [$63]
    ld sp, hl
    ld h, e
    inc l
    ld h, h
    ld h, b
    ld h, h
    ld [bc], a
    ld h, h
    rla
    ld h, h
    inc l
    ld h, h
    add hl, sp
    ld h, h
    ld b, [hl]
    ld h, h
    ld d, e
    ld h, h
    ld h, b
    ld h, h
    add hl, sp
    ld h, h
    adc a
    ld h, h
    ld sp, hl
    ld h, h
    ld l, l
    ld h, h
    ld a, [hl]
    ld h, h
    adc a
    ld h, h
    sbc b
    ld h, h
    and c
    ld h, h
    push de
    ld h, h
    sbc $64
    rst $20
    ld h, h
    ldh a, [$64]
    ld sp, hl
    ld h, h
    inc h
    ld h, l
    ld [hl], $65
    ld [bc], a
    ld h, l
    inc de
    ld h, l
    inc h
    ld h, l
    dec l
    ld h, l
    ld [hl], $65
    ld h, c
    ld h, l
    adc [hl]
    ld h, l
    ccf
    ld h, l
    ld d, b
    ld h, l
    ld h, c
    ld h, l
    ld l, d
    ld h, l
    ld [hl], e
    ld h, l
    ld a, h
    ld h, l
    add l
    ld h, l
    ld a, h
    ld h, l
    adc [hl]
    ld h, l
    sub a
    ld h, l
    and b
    ld h, l
    xor c
    ld h, l
    add l
    ld h, l
    or d
    ld h, l
    cp e
    ld h, l
    call nz, $c465
    ld h, l
    or d
    ld h, l
    cp e
    ld h, l
    call nz, $ef65
    ld h, l
    ld hl, sp+$65
    call $de65
    ld h, l
    rst $28
    ld h, l
    ld hl, sp+$65
    ld bc, $3c66
    ld h, [hl]
    inc a
    ld h, [hl]
    ld a, [bc]
    ld h, [hl]
    inc hl
    ld h, [hl]
    ld c, l
    ld h, [hl]
    ld e, [hl]
    ld h, [hl]
    ld l, a
    ld h, [hl]
    add b
    ld h, [hl]
    ld l, a
    ld h, [hl]
    ld e, [hl]
    ld h, [hl]
    ld c, l
    ld h, [hl]
    sub l
    ld h, [hl]
    ld [hl], l
    ld h, c
    ld a, [hl]
    ld h, c
    add a
    ld h, c
    sub b
    ld h, c
    and h
    ld h, a
    or c
    ld h, a
    or a
    ld h, [hl]
    ret c

    ld h, [hl]
    sbc [hl]
    ld h, [hl]
    ld sp, hl
    ld h, [hl]
    ld [de], a
    ld h, a
    dec hl
    ld h, a
    ld b, h
    ld h, a
    sbc [hl]
    ld h, [hl]
    ld e, l
    ld h, a
    db $76
    ld h, a
    adc a
    ld h, a
    and h
    ld h, a
    ld [hl+], a
    ld l, b
    ld b, [hl]
    ld l, b
    db $d3
    ld h, a
    db $e4
    ld h, a
    jp z, $f567

    ld h, a
    cp $67
    rlca
    ld l, b
    db $10
    ld l, b
    add hl, de
    ld l, b
    ld [hl+], a

Call_004_4b4f:
    ld l, b
    add hl, de
    ld l, b
    dec hl
    ld l, b
    inc [hl]
    ld l, b
    dec a
    ld l, b
    ld c, a
    ld l, b
    xor a
    ld l, c
    ld a, b
    ld l, b
    xor c
    ld l, b
    ld c, a
    ld l, b
    jp c, $0368

    ld l, c
    inc l
    ld l, c
    ld e, c
    ld l, c
    add d
    ld l, c
    add d
    ld l, c
    add d
    ld l, c
    add d
    ld l, c
    ld c, a
    ld l, b
    ret c

    ld l, c
    db $dd
    ld l, c
    and $69
    db $eb
    ld l, c
    ldh a, [rBCPD]
    ldh a, [rBCPD]
    ldh a, [rBCPD]
    ldh a, [rBCPD]
    ldh a, [rBCPD]
    push af
    ld l, c
    ld a, [$8269]
    ld l, d
    scf
    ld l, d
    inc bc
    ld l, d
    inc d
    ld l, d
    dec h
    ld l, d
    ld l, $6a
    scf
    ld l, d
    dec h
    ld l, d
    ld b, b
    ld l, d
    ld c, c
    ld l, d
    dec h
    ld l, d
    ld d, d
    ld l, d
    ld e, e
    ld l, d
    ld h, h
    ld l, d
    ld [hl], c
    ld l, d
    add d
    ld l, d
    ld a, $6b
    cp [hl]
    ld l, d
    sub e
    ld l, d
    and h
    ld l, d
    or l
    ld l, d
    cp [hl]
    ld l, d
    rst $00
    ld l, d
    or l
    ld l, d
    ret nc

    ld l, d
    reti


    ld l, d
    or l
    ld l, d
    ld [c], a
    ld l, d
    db $eb
    ld l, d
    db $f4
    ld l, d
    db $fd
    ld l, d
    ld b, $6b
    rrca
    ld l, e
    inc e
    ld l, e
    add hl, hl
    ld l, e
    ld a, $6b
    db $fc
    ld l, e
    sub [hl]
    ld l, e
    ld d, e
    ld l, e
    ld l, h
    ld l, e
    add l
    ld l, e
    sub [hl]
    ld l, e
    and a
    ld l, e
    add l
    ld l, e
    cp b
    ld l, e
    ret


    ld l, e
    add l
    ld l, e
    jp c, $eb6b

    ld l, e
    db $fc
    ld l, e
    add l
    ld l, e
    cp b
    ld l, e
    dec c
    ld l, h
    ld e, $6c
    ld d, c
    ld l, h
    ld h, e
    ld l, h
    cpl
    ld l, h
    ld b, b
    ld l, h
    ld e, d
    ld l, h
    ld h, e
    ld l, h
    ld l, h
    ld l, h
    ld [hl], l
    ld l, h
    or b
    ld l, h
    pop bc
    ld l, h
    ld a, [hl]
    ld l, h
    sub a
    ld l, h
    or b
    ld l, h
    pop bc
    ld l, h
    jp nc, $b06c

    ld l, h
    db $e3
    ld l, h
    ld hl, sp+$6c
    dec c
    ld l, l
    ld h, $6d
    or b
    ld l, h
    ld [hl], c
    ld l, l
    adc e
    ld l, l
    ccf
    ld l, l
    ld e, b
    ld l, l
    ld [hl], c
    ld l, l
    ld a, d
    ld l, l
    adc e
    ld l, l
    cp [hl]
    ld l, l
    rst $08
    ld l, l
    cp [hl]
    ld l, l
    adc e
    ld l, l
    cp [hl]
    ld l, l
    rst $08
    ld l, l
    cp [hl]
    ld l, l
    ldh [$6d], a
    jp hl


    ld l, l
    jr z, jr_004_4cb0

    dec [hl]
    ld l, [hl]
    cp $6d
    inc de
    ld l, [hl]
    jr z, jr_004_4cb8

    dec [hl]
    ld l, [hl]
    ld b, d
    ld l, [hl]
    ld c, a
    ld l, [hl]
    ld e, h
    ld l, [hl]
    ld l, c
    ld l, [hl]
    db $76
    ld l, [hl]
    add e
    ld l, [hl]
    ld [$346e], a
    ld l, a
    sub b
    ld l, [hl]
    cp l
    ld l, [hl]
    ld [$0f6e], a
    ld l, a
    inc [hl]
    ld l, a
    ld e, c
    ld l, a
    ld a, [hl]
    ld l, a
    and e
    ld l, a
    ret z

    ld l, a
    db $ed
    ld l, a
    and d
    ld [hl], b
    rst $00
    ld [hl], b
    ld e, e
    ld [hl], c
    add b
    ld [hl], c
    ld de, $a571
    ld [hl], c
    rst $38
    ld [hl], c
    jp nc, $1171

    ld [hl], c
    ld [hl], $71
    ld e, e
    ld [hl], c
    db $ec
    ld [hl], b
    and d
    ld [hl], b
    ld [$336e], a
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld e, b
    ld [hl], b
    ld a, l
    ld [hl], b
    ld l, [hl]
    ld [hl], d
    inc hl
    ld [hl], e
    inc [hl]
    ld [hl], d
    ld d, c
    ld [hl], d
    add e
    ld [hl], d
    sub h
    ld [hl], d
    xor c
    ld [hl], d
    cp [hl]
    ld [hl], d
    db $d3
    ld [hl], d
    db $e4
    ld [hl], d
    ld sp, hl
    ld [hl], d
    ld c, $73
    ld l, d
    ld [hl], e
    ld a, e
    ld [hl], e

jr_004_4cb0:
    jr c, jr_004_4d25

    ld d, c
    ld [hl], e
    ld l, d
    ld [hl], e
    ld a, e
    ld [hl], e

jr_004_4cb8:
    adc h
    ld [hl], e
    ei
    ld [hl], e
    xor h
    ld [hl], h
    and c
    ld [hl], e
    adc $73
    ei
    ld [hl], e
    jr nz, jr_004_4d3a

    ld b, c
    ld [hl], h
    ld h, d
    ld [hl], h
    add a
    ld [hl], h
    xor h
    ld [hl], h
    call $ee74
    ld [hl], h
    ld b, $76
    push hl
    ld [hl], l
    call nz, $9f75
    ld [hl], l
    ld a, d
    ld [hl], l
    ld e, c
    ld [hl], l
    jr c, jr_004_4d55

    inc de
    ld [hl], l
    jr jr_004_4d5b

    dec de
    ld a, b
    jr jr_004_4d5f

    jr jr_004_4d61

    jr jr_004_4d63

    add hl, sp
    ld [hl], a
    ld e, d
    ld [hl], a
    ld a, a
    ld [hl], a
    xor h
    ld [hl], a
    pop de
    ld [hl], a
    ld b, b
    ld a, b

Call_004_4cf8:
    ld b, b
    ld a, b
    ld b, b
    ld a, b
    ld b, b
    ld a, b
    ld b, b
    ld a, b
    ld d, l
    ld a, b
    ld l, d
    ld a, b
    ld a, a
    ld a, b
    sub h
    ld a, b
    xor c
    ld a, b
    cp [hl]
    ld a, b
    db $d3
    ld a, b
    add sp, $78
    db $fd
    ld a, b
    ld [de], a
    ld a, c
    daa
    ld a, c
    cp [hl]
    ld a, b
    cp [hl]
    ld a, b
    cp [hl]
    ld a, b
    cp [hl]
    ld a, b
    cp [hl]
    ld a, b
    db $d3
    ld a, b
    ld b, b
    ld a, b
    ld d, l

jr_004_4d25:
    ld a, b
    ld l, d
    ld a, b
    ld a, a
    ld a, b
    sub h
    ld a, b
    xor c
    ld a, b
    add sp, $78
    db $fd
    ld a, b
    ld [de], a
    ld a, c
    daa
    ld a, c
    inc a
    ld a, c
    ld b, c
    ld a, c

jr_004_4d3a:
    ld c, d
    ld a, c
    ld [hl], e
    ld a, c
    ld [hl], e
    ld a, c
    adc b
    ld a, c
    sbc l
    ld a, c
    ld [hl], e
    ld a, c
    or d
    ld a, c
    rst $00
    ld a, c
    call c, $2379
    ld a, d
    ld [hl], e
    ld a, c
    ld a, [bc]
    ld a, d
    pop af
    ld a, c
    ld a, [bc]

jr_004_4d55:
    ld a, d
    ld [hl], e
    ld a, c
    jr c, jr_004_4dd4

    ld d, c

jr_004_4d5b:
    ld a, d
    ld l, d
    ld a, d
    ld a, e

jr_004_4d5f:
    ld a, d
    or c

jr_004_4d61:
    ld a, d
    ld a, e

jr_004_4d63:
    ld a, d
    ld a, e
    ld a, d
    ld a, e
    ld a, d
    add h
    ld a, d
    adc l
    ld a, d
    sub [hl]
    ld a, d
    sbc a
    ld a, d
    xor b
    ld a, d
    xor b
    ld a, d
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    cp d
    ld a, d
    ldh a, [$7a]
    cp d
    ld a, d
    cp d
    ld a, d
    cp d
    ld a, d
    jp $cc7a


    ld a, d
    push de
    ld a, d
    sbc $7a
    rst $20
    ld a, d
    rst $20
    ld a, d
    cp d
    ld a, d
    ldh a, [$7a]
    cp d
    ld a, d
    cp d
    ld a, d
    cp d
    ld a, d
    jp $cc7a


    ld a, d
    push de
    ld a, d
    sbc $7a
    rst $20
    ld a, d
    rst $20
    ld a, d
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    ld a, e
    ld a, d
    or c
    ld a, d
    ld a, e
    ld a, d
    ld a, e
    ld a, d
    ld a, e
    ld a, d
    add h
    ld a, d
    adc l
    ld a, d
    sub [hl]
    ld a, d
    sbc a
    ld a, d
    xor b
    ld a, d
    xor b
    ld a, d
    ld sp, hl
    ld a, d
    ld h, $7b
    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, d

jr_004_4dd4:
    ld [bc], a
    ld a, e
    dec bc
    ld a, e
    inc d
    ld a, e
    dec e
    ld a, e
    inc d
    ld a, e
    cpl
    ld a, e
    jr c, jr_004_4e5d

    ld sp, hl
    ld a, d
    ld b, l
    ld a, e
    ld d, d
    ld a, e
    ld e, a
    ld a, e
    ld [hl], h
    ld a, e
    ld e, a
    ld a, e
    ld d, d
    ld a, e
    ld b, l
    ld a, e
    rst $38
    nop
    ld hl, sp+$6a
    stop
    nop
    ld a, d
    db $10
    rst $38
    nop
    ld hl, sp+$6c
    stop
    nop
    ld a, h
    db $10
    rst $38
    nop
    ld hl, sp+$6e
    stop
    nop
    ld a, [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$78
    stop
    nop
    adc d
    db $10
    rst $38
    nop
    ld hl, sp-$74
    stop
    nop
    adc [hl]
    db $10
    rst $38
    nop
    rst $30
    sub b
    stop
    rst $38
    sub d
    db $10
    rst $38
    nop
    rst $30
    adc [hl]
    jr nc, jr_004_4e2e

jr_004_4e2e:
    rst $38
    adc h
    jr nc, @+$01

    nop
    ld hl, sp-$6e
    jr nc, jr_004_4e37

jr_004_4e37:
    nop
    sub b
    jr nc, @+$01

    nop
    rst $30
    adc h
    stop
    rst $38
    adc [hl]
    db $10
    rst $38
    nop
    ldh a, [$90]
    stop
    ld hl, sp-$6e
    stop
    nop
    sub h
    db $10
    rst $38
    nop
    ld hl, sp-$72
    jr nc, jr_004_4e56

jr_004_4e56:
    nop
    adc h
    jr nc, @+$01

    nop
    rst $30
    sub h

jr_004_4e5d:
    jr nc, jr_004_4e5f

jr_004_4e5f:
    rst $38
    sub d
    jr nc, jr_004_4e63

jr_004_4e63:
    rlca
    sub b
    jr nc, @+$01

    ld hl, sp-$08
    sub [hl]
    nop
    ld hl, sp+$00
    sbc d
    nop
    ld [$98f8], sp
    nop
    ld [$9c00], sp
    nop
    rst $38
    db $fc
    ld hl, sp-$20
    db $10
    db $fc
    nop
    ldh a, [rNR10]
    inc c
    ld hl, sp-$1e
    db $10
    inc c
    nop
    ld a, [c]
    db $10
    rst $38
    ei
    ld hl, sp-$14
    db $10
    ei
    nop
    db $fc
    db $10
    dec bc
    ld hl, sp-$32
    db $10
    dec bc
    nop
    sbc $10
    rst $38
    pop af
    ld hl, sp+$4e
    db $10
    pop af
    nop
    ld e, [hl]
    db $10
    db $fc
    ld hl, sp-$34
    db $10
    db $fc
    nop
    call c, $0c10
    ld hl, sp-$1e
    db $10
    inc c
    nop
    ld a, [c]
    db $10
    rst $38
    pop af
    ld hl, sp+$4c
    db $10
    pop af
    nop
    ld e, h
    db $10
    db $fc
    ld hl, sp-$14
    db $10
    db $fc
    nop
    db $fc
    db $10
    inc c
    ld hl, sp-$1e
    db $10
    inc c
    nop
    ld a, [c]
    db $10
    rst $38
    ei
    ld hl, sp-$1c
    db $10
    ei
    nop
    db $f4
    db $10
    dec bc
    ld hl, sp-$1a
    db $10
    dec bc
    nop
    or $10
    rst $38
    ei
    ld hl, sp-$18
    db $10
    ei
    nop
    ld hl, sp+$10
    dec bc
    ld hl, sp-$16
    db $10
    dec bc
    nop
    ld_long a, $ff10
    ld a, [$ecf8]
    db $10
    ld a, [$fc00]
    db $10
    ld a, [bc]
    ld hl, sp-$12
    db $10
    ld a, [bc]
    nop
    cp $10
    rst $38
    ei
    ld hl, sp-$34
    db $10
    ei
    nop
    call c, $0b10
    ld hl, sp-$32
    db $10
    dec bc
    nop
    sbc $10
    rst $38
    db $fc
    ld hl, sp-$30
    db $10
    db $fc
    nop
    ldh a, [rNR10]
    inc c
    ld hl, sp-$1e
    db $10
    inc c
    nop
    ld a, [c]
    db $10
    rst $38
    db $fc
    ldh a, [$c0]
    db $10
    db $fc
    ld hl, sp-$3e
    db $10
    db $fc
    nop
    jp nc, $0c10

    ld hl, sp-$1e
    db $10
    inc c
    nop
    ld a, [c]
    db $10
    rst $38
    db $f4
    ldh a, [$c6]
    db $10
    db $fc
    ld hl, sp-$3c
    db $10
    db $fc
    nop
    call nc, $0c10
    ld hl, sp-$1e
    db $10
    inc c
    nop
    ld a, [c]
    db $10
    rst $38
    ei
    ld hl, sp-$38
    db $10
    ei
    nop
    ret c

    db $10
    ei
    ld [$10d6], sp
    dec bc
    ld hl, sp-$1a
    db $10
    dec bc
    nop
    or $10
    rst $38
    ei
    ld hl, sp-$38
    db $10
    ei
    nop
    jp z, $fb10

    ld [$10da], sp
    dec bc
    ld hl, sp-$1a
    db $10
    dec bc
    nop
    or d
    db $10
    dec bc
    ld [$10b0], sp
    rst $38
    ei
    ld hl, sp-$38
    db $10
    ei
    nop
    or h
    db $10
    ei
    ld [$10b6], sp
    dec bc
    ld hl, sp-$1a
    db $10
    dec bc
    nop
    or d
    db $10
    dec bc
    ld [$10b8], sp
    rst $38
    db $ec
    ld hl, sp-$54
    db $10
    db $ec
    nop
    cp h
    db $10
    db $f4
    ldh a, [$ba]
    db $10
    db $fc
    ld hl, sp-$52
    db $10
    db $fc
    nop
    cp [hl]
    db $10
    inc c
    ld hl, sp-$1e
    db $10
    inc c
    nop
    ld a, [c]
    db $10
    rst $38
    ld [$acf8], a
    db $10
    ld [$bc00], a
    db $10
    ld a, [c]
    ldh a, [$ba]
    db $10
    ld a, [$aef8]
    db $10
    ld a, [$be00]
    db $10
    ld a, [bc]
    ld hl, sp-$12
    db $10
    ld a, [bc]
    nop
    cp $10
    rst $38
    db $eb
    ld hl, sp-$54
    db $10
    db $eb
    nop
    cp h
    db $10
    di
    ldh a, [$ba]
    db $10
    ei
    ld hl, sp-$52
    db $10
    ei
    nop
    cp [hl]
    db $10
    dec bc
    ld hl, sp-$32
    db $10
    dec bc
    nop
    sbc $10
    rst $38
    nop
    ret nz

    sbc d
    stop
    ret z

    adc b
    stop
    ret nc

    adc d
    stop
    ret c

    adc h
    stop
    ldh [$8e], a
    stop
    add sp, -$70
    db $10
    rst $38
    nop
    ret nc

    sub d
    stop
    ret c

    sub h
    stop
    ldh [$96], a
    stop
    add sp, -$68
    db $10
    rst $38
    nop
    ld hl, sp-$6e
    nop
    nop
    nop
    adc b
    nop
    rst $38
    nop
    ld hl, sp-$76
    nop
    nop
    nop
    adc h
    nop
    rst $38
    nop
    db $fd
    adc [hl]
    nop
    rst $38
    nop
    db $fd
    sub b
    nop
    rst $38
    nop
    ld hl, sp-$6c
    nop
    nop
    nop
    adc b
    nop
    rst $38
    nop
    or $9a
    stop
    cp $98
    db $10
    rst $38
    nop
    or $9a
    stop
    cp $98
    db $10
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    db $10
    rst $38
    nop
    or $9a
    stop
    cp $98
    db $10
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    db $10
    rst $38
    nop
    or $96
    stop
    cp $94
    db $10
    rst $38
    nop
    or $9e
    stop
    cp $9c
    db $10
    rst $38
    nop
    ldh a, [$a0]
    stop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    push af
    or $4e
    db $10
    push af
    cp $5e
    stop
    ldh a, [$a2]
    stop
    ld hl, sp-$4e
    stop
    nop
    jp nz, $ff10

    xor $f6
    ld c, h
    db $10
    xor $fe
    ld e, h
    db $10
    ldh a, [$f8]
    ret nc

    stop
    ldh a, [$a8]
    stop
    ld hl, sp-$48
    db $10
    cp $00
    ret z

    db $10
    rst $38
    nop
    ldh a, [$a2]
    stop
    ld hl, sp-$4e
    stop
    nop
    jp nz, $ff10

    nop
    ldh a, [$a4]
    stop
    ld hl, sp-$4c
    stop
    nop
    call nz, $ff10
    nop
    ldh a, [$a6]
    stop
    ld hl, sp-$4a
    stop
    nop
    add $10
    rst $38
    ldh a, [$f8]
    ret nc

    stop
    ldh a, [$a8]
    stop
    ld hl, sp-$48
    db $10
    cp $00
    ret z

    db $10
    rst $38
    ldh a, [$f2]
    xor d
    db $10
    ldh a, [$fa]
    xor h
    stop
    ld a, [c]
    cp d
    stop
    ld a, [$10ca]
    rst $38
    ldh a, [$f4]
    cp h
    db $10
    ldh a, [$fc]
    call z, $ff10
    ldh a, [$f7]
    xor [hl]
    stop
    di
    cp [hl]
    stop
    ei
    adc $10
    rst $38
    nop
    ld hl, sp-$20
    stop
    nop
    ldh a, [rNR10]
    rst $38
    nop
    or $e0
    stop
    cp $f0
    db $10
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    db $10
    rst $38
    nop
    or $d6
    stop
    cp $d4
    db $10
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    db $10
    rst $38
    nop
    ld hl, sp-$1e
    stop
    nop
    ld a, [c]
    db $10
    rst $38
    nop
    ld hl, sp-$1c
    stop
    nop
    db $f4
    db $10
    rst $38
    nop
    ld hl, sp-$1a
    stop
    nop
    or $10
    rst $38
    nop
    ld hl, sp-$18
    stop
    nop
    ld hl, sp+$10
    rst $38
    nop
    ld hl, sp-$16
    stop
    nop
    ld_long a, $ff10
    nop
    ld hl, sp-$14
    stop
    nop
    db $fc
    db $10
    rst $38
    nop
    ld hl, sp-$12
    stop
    nop
    cp $10
    rst $38
    nop
    ld hl, sp-$2a
    stop
    nop
    call nc, $ff10
    nop
    ld hl, sp-$26
    stop
    nop
    ret c

    db $10
    rst $38
    nop
    db $f4
    call c, RST_30
    db $fc
    sbc $10
    nop
    inc b
    call c, $ff10
    nop
    ld hl, sp-$66
    stop
    nop
    sbc b
    db $10
    rst $38
    rst $30
    ld hl, sp+$4e
    db $10
    rst $30
    nop
    ld e, [hl]
    stop
    ld hl, sp-$66
    stop
    nop
    sbc b
    db $10
    rst $38
    rst $30
    ld hl, sp+$4c
    db $10
    rst $30
    nop
    ld e, h
    stop
    ld hl, sp-$66
    stop
    nop
    sbc b
    db $10
    rst $38
    nop
    ld hl, sp-$62
    stop
    nop
    sbc h
    db $10
    rst $38
    nop
    rst $30
    sbc h
    jr nc, jr_004_51d1

jr_004_51d1:
    cp $9e
    jr nc, @+$01

    nop
    rst $30
    sbc b
    jr nc, jr_004_51da

jr_004_51da:
    cp $9a
    jr nc, @+$01

    nop
    db $fc
    xor d
    db $10
    rst $38
    nop
    ei
    xor h
    db $10
    rst $38
    pop af
    ld hl, sp+$4e
    db $10
    pop af
    nop
    ld e, [hl]
    stop
    db $fc
    xor d
    db $10
    rst $38
    pop af
    ld hl, sp+$4c
    db $10
    pop af
    nop
    ld e, h
    stop
    db $fc
    xor d
    db $10
    rst $38
    nop
    ei
    xor [hl]
    db $10
    rst $38
    nop
    db $fc
    xor h
    jr nc, @+$01

    nop
    db $fc
    xor [hl]
    jr nc, @+$01

    nop
    db $fc
    cp d
    db $10
    rst $38
    nop
    db $fc
    cp d
    db $10
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    db $10
    rst $38
    nop
    db $fc
    cp d
    db $10
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    db $10
    rst $38
    nop
    db $fc
    cp h
    db $10
    rst $38
    nop
    db $fc
    cp [hl]
    db $10
    rst $38
    pop af
    db $fc
    db $f4
    db $10
    ld bc, $eef8
    db $10
    ld bc, $fe00
    db $10
    rst $38
    db $f4
    ld a, [$104e]
    db $f4
    ld [bc], a
    ld e, [hl]
    db $10
    ld bc, $daf8
    db $10
    ld bc, $ea00
    db $10
    ld bc, $fa08
    db $10
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    db $10
    ld bc, $cef4
    db $10
    ld bc, $defc
    db $10
    ld bc, $fc04
    db $10
    rst $38
    pop af
    ld hl, sp-$30
    db $10
    pop af
    nop
    ldh [rNR10], a
    ld bc, $eef8
    db $10
    ld bc, $fe00
    db $10
    rst $38
    pop af
    ld hl, sp-$20
    jr nc, @-$0d

    nop
    ret nc

    jr nc, @+$03

    ld hl, sp-$12
    db $10
    ld bc, $fe00
    db $10
    rst $38
    pop af
    nop
    db $f4
    stop
    ld hl, sp-$2e
    db $10
    ld bc, $e400
    db $10
    rst $38
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    ld bc, $f208
    db $10
    rst $38
    pop af
    db $fc
    call nc, $0110
    ld hl, sp-$2a
    db $10
    ld bc, $e600
    db $10
    rst $38
    ld bc, $daf8
    db $10
    ld bc, $d800
    db $10
    ld bc, $e808
    db $10
    rst $38
    ld bc, $daf8
    db $10
    ld bc, $ea00
    db $10
    ld bc, $fa08
    db $10
    rst $38
    pop af
    nop
    or $10
    ld bc, $daf8
    db $10
    ld bc, $f800
    db $10
    rst $38
    ld bc, $dcf4
    db $10
    ld bc, $ecfc
    db $10
    ld bc, $f004
    db $10
    rst $38
    ld bc, $dcf4
    db $10
    ld bc, $ecfc
    db $10
    ld bc, $fc04
    db $10
    rst $38
    ld bc, $dcf4
    db $10
    ld bc, $ecfc
    db $10
    ld bc, $fc04
    ld d, b
    rst $38
    ld bc, $cef4
    db $10
    ld bc, $defc
    db $10
    ld bc, $fc04
    db $10
    rst $38
    or $f8
    ret nz

    db $10
    or $00
    ret nz

    jr nc, jr_004_531e

jr_004_531e:
    db $fc
    call nz, $ff10
    jp hl


    ld sp, hl
    ld c, [hl]
    db $10
    jp hl


    ld bc, $105e
    or $f8
    ret nz

    db $10
    or $00
    ret nz

    jr nc, jr_004_5333

jr_004_5333:
    db $fc
    call nz, $ff10
    jp hl


    ld sp, hl
    ld c, h
    db $10
    jp hl


    ld bc, $105c
    or $f8
    ret nz

    db $10
    or $00
    ret nz

    jr nc, jr_004_5348

jr_004_5348:
    db $fc
    call nz, $ff10
    ld hl, sp-$0c
    ret nz

    db $10
    ld hl, sp-$04
    ret nz

    jr nc, jr_004_5355

jr_004_5355:
    ei
    add $10
    rst $38
    db $fd
    xor $c0
    db $10
    db $fd
    or $c0
    jr nc, jr_004_5362

jr_004_5362:
    ld hl, sp-$38
    stop
    nop
    jp z, $ff10

    nop
    ld hl, sp-$3e
    stop
    nop
    jp nz, $ff30

    db $fd
    ld [bc], a
    ret nz

    db $10
    db $fd
    ld a, [bc]
    ret nz

    jr nc, jr_004_537c

jr_004_537c:
    ld hl, sp-$36
    jr nc, jr_004_5380

jr_004_5380:
    nop
    ret z

    jr nc, @+$01

    ld hl, sp-$04
    ret nz

    db $10
    ld hl, sp+$04
    ret nz

    jr nc, jr_004_538d

jr_004_538d:
    db $fd
    add $30
    rst $38
    pop af
    ld hl, sp-$20
    db $10
    pop af
    nop
    ldh a, [rNR10]
    ld bc, $c2ed
    db $10
    ld bc, $d2f5
    db $10
    ld bc, $e2fd
    db $10
    ld bc, $f205
    db $10
    rst $38
    ld a, [c]
    rst $28
    adc [hl]
    db $10
    ld a, [c]
    rst $30
    sbc [hl]
    db $10
    ld a, [c]
    rst $38
    xor [hl]
    db $10
    ld a, [c]
    rlca
    cp [hl]
    db $10
    ld bc, $c2ed
    db $10
    ld bc, $d2f5
    db $10
    ld bc, $c0fd
    db $10
    ld bc, $d005
    db $10
    rst $38
    ldh a, [$f8]
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [rNR10]
    nop
    db $ed
    call nz, RST_10
    push af
    call nc, RST_10
    db $fd
    db $e4
    stop
    dec b
    db $f4
    db $10
    rst $38
    ldh a, [$f8]
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [rNR10]
    nop
    db $ed
    add $10
    nop
    push af
    sub $10
    nop
    db $fd
    and $10
    nop
    dec b
    or $10
    rst $38
    ldh a, [$f3]
    ret c

    db $10
    ldh a, [$fb]
    add sp, $10
    ldh a, [$03]
    ld hl, sp+$10
    nop
    db $eb
    cp b
    stop
    di
    ret z

    stop
    ei
    ld [$0010], a
    inc bc
    ld_long a, $ff10
    ldh a, [$f3]
    ret c

    db $10
    ldh a, [$fb]
    add sp, $10
    ldh a, [$03]
    ld hl, sp+$10
    nop
    di
    jp c, RST_10

    ei
    ld [$0010], a
    inc bc
    ld a, [$1010]
    db $f4
    jp z, $ff10

    ldh a, [$f4]
    call c, $f010
    db $fc
    db $ec
    db $10
    ldh a, [rDIV]
    db $fc
    stop
    db $f4
    sbc $10
    nop
    db $fc
    xor $10
    nop
    inc b
    cp $10
    rst $38
    pop af
    ld hl, sp-$20
    db $10
    pop af
    nop
    ldh a, [rNR10]
    ld bc, $bced
    db $10
    ld bc, $ccf5
    db $10
    ld bc, $e2fd
    db $10
    ld bc, $f205
    db $10
    rst $38
    ldh a, [$f3]
    sub b
    db $10
    ldh a, [$fb]
    and b
    db $10
    ldh a, [$03]
    or b
    stop
    di
    sub d
    stop
    ei
    and d
    stop
    inc bc
    or d
    db $10
    rst $38
    ldh a, [$f4]
    sub h
    db $10
    ldh a, [$fc]
    and h
    db $10
    ldh a, [rDIV]
    or h
    stop
    db $f4
    sub [hl]
    stop
    db $fc
    and [hl]
    stop
    inc b
    or [hl]
    db $10
    rst $38
    ldh a, [$f8]
    adc b
    db $10
    ldh a, [rP1]
    sbc b
    db $10
    ldh a, [$08]
    xor b
    stop
    ld hl, sp-$76
    stop
    nop
    sbc d
    stop
    ld [$10aa], sp
    nop
    db $10
    cp d
    db $10
    rst $38
    nop
    ldh a, [$8c]
    stop
    ld hl, sp-$64
    stop
    nop
    xor h
    stop
    ld [$10ce], sp
    rst $38
    nop
    ld hl, sp-$76
    nop
    nop
    nop
    adc h
    nop
    rst $38
    nop
    ld hl, sp-$72
    nop
    nop
    nop
    sub b
    nop
    rst $38
    nop
    ei
    sub d
    nop
    rst $38
    nop
    ld hl, sp-$54
    jr nc, jr_004_54e5

jr_004_54e5:
    nop
    xor h
    db $10
    rst $38
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    stop
    ld hl, sp-$62
    stop
    nop
    xor [hl]
    db $10
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    stop
    ld hl, sp-$62
    stop
    nop
    xor [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$56
    jr nc, jr_004_5510

jr_004_5510:
    nop
    xor d
    db $10
    rst $38
    nop
    ld hl, sp-$58
    jr nc, jr_004_5519

jr_004_5519:
    nop
    xor b
    db $10
    rst $38
    nop
    ld hl, sp-$5a
    jr nc, jr_004_5522

jr_004_5522:
    nop
    and [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$5c
    jr nc, jr_004_552b

jr_004_552b:
    nop
    and h
    db $10
    rst $38
    nop
    ld hl, sp-$5e
    stop
    nop
    and b
    db $10
    rst $38
    nop
    ld hl, sp-$60
    jr nc, jr_004_553d

jr_004_553d:
    nop
    and d
    jr nc, @+$01

    nop
    ld hl, sp-$62
    stop
    nop
    xor [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$4a
    stop
    nop
    or h
    db $10
    rst $38
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    stop
    or $b6
    stop
    cp $b4
    db $10
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    stop
    or $b6
    stop
    cp $b2
    db $10
    rst $38
    nop
    or $b6
    stop
    cp $b2
    db $10
    rst $38
    nop
    or $ba
    stop
    cp $b8
    db $10
    rst $38
    nop
    or $be
    stop
    cp $bc
    db $10
    rst $38
    pop af
    or $4e
    db $10
    pop af
    db $fd
    ld e, [hl]
    stop
    or $e0
    stop
    cp $f0
    db $10
    rst $38
    pop af
    rst $30
    ld c, h
    db $10
    pop af
    cp $5c
    stop
    rst $30
    db $ec
    stop
    rst $38
    db $fc
    db $10
    rst $38
    nop
    ld hl, sp-$3c
    stop
    nop
    call nc, $ff10
    nop
    ld hl, sp-$3a
    stop
    nop
    sub $10
    rst $38
    nop
    ld hl, sp-$38
    stop
    nop
    ret c

    db $10
    rst $38
    nop
    rst $30
    jp z, RST_10

    rst $38
    jp c, $ff10

    nop
    or $cc
    stop
    cp $dc
    db $10
    rst $38
    nop
    or $ce
    stop
    cp $de
    db $10
    rst $38
    nop
    or $e0
    stop
    cp $f0
    db $10
    rst $38
    nop
    or $e2
    stop
    cp $f2
    db $10
    rst $38
    nop
    or $e4
    stop
    cp $f4
    db $10
    rst $38
    nop
    or $e6
    stop
    cp $f6
    db $10
    rst $38
    nop
    or $e8
    stop
    cp $f8
    db $10
    rst $38
    nop
    or $ea
    stop
    cp $fa
    db $10
    rst $38
    nop
    rst $30
    db $ec
    stop
    rst $38
    db $fc
    db $10
    rst $38
    nop
    or $f0
    jr nc, jr_004_562c

jr_004_562c:
    cp $d2
    stop
    ld b, $d0
    db $10
    rst $38
    nop
    rst $30
    xor $10
    nop
    rst $38
    cp $10
    rst $38
    db $ed
    ld hl, sp+$4e
    db $10
    db $ed
    nop
    ld e, [hl]
    db $10
    ldh a, [$f8]
    sub b
    db $10
    ldh a, [rP1]
    and b
    stop
    ld hl, sp-$6e
    stop
    nop
    and d
    db $10
    rst $38
    db $ed
    ld hl, sp+$4c
    db $10
    db $ed
    nop
    ld e, h
    db $10
    ldh a, [$f8]
    sub b
    db $10
    ldh a, [rP1]
    and b
    stop
    ld hl, sp-$6e
    stop
    nop
    and d
    db $10
    rst $38
    ldh a, [$f8]
    sub b
    db $10
    ldh a, [rP1]
    and b
    stop
    ld hl, sp-$6e
    stop
    nop
    and d
    db $10
    rst $38
    ldh a, [$f8]
    sub h
    db $10
    ldh a, [rP1]
    and h
    stop
    ld hl, sp-$6a
    stop
    nop
    and [hl]
    db $10
    rst $38
    ldh a, [$f8]
    sbc b
    db $10
    ldh a, [rP1]
    xor b
    stop
    ld hl, sp-$66
    stop
    nop
    xor d
    db $10
    rst $38
    inc b
    ld hl, sp-$64
    db $10
    inc b
    nop
    xor h
    db $10
    rst $38
    ld a, [bc]
    ld hl, sp-$62
    db $10
    ld a, [bc]
    nop
    xor [hl]
    db $10
    rst $38
    ld c, $f8
    adc b
    db $10
    ld c, $00
    adc h
    db $10
    ld e, $f8
    adc d
    db $10
    ld e, $00
    adc [hl]
    db $10
    rst $38
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    stop
    rst $28
    cp [hl]
    stop
    rst $30
    or b
    stop
    rst $38
    ret nz

    db $10
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    stop
    rst $28
    cp [hl]
    stop
    rst $30
    or b
    stop
    rst $38
    ret nz

    db $10
    rst $38
    nop
    rst $28
    cp [hl]
    stop
    rst $30
    or b
    stop
    rst $38
    ret nz

    db $10
    rst $38
    nop
    rst $28
    ld hl, sp+$10
    nop
    rst $30
    or d
    stop
    rst $38
    jp nz, $ff10

    nop
    ldh a, [$b4]
    stop
    ld hl, sp-$3c
    stop
    nop
    call nc, $ff10
    nop
    ldh a, [$f8]
    stop
    ld hl, sp-$4a
    stop
    nop
    add $10
    rst $38
    nop
    ldh a, [$b8]
    stop
    ld hl, sp-$38
    stop
    nop
    ret c

    db $10
    rst $38
    nop
    ldh a, [$ba]
    stop
    ld hl, sp-$36
    stop
    nop
    jp c, $ff10

    nop
    ld sp, hl
    ret nz

    jr nc, jr_004_5742

jr_004_5742:
    ld bc, $30b0
    nop
    add hl, bc
    cp [hl]
    jr nc, @+$01

    nop
    ld hl, sp-$28
    jr nc, jr_004_574f

jr_004_574f:
    nop
    ret z

    jr nc, jr_004_5753

jr_004_5753:
    ld [$30b8], sp
    rst $38
    nop
    ld hl, sp-$26
    jr nc, jr_004_575c

jr_004_575c:
    nop
    jp z, RST_30

    ld [$30ba], sp
    rst $38
    nop
    pop af
    cp b
    stop
    ld sp, hl
    cp h
    stop
    ld bc, $10cc
    rst $38
    nop
    rst $28
    ret nc

    stop
    rst $30
    ldh [rNR10], a
    nop
    rst $38
    ldh a, [rNR10]
    rst $38
    nop
    rst $28
    jp nc, RST_10

    rst $30
    ld [c], a
    stop
    rst $38
    ld a, [c]
    db $10
    rst $38
    nop
    ld hl, sp-$1c
    stop
    nop
    db $f4
    db $10
    rst $38
    ld hl, sp-$0c
    sub $10
    ld hl, sp-$04
    and $10
    ld hl, sp+$04
    or $10
    ld [$e8fc], sp
    db $10
    rst $38
    ld hl, sp-$08
    ld [$f810], a
    nop
    ld a, [$0810]
    db $fd
    adc $10
    rst $38
    db $fc
    ld hl, sp-$14
    db $10
    db $fc
    nop
    db $fc
    db $10
    inc c
    rst $38
    call c, $ff10
    ld hl, sp-$08
    xor $10
    ld hl, sp+$00
    cp $10
    ld [$defe], sp
    db $10
    rst $38
    ld a, [c]
    ld sp, hl
    ld c, [hl]
    db $10
    ld a, [c]
    ld bc, $105e
    nop
    ldh a, [$9e]
    stop
    ld hl, sp-$52
    stop
    nop
    cp [hl]
    stop
    ld [$10ce], sp
    rst $38
    ld a, [c]
    ld sp, hl
    ld c, h
    db $10
    ld a, [c]
    ld bc, $105c
    nop
    ldh a, [$9e]
    stop
    ld hl, sp-$52
    stop
    nop
    cp [hl]
    stop
    ld [$10ce], sp
    rst $38
    nop
    ldh a, [$9e]
    stop
    ld hl, sp-$52
    stop
    nop
    cp [hl]
    stop
    ld [$10ce], sp
    rst $38
    nop
    ldh a, [$a0]
    stop
    ld hl, sp-$5e
    stop
    nop
    and h
    stop
    ld [$10a6], sp
    rst $38
    nop
    ldh a, [$a8]
    stop
    ld hl, sp-$56
    stop
    nop
    sbc h
    stop
    ld [$10ac], sp
    rst $38
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    stop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    stop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    nop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    nop
    ld hl, sp-$4e
    stop
    nop
    jp nz, $ff10

    nop
    ld hl, sp-$4c
    stop
    nop
    call nz, $ff10
    nop
    ld hl, sp-$4a
    stop
    nop
    add $10
    rst $38
    nop
    ld hl, sp-$48
    stop
    nop
    ret z

    db $10
    rst $38
    nop
    ld hl, sp-$46
    stop
    nop
    jp z, $ff10

    nop
    ld hl, sp-$44
    stop
    nop
    call z, $ff10
    di
    ld hl, sp+$4e
    db $10
    di
    nop
    ld e, [hl]
    stop
    ld hl, sp-$40
    stop
    nop
    ret nc

    db $10
    rst $38
    di
    ld hl, sp+$4c
    db $10
    di
    nop
    ld e, h
    stop
    ld hl, sp-$34
    stop
    nop
    call c, $ff10
    nop
    ld hl, sp-$40
    stop
    nop
    ret nc

    db $10
    rst $38
    nop
    ld hl, sp-$34
    stop
    nop
    call c, $ff10
    nop
    ld hl, sp-$3e
    stop
    nop
    jp nc, $ff10

    nop
    ld hl, sp-$3c
    stop
    nop
    call nc, $ff10
    nop
    ld hl, sp-$3a
    stop
    nop
    sub $10
    rst $38
    nop
    ld hl, sp-$38
    stop
    nop
    ret c

    db $10
    rst $38
    nop
    ld hl, sp-$36
    stop
    nop
    jp c, $ff10

    nop
    ld hl, sp-$32
    stop
    nop
    sbc $10
    rst $38
    nop
    ld hl, sp-$1e
    stop
    nop
    ldh [rNR10], a
    rst $38
    nop
    ld hl, sp-$1a
    stop
    nop
    db $e4
    db $10
    rst $38
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    stop
    ld hl, sp-$0e
    stop
    nop
    ldh a, [rNR10]
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    stop
    ld hl, sp-$02
    stop
    nop
    db $fc
    db $10
    rst $38
    nop
    ld hl, sp-$0e
    stop
    nop
    ldh a, [rNR10]
    rst $38
    nop
    ld hl, sp-$0a
    stop
    nop
    db $f4
    db $10
    rst $38
    nop
    ld hl, sp-$06
    stop
    nop
    ld hl, sp+$10
    rst $38
    nop
    ld hl, sp-$02
    stop
    nop
    db $fc
    db $10
    rst $38
    ldh [$f8], a
    xor $70
    ldh [rP1], a
    xor $50
    ldh a, [$f8]
    ld [$f010], a
    nop
    db $ec
    stop
    ld hl, sp-$12
    jr nc, jr_004_5969

jr_004_5969:
    nop
    xor $10
    rst $38
    ld [bc], a
    ld hl, sp-$0e
    ld d, b
    ld [bc], a
    nop
    ldh a, [$50]
    rst $38
    ld [bc], a
    ld hl, sp-$0a
    ld d, b
    ld [bc], a
    nop
    db $f4
    ld d, b
    rst $38
    ld [bc], a
    ld hl, sp-$06
    ld d, b
    ld [bc], a
    nop
    ld hl, sp+$50
    rst $38
    ld [bc], a
    ld hl, sp-$02
    ld d, b
    ld [bc], a
    nop
    db $fc
    ld d, b
    rst $38
    ldh a, [$f4]
    jp nc, $f010

    db $fc
    ld [c], a
    db $10
    ldh a, [rDIV]
    ld a, [c]
    stop
    db $ec
    call nz, RST_10
    db $f4
    call nc, RST_10
    db $fc
    db $e4
    stop
    inc b
    db $f4
    db $10
    rst $38
    ldh a, [$f4]
    jp nc, $f010

    db $fc
    ld [c], a
    db $10
    ldh a, [rDIV]
    ld a, [c]
    stop
    db $ec
    call nz, RST_10
    db $f4
    call nc, RST_10
    db $fc
    ldh [rNR10], a
    nop
    inc b
    ldh a, [rNR10]
    rst $38
    rst $20
    ld hl, sp+$4e
    db $10
    rst $20
    nop
    ld e, [hl]
    db $10
    ldh a, [$f4]
    jp nc, $f010

    db $fc
    ld [c], a
    db $10
    ldh a, [rDIV]
    ld a, [c]
    stop
    db $ec
    call nz, RST_10
    db $f4
    call nc, RST_10
    db $fc
    db $e4
    stop
    inc b
    db $f4
    db $10
    rst $38
    rst $20
    ld hl, sp+$4c
    db $10
    rst $20
    nop
    ld e, h
    db $10
    ldh a, [$f4]
    jp nc, $f010

    db $fc
    ld [c], a
    db $10
    ldh a, [rDIV]
    ld a, [c]
    stop
    db $ec
    call nz, RST_10
    db $f4
    call nc, RST_10
    db $fc
    ldh [rNR10], a
    nop
    inc b
    ldh a, [rNR10]
    rst $38
    ldh a, [$f4]
    sub $10
    ldh a, [$fc]
    and $10
    ldh a, [rDIV]
    or $10
    nop
    db $ec
    ret z

    stop
    db $f4
    ret c

    stop
    db $fc
    add sp, $10
    nop
    inc b
    ld hl, sp+$10
    rst $38
    ldh a, [$f4]
    sub $10
    ldh a, [$fc]
    and $10
    ldh a, [rDIV]
    or $10
    nop
    db $ec
    jp z, RST_10

    db $f4
    jp c, RST_10

    db $fc
    add sp, $10
    nop
    inc b
    ld hl, sp+$10
    rst $38
    ldh a, [$f4]
    call c, $f010
    db $fc
    db $ec
    db $10
    ldh a, [rDIV]
    db $fc
    stop
    db $ec
    adc $10
    nop
    db $f4
    sbc $10
    nop
    db $fc
    xor $10
    nop
    inc b
    cp $10
    rst $38
    ldh a, [$f4]
    call c, $f010
    db $fc
    db $ec
    db $10
    ldh a, [rDIV]
    db $fc
    stop
    db $ec
    ld [$0010], a
    db $f4
    ld a, [$0010]
    db $fc
    xor $10
    nop
    inc b
    cp $10
    rst $38
    ldh a, [$f4]
    sbc h
    db $10
    ldh a, [$fc]
    xor h
    db $10
    ldh a, [rDIV]
    cp h
    stop
    db $ec
    adc [hl]
    stop
    db $f4
    sbc [hl]
    stop
    db $fc
    xor [hl]
    stop
    inc b
    cp [hl]
    db $10
    rst $38
    ldh a, [$f4]
    sbc b
    db $10
    ldh a, [$fc]
    xor b
    db $10
    ldh a, [rDIV]
    cp b
    db $10
    cp $ec
    adc d
    stop
    db $f4
    sbc d
    stop
    db $fc
    xor d
    stop
    inc b
    cp d
    db $10
    rst $38
    ldh a, [$f4]
    sub h
    db $10
    ldh a, [$fc]
    and h
    db $10
    ldh a, [rDIV]
    or h
    stop
    db $ec
    sub b
    stop
    db $f4
    sub [hl]
    stop
    db $fc
    and [hl]
    stop
    inc b
    or [hl]
    stop
    inc c
    add $10
    rst $38
    ldh a, [$f4]
    and b
    db $10
    ldh a, [$fc]
    or b
    db $10
    ldh a, [rDIV]
    ret nz

    stop
    db $ec
    sub d
    stop
    db $f4
    and d
    stop
    db $fc
    or d
    stop
    inc b
    jp nz, $ff10

    push af
    di
    sbc h
    db $10
    push af
    ei
    xor h
    db $10
    push af
    inc bc
    cp h
    db $10
    dec b
    di
    adc h
    db $10
    dec b
    ei
    call z, $0510
    inc bc
    adc b
    db $10
    dec b
    dec bc
    ret nc

    db $10
    rst $38
    ldh a, [$f4]
    ret nc

    db $10
    ldh a, [$fc]
    ldh [rNR10], a
    ldh a, [rDIV]
    ldh a, [rNR10]
    nop
    db $f4
    jp nc, RST_10

    db $fc
    ld [c], a
    stop
    inc b
    ld a, [c]
    db $10
    rst $38
    ldh a, [$f4]
    call nc, $f010
    db $fc
    db $e4
    db $10
    ldh a, [rDIV]
    db $f4
    stop
    db $f4
    sub $10
    nop
    db $fc
    and $10
    nop
    inc b
    or $10
    rst $38
    ldh a, [$f4]
    ret c

    db $10
    ldh a, [$fc]
    add sp, $10
    ldh a, [rDIV]
    ld hl, sp+$10
    nop
    db $f4
    jp c, RST_10

    db $fc
    ld [$0010], a
    inc b
    ld_long a, $ff10
    ldh a, [$f4]
    call c, $f010
    db $fc
    db $ec
    db $10
    ldh a, [rDIV]
    db $fc
    stop
    db $f4
    sbc $10
    nop
    db $fc
    xor $10
    nop
    inc b
    cp $10
    rst $38
    ldh a, [$f4]
    and h
    db $10
    ldh a, [$fc]
    or h
    db $10
    ldh a, [rDIV]
    call nz, RST_10
    db $f4
    and [hl]
    stop
    db $fc
    or [hl]
    stop
    inc b
    add $10
    rst $38
    ldh a, [$f4]
    xor b
    db $10
    ldh a, [$fc]
    cp b
    db $10
    ldh a, [rDIV]
    ret z

    stop
    db $f4
    xor d
    stop
    db $fc
    cp d
    stop
    inc b
    jp z, $ff10

    ldh a, [$f4]
    xor h
    db $10
    ldh a, [$fc]
    cp h
    db $10
    ldh a, [rDIV]
    call z, RST_10
    db $f4
    xor [hl]
    stop
    db $fc
    cp [hl]
    stop
    inc b
    adc $10
    rst $38
    ldh a, [$f4]
    and b
    db $10
    ldh a, [$fc]
    or b
    db $10
    ldh a, [rDIV]
    ret nz

    stop
    db $f4
    and d
    stop
    db $fc
    or d
    stop
    inc b
    jp nz, $ff10

    ldh a, [$f4]
    sbc b
    db $10
    ldh a, [$fc]
    sub h
    db $10
    ldh a, [rDIV]
    sub b
    stop
    db $f4
    sbc d
    stop
    db $fc
    sub [hl]
    stop
    inc b
    sub d
    db $10
    rst $38
    cp $f3
    adc h
    db $10
    cp $fb
    sbc h
    db $10
    cp $03
    adc b
    db $10
    rst $38
    cp $f3
    adc [hl]
    db $10
    cp $fb
    sbc [hl]
    db $10
    cp $03
    adc d
    db $10
    rst $38
    nop
    ld hl, sp-$5a
    nop
    nop
    nop
    xor b
    nop
    rst $38
    di
    db $fc
    ld c, [hl]
    db $10
    di
    inc b
    ld e, [hl]
    stop
    db $f4
    xor d
    stop
    db $fc
    cp d
    stop
    inc b
    jp z, $ff10

    di
    db $fc
    ld c, h
    db $10
    di
    inc b
    ld e, h
    stop
    db $f4
    xor d
    stop
    db $fc
    cp d
    stop
    inc b
    jp z, $ff10

    nop
    db $f4
    and b
    stop
    db $fc
    or b
    stop
    inc b
    ret nz

    db $10
    rst $38
    nop
    db $f4
    and d
    stop
    db $fc
    or d
    stop
    inc b
    jp nz, $ff10

    nop
    db $f4
    and h
    stop
    db $fc
    or h
    stop
    inc b
    call nz, $ff10
    nop
    db $f4
    and [hl]
    stop
    db $fc
    or [hl]
    stop
    inc b
    add $10
    rst $38
    nop
    db $f4
    xor b
    stop
    db $fc
    cp b
    stop
    inc b
    ret z

    db $10
    rst $38
    nop
    db $f4
    xor d
    stop
    db $fc
    cp d
    stop
    inc b
    jp z, $ff10

    nop
    db $f4
    xor h
    stop
    db $fc
    cp h
    stop
    inc b
    call z, $ff10
    nop
    db $f4
    xor [hl]
    stop
    db $fc
    cp [hl]
    stop
    inc b
    adc $10
    rst $38
    nop
    db $f4
    adc b
    stop
    db $fc
    sbc b
    stop
    inc b
    sub b
    db $10
    rst $38
    nop
    db $f4
    adc d
    stop
    db $fc
    sbc d
    stop
    inc b
    sub d
    db $10
    rst $38
    nop
    db $f4
    adc h
    stop
    db $fc
    sbc h
    stop
    inc b
    sub h
    db $10
    rst $38
    nop
    db $f4
    adc [hl]
    stop
    db $fc
    sbc [hl]
    stop
    inc b
    sub [hl]
    db $10
    rst $38
    nop
    db $f4
    sub b
    jr nc, jr_004_5ced

jr_004_5ced:
    db $fc
    sbc b
    jr nc, jr_004_5cf1

jr_004_5cf1:
    inc b
    adc b
    jr nc, @+$01

    nop
    db $f4
    sub d
    jr nc, jr_004_5cfa

jr_004_5cfa:
    db $fc
    sbc d
    jr nc, jr_004_5cfe

jr_004_5cfe:
    inc b
    adc d
    jr nc, @+$01

    nop
    db $f4
    sub h
    jr nc, jr_004_5d07

jr_004_5d07:
    db $fc
    sbc h
    jr nc, jr_004_5d0b

jr_004_5d0b:
    inc b
    adc h
    jr nc, @+$01

    nop
    db $f4
    sub [hl]
    jr nc, jr_004_5d14

jr_004_5d14:
    db $fc
    sbc [hl]
    jr nc, jr_004_5d18

jr_004_5d18:
    inc b
    adc [hl]
    jr nc, @+$01

    ld a, [c]
    ld a, [$104e]
    ld a, [c]
    ld [bc], a
    ld e, [hl]
    db $10
    ld bc, $dcf4
    db $10
    ld bc, $ecfc
    db $10
    ld bc, $fc04
    db $10
    rst $38
    ld a, [c]
    ld a, [$104c]
    ld a, [c]
    ld [bc], a
    ld e, h
    db $10
    ld bc, $dcf4
    db $10
    ld bc, $ecfc
    db $10
    ld bc, $fc04
    db $10
    rst $38
    ld bc, $dcf4
    db $10
    ld bc, $ecfc
    db $10
    ld bc, $fc04
    db $10
    rst $38
    ld bc, $d0f4
    db $10
    ld bc, $e0fc
    db $10
    ld bc, $f004
    db $10
    rst $38
    ld bc, $d2f4
    db $10
    ld bc, $e2fc
    db $10
    ld bc, $f204
    db $10
    rst $38
    ld bc, $d4f4
    db $10
    ld bc, $e4fc
    db $10
    ld bc, $f404
    db $10
    rst $38
    nop
    db $f4
    sub $10
    nop
    db $fc
    and $10
    nop
    inc b
    or $10
    rst $38
    pop af
    ld a, [$10da]
    ld bc, $d8f4
    db $10
    ld bc, $e8fc
    db $10
    ld bc, $f804
    db $10
    rst $38
    nop
    db $f4
    ld [$0010], a
    db $fc
    ld a, [$0110]
    inc b
    ldh a, [rNR10]
    rst $38
    ld bc, $eef4
    db $10
    ld bc, $ecfc
    db $10
    ld bc, $fc04
    db $10
    rst $38
    ld bc, $def4
    db $10
    ld bc, $ecfc
    db $10
    ld bc, $fc04
    db $10
    rst $38
    push af
    ld a, [$104e]
    push af
    ld [bc], a
    ld e, [hl]
    stop
    ld sp, hl
    or b
    stop
    ld bc, $10c0
    rst $38
    push af
    ld a, [$104c]
    push af
    ld [bc], a
    ld e, h
    stop
    ld sp, hl
    or b
    stop
    ld bc, $10c0
    rst $38
    nop
    ld sp, hl
    or b
    stop
    ld bc, $10c0
    rst $38
    nop
    ld sp, hl
    or d
    stop
    ld bc, $10c2
    rst $38
    nop
    ld sp, hl
    or h
    stop
    ld bc, $10c4
    rst $38
    nop
    ld sp, hl
    or b
    stop
    ld bc, $10a2
    rst $38
    nop
    ld sp, hl
    or [hl]
    stop
    ld bc, $10c6
    rst $38
    nop
    ld sp, hl
    cp b
    stop
    ld bc, $10c8
    rst $38
    nop
    ld sp, hl
    cp d
    stop
    ld bc, $10ca
    rst $38
    ldh a, [$fa]
    sub d
    stop
    ld a, [$1094]
    nop
    ld [bc], a
    and h
    db $10
    rst $38
    ldh a, [$f9]
    and [hl]
    stop
    ld sp, hl
    xor b
    stop
    ld bc, $1096
    rst $38
    ldh a, [$f9]
    sbc b
    stop
    ld sp, hl
    sbc d
    stop
    ld bc, $10aa
    rst $38
    ldh a, [$f9]
    sub b
    stop
    ei
    and b
    db $10
    rst $38
    ldh a, [$f9]
    xor h
    stop
    ld sp, hl
    xor [hl]
    db $10
    rst $38
    ldh a, [$f9]
    cp h
    stop
    ld sp, hl
    cp [hl]
    db $10
    rst $38
    ldh a, [$f9]
    call z, RST_10
    ld sp, hl
    adc $10
    rst $38
    ldh a, [$f9]
    sbc h
    stop
    ld sp, hl
    sbc [hl]
    db $10
    rst $38
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    stop
    ld hl, sp-$2c
    stop
    nop
    db $e4
    db $10
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    stop
    ld hl, sp-$2c
    stop
    nop
    db $e4
    db $10
    rst $38
    nop
    ld hl, sp-$2c
    stop
    nop
    db $e4
    db $10
    rst $38
    nop
    ld hl, sp-$30
    stop
    nop
    ldh [rNR10], a
    rst $38
    nop
    ld hl, sp-$2e
    stop
    nop
    ldh [rNR10], a
    rst $38
    nop
    ld hl, sp-$2a
    stop
    nop
    and $10
    rst $38
    nop
    ld hl, sp-$2a
    stop
    nop
    ld [c], a
    db $10
    rst $38
    nop
    rst $30
    ret c

    stop
    rst $38
    add sp, $10
    rst $38
    nop
    ld hl, sp-$26
    stop
    nop
    ld_long $ff10, a
    nop
    rst $30
    call c, RST_10
    rst $38
    db $ec
    db $10
    rst $38
    nop
    rst $30
    sbc $10
    nop
    rst $38
    xor $10
    rst $38
    nop
    ld hl, sp-$10
    stop
    nop
    ld a, [c]
    db $10
    rst $38
    nop
    ld hl, sp-$0c
    stop
    nop
    or $10
    rst $38
    pop af
    ld sp, hl
    ld c, [hl]
    db $10
    pop af
    ld bc, $105e
    nop
    ld sp, hl
    ret nc

    stop
    ld bc, $10e0
    rst $38
    pop af
    ld sp, hl
    ld c, h
    db $10
    pop af
    ld bc, $105c
    nop
    ld sp, hl
    ret nc

    stop
    ld bc, $10e0
    rst $38
    nop
    ld hl, sp-$30
    stop
    nop
    ldh [rNR10], a
    rst $38
    nop
    ld hl, sp-$2e
    stop
    nop
    ld [c], a
    db $10
    rst $38
    nop
    ld hl, sp-$2c
    stop
    nop
    sub $10
    rst $38
    nop
    ld hl, sp-$28
    stop
    nop
    jp c, $ff10

    nop
    ld hl, sp-$24
    stop
    nop
    sbc $10
    rst $38
    ldh a, [$f6]
    ld c, [hl]
    db $10
    ldh a, [$fe]
    ld e, [hl]
    db $10
    ldh a, [$f8]
    cp h
    db $10
    ldh a, [rP1]
    call z, RST_10
    ldh a, [$ae]
    stop
    ld hl, sp-$42
    stop
    nop
    adc $10
    rst $38
    ldh a, [$f6]
    ld c, h
    db $10
    ldh a, [$fe]
    ld e, h
    db $10
    ldh a, [$f8]
    cp h
    db $10
    ldh a, [rP1]
    call z, RST_10
    ldh a, [$ae]
    stop
    ld hl, sp-$42
    stop
    nop
    adc $10
    rst $38
    ldh a, [$f8]
    cp h
    db $10
    ldh a, [rP1]
    call z, RST_10
    ldh a, [$ae]
    stop
    ld hl, sp-$42
    stop
    nop
    adc $10
    rst $38
    ldh a, [$f8]
    or b
    db $10
    ldh a, [rP1]
    ret nz

    stop
    ldh a, [$b8]
    stop
    ld hl, sp-$4e
    stop
    nop
    jp nz, $ff10

    ldh a, [$f8]
    or h
    db $10
    ldh a, [rP1]
    call nz, RST_10
    ldh a, [$c8]
    stop
    ld hl, sp-$4a
    stop
    nop
    add $10
    rst $38
    ldh a, [$f8]
    cp h
    db $10
    ldh a, [rP1]
    call z, RST_10
    ldh a, [$ac]
    stop
    ld hl, sp-$42
    stop
    nop
    adc $10
    rst $38
    ldh a, [$f8]
    cp h
    db $10
    ldh a, [rP1]
    call z, RST_10
    ldh a, [$ba]
    stop
    ld hl, sp-$42
    stop
    nop
    adc $10
    rst $38
    ldh a, [$f8]
    cp h
    db $10
    ldh a, [rP1]
    call z, RST_10
    ldh a, [$ca]
    stop
    ld hl, sp-$42
    stop
    nop
    adc $10
    rst $38
    pop af
    ld sp, hl
    ld c, [hl]
    db $10
    pop af
    ld bc, $105e
    nop
    ld a, [c]
    ret nc

    stop
    ld a, [$10e0]
    nop
    ld [bc], a
    ldh a, [rNR10]
    rst $38
    pop af
    ld sp, hl
    ld c, h
    db $10
    pop af
    ld bc, $105c
    nop
    ld a, [c]
    ret nc

    stop
    ld a, [$10de]
    nop
    ld [bc], a
    xor $10
    rst $38
    nop
    ld a, [c]
    ret nc

    stop
    ld a, [$10e0]
    nop
    ld [bc], a
    ldh a, [rNR10]
    rst $38
    nop
    ld a, [c]
    ret nc

    stop
    ld a, [$10de]
    nop
    ld [bc], a
    xor $10
    rst $38
    nop
    ld a, [c]
    jp nc, RST_10

    ld a, [$10e2]
    nop
    ld [bc], a
    ld a, [c]
    db $10
    rst $38
    nop
    ld a, [c]
    call nc, RST_10
    ld a, [$10e4]
    nop
    ld [bc], a
    db $f4
    db $10
    rst $38
    nop
    ld a, [c]
    sub $10
    nop
    ld a, [$10e6]
    nop
    ld [bc], a
    or $10
    rst $38
    nop
    ld a, [c]
    ret c

    stop
    ld a, [$10e8]
    nop
    ld [bc], a
    ld hl, sp+$10
    rst $38
    nop
    ld a, [c]
    jp c, RST_10

    ld a, [$10ea]
    nop
    ld [bc], a
    ld_long a, $ff10
    nop
    ld a, [c]
    call c, RST_10
    ld a, [$10ec]
    nop
    ld [bc], a
    db $fc
    db $10
    rst $38
    pop af
    ldh a, [$c0]
    db $10
    pop af
    ld hl, sp-$30
    db $10
    pop af
    nop
    ldh [rNR10], a
    pop af
    ld [$10f0], sp
    ld bc, $c2f0
    db $10
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    ld bc, $f208
    db $10
    rst $38
    ldh a, [$f0]
    ret nz

    db $10
    ldh a, [$f8]
    ret nc

    db $10
    ldh a, [rP1]
    jp c, $f010

    ld [$10f0], sp
    nop
    ldh a, [$c4]
    stop
    ld hl, sp-$2c
    stop
    nop
    db $e4
    stop
    ld [$10f4], sp
    rst $38
    ldh a, [$f0]
    ret nz

    db $10
    ldh a, [$f8]
    ret nc

    db $10
    ldh a, [rP1]
    ld [$f010], a
    ld [$10f0], sp
    nop
    ldh a, [$c6]
    stop
    ld hl, sp-$2a
    stop
    nop
    and $10
    nop
    ld [$10f6], sp
    rst $38
    pop af
    ldh a, [$c8]
    db $10
    pop af
    ld hl, sp-$28
    db $10
    pop af
    nop
    add sp, $10
    pop af
    ld [$10f8], sp
    ld bc, $caf0
    db $10
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    ld bc, $f208
    db $10
    rst $38
    pop af
    ldh a, [$cc]
    db $10
    pop af
    ld hl, sp-$24
    db $10
    pop af
    nop
    db $ec
    db $10
    pop af
    ld [$10fc], sp
    ld bc, $cef0
    db $10
    ld bc, $def8
    db $10
    ld bc, $e200
    db $10
    ld bc, $f208
    db $10
    rst $38
    pop hl
    ldh a, [$9a]
    db $10
    pop hl
    ld hl, sp-$56
    db $10
    pop hl
    nop
    cp d
    db $10
    jp hl


    add sp, -$74
    db $10
    pop af
    ldh a, [$9c]
    db $10
    pop af
    ld hl, sp-$54
    db $10
    pop af
    nop
    cp h
    db $10
    pop af
    ld [$108a], sp
    ld sp, hl
    add sp, -$72
    db $10
    ld bc, $9ef0
    db $10
    ld bc, $aef8
    db $10
    ld bc, $be00
    db $10
    ld bc, $f408
    db $10
    rst $38
    nop
    ld hl, sp-$78
    stop
    nop
    ld_long a, $ff10
    nop
    ld hl, sp+$62
    stop
    nop
    ld h, d
    jr nc, @+$01

    nop
    ld hl, sp+$72
    stop
    nop
    ld [hl], d
    jr nc, @+$01

    nop
    ld hl, sp+$64
    stop
    nop
    ld h, h
    jr nc, @+$01

    nop
    db $fc
    ld [hl], h
    db $10
    rst $38
    ld hl, sp-$0c
    sub b
    db $10
    ld hl, sp-$04
    and b
    db $10
    ld hl, sp+$04
    or b
    db $10
    ld [$92f4], sp
    db $10
    ld [$a2fc], sp
    db $10
    ld [$b204], sp
    db $10
    rst $38
    pop af
    db $f4
    sub b
    db $10
    pop af
    db $fc
    and b
    db $10
    pop af
    inc b
    or b
    db $10
    ld bc, $94f4
    db $10
    ld bc, $a4fc
    db $10
    ld bc, $b404
    db $10
    rst $38
    ldh a, [$f4]
    ret nc

    db $10
    ldh a, [$fc]
    ldh [rNR10], a
    ldh a, [rDIV]
    ldh a, [rNR10]
    nop
    ldh a, [$c2]
    stop
    ld hl, sp-$2e
    stop
    nop
    ld [c], a
    stop
    ld [$10f2], sp
    rst $38
    db $e3
    ld hl, sp+$4e
    db $10
    db $e3
    nop
    ld e, [hl]
    db $10
    ldh a, [$f4]
    ret nc

    db $10
    ldh a, [$fc]
    ldh [rNR10], a
    ldh a, [rDIV]
    ldh a, [rNR10]
    nop
    ldh a, [$c2]
    stop
    ld hl, sp-$2e
    stop
    nop
    ld [c], a
    stop
    ld [$10f2], sp
    rst $38
    db $e3
    ld hl, sp+$4c
    db $10
    db $e3
    nop
    ld e, h
    db $10
    ldh a, [$f4]
    ret nc

    db $10
    ldh a, [$fc]
    ldh [rNR10], a
    ldh a, [rDIV]
    ldh a, [rNR10]
    nop
    ldh a, [$c2]
    stop
    ld hl, sp-$2e
    stop
    nop
    ld [c], a
    stop
    ld [$10f2], sp
    rst $38
    ldh a, [$f4]
    call nc, $f010
    db $fc
    db $e4
    db $10
    ldh a, [rDIV]
    db $f4
    stop
    db $f4
    sub $10
    nop
    db $fc
    and $10
    nop
    inc b
    or $10
    rst $38
    ldh a, [$f4]
    ret c

    db $10
    ldh a, [$fc]
    add sp, $10
    ldh a, [rDIV]
    ld hl, sp+$10
    nop
    db $f4
    jp c, RST_10

    db $fc
    ld [$0010], a
    inc b
    ld_long a, $ff10
    ldh a, [$f4]
    and h
    db $10
    ldh a, [$fc]
    or h
    db $10
    ldh a, [rDIV]
    call nz, RST_10
    db $f4
    and [hl]
    stop
    db $fc
    or [hl]
    stop
    inc b
    add $10
    rst $38
    ldh a, [$f4]
    xor b
    db $10
    ldh a, [$fc]
    cp b
    db $10
    ldh a, [rDIV]
    ret z

    stop
    db $f4
    xor d
    stop
    db $fc
    cp d
    stop
    inc b
    jp z, $ff10

    ldh a, [$f4]
    and d
    db $10
    ldh a, [$fc]
    or d
    db $10
    ldh a, [rDIV]
    ret z

    stop
    pop af
    sub b
    stop
    ld sp, hl
    and b
    stop
    ld bc, $10b0
    nop
    add hl, bc
    ret nz

    db $10
    rst $38
    ldh a, [$f5]
    xor h
    db $10
    ldh a, [$fd]
    cp h
    db $10
    ldh a, [rTIMA]
    call z, RST_10
    db $f4
    xor [hl]
    stop
    db $fc
    cp [hl]
    stop
    inc b
    adc $10
    rst $38
    ldh a, [$f2]
    sub h
    db $10
    ldh a, [$fa]
    adc d
    db $10
    ldh a, [rSC]
    sbc d
    stop
    ldh a, [$8c]
    stop
    ld hl, sp-$64
    stop
    nop
    adc [hl]
    stop
    ld [$109e], sp
    rst $38
    ldh a, [$f4]
    sub h
    db $10
    ldh a, [$fc]
    adc d
    db $10
    ldh a, [rDIV]
    sbc d
    stop
    ldh a, [$88]
    stop
    ld hl, sp-$68
    stop
    nop
    ld [c], a
    stop
    ld [$1096], sp
    rst $38
    ldh a, [$f4]
    xor h
    db $10
    ldh a, [$fc]
    cp h
    db $10
    ldh a, [rDIV]
    call z, RST_10
    ldh a, [$88]
    stop
    ld hl, sp-$68
    stop
    nop

jr_004_6318:
    ld [c], a
    stop
    ld [$1096], sp
    rst $38
    ldh a, [$f0]
    db $fc
    jr nc, @-$0e

    ld hl, sp-$14
    jr nc, jr_004_6318

    nop
    db $ec
    db $10
    ldh a, [$08]
    db $fc
    stop
    ldh a, [$dc]
    stop
    ld hl, sp-$22
    stop
    nop
    xor $10
    nop
    ld [$10fe], sp
    rst $38
    ldh a, [$f4]
    ldh a, [$30]
    ldh a, [$fc]
    ldh [$30], a
    ldh a, [rDIV]
    ret nc

    jr nc, jr_004_634d

jr_004_634d:
    ldh a, [$f2]
    jr nc, jr_004_6351

jr_004_6351:
    ld hl, sp-$1e
    jr nc, jr_004_6355

jr_004_6355:
    nop
    jp nc, RST_30

    ld [$30c2], sp
    rst $38
    nop
    db $fc
    sbc h
    db $10
    ld sp, hl
    ld sp, hl
    ld c, [hl]
    db $10
    ld sp, hl
    ld bc, $105e
    rst $38
    nop
    db $fc
    sbc h
    db $10
    ld sp, hl
    ld sp, hl
    ld c, h
    db $10
    ld sp, hl
    ld bc, $105c
    rst $38
    nop
    db $fc
    sbc h
    db $10
    rst $38
    nop
    db $fc
    sbc d
    db $10
    rst $38
    nop
    db $fc
    sbc [hl]
    db $10
    rst $38
    di
    ld hl, sp+$4e
    db $10
    di
    nop
    ld e, [hl]
    stop
    ld hl, sp-$60
    stop
    nop
    or b
    db $10
    rst $38
    di
    ld hl, sp+$4c
    db $10
    di
    nop
    ld e, h
    stop
    ld hl, sp-$60
    stop
    nop
    or b
    db $10
    rst $38
    nop
    ld hl, sp-$60
    stop
    nop
    or b
    db $10
    rst $38
    nop
    ld hl, sp-$5e
    stop
    nop
    or d
    db $10
    rst $38
    nop
    ld hl, sp-$5c
    stop
    nop
    or h
    db $10
    rst $38
    nop
    ld hl, sp-$5a
    stop
    nop
    or [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$58
    stop
    nop
    cp b
    db $10
    rst $38
    nop
    ld hl, sp-$56
    stop
    nop
    cp d
    db $10
    rst $38
    nop
    ld hl, sp-$54
    stop
    nop
    cp h
    db $10
    rst $38
    nop
    ld hl, sp-$52
    stop
    nop
    cp [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$44
    jr nc, jr_004_63f5

jr_004_63f5:
    nop
    xor h
    jr nc, @+$01

    nop
    ld hl, sp-$42
    jr nc, jr_004_63fe

jr_004_63fe:
    nop
    xor [hl]
    jr nc, @+$01

    db $f4
    ld a, [$104e]
    db $f4
    ld [bc], a
    ld e, [hl]
    stop
    di
    ret nc

    stop
    ei
    jp nz, RST_10

    inc bc
    jp nc, $ff10

    db $f4
    ld a, [$104c]
    db $f4
    ld [bc], a
    ld e, h
    stop
    di
    ret nc

    stop
    ei
    jp nz, RST_10

    inc bc
    jp nc, $ff10

    nop
    di
    ret nc

    stop
    ei
    jp nz, RST_10

    inc bc
    jp nc, $ff10

    nop
    di
    sub $10
    nop
    ei
    call nz, RST_10
    inc bc
    call nc, $ff10
    nop
    di
    add $10
    nop
    ei
    ret z

    stop
    inc bc
    ret c

    db $10
    rst $38
    nop
    db $f4
    call c, RST_10
    db $fc
    jp z, RST_10

    inc b
    jp c, $ff10

    nop
    di
    call z, RST_10
    ei
    adc $10
    nop
    inc bc
    sbc $10
    rst $38
    ld a, [c]
    ld sp, hl
    ld c, [hl]
    db $10
    ld a, [c]
    ld bc, $105e
    nop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    ld a, [c]
    ld sp, hl
    ld c, h
    db $10
    ld a, [c]
    ld bc, $105c
    nop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    nop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    nop
    ld hl, sp-$4e
    stop
    nop
    jp nz, $ff10

    nop
    ld hl, sp-$4c
    stop
    nop
    call nz, $ff10
    nop
    ld hl, sp-$4a
    stop
    nop
    add $10
    rst $38
    pop af
    ld hl, sp-$56
    db $10
    pop af
    nop
    xor b
    stop
    ld hl, sp-$52
    stop
    nop
    xor h
    db $10
    rst $38
    ld hl, sp-$08
    xor d
    db $10
    ld hl, sp+$00
    xor b
    stop
    ld hl, sp-$48
    stop
    nop
    ret z

    db $10
    rst $38
    nop
    ld hl, sp-$48
    stop
    nop
    ret z

    db $10
    rst $38
    nop
    ld hl, sp-$46
    stop
    nop
    jp z, $ff10

    nop
    ld hl, sp-$44
    stop
    nop
    call z, $ff10
    nop
    ld hl, sp-$42
    stop
    nop
    adc $10
    rst $38
    nop
    ld hl, sp-$52
    stop
    nop
    xor h
    db $10
    rst $38
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    stop
    ld hl, sp-$5e
    stop
    nop
    and b
    db $10
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    stop
    ld hl, sp-$5e
    stop
    nop
    and b
    db $10
    rst $38
    nop
    ld hl, sp-$5e
    stop
    nop
    and b
    db $10
    rst $38
    nop
    ld hl, sp-$5a
    stop
    nop
    and h
    db $10
    rst $38
    nop
    ld hl, sp-$56
    stop
    nop
    xor b
    db $10
    rst $38
    push af
    ld hl, sp+$4e
    db $10
    push af
    nop
    ld e, [hl]
    stop
    ld hl, sp-$30
    stop
    nop
    ldh [rNR10], a
    rst $38
    push af
    ld hl, sp+$4c
    db $10
    push af
    nop
    ld e, h
    stop
    ld hl, sp-$30
    stop
    nop
    ldh [rNR10], a
    rst $38
    nop
    ld hl, sp-$30
    stop
    nop
    ldh [rNR10], a
    rst $38
    nop
    ld hl, sp-$2e
    stop
    nop
    ld [c], a
    db $10
    rst $38
    nop
    ld hl, sp-$2c
    stop
    nop
    db $e4
    db $10
    rst $38
    nop
    ld hl, sp-$2a
    stop
    nop
    and $10
    rst $38
    nop
    ld hl, sp-$28
    stop
    nop
    add sp, $10
    rst $38
    nop
    ld hl, sp-$26
    stop
    nop
    ld_long $ff10, a
    nop
    ld hl, sp-$24
    stop
    nop
    db $ec
    db $10
    rst $38
    nop
    ld hl, sp-$22
    stop
    nop
    xor $10
    rst $38
    nop
    ld hl, sp-$0e
    stop
    nop
    ldh a, [rNR10]
    rst $38
    nop
    ld hl, sp-$0a
    stop
    nop
    db $f4
    db $10
    rst $38
    nop
    ld hl, sp-$02
    stop
    nop
    db $fc
    db $10
    rst $38
    nop
    ld hl, sp-$06
    stop
    nop
    ld hl, sp+$10
    rst $38
    push af
    ld sp, hl
    ld c, [hl]
    db $10
    push af
    ld bc, $105e
    nop
    ld hl, sp-$2a
    stop
    nop
    call nc, $ff10
    push af
    ld sp, hl
    ld c, h
    db $10
    push af
    ld bc, $105c
    nop
    ld hl, sp-$2a
    stop
    nop
    call nc, $ff10
    nop
    ld hl, sp-$2a
    stop
    nop
    call nc, $ff10
    nop
    ld hl, sp-$26
    stop
    nop
    ret c

    db $10
    rst $38
    nop
    ld hl, sp-$22
    stop
    nop
    call c, $ff10
    ld [$4efa], a
    db $10
    ld [$5e02], a
    db $10
    ld hl, sp-$08
    ldh [rNR10], a
    ld hl, sp+$00
    ldh a, [rNR10]
    ld [$e2f8], sp
    db $10
    ld [$f200], sp
    db $10
    rst $38
    ld [$4cfa], a
    db $10
    ld [$5c02], a
    db $10
    ld hl, sp-$08
    ldh [rNR10], a
    ld hl, sp+$00
    ldh a, [rNR10]
    ld [$e2f8], sp
    db $10
    ld [$f200], sp
    db $10
    rst $38
    ld hl, sp-$08
    ldh [rNR10], a
    ld hl, sp+$00
    ldh a, [rNR10]
    ld [$e2f8], sp
    db $10
    ld [$f200], sp
    db $10
    rst $38
    ld hl, sp-$08
    db $e4
    db $10
    ld hl, sp+$00
    db $f4
    db $10
    ld [$e2f8], sp
    db $10
    ld [$f200], sp
    db $10
    rst $38
    ld hl, sp-$08
    and $10
    ld hl, sp+$00
    or $10
    ld [$e2f8], sp
    db $10
    ld [$f200], sp
    db $10
    rst $38
    ld hl, sp-$08
    add sp, $10
    ld hl, sp+$00
    ld hl, sp+$10
    ld [$e2f8], sp
    db $10
    ld [$f200], sp
    db $10
    rst $38
    ld hl, sp-$0c
    db $fc
    db $10
    ld hl, sp-$04
    ld [$f810], a
    inc b
    ld a, [$0810]
    ld hl, sp-$14
    db $10
    ld [$f200], sp
    db $10
    rst $38
    nop
    ld hl, sp-$12
    stop
    nop
    cp $10
    rst $38
    ld a, [c]
    db $f4
    ret nc

    db $10
    ld a, [c]
    db $fc
    ldh [rNR10], a
    ld a, [c]
    inc b
    ldh a, [rNR10]
    ld [bc], a
    db $f4
    jp nc, $0210

    db $fc
    ld [c], a
    db $10
    ld [bc], a
    inc b
    ld a, [c]
    db $10
    rst $38
    db $ec
    ld a, [$104e]
    db $ec
    ld [bc], a
    ld e, [hl]
    db $10
    ld a, [c]
    db $f4
    ret nc

    db $10
    ld a, [c]
    db $fc
    ldh [rNR10], a
    ld a, [c]
    inc b
    ldh a, [rNR10]
    ld [bc], a
    db $f4
    jp nc, $0210

    db $fc
    ld [c], a
    db $10
    ld [bc], a
    inc b
    ld a, [c]
    db $10
    rst $38
    db $ec
    ld a, [$104c]
    db $ec
    ld [bc], a
    ld e, h
    db $10
    ld a, [c]
    db $f4
    ret nc

    db $10
    ld a, [c]
    db $fc
    ldh [rNR10], a
    ld a, [c]
    inc b
    ldh a, [rNR10]
    ld [bc], a
    db $f4
    jp nc, $0210

    db $fc
    ld [c], a
    db $10
    ld [bc], a
    inc b
    ld a, [c]
    db $10
    rst $38
    ldh a, [$f4]
    ret nc

    db $10
    ldh a, [$fc]
    ldh [rNR10], a
    ldh a, [rDIV]
    ldh a, [rNR10]
    nop
    db $f4
    call nc, RST_10
    db $fc
    db $e4
    stop
    inc b
    db $f4
    db $10
    rst $38
    ldh a, [$f4]
    ret nc

    db $10
    ldh a, [$fc]
    ldh [rNR10], a
    ldh a, [rDIV]
    ldh a, [rNR10]
    nop
    db $f4
    sub $10
    nop
    db $fc
    and $10
    nop
    inc b
    or $10
    rst $38
    ldh a, [$f4]
    ret c

    db $10
    ldh a, [$fc]
    add sp, $10
    ldh a, [rDIV]
    ld hl, sp+$10
    nop
    db $f4
    jp c, RST_10

    db $fc
    ld [$0010], a
    inc b
    ld_long a, $ff10
    ldh a, [$f4]
    xor h
    db $10
    ldh a, [$fc]
    cp h
    db $10
    ldh a, [rDIV]
    xor h
    jr nc, jr_004_6751

jr_004_6751:
    db $f4
    xor [hl]
    stop
    db $fc
    cp [hl]
    stop
    inc b
    adc $10
    rst $38
    ldh a, [$f7]
    ret c

    db $10
    ldh a, [rIE]
    adc d
    db $10
    ldh a, [rTAC]
    sbc d
    stop
    rst $30
    jp c, RST_10

    rst $38
    adc h
    stop
    rlca
    sbc h
    db $10
    rst $38
    ldh a, [$f4]
    ret nc

    db $10
    ldh a, [$fc]
    ldh [rNR10], a
    ldh a, [rDIV]
    ldh a, [rNR10]
    nop
    db $f4
    xor d
    stop
    db $fc
    cp d
    stop
    inc b
    jp z, $ff10

    ldh a, [$fa]
    db $ec
    db $10
    ldh a, [rSC]
    db $fc
    stop
    db $f4
    sbc $10
    nop
    db $fc
    xor $10
    nop
    inc b
    cp $10
    rst $38
    nop
    db $f4
    call z, RST_10
    db $fc
    call c, RST_10
    inc b
    call z, $ff30
    ldh a, [$f4]
    xor h
    db $10
    ldh a, [$fc]
    cp h
    db $10
    ldh a, [rDIV]
    xor h
    jr nc, jr_004_67be

jr_004_67be:
    db $f4
    xor [hl]
    stop
    db $fc
    adc [hl]
    stop
    inc b
    sbc [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    pop af
    ld a, [$104e]
    pop af
    ld [bc], a
    ld e, [hl]
    stop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    pop af
    ld a, [$104c]
    pop af
    ld [bc], a
    ld e, h
    stop
    ld hl, sp-$50
    stop
    nop
    ret nz

    db $10
    rst $38
    nop
    ld hl, sp-$4e
    stop
    nop
    jp nz, $ff10

    nop
    ld hl, sp-$4c
    stop
    nop
    call nz, $ff10
    nop
    ld hl, sp-$4a
    stop
    nop
    add $10
    rst $38
    nop
    ld hl, sp-$48
    stop
    nop
    ret z

    db $10
    rst $38
    nop
    ld hl, sp-$6a
    stop
    nop
    and [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$68
    stop
    nop
    xor b
    db $10
    rst $38
    nop
    ld hl, sp-$70
    stop
    nop
    and b
    db $10
    rst $38
    nop
    ld hl, sp-$6e
    stop
    nop
    and d
    db $10
    rst $38
    nop
    ld hl, sp-$6c
    stop
    nop
    and h
    db $10
    rst $38
    nop
    ld hl, sp-$48
    stop
    nop
    adc b
    db $10
    rst $38
    pop hl
    ld hl, sp-$60
    db $10
    pop hl
    nop
    or b
    db $10
    pop af
    ldh a, [$c0]
    db $10
    pop af
    ld hl, sp-$30
    db $10
    pop af
    nop
    ldh [rNR10], a
    pop af
    ld [$10f0], sp
    ld bc, $c2f0
    db $10
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    ld bc, $f208
    db $10
    rst $38
    call c, $4ef8
    db $10
    call c, $5e00
    db $10
    pop hl
    ld hl, sp-$60
    db $10
    pop hl
    nop
    or b
    db $10
    pop af
    ldh a, [$c0]
    db $10
    pop af
    ld hl, sp-$30
    db $10
    pop af
    nop
    ldh [rNR10], a
    pop af
    ld [$10f0], sp
    ld bc, $c2f0
    db $10
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    ld bc, $f208
    db $10
    rst $38
    call c, Call_004_4cf8
    db $10
    call c, $5c00
    db $10
    pop hl
    ld hl, sp-$60
    db $10
    pop hl
    nop
    or b
    db $10
    pop af
    ldh a, [$c0]
    db $10
    pop af
    ld hl, sp-$30
    db $10
    pop af
    nop
    ldh [rNR10], a
    pop af
    ld [$10f0], sp
    ld bc, $c2f0
    db $10
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    ld bc, $f208
    db $10
    rst $38
    ldh [$f8], a
    and d
    db $10
    ldh [rP1], a
    or d
    db $10
    ldh a, [$f0]
    call nz, $f010
    ld hl, sp-$2c
    db $10
    ldh a, [rP1]
    db $e4
    db $10
    ldh a, [$08]
    db $f4
    stop
    ldh a, [$c6]
    stop
    ld hl, sp-$2a
    stop
    nop
    and $10
    nop
    ld [$10f6], sp
    rst $38
    ldh [$f8], a
    and h
    db $10
    ldh [rP1], a
    or h
    db $10
    ldh a, [$f0]
    ret z

    db $10
    ldh a, [$f8]
    ret c

    db $10
    ldh a, [rP1]
    add sp, $10
    ldh a, [$08]
    ld hl, sp+$10
    nop
    ldh a, [$ca]
    stop
    ld hl, sp-$26
    stop
    nop
    ld [$0010], a
    ld [$10fa], sp
    rst $38
    ldh [$f6], a
    sub [hl]
    db $10
    ldh [$fe], a
    and [hl]
    db $10
    ldh [rTMA], a
    or [hl]
    db $10
    ldh a, [$f0]
    call z, $f010
    ld hl, sp-$24
    db $10
    ldh a, [rP1]
    db $ec
    db $10
    ldh a, [$08]
    db $fc
    stop
    ldh a, [$ce]
    stop
    ld hl, sp-$22
    stop
    nop
    xor $10
    nop
    ld [$10fe], sp
    rst $38
    ldh [$f8], a
    xor b
    db $10
    ldh [rP1], a
    cp b
    db $10
    ldh a, [$f0]
    adc h
    db $10
    ldh a, [$f8]
    sbc h
    db $10
    ldh a, [rP1]
    xor h
    db $10
    ldh a, [$08]
    cp h
    stop
    ldh a, [$8e]
    stop
    ld hl, sp-$62
    stop
    nop
    xor [hl]
    stop
    ld [$10be], sp
    rst $38
    db $e3
    or $96
    db $10
    db $e3
    cp $a6
    db $10
    db $e3
    ld b, $b6
    db $10
    di
    ldh a, [$cc]
    db $10
    di
    ld hl, sp-$24
    db $10
    di
    nop
    db $ec
    db $10
    di
    ld [$10fc], sp
    inc bc
    ldh a, [$8a]
    db $10
    inc bc
    ld hl, sp-$66
    db $10
    inc bc
    nop
    xor d
    db $10
    inc bc
    ld [$10ba], sp
    rst $38
    ldh [$f8], a
    and b
    db $10
    ldh [rP1], a
    or b
    db $10
    ldh a, [$f0]
    ret nz

    db $10
    ldh a, [$f8]
    ret nc

    db $10
    ldh a, [rP1]
    ldh [rNR10], a
    ldh a, [$08]
    ldh a, [rNR10]
    nop
    ldh a, [$8e]
    stop
    ld hl, sp-$62
    stop
    nop
    xor [hl]
    stop
    ld [$10be], sp
    rst $38
    nop
    ld hl, sp-$70
    db $10
    rst $38
    nop
    ld hl, sp-$78
    stop
    nop
    sbc b
    db $10
    rst $38
    nop
    nop
    sub d
    db $10
    rst $38
    nop
    nop
    sub h
    db $10
    rst $38
    nop
    db $fc
    adc d
    db $10
    rst $38
    nop
    db $fc
    adc b
    db $10
    rst $38
    nop
    push af
    adc [hl]
    stop
    db $fd
    adc h
    db $10
    rst $38
    di
    ld hl, sp+$4e
    db $10
    di
    nop
    ld e, [hl]
    stop
    ld hl, sp-$70
    stop
    nop
    and b
    db $10
    rst $38
    di
    ld hl, sp+$4c
    db $10
    di
    nop
    ld e, h
    stop
    ld hl, sp-$70
    stop
    nop
    and b
    db $10
    rst $38
    nop
    ld hl, sp-$70
    stop
    nop
    and b
    db $10
    rst $38
    nop
    ld hl, sp-$6e
    stop
    nop
    and d
    db $10
    rst $38
    nop
    ld hl, sp-$6c
    stop
    nop
    and h
    db $10
    rst $38
    nop
    ld hl, sp-$6a
    stop
    nop
    and [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$68
    stop
    nop
    xor b
    db $10
    rst $38
    nop
    ld hl, sp-$66
    stop
    nop
    xor d
    db $10
    rst $38
    nop
    ld hl, sp-$64
    stop
    nop
    xor h
    db $10
    rst $38
    nop
    db $f4
    sbc [hl]
    stop
    db $fc
    xor [hl]
    stop
    inc b
    sbc [hl]
    jr nc, @+$01

    nop
    ldh a, [$b0]
    stop
    ld hl, sp-$4e
    stop
    nop
    or d
    jr nc, jr_004_6a7e

jr_004_6a7e:
    ld [$30b0], sp
    rst $38
    nop
    ldh a, [$b4]
    stop
    ld hl, sp-$4a
    stop
    nop
    or [hl]
    jr nc, jr_004_6a8f

jr_004_6a8f:
    ld [$30b4], sp
    rst $38
    pop af
    ld hl, sp+$4e
    db $10
    pop af
    nop
    ld e, [hl]
    stop
    ld hl, sp-$16
    stop
    nop
    ld_long a, $ff10
    pop af
    ld hl, sp+$4c
    db $10
    pop af
    nop
    ld e, h
    stop
    ld hl, sp-$20
    stop
    nop
    ldh a, [rNR10]
    rst $38
    nop
    ld hl, sp-$20
    stop
    nop
    ldh a, [rNR10]
    rst $38
    nop
    ld hl, sp-$1e
    stop
    nop
    ld a, [c]
    db $10
    rst $38
    nop
    ld hl, sp-$1c
    stop
    nop
    db $f4
    db $10
    rst $38
    nop
    ld hl, sp-$1a
    stop
    nop
    or $10
    rst $38
    nop
    ld hl, sp-$18
    stop
    nop
    ld hl, sp+$10
    rst $38
    nop
    ld hl, sp-$16
    stop
    nop
    ld_long a, $ff10
    nop
    ld hl, sp-$14
    stop
    nop
    db $fc
    db $10
    rst $38
    nop
    rst $30
    xor $10
    nop
    rst $38
    cp $10
    rst $38
    nop
    or $c0
    stop
    cp $d0
    db $10
    rst $38
    nop
    push af
    jp nz, RST_10

    db $fd
    jp nc, $ff10

    nop
    di
    call nz, RST_10
    ei
    call nc, $f810
    inc bc
    cp b
    db $10
    rst $38
    nop
    ld a, [c]
    add $10
    nop
    ld a, [$10d6]
    ld hl, sp+$02
    cp h
    db $10
    rst $38
    ldh a, [$f9]
    ret z

    db $10
    ldh a, [rSB]
    ret c

    stop
    pop af
    cp d
    stop
    ld sp, hl
    jp z, RST_10

    ld bc, $10da
    rst $38
    ldh a, [$f7]
    call z, $f010
    rst $38
    call c, RST_10
    pop af
    cp [hl]
    stop
    ld sp, hl
    adc $10
    nop
    ld bc, $10de
    rst $38
    xor $fd
    ld c, [hl]
    db $10
    xor $05
    ld e, [hl]
    db $10
    ldh a, [rIE]
    ret nc

    stop
    rst $30
    jp nz, RST_10

    rst $38
    jp nc, $fc10

    rlca
    ret nz

    db $10
    rst $38
    xor $fd
    ld c, h
    db $10
    xor $05
    ld e, h
    db $10
    ldh a, [rIE]
    ret nc

    stop
    rst $30
    jp nz, RST_10

    rst $38
    jp nc, $fc10

    rlca
    ret nz

    db $10
    rst $38
    ldh a, [rIE]
    ret nc

    stop
    rst $30
    jp nz, RST_10

    rst $38
    jp nc, $fc10

    rlca
    ret nz

    db $10
    rst $38
    ldh a, [rIE]
    db $f4
    stop
    rst $30
    and $10
    nop
    rst $38
    or $10
    ld hl, sp+$07
    db $e4
    db $10
    rst $38
    ldh a, [rIE]
    ldh a, [rNR10]
    nop
    rst $30
    ld [c], a
    stop
    rst $38
    ld a, [c]
    db $10
    ld sp, hl
    rlca
    ldh [rNR10], a
    rst $38
    ldh a, [rIE]
    db $fc
    stop
    rst $30
    xor $10
    nop
    rst $38
    cp $10
    ld hl, sp+$07
    db $ec
    db $10
    rst $38
    ldh a, [rIE]
    ld hl, sp+$10
    nop
    rst $30
    ld [$0010], a
    rst $38
    ld a, [$fe10]
    rlca
    add sp, $10
    rst $38
    ldh a, [rIE]
    call nc, RST_10
    rst $30
    add $10
    nop
    rst $38
    sub $10
    ld hl, sp+$07
    call nz, $ff10
    ldh a, [rIE]
    ret c

    stop
    rst $30
    jp z, RST_10

    rst $38
    jp c, $f810

    rlca
    ret z

    db $10
    rst $38
    ldh a, [rIE]
    call c, RST_10
    rst $30
    adc $10
    nop
    rst $38
    sbc $10
    db $fc
    rlca
    call z, $ff10
    ldh a, [$f9]
    db $fc
    jr nc, jr_004_6c12

jr_004_6c12:
    ld bc, $30ee
    nop
    ld sp, hl
    cp $30
    ld hl, sp-$0f
    db $ec
    jr nc, @+$01

    ldh a, [$f9]
    ret nc

    jr nc, jr_004_6c23

jr_004_6c23:
    ld bc, $30c2
    nop
    ld sp, hl
    jp nc, $fc30

    pop af
    ret nz

    jr nc, @+$01

    di
    ld sp, hl
    ld c, [hl]
    db $10
    di
    ld bc, $105e
    nop
    ld hl, sp-$5e
    stop
    nop
    and b
    db $10
    rst $38
    di
    ld sp, hl
    ld c, h
    db $10
    di
    ld bc, $105c
    nop
    ld hl, sp-$5e
    stop
    nop
    or b
    db $10
    rst $38
    nop
    ld hl, sp-$5e
    stop
    nop
    and b
    db $10
    rst $38
    nop
    ld hl, sp-$5e
    stop
    nop
    or b
    db $10
    rst $38
    nop
    ld hl, sp-$5a
    stop
    nop
    and h
    db $10
    rst $38
    nop
    ld hl, sp-$56
    stop
    nop
    xor b
    db $10
    rst $38
    nop
    ld hl, sp-$52
    stop
    nop
    xor h
    db $10
    rst $38
    push hl
    ld hl, sp+$4e
    db $10
    push hl
    nop
    ld e, [hl]
    db $10
    ldh a, [$f6]
    ret nz

    db $10
    ldh a, [$fe]
    ret nc

    stop
    or $c2
    stop
    cp $d2
    db $10
    rst $38
    push hl
    ld hl, sp+$4c
    db $10
    push hl
    nop
    ld e, h
    db $10
    ldh a, [$f6]
    ret nz

    db $10
    ldh a, [$fe]
    ret nc

    stop
    or $c2
    stop
    cp $d2
    db $10
    rst $38
    ldh a, [$f6]
    ret nz

    db $10
    ldh a, [$fe]
    ret nc

    stop
    or $c2
    stop
    cp $d2
    db $10
    rst $38
    ldh a, [$f6]
    call nz, $f010
    cp $d4
    stop
    or $c6
    stop
    cp $d6
    db $10
    rst $38
    ldh a, [$f6]
    ret z

    db $10
    ldh a, [$fe]
    ret c

    stop
    or $ca
    stop
    cp $da
    db $10
    rst $38
    ldh a, [$f6]
    ret nz

    db $10
    ldh a, [$fe]
    ret nc

    stop
    or $c2
    stop
    cp $d2
    stop
    ld b, $ba
    db $10
    rst $38
    ldh a, [$f7]
    call z, $f010
    rst $38
    call c, RST_10
    rst $30
    adc $10
    nop
    rst $38
    sbc $10
    ld hl, sp-$11
    cp [hl]
    db $10
    rst $38
    ldh a, [$f7]
    call z, $f010
    rst $38
    call c, RST_10
    rst $30
    adc $10
    nop
    rst $38
    or [hl]
    stop
    rlca
    cp b
    db $10
    ld hl, sp-$11
    cp [hl]
    db $10
    rst $38
    ldh a, [$f7]
    call z, $f010
    rst $38
    call c, RST_10
    rst $30
    adc $10
    nop
    rst $38
    cp h
    stop
    ld b, $ba
    db $10
    ld hl, sp-$11
    cp [hl]
    db $10
    rst $38
    push hl
    ld hl, sp+$4e
    db $10
    push hl
    nop
    ld e, [hl]
    db $10
    ldh a, [$f8]
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [rNR10]
    nop
    ld hl, sp-$1e
    stop
    nop
    ld a, [c]
    db $10
    rst $38
    push hl
    ld hl, sp+$4c
    db $10
    push hl
    nop
    ld e, h
    db $10
    ldh a, [$f8]
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [rNR10]
    nop
    ld hl, sp-$1e
    stop
    nop
    ld a, [c]
    db $10
    rst $38
    nop
    ld hl, sp-$4e
    stop
    nop
    or h
    db $10
    rst $38
    ldh a, [$f8]
    db $ec
    db $10
    ldh a, [rP1]
    db $fc
    stop
    ld hl, sp-$12
    stop
    nop
    cp $10
    rst $38
    ldh a, [$f8]
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [rNR10]
    nop
    ld hl, sp-$1e
    stop
    nop
    ld a, [c]
    db $10
    rst $38
    ldh a, [$f6]
    db $e4
    db $10
    ldh a, [$fe]
    db $f4
    stop
    or $e6
    stop
    cp $f6
    db $10
    rst $38
    ldh a, [$f3]
    add sp, $10
    ldh a, [$fb]

jr_004_6db3:
    ld hl, sp+$10
    nop
    push af
    ld [$0010], a
    dec c
    ld_long a, $ff10
    ldh a, [$fa]
    db $f4
    jr nc, jr_004_6db3

    ld [bc], a
    db $e4
    jr nc, jr_004_6dc7

jr_004_6dc7:
    ld a, [$30f6]
    nop
    ld [bc], a
    and $30
    rst $38
    di
    db $fd
    ld hl, sp+$30
    di
    dec b
    add sp, $30
    inc bc
    ei
    ld a, [$0330]
    inc bc
    ld_long $ff30, a
    nop
    ld hl, sp-$64
    stop
    nop
    sbc [hl]
    db $10
    rst $38
    db $f4
    db $f4
    adc h
    db $10
    db $f4
    db $fc
    sbc h
    db $10
    inc b
    db $f4
    adc [hl]
    db $10
    inc b
    db $fc
    sbc [hl]
    db $10
    db $fc
    inc b
    xor h
    db $10
    rst $38
    xor $fa
    ld c, [hl]
    db $10
    xor $02
    ld e, [hl]
    db $10
    pop af
    db $fc
    sbc b
    db $10
    ld bc, $90f8
    db $10
    ld bc, $a000
    db $10
    rst $38
    xor $fa
    ld c, h
    db $10
    xor $02
    ld e, h
    db $10
    pop af
    db $fc
    sbc b
    db $10
    ld bc, $90f8
    db $10
    ld bc, $a000
    db $10
    rst $38
    pop af
    db $fc
    sbc b
    db $10
    ld bc, $90f8
    db $10
    ld bc, $a000
    db $10
    rst $38
    ldh a, [$fc]
    adc b
    stop
    ld hl, sp-$6e
    stop
    nop
    and d
    db $10
    rst $38
    pop af
    db $fc
    and [hl]
    db $10
    ld bc, $90f8
    db $10
    ld bc, $a000
    db $10
    rst $38
    ldh a, [$fc]
    sub [hl]
    stop
    ld hl, sp-$6c
    stop
    nop
    and h
    db $10
    rst $38
    pop af
    db $fc
    sbc b
    db $10
    ld bc, $90f8
    db $10
    ld bc, $a000
    db $10
    rst $38
    pop af
    db $fc
    adc b
    db $10
    ld bc, $90f8
    db $10
    ld bc, $a000
    db $10
    rst $38
    pop af
    db $fc
    and [hl]
    db $10
    ld bc, $90f8
    db $10
    ld bc, $a000
    db $10
    rst $38
    pop af
    db $fc
    sub [hl]
    db $10
    ld bc, $90f8
    db $10
    ld bc, $a000
    db $10
    rst $38
    push de
    ld hl, sp+$4e
    db $10
    push de
    nop
    ld e, [hl]
    db $10
    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    adc $10
    ld a, [c]
    inc c
    sbc $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    push de
    ld hl, sp+$4c
    db $10
    push de
    nop
    ld e, h
    db $10
    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    adc $10
    ld a, [c]
    inc c
    sbc $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    adc $10
    ld a, [c]
    inc c
    sbc $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    pop hl
    ld hl, sp-$50
    db $10
    pop hl
    nop
    ret nz

    db $10
    pop af
    db $f4
    xor [hl]
    db $10
    pop af
    db $fc
    cp [hl]
    db $10
    pop af
    inc b
    or [hl]
    db $10
    pop af
    inc c
    sbc $10
    ld bc, $d0f4
    db $10
    ld bc, $e2fc
    db $10
    ld bc, $f204
    db $10
    rst $38
    ldh [$f8], a
    or b
    db $10
    ldh [rP1], a
    ret nz

    db $10
    ldh a, [$f4]
    xor [hl]
    db $10
    ldh a, [$fc]
    cp [hl]
    db $10
    ldh a, [rDIV]
    add $10
    ldh a, [$0c]
    sbc $10
    nop
    db $f4
    call nc, RST_10
    db $fc
    db $e4
    stop
    inc b
    db $f4
    db $10
    rst $38
    pop hl
    ld hl, sp-$50
    db $10
    pop hl
    nop
    ret nz

    db $10
    pop af
    db $f4
    xor [hl]
    db $10
    pop af
    db $fc
    cp [hl]
    db $10
    pop af
    inc b
    or [hl]
    db $10
    pop af
    inc c
    sbc $10
    ld bc, $d8f4
    db $10
    ld bc, $e6fc
    db $10
    ld bc, $f604
    db $10
    rst $38
    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    adc $10
    ld a, [c]
    inc c
    sbc $10
    ld [bc], a
    db $f4
    ret c

    db $10
    ld [bc], a
    db $fc
    add sp, $10
    ld [bc], a
    inc b
    ld hl, sp+$10
    rst $38
    pop hl
    ld hl, sp-$50
    db $10
    pop hl
    nop
    ret nz

    db $10
    pop af
    db $f4
    xor [hl]
    db $10
    pop af
    db $fc
    cp [hl]
    db $10
    pop af
    inc b
    adc $10
    pop af
    inc c
    sbc $10
    ld bc, $daf4
    db $10
    ld bc, $eafc
    db $10
    ld bc, $fa04
    db $10
    rst $38
    ldh [$f8], a
    or b
    db $10
    ldh [rP1], a
    ret nz

    db $10
    ldh a, [$f4]
    xor [hl]
    db $10
    ldh a, [$fc]
    cp [hl]
    db $10
    ldh a, [rDIV]
    adc $10
    ldh a, [$0c]
    sub $10
    nop
    db $f4
    call c, RST_10
    db $fc
    db $ec
    stop
    inc b
    db $fc
    db $10
    rst $38
    pop hl
    ld hl, sp-$50
    db $10
    pop hl
    nop
    ret nz

    db $10
    pop af
    db $f4
    xor [hl]
    db $10
    pop af
    db $fc
    cp [hl]
    db $10
    pop af
    inc b
    adc $10
    pop af
    inc c
    jp nc, $0110

    db $f4
    xor $10
    ld bc, $fefc
    db $10
    ld bc, $f004
    db $10
    rst $38
    pop hl
    rst $30
    or b
    db $10
    pop hl
    rst $38
    ret nz

    db $10
    pop af
    db $f4
    cp b
    db $10
    pop af
    db $fc
    cp d
    db $10
    pop af
    inc b
    jp z, $0110

    db $f4
    ret z

    db $10
    ld bc, $bcfc
    db $10
    ld bc, $cc04
    db $10
    rst $38
    pop hl
    ld hl, sp-$50
    db $10
    pop hl
    nop
    ret nz

    db $10
    pop af
    db $f4
    xor [hl]

jr_004_703e:
    db $10
    pop af
    db $fc
    cp [hl]
    db $10
    pop af
    inc b
    adc $10
    pop af
    inc c
    sbc $10
    ld bc, $d0f4
    db $10
    ld bc, $e2fc

jr_004_7052:
    db $10
    ld bc, $f204
    db $10
    rst $38
    pop hl
    ld hl, sp-$40
    jr nc, jr_004_703e

    nop

jr_004_705e:
    or b
    jr nc, jr_004_7052

    db $ec
    sbc $30

jr_004_7064:
    pop af
    db $f4
    adc $30
    pop af
    db $fc
    cp [hl]
    jr nc, jr_004_705e

    inc b
    xor [hl]
    jr nc, jr_004_7072

    db $f4

jr_004_7072:
    ldh a, [$30]
    ld bc, $fefc
    jr nc, jr_004_707a

    inc b

jr_004_707a:
    xor $30
    rst $38
    ld [c], a
    ld hl, sp-$40
    jr nc, jr_004_7064

    nop
    or b

jr_004_7084:
    jr nc, @-$0c

    db $ec
    sbc $30
    ld a, [c]
    db $f4
    adc $30
    ld a, [c]
    db $fc
    cp [hl]
    jr nc, jr_004_7084

    inc b
    xor [hl]
    jr nc, @+$04

    db $f4
    ldh a, [$30]
    ld [bc], a
    db $fc
    ldh [$30], a
    ld [bc], a
    inc b
    ret nc

    jr nc, @+$01

    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    adc $10
    ld a, [c]
    inc c
    sbc $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$4e
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    or [hl]
    db $10
    ld a, [c]
    inc c
    jp nc, $0210

    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    jp nz, $f210

    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    or [hl]
    db $10
    ld a, [c]
    inc c
    jp nc, $0210

    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    add $10
    ld a, [c]
    inc c
    sub $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$4e
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    add $10
    ld a, [c]
    inc c
    sub $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$4c
    db $10
    ld [c], a
    nop
    call nz, $f210
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    add $10
    ld a, [c]
    inc c
    sub $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    jp nz, $f210

    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    add $10
    ld a, [c]
    inc c
    sub $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$4e
    db $10
    ld [c], a
    nop
    ret nz

    db $10
    ld a, [c]
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    adc d
    db $10
    ld a, [c]
    inc c
    sbc d
    db $10
    ld a, [c]
    inc d
    xor b
    db $10
    ld a, [c]
    inc e
    sub $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$50
    db $10
    ld [c], a
    nop
    jp nz, $f210

    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    adc d
    db $10
    ld a, [c]
    inc c
    sbc d
    db $10
    ld a, [c]
    inc d
    xor b
    db $10
    ld a, [c]
    inc e
    sub $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    ld [c], a
    ld hl, sp-$4c
    db $10
    ld [c], a
    nop
    call nz, $f210
    db $f4
    xor [hl]
    db $10
    ld a, [c]
    db $fc
    cp [hl]
    db $10
    ld a, [c]
    inc b
    adc d
    db $10
    ld a, [c]
    inc c
    sbc d
    db $10
    ld a, [c]
    inc d
    xor d
    db $10
    ld a, [c]
    inc e
    xor d
    db $10
    ld a, [c]
    inc h
    xor b
    db $10
    ld a, [c]
    inc l
    sub $10
    ld [bc], a
    db $f4
    ret nc

    db $10
    ld [bc], a
    db $fc
    ldh [rNR10], a
    ld [bc], a
    inc b
    ldh a, [rNR10]
    rst $38
    and $f8
    ld c, [hl]
    db $10
    and $00
    ld e, [hl]
    db $10
    pop af
    ld hl, sp-$30
    db $10
    pop af
    nop
    ldh [rNR10], a
    ld bc, $c2f0
    db $10
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    rst $38
    and $f8
    ld c, h
    db $10
    and $00
    ld e, h
    db $10
    pop af
    ld hl, sp-$30
    db $10
    pop af
    nop
    ldh [rNR10], a
    ld bc, $c2f0
    db $10
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    rst $38
    pop af
    ld hl, sp-$30
    db $10
    pop af
    nop
    ldh [rNR10], a
    ld bc, $c2f0
    db $10
    ld bc, $d2f8
    db $10
    ld bc, $e200
    db $10
    rst $38
    pop af
    ld a, [$10d0]
    pop af
    ld [bc], a
    ldh [rNR10], a
    ld bc, $c4f6
    db $10
    ld bc, $d4fe
    db $10
    rst $38
    pop af
    rst $38
    sub $10
    ld sp, hl
    rlca
    add $10
    ld bc, $c2ef
    db $10
    ld bc, $c8f7
    db $10
    ld bc, $d8ff
    db $10
    rst $38
    pop af
    nop
    jp c, $f910

    ld [$10ca], sp
    nop
    ldh a, [$c2]
    db $10
    ld bc, $ccf8
    db $10
    ld bc, $dc00
    db $10
    rst $38
    pop af
    rst $38
    sub $10
    ld sp, hl
    rlca
    add $10
    ld bc, $c2ef
    db $10
    ld bc, $e6f7
    db $10
    ld bc, $f6ff
    db $10
    rst $38
    pop af
    ld a, [$10d0]
    pop af
    ld [bc], a
    ldh [rNR10], a
    ld bc, $e4f6
    db $10
    ld bc, $f4fe
    db $10
    rst $38
    pop af
    ld sp, hl
    db $ec
    db $10
    pop af
    ld bc, $10fc
    ld bc, $c2f1
    db $10
    ld bc, $eef9
    db $10
    ld bc, $fe01
    db $10
    rst $38
    pop af
    ld hl, sp-$18
    db $10
    pop af
    nop
    ld hl, sp+$10
    ld sp, hl
    ld [$10f2], sp
    ld bc, $eaf8
    db $10
    ld bc, $fa00
    db $10
    rst $38
    pop af
    ld sp, hl
    db $ec
    db $10
    pop af
    ld bc, $10fc
    ld bc, $c2f1
    db $10
    ld bc, $cef9
    db $10
    ld bc, $de01
    db $10
    rst $38
    pop af
    ld hl, sp-$14
    db $10
    pop af
    nop
    db $fc
    db $10
    ld bc, $c2f0
    db $10
    ld bc, $cef8
    db $10
    ld bc, $fe00
    db $10
    rst $38
    xor $f8
    ld c, [hl]
    db $10
    xor $00
    ld e, [hl]
    db $10
    pop af
    ld a, [$1092]
    ld sp, hl
    ld [$1096], sp
    ld bc, $8af8
    db $10
    ld bc, $9a00
    db $10
    rst $38
    xor $f8
    ld c, h
    db $10
    xor $00
    ld e, h
    db $10
    pop af
    ld a, [$1092]
    ld sp, hl
    ld [$1096], sp
    ld bc, $8af8
    db $10
    ld bc, $9a00
    db $10
    rst $38
    pop af
    ld a, [$1092]
    ld sp, hl
    ld [$1096], sp
    ld bc, $8af8
    db $10
    ld bc, $9a00
    db $10
    rst $38
    ldh a, [$fa]
    sub d
    db $10
    ldh a, [rSC]
    sub h
    stop
    ld hl, sp-$74
    stop
    nop
    sbc h
    db $10
    rst $38
    ldh a, [$fa]
    sub d
    stop
    ld hl, sp-$72
    stop
    nop
    sbc [hl]
    stop
    ld [$1088], sp
    nop
    db $10
    sbc b
    db $10
    rst $38
    ret c

    ld hl, sp+$4e
    db $10
    ret c

    nop
    ld e, [hl]
    db $10
    db $e3
    ld sp, hl
    sub b
    db $10
    db $e3
    ld bc, $10a6
    di
    ld hl, sp-$60
    db $10
    di
    nop
    or b
    db $10
    di
    ld [$10c0], sp
    inc bc
    push af
    and h
    db $10
    inc bc
    db $fd
    and d
    db $10
    inc bc
    dec b
    or d
    db $10
    inc bc
    dec c
    jp nz, $ff10

    ret c

    ld hl, sp+$4c
    db $10
    ret c

    nop
    ld e, h
    db $10
    db $e3
    ld sp, hl
    sub b
    db $10
    db $e3
    ld bc, $10a6
    di
    ld hl, sp-$60
    db $10
    di

jr_004_73e3:
    nop
    or b
    db $10
    di
    ld [$10c0], sp
    inc bc
    push af
    and h
    db $10
    inc bc
    db $fd
    and d
    db $10
    inc bc
    dec b
    or d
    db $10
    inc bc

jr_004_73f7:
    dec c
    jp nz, $ff10

jr_004_73fb:
    db $e3
    rst $30
    and [hl]
    jr nc, jr_004_73e3

    rst $38
    sub b
    jr nc, jr_004_73f7

    ldh a, [$c0]
    jr nc, jr_004_73fb

    ld hl, sp-$50
    jr nc, @-$0b

    nop
    and b
    jr nc, @+$05

    db $eb
    jp nz, $0330

    di
    or d
    jr nc, @+$05

    ei

jr_004_7419:
    and d
    jr nc, @+$05

    inc bc

jr_004_741d:
    and h
    jr nc, @+$01

    ldh [$f7], a
    and [hl]
    jr nc, @-$1e

    rst $38
    sub b

jr_004_7427:
    jr nc, jr_004_7419

    ldh a, [$c4]
    jr nc, jr_004_741d

    ld hl, sp-$4c
    jr nc, @-$0e

    nop
    and b
    jr nc, jr_004_7435

jr_004_7435:
    xor $c6
    jr nc, jr_004_7439

jr_004_7439:
    or $b6

jr_004_743b:
    jr nc, jr_004_743d

jr_004_743d:
    cp $d4

jr_004_743f:
    jr nc, @+$01

    pop hl
    rst $30

jr_004_7443:
    and [hl]
    jr nc, jr_004_7427

    rst $38
    sub b
    jr nc, jr_004_743b

    ldh a, [$c8]
    jr nc, jr_004_743f

    ld hl, sp-$48
    jr nc, jr_004_7443

    nop
    and b
    jr nc, @+$03

    ldh a, [$ca]
    jr nc, @+$03

    ld hl, sp-$46
    jr nc, jr_004_745f

Call_004_745e:
    nop

jr_004_745f:
    ret c

    jr nc, @+$01

    ld [c], a
    rst $30
    and [hl]

jr_004_7465:
    jr nc, @-$1c

    rst $38
    sub b
    jr nc, @-$0c

    ldh a, [$cc]
    jr nc, @-$0c

jr_004_746f:
    ld hl, sp-$44
    jr nc, jr_004_7465

    nop
    and b
    jr nc, @+$04

    db $eb
    adc $30
    ld [bc], a
    di
    cp [hl]
    jr nc, jr_004_7481

    ei
    xor [hl]

jr_004_7481:
    jr nc, jr_004_7485

jr_004_7483:
    inc bc
    xor h

jr_004_7485:
    jr nc, @+$01

jr_004_7487:
    db $e3
    rst $30
    and [hl]
    jr nc, jr_004_746f

    rst $38
    sub b
    jr nc, jr_004_7483

    ldh a, [$f0]
    jr nc, jr_004_7487

    ld hl, sp-$20
    jr nc, @-$0b

    nop
    and b
    jr nc, @+$05

    db $eb
    ld a, [c]
    jr nc, @+$05

    di
    ld [c], a
    jr nc, @+$05

    ei

jr_004_74a5:
    jp nc, $0330

    inc bc

jr_004_74a9:
    ret nc

    jr nc, @+$01

    ldh [$f7], a
    and [hl]
    jr nc, @-$1e

    rst $38
    sub b

jr_004_74b3:
    jr nc, jr_004_74a5

    ldh a, [$f4]
    jr nc, jr_004_74a9

    ld hl, sp-$1c
    jr nc, @-$0e

    nop
    and b
    jr nc, jr_004_74c1

jr_004_74c1:
    xor $f6
    jr nc, jr_004_74c5

jr_004_74c5:
    or $e6

jr_004_74c7:
    jr nc, jr_004_74c9

jr_004_74c9:
    cp $d6

jr_004_74cb:
    jr nc, @+$01

    pop hl
    rst $30

jr_004_74cf:
    and [hl]
    jr nc, jr_004_74b3

    rst $38
    sub b
    jr nc, jr_004_74c7

    ldh a, [$f8]
    jr nc, jr_004_74cb

    ld hl, sp-$18
    jr nc, jr_004_74cf

    nop
    and b
    jr nc, @+$03

    ldh a, [$fa]
    jr nc, @+$03

    ld hl, sp-$16
    jr nc, jr_004_74eb

    nop

jr_004_74eb:
    jp c, $ff30

    ld [c], a
    rst $30
    and [hl]

jr_004_74f1:
    jr nc, @-$1c

    rst $38
    sub b
    jr nc, @-$0c

    ldh a, [$fc]
    jr nc, @-$0c

    ld hl, sp-$14
    jr nc, jr_004_74f1

    nop
    and b
    jr nc, @+$04

    db $eb
    cp $30
    ld [bc], a
    di
    xor $30
    ld [bc], a
    ei
    sbc $30
    ld [bc], a
    inc bc
    call c, $ff30
    db $e3
    ld sp, hl
    xor b
    db $10
    db $e3
    ld bc, $10aa
    di
    ld hl, sp-$60
    db $10
    di
    nop
    or b
    db $10
    di
    ld [$10c0], sp
    inc bc
    push af
    and h
    db $10
    inc bc
    db $fd
    and d
    db $10
    inc bc
    dec b
    or d
    db $10
    inc bc
    dec c
    jp nz, $ff10

    ldh [$f9], a
    xor b
    db $10
    ldh [rSB], a
    xor d
    db $10
    ldh a, [$f8]
    and b
    db $10
    ldh a, [rP1]
    or h
    db $10
    ldh a, [$08]
    call nz, RST_10
    ld a, [$10d4]

Jump_004_7550:
    nop
    ld [bc], a
    or [hl]
    stop
    ld a, [bc]
    add $10
    rst $38
    pop hl
    ld sp, hl
    xor b
    db $10
    pop hl
    ld bc, $10aa
    pop af
    ld hl, sp-$60
    db $10
    pop af
    nop
    cp b
    db $10
    pop af
    ld [$10c8], sp
    ld bc, $d8f8
    db $10
    ld bc, $ba00
    db $10
    ld bc, $ca08
    db $10
    rst $38
    ld [c], a
    ld sp, hl
    xor b
    db $10
    ld [c], a
    ld bc, $10aa
    ld a, [c]
    ld hl, sp-$60
    db $10
    ld a, [c]
    nop
    cp h
    db $10
    ld a, [c]
    ld [$10cc], sp
    ld [bc], a
    push af
    xor h
    db $10
    ld [bc], a
    db $fd
    xor [hl]
    db $10
    ld [bc], a
    dec b
    cp [hl]
    db $10
    ld [bc], a
    dec c
    adc $10
    rst $38
    db $e3
    ld sp, hl
    xor b
    db $10
    db $e3
    ld bc, $10aa
    di
    ld hl, sp-$60
    db $10
    di
    nop
    ldh [rNR10], a
    di
    ld [$10f0], sp
    inc bc
    push af
    ret nc

    db $10
    inc bc
    db $fd
    jp nc, $0310

    dec b
    ld [c], a
    db $10
    inc bc
    dec c
    ld a, [c]
    db $10
    rst $38
    ldh [$f9], a
    xor b
    db $10
    ldh [rSB], a
    xor d
    db $10
    ldh a, [$f8]
    and b
    db $10
    ldh a, [rP1]
    db $e4
    db $10
    ldh a, [$08]
    db $f4
    stop
    ld a, [$10d6]
    nop
    ld [bc], a
    and $10
    nop
    ld a, [bc]
    or $10
    rst $38
    pop hl
    ld sp, hl
    xor b
    db $10
    pop hl
    ld bc, $10aa
    pop af
    ld hl, sp-$60
    db $10
    pop af
    nop
    add sp, $10
    pop af
    ld [$10f8], sp
    ld bc, $daf8
    db $10
    ld bc, $ea00
    db $10
    ld bc, $fa08
    db $10
    rst $38
    ld [c], a
    ld sp, hl
    xor b
    db $10
    ld [c], a
    ld bc, $10aa
    ld a, [c]
    ld hl, sp-$60
    db $10
    ld a, [c]
    nop
    db $ec
    db $10
    ld a, [c]
    ld [$10fc], sp
    ld [bc], a
    push af
    call c, $0210
    db $fd
    sbc $10
    ld [bc], a
    dec b
    xor $10
    ld [bc], a
    dec c
    cp $10
    rst $38
    rst $28
    ld hl, sp+$4e
    db $10
    rst $28
    nop
    ld e, [hl]
    db $10
    ld a, [$90f8]
    db $10
    ld a, [$a000]
    db $10
    ld a, [bc]
    ld hl, sp-$56
    db $10
    ld a, [bc]
    nop
    sbc d
    db $10
    rst $38
    rst $28
    ld hl, sp+$4c
    db $10
    rst $28
    nop
    ld e, h
    db $10
    ld a, [$90f8]
    db $10
    ld a, [$a000]
    db $10
    ld a, [bc]
    ld hl, sp-$56
    db $10
    ld a, [bc]
    nop
    sbc d
    db $10
    rst $38
    ld a, [$90f8]
    db $10
    ld a, [$a000]
    db $10
    ld a, [bc]
    ld hl, sp-$56
    db $10
    ld a, [bc]
    nop
    sbc d
    db $10
    rst $38
    ld a, [$92f8]
    db $10
    ld a, [$a200]
    db $10
    ld a, [bc]
    ld hl, sp-$76
    db $10
    ld a, [bc]
    nop
    sbc d
    db $10
    rst $38
    ld a, [$94f8]
    db $10
    ld a, [$a400]
    db $10
    ld a, [bc]
    ld hl, sp-$76
    db $10
    ld a, [bc]
    nop
    sbc d
    db $10
    rst $38
    ld a, [$96f8]
    db $10
    ld a, [$a600]
    db $10
    ld a, [bc]
    ld hl, sp-$76
    db $10
    ld a, [bc]
    nop
    sbc d
    db $10
    rst $38
    or $f8
    sub [hl]
    db $10
    or $00
    and [hl]
    db $10
    ld b, $f8
    adc h
    db $10
    ld b, $00
    sbc h
    db $10
    rst $38
    di
    ld hl, sp-$70
    db $10
    di
    nop
    and b
    db $10
    inc bc
    ld hl, sp-$78
    db $10
    inc bc
    nop
    sbc [hl]
    db $10
    rst $38
    di
    ld hl, sp-$6e
    db $10
    di
    nop
    and d
    db $10
    inc bc
    ld hl, sp-$72
    db $10
    inc bc
    nop
    sbc [hl]
    db $10
    rst $38
    di
    ld hl, sp-$6c
    db $10
    di
    nop
    and h
    db $10
    inc bc
    ld hl, sp-$72
    db $10
    inc bc
    nop
    sbc [hl]
    db $10
    rst $38
    di
    ld hl, sp-$6a
    db $10
    di
    nop
    and [hl]
    db $10
    inc bc
    ld hl, sp-$72
    db $10
    inc bc
    nop
    sbc [hl]
    db $10
    rst $38
    or $f8
    sub h
    db $10
    or $00
    and h
    db $10
    ld b, $f8
    adc h
    db $10
    ld b, $00
    sbc h
    db $10
    rst $38
    or $f8
    sbc b
    db $10
    or $00
    xor b
    db $10
    ld b, $f8
    adc h
    db $10
    ld b, $00
    sbc h
    db $10
    rst $38
    ldh a, [$f0]
    ret nz

    db $10
    ldh a, [$f8]
    ret nc

    db $10
    ldh a, [rP1]
    ldh [rNR10], a
    ldh a, [$08]
    ldh a, [rNR10]
    nop
    ldh a, [$c2]
    stop
    ld hl, sp-$2e
    stop
    nop
    ld [c], a
    stop
    ld [$10f2], sp
    rst $38
    ldh a, [$f0]
    call nz, $f010
    ld hl, sp-$2c
    db $10
    ldh a, [rP1]
    db $e4
    db $10
    ldh a, [$08]
    db $f4
    stop
    ldh a, [$c6]
    stop
    ld hl, sp-$2a
    stop
    nop
    and $10
    nop
    ld [$10f6], sp
    rst $38
    ldh a, [$f1]
    ret z

    db $10
    ldh a, [$f9]
    ret c

    db $10
    ldh a, [rSB]
    add sp, $10
    ldh a, [$09]
    ld hl, sp+$10
    ld hl, sp-$17
    cp d
    stop
    pop af
    jp z, RST_10

    ld sp, hl
    jp c, RST_10

    ld bc, $10ea
    nop
    add hl, bc
    ld_long a, $ff10
    db $ec
    ldh a, [$90]
    db $10
    db $ec
    ld hl, sp-$60
    db $10
    db $ec
    nop
    or b
    db $10
    db $ec
    ld [$10b6], sp
    db $fc
    ldh a, [$92]
    db $10
    db $fc
    ld hl, sp-$5e
    db $10
    db $fc
    nop
    or d
    db $10
    db $fc
    ld [$10b8], sp
    inc c
    ldh a, [$94]
    db $10
    inc c
    ld hl, sp-$5c
    db $10
    inc c
    nop
    or h
    db $10
    rst $38
    ldh a, [$f1]
    call z, $f010
    ld sp, hl
    sbc h
    db $10
    ldh a, [rSB]
    xor h
    db $10
    ldh a, [$09]
    db $fc
    db $10
    ld hl, sp-$17
    cp h
    stop
    pop af
    adc [hl]
    stop
    ld sp, hl
    sbc [hl]
    stop
    ld bc, $10ae
    nop
    add hl, bc
    cp [hl]
    db $10
    rst $38
    ldh a, [$f1]
    call z, $f010
    ld sp, hl
    call c, $f010
    ld bc, $10ec
    ldh a, [$09]
    db $fc
    db $10
    ld hl, sp-$17
    cp h
    stop
    pop af
    adc $10
    nop
    ld sp, hl
    sbc $10
    nop
    ld bc, $10ee
    nop
    add hl, bc
    cp $10
    rst $38
    ldh a, [$f1]
    call z, $f010
    ld sp, hl
    call c, $f010
    ld bc, $10ec
    ldh a, [$09]
    db $fc
    db $10
    ld hl, sp-$17
    cp h
    stop
    pop af
    adc [hl]
    stop
    ld sp, hl
    sbc [hl]
    stop
    ld bc, $10ae
    nop
    add hl, bc
    cp [hl]
    db $10
    rst $38
    ldh a, [$f1]
    call z, $f010
    ld sp, hl
    call c, $f010
    ld bc, $10ec
    ldh a, [$09]
    db $fc
    db $10
    ld hl, sp-$17
    cp h
    stop
    pop af
    adc [hl]
    stop
    ld sp, hl
    sbc [hl]
    stop
    ld bc, $10ae
    nop
    add hl, bc
    cp [hl]
    db $10
    rst $38
    xor $07
    sub [hl]
    db $10
    xor $0f
    and [hl]
    db $10
    rst $30
    inc b
    adc b
    db $10
    db $fc
    ld bc, $1088
    ld bc, $8800
    db $10
    rst $38
    rst $28
    inc b
    sub [hl]
    db $10
    rst $28
    inc c
    and [hl]
    db $10
    rst $30
    ld bc, $1088
    db $fc
    nop
    adc b
    db $10
    ld bc, $8800
    db $10
    rst $38
    xor $00
    sub [hl]
    db $10
    xor $08
    and [hl]
    db $10
    or $fe
    adc b
    db $10
    db $fc
    cp $88
    db $10
    ld bc, $8800
    db $10
    rst $38
    db $ec
    db $fc
    sub [hl]
    db $10
    db $ec
    inc b
    and [hl]
    db $10
    push af
    ei
    adc b
    db $10
    ei
    db $fd
    adc b
    db $10
    ld bc, $8800
    db $10
    rst $38
    ld [$96fa], a
    db $10
    ld [$a602], a
    db $10
    db $f4
    db $fc
    adc b
    db $10
    ld a, [$88ff]
    db $10
    ld bc, $8800
    db $10
    rst $38
    jp hl


    cp $96
    db $10
    jp hl


    ld b, $a6
    db $10
    di
    rst $38
    adc b
    db $10
    ld a, [$8800]
    db $10
    ld bc, $8800
    db $10
    rst $38
    ld [$9600], a
    db $10
    ld [$a608], a
    db $10
    db $f4
    ld bc, $1088
    ei
    ld bc, $1088
    ld bc, $8800
    db $10
    rst $38
    db $eb
    ld [bc], a
    sub [hl]
    db $10
    db $eb
    ld a, [bc]
    and [hl]
    db $10
    push af
    inc bc
    adc b
    db $10
    ei
    ld [bc], a
    adc b
    db $10
    ld bc, $8800
    db $10
    rst $38
    xor $04
    sbc b
    db $10
    xor $0c
    xor b
    db $10
    ld hl, sp+$05
    adc b
    db $10
    db $fd
    inc bc
    adc b
    db $10
    ld bc, $8800
    db $10
    rst $38
    rst $28
    dec c
    sbc b
    db $10
    rst $28
    dec d
    xor b
    db $10
    ld sp, hl
    dec bc
    adc b
    db $10
    cp $06
    adc b
    db $10
    ld bc, $8800
    db $10
    rst $38
    di
    ld de, $109a
    di
    add hl, de
    xor d
    db $10
    ld hl, sp+$0b
    adc b
    db $10
    db $fc
    dec b
    adc b
    db $10
    ld bc, $8800
    db $10
    rst $38
    di
    dec c
    sbc d
    db $10
    di
    dec d
    xor d
    db $10
    ld hl, sp+$07
    adc b
    db $10
    db $fc
    inc bc
    adc b
    db $10
    ld bc, $8800
    db $10
    rst $38
    ld [$8afc], sp
    db $10
    rst $38
    ld [$8cf8], sp
    db $10
    ld [$8c00], sp
    jr nc, @+$01

    rst $10
    ld hl, sp-$70
    db $10
    rst $10
    nop
    and b
    db $10
    rst $20
    ld hl, sp-$6a
    db $10
    rst $20
    nop
    and [hl]
    db $10
    ldh a, [$f5]
    sub $10
    ldh a, [$fd]
    and $10
    ldh a, [rTIMA]
    or $10
    nop
    push af
    ret c

    stop
    db $fd
    add sp, $10
    nop
    dec b
    ld hl, sp+$10
    rst $38
    pop af
    ld hl, sp-$70
    db $10
    pop af
    nop
    and b
    db $10
    ld bc, $94f0
    db $10
    ld bc, $92f8
    db $10
    ld bc, $a200
    db $10
    rst $38
    pop af
    ld hl, sp-$50
    db $10
    pop af
    nop
    or h
    stop
    ldh a, [$94]
    db $10
    ld bc, $b2f8
    db $10
    ld bc, $b600
    db $10
    rst $38
    pop af
    ld hl, sp-$58
    db $10
    pop af
    nop
    cp b
    stop
    ldh a, [$94]
    db $10
    ld bc, $b2f8
    db $10
    ld bc, $b600
    db $10
    rst $38
    pop af
    ld hl, sp-$56
    db $10
    pop af
    nop
    cp d
    stop
    ldh a, [$94]
    db $10
    ld bc, $abf8
    db $10
    ld bc, $bb00
    db $10
    rst $38
    pop af
    ld hl, sp-$52
    db $10
    pop af
    nop
    cp [hl]
    stop
    ldh a, [$94]
    db $10
    ld bc, $abf8
    db $10
    ld bc, $bb00
    db $10
    rst $38
    pop af
    rst $30
    adc b
    db $10
    pop af
    rst $38
    sbc b
    stop
    ldh a, [$a4]
    db $10
    ld bc, $8af8
    db $10
    ld bc, $9a00
    db $10
    rst $38
    ld a, [c]
    ld sp, hl
    call nz, $f210
    ld bc, $10d4
    ld bc, $94f0
    db $10
    ld [bc], a
    ld hl, sp-$3a
    db $10
    ld [bc], a
    nop
    sub $10
    ld [bc], a
    ld [$10c8], sp
    rst $38
    ld a, [c]
    ld sp, hl
    jp nz, $f210

    ld bc, $10d2
    ld bc, $94f0
    db $10
    ld [bc], a
    ld hl, sp-$3a
    db $10
    ld [bc], a
    nop
    sub $10
    ld [bc], a
    ld [$10c8], sp
    rst $38
    pop af
    rst $30
    adc h
    db $10
    pop af
    rst $38
    sbc h
    stop
    ldh a, [$94]
    db $10
    ld bc, $8ef8
    db $10
    ld bc, $9e00
    db $10
    rst $38
    ldh a, [$f5]
    sub $10
    ldh a, [$fd]
    and $10
    ldh a, [rTIMA]
    or $10
    nop
    push af
    ret c

    stop
    db $fd
    add sp, $10
    nop
    dec b
    ld hl, sp+$10
    rst $38
    ldh a, [$f5]
    jp c, $f010

    db $fd
    ld [$f010], a
    dec b
    ld a, [$0010]
    push af
    call c, RST_10
    db $fd
    db $ec
    stop
    dec b
    db $fc
    db $10
    rst $38
    nop
    rst $28
    adc $10
    nop
    rst $30
    sbc $10
    nop
    rst $38
    xor $10
    nop
    rlca
    cp $10
    rst $38
    nop
    ld hl, sp-$50
    stop
    nop
    or d
    db $10
    rst $38
    nop
    ld hl, sp-$58
    stop
    nop
    cp b
    db $10
    rst $38
    nop
    ld hl, sp-$56
    stop
    nop
    cp d
    db $10
    rst $38
    nop
    ld hl, sp-$20
    stop
    nop
    ldh a, [rNR10]
    rst $38
    nop
    ld hl, sp-$1e
    stop
    nop
    ld a, [c]
    db $10
    rst $38
    nop
    ld hl, sp-$1c
    stop
    nop
    db $f4
    db $10
    rst $38
    nop
    ld hl, sp-$38
    jr nc, jr_004_7ab6

jr_004_7ab6:
    nop
    add $30
    rst $38
    nop
    ld hl, sp-$4c
    stop
    nop
    or [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$54
    stop
    nop
    cp h
    db $10
    rst $38
    nop
    ld hl, sp-$52
    stop
    nop
    cp [hl]
    db $10
    rst $38
    nop
    ld hl, sp-$40
    stop
    nop
    ret nc

    db $10
    rst $38
    nop
    ld hl, sp-$3e
    stop
    nop
    jp nc, $ff10

    nop
    ld hl, sp-$36
    stop
    nop
    call z, $ff10
    nop
    ld hl, sp-$2c
    jr nc, jr_004_7af5

jr_004_7af5:
    nop
    call nz, $ff30
    nop
    ld hl, sp-$1e
    stop
    nop
    ld a, [c]
    db $10
    rst $38
    nop
    ld hl, sp-$1c
    stop
    nop
    db $f4
    db $10
    rst $38
    nop
    ld hl, sp-$20
    stop
    nop
    ldh a, [rNR10]
    rst $38
    nop
    ld hl, sp-$1a
    stop
    nop
    or $10
    rst $38
    nop
    ld hl, sp-$18
    stop
    nop
    ld hl, sp+$10
    rst $38
    nop
    ld hl, sp-$40
    stop
    nop
    ret nc

    db $10
    rst $38
    nop
    ld hl, sp-$16
    stop
    nop
    ld_long a, $ff10
    nop
    db $f4
    call c, RST_10
    db $fc
    db $ec
    stop
    inc b
    db $fc
    db $10
    rst $38
    nop
    ld hl, sp-$22
    stop

jr_004_7b4a:
    nop
    xor $10
    nop
    ld [$10fe], sp
    rst $38
    nop

jr_004_7b53:
    ld hl, sp-$36
    stop

jr_004_7b57:
    nop
    jp c, RST_10

    ld [$10d8], sp
    rst $38
    nop
    ld hl, sp-$36
    stop
    nop
    jp c, RST_10

    ld [$10ce], sp
    nop
    db $10
    adc $10
    nop
    jr jr_004_7b4a

    db $10
    rst $38
    nop
    ld hl, sp-$36
    stop
    nop
    jp c, RST_10

    ld [$10cc], sp
    nop
    db $10
    call z, RST_10
    jr jr_004_7b53

    stop
    jr nz, jr_004_7b57

    stop
    jr z, @-$26

    db $10
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

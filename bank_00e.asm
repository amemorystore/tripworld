; Disassembly of "tw.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    ld b, $40
    dec d
    ld c, l
    and $58
    adc a
    nop
    ld b, e
    ld [hl-], a
    nop
    ld a, [hl+]
    cp a
    nop
    dec sp
    ld b, l
    nop
    ld b, c
    dec l
    inc l
    cp [hl]
    nop
    ld [hl], $45
    nop
    dec l
    nop
    add a
    nop
    dec sp
    ld b, l
    nop
    ld sp, hl
    nop
    ld b, c
    dec sp
    ld a, [hl+]
    nop
    rlca
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
    adc a
    nop
    inc a
    ld b, h
    nop
    dec l
    cp e
    nop
    ld b, e
    ld b, c
    nop
    ld b, c
    ld a, [hl+]
    cp a
    nop
    ld b, e
    ld b, c
    nop
    dec hl
    inc l
    nop
    add a
    nop
    ld b, e
    ld b, c
    nop
    jp hl


    nop
    ld b, h
    dec l
    nop
    dec b
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
    sbc a
    nop
    ld [hl], $37
    ld b, l
    inc c
    dec hl
    rst $38
    inc l
    nop
    inc a
    ld b, c
    nop
    ld [hl-], a
    ld a, $45
    rst $38
    inc l
    nop
    inc a
    ld b, c
    nop
    dec l
    ld a, [hl+]
    nop
    add a
    nop
    inc a
    ld b, c
    nop
    db $fd
    nop
    dec l
    ld b, c
    dec hl
    inc l
    nop
    rlca
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
    rst $38
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $2d12
    rst $38
    ld a, [hl+]
    ccf
    scf
    dec l
    nop
    ld b, c
    ld a, [hl-]
    dec l
    rst $38
    ld a, [hl+]
    ccf
    scf
    dec l
    nop
    dec l
    ld a, $2c
    cp a
    nop
    ld c, b
    ld b, [hl]
    ccf
    scf
    dec l
    nop
    db $fd
    nop
    ld b, c
    ld a, [hl-]
    dec l
    ld a, [hl+]
    nop
    dec b
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
    rst $38
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_00e_40e1

    ld a, [de]
    ei
    cpl
    add hl, sp
    ld a, [hl-]
    ld b, c
    dec l
    cpl
    ld a, [hl-]
    rst $38
    cpl
    add hl, sp
    ld a, [hl-]
    ld b, c
    nop
    ld a, $2f
    ld a, [hl+]
    rst $38
    ld c, b
    ld c, c
    ld bc, $0302
    inc b

jr_00e_40e1:
    ld b, c
    nop
    cp a
    dec l
    cpl
    ld a, [hl-]
    cpl
    inc l
    nop
    rlca
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
    rst $38
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [de], a
    rst $38
    jr nc, jr_00e_413d

    ld a, $32
    ld c, b
    ld b, c
    ld bc, $ff02
    inc bc
    inc b
    ld a, $46
    ld b, a
    dec hl
    ld a, [hl-]
    cpl
    rst $38
    ld bc, $0502
    ld b, $08
    ld b, $32
    ld c, c
    rst $38
    ld b, [hl]
    nop
    ld a, [hl-]
    jr c, jr_00e_4159

    ld a, [hl+]
    ccf
    dec b
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
    rst $38
    ld b, a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$01

    ld sp, $4137
    ld b, d
    ld bc, $0502

jr_00e_413d:
    ld b, $ff
    ld [$0306], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    dec b
    ld b, $08
    dec b
    ld b, $07
    inc bc
    ld [bc], a
    rst $38
    inc bc
    inc b
    jr c, jr_00e_418f

    ld a, $2f
    add hl, sp
    rlca

jr_00e_4159:
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
    rst $38
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $07
    dec b
    rst $38
    ld b, $07
    ld [$0506], sp
    ld b, $05
    ld b, $ff
    ld [$0605], sp
    rlca
    ld [$0805], sp
    ld b, $ff
    dec b
    ld b, $02
    inc bc
    ld [bc], a
    inc b
    inc a

jr_00e_418f:
    dec b
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
    rst $38
    ld [$605f], sp
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld e, [hl]
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    rlca
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
    rst $38
    ld b, $4f
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, a
    rst $38
    ld l, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, b
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld e, [hl]
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    dec b
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
    rst $38
    ld [$5c51], sp
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld h, c
    rst $38
    ld l, e
    ld l, h
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld h, c
    rst $38
    ld h, d
    ld e, l
    ld e, [hl]
    ld h, c
    ld h, d
    ld e, l
    ld e, [hl]
    ld h, c
    rst $38
    ld h, d
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    rlca
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
    rst $38
    ld b, $5d
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld h, e
    rst $38
    ld l, l
    ld l, [hl]
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld h, e
    rst $38
    ld h, h
    ld e, a
    ld h, b
    ld h, e
    ld h, h
    ld e, a
    ld h, b
    ld h, e
    rst $38
    ld h, h
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    dec b
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
    rst $38
    ld [$605f], sp
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld l, c
    rst $38
    ld l, a
    ld d, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld h, [hl]
    ld c, a
    rst $38
    ld d, b
    ld h, l
    ld bc, $6a04
    ld h, l
    ld h, [hl]
    ld bc, $03ff
    inc b
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld bc, $8007
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, $65
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld h, [hl]
    ld bc, $02db
    inc bc
    inc b
    nop
    ld bc, $ff02
    inc bc
    ld [bc], a
    dec b
    ld b, $52
    ld d, e
    ld d, h
    dec b
    rst $38
    ld [$6606], sp
    ld h, a
    ld l, b
    ld h, l
    ld h, [hl]
    ld h, a
    add $68
    nop
    ld e, e
    dec b
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
    rrc b
    nop
    ld e, e
    nop
    dec b
    rst $38
    ld b, $08
    dec b
    ld b, $52
    ld d, h
    dec b
    ld b, $fd
    ld [$0706], sp
    ld [$0403], sp
    rlca
    di
    ld b, $08
    inc b
    nop
    ld e, e
    nop
    cp a
    ld e, e
    nop
    ld bc, $0302
    ld [$8007], sp
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, $00
    ld bc, $0203
    inc bc
    ld [bc], a
    rlca
    rst $38
    dec b
    ld b, $07
    ld [$0302], sp
    rlca
    dec b
    db $fd
    ld b, $07
    dec b
    ld b, $05
    ld b, $05
    rst $18
    ld [$0306], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $08
    ld b, $08
    rst $38
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    rst $38
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld hl, sp+$06
    rlca
    ld b, $07
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld [$504f], sp
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld c, a
    ld e, h
    ld e, a
    rst $38
    ld h, b
    ld e, l
    ld e, h
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld d, c
    ld e, h
    ld h, l
    ld h, d
    ld d, c
    rst $38
    ld e, h
    ld c, a
    ld d, b
    ld e, a
    ld h, b
    ld c, a
    ld d, b
    ld e, l
    ld hl, sp+$5e
    ld e, l
    ld e, [hl]
    rlca
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, $51
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, [hl]
    ld e, l
    ld e, [hl]
    ld h, c
    ld h, d
    ld d, c
    ld e, [hl]
    ld h, c
    rst $38
    ld h, d
    ld e, a
    ld e, [hl]
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld e, l
    ld l, e
    ld l, h
    ld h, h
    ld e, l
    rst $38
    ld e, [hl]
    ld d, c
    ld e, h
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld e, a
    ld hl, sp+$60
    ld e, a
    ld h, b
    dec b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld [$5e5d], sp
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld h, c
    rst $38
    ld h, d
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld h, c
    rst $38
    ld l, e
    ld l, h
    ld h, b
    ld h, e
    ld h, h
    ld e, l
    ld h, b
    ld h, e
    rst $38
    ld h, h
    ld c, a
    ld h, b
    ld h, a
    ld l, b
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, a
    ld l, l
    ld l, [hl]
    ld d, b
    ld bc, $02ff
    inc bc
    ld [bc], a
    inc b
    ld e, h
    ld e, l
    ld e, [hl]
    ld c, a
    ld hl, sp+$50
    ld h, c
    ld h, d
    rlca
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, $5f
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld h, e
    rst $38
    ld h, h
    ld e, a
    ld h, b
    ld d, c
    ld h, h
    ld e, a
    ld h, b
    ld h, e
    cp $6d
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld h, d
    ld e, a
    ld c, [hl]
    add e
    ld c, [hl]
    ld h, h
    ld e, a
    add c
    ld c, [hl]
    ld e, a
    rst $38
    ld h, b
    ld d, c
    ld e, h
    ld h, l
    ld l, a
    ld d, l
    ld l, b
    dec b
    rst $28
    ld b, $08
    ld b, $68
    ld e, a
    ld h, b
    ld d, c
    ld hl, sp+$5c
    ld h, e
    ld h, h
    dec b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld [$6665], sp
    ld h, a
    ld l, b
    ld h, l
    ld h, [hl]
    ld l, c
    rst $38
    ld l, d
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld h, [hl]
    ld l, c
    rst $38
    ld l, a
    ld d, l
    ld bc, $6404
    ld c, a
    ld [hl], b
    ld [hl], c
    add e
    ld [hl], c
    ld l, b
    ld h, l
    pop bc
    ld [hl], b
    ld [hl], c
    ld l, c
    rst $38
    ld l, d
    ld h, a
    ld l, b
    ld bc, $0302
    ld [bc], a
    ld [$05ff], sp
    ld b, $07
    ld [$6504], sp
    ld h, [hl]
    ld h, a
    ld hl, sp+$68
    ld l, c
    ld l, d
    rlca
    nop
    add b
    nop
    add b
    nop
    ld hl, sp+$06
    ld e, e
    nop
    ld e, e
    nop
    db $eb
    nop
    ld e, e
    nop
    ld e, e
    nop
    ld bc, $02fe
    inc bc
    dec b
    ld b, $04
    ld h, a
    nop
    add b
    nop
    add b
    nop
    cp $00
    ld bc, $0502
    ld b, $08
    ld b, $b5
    rlca
    ld [$5b06], sp
    nop
    ret c

    ld e, e
    nop
    dec b
    nop
    add b
    nop
    add b
    nop
    db $fd
    ld [$0203], sp
    inc bc
    inc b
    nop
    ld e, e
    db $fd
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    cp $06
    ld [$0807], sp
    ld b, $00
    ld e, e
    db $fc
    nop
    ld e, e
    ld bc, $5204
    ld d, e
    add b
    ld d, e
    rst $38
    ld d, h
    dec b
    ld b, $07
    ld [$0806], sp
    rlca
    cp a
    dec b
    ld b, $07
    ld [$0203], sp
    inc bc
    ld hl, sp+$02
    inc b
    nop
    rlca
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, $05
    ld b, $05
    ld b, $03
    ld [bc], a
    inc bc
    db $fd
    dec b
    ld b, $05
    ld b, $08
    ld b, $07
    rst $38
    dec b
    ld b, $05
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    dec b
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    dec bc
    rlca
    ld [$0605], sp
    dec b
    ld b, $05
    cp a
    ld [$0507], sp
    ld b, $05
    ld b, $05
    cp b
    ld b, $00
    dec b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld [$5c51], sp
    ld e, a
    ld h, b
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld h, c
    rst $38
    ld h, d
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld hl, sp+$5e
    ld c, a
    ld d, b
    rlca
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld b, $5d
    ld e, [hl]
    ld c, a
    ld d, b
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld h, e
    rst $38
    add l
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld hl, sp+$60
    ld d, c
    ld e, h
    dec b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld [$605f], sp
    ld d, c
    ld e, h
    ld e, l
    rst $38
    ld l, b
    ld bc, $8804
    adc c
    ld [hl], h
    ld [hl], l
    adc b
    rst $38
    adc c
    ld [hl], h
    ld [hl], l
    adc b
    adc c
    add [hl]
    add a
    adc b
    rst $38
    adc c
    ld [hl], h
    ld [hl], l
    adc b
    adc c
    add [hl]
    add a
    adc b
    ei
    adc c
    ld [hl], h
    ld [hl], l
    ld bc, $0403
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld h, c
    ld h, d
    ld e, l
    ld e, [hl]
    ld h, c
    ld hl, sp+$62
    ld e, a
    ld h, b
    rlca
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld b, $61
    ld h, d
    ld e, l
    ld e, [hl]
    ld e, a
    ldh a, [rSB]
    dec b
    ld b, $72
    add b
    ld [hl], d
    add b
    ld [hl], d
    sbc a
    ld [hl], d
    dec b
    ld [$0607], sp
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld h, e
    add l
    ld e, l
    ld e, [hl]
    ld h, e
    ld hl, sp-$7b
    ld c, a
    ld d, b
    dec b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld [$8563], sp
    ld e, a
    ld h, b
    ld bc, $05f8
    rlca
    ld [$7304], sp
    add b
    ld [hl], e
    add c
    ld [hl], e
    ld bc, $02ff
    inc bc
    ld [bc], a
    rlca
    ld b, $05
    ld [$ff04], sp
    adc c
    add [hl]
    add a
    ld c, a
    ld d, b
    ld e, a
    ld h, b
    ld c, a
    ld hl, sp+$50
    ld d, c
    ld e, h
    rlca
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld b, $4f
    ld d, b
    ld h, c
    ld h, d
    dec b
    db $ec
    dec b
    ld [$4d06], sp
    ld [hl], e
    ld hl, sp+$76
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], e
    cp a
    ld [hl], e
    ld a, a
    add b
    add c
    add d
    ld [hl], e
    dec b
    cp $06
    ld [$0506], sp
    rlca
    ld [$ff06], sp
    ld [bc], a
    inc bc
    inc b
    adc b
    adc c
    add [hl]
    add a
    adc b
    ld hl, sp-$77
    adc b
    adc c
    dec b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld [$5c51], sp
    ld h, e
    ld bc, $fd07
    ld [$0806], sp
    dec b
    ld b, $73
    ld a, a
    db $fd
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld [hl], e
    ld a, a
    ei
    ld [hl], e
    add hl, bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    rlca
    rst $38
    ld [$0506], sp
    ld [$0605], sp
    ld [$fd07], sp
    ld b, $08
    ld b, $00
    add e
    nop
    add h
    ret c

    add e
    nop
    rlca
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld b, $67
    ld bc, $0502
    ld [$06ff], sp
    dec b
    ld b, $08
    rlca
    dec bc
    ld a, [bc]
    dec bc
    rst $38
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [$050a]
    ld b, $08
    ld b, $05
    rst $38
    ld b, $08
    rlca
    ld b, $08
    dec b
    ld b, $05
    rst $38
    ld [$0806], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld hl, sp+$02
    inc bc
    ld [bc], a
    dec b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld [$605f], sp
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, b
    ld d, c
    ld e, h
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld e, a
    rst $38
    ld h, b
    ld h, c
    ld h, d
    ld c, a
    ld d, b
    ld h, c
    ld h, d
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld h, c
    ld h, d
    ld e, l
    rst $38
    ld e, [hl]
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld c, a
    ld d, b
    ld h, c
    ldh [$62], a
    rlca
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
    nop
    ld b, $4f
    ld d, b
    ld e, l
    ld e, [hl]
    ld h, c
    rst $38
    ld h, d
    ld e, l
    ld l, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld c, a
    rst $38
    ld d, b
    ld h, e
    ld h, h
    ld d, c
    ld e, h
    ld h, e
    ld h, h
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld h, e
    ld h, h
    ld e, a
    rst $38
    ld h, b
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld d, c
    ld e, h
    ld h, e
    ldh [$64], a
    dec b
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
    nop
    ld [$5c51], sp
    ld e, a
    ld h, b
    ld h, e
    rst $38
    ld bc, $5602
    ld h, a
    ld l, b
    ld c, a
    ld d, b
    ld d, c
    rst $38
    ld e, h
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld d, b
    ld l, e
    ld l, h
    ld c, a
    ld d, b
    ld h, c
    rst $38
    ld h, d
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld l, e
    ld l, h
    ld c, a
    ldh [$50], a
    rlca
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
    nop
    ld b, $5d
    ld e, [hl]
    ld h, c
    ld h, d
    ld c, a
    rst $38
    dec b
    ld b, $4a
    ld d, [hl]
    ld h, a
    ld d, c
    ld e, h
    ld e, l
    rst $38
    ld e, [hl]
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, b
    ld d, c
    ld e, h
    ld l, l
    ld l, [hl]
    ld d, c
    ld e, h
    ld h, e
    rst $38
    ld h, h
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld l, l
    ld l, [hl]
    ld d, c
    ldh [$5c], a
    dec b
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
    nop
    ld [$6004], sp
    ld h, e
    ld h, h
    ld bc, $08ff
    rlca
    ld b, $4a
    ld d, [hl]
    ld h, a
    ld l, b
    ld e, a
    rst $38
    ld h, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld l, a
    ld d, l
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld l, c
    ld l, d
    ld l, a
    ld d, l
    ld e, l
    ldh [$5e], a
    rlca
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ld b, $62
    ld c, a
    ld bc, $ff05
    ld b, $05
    rlca
    ld b, $4a
    ld d, [hl]
    ld h, a
    ld l, c
    rst $38
    ld l, d
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld bc, $0302
    inc b
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld bc, $0402
    ld e, a
    ldh [$60], a
    dec b
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
    nop
    ld [$0207], sp
    inc bc
    dec b
    rlca
    rst $38
    ld [$0507], sp
    rlca
    ld b, $4a
    ld [bc], a
    inc bc
    rst $38
    inc b
    ld l, c
    ld l, d
    ld e, l
    ld e, [hl]
    ld l, c
    ld l, d
    ld e, l
    rst $38
    ld e, [hl]
    ld l, c
    dec b
    ld b, $08
    ld b, $6a
    ld e, l
    db $fd
    ld l, b
    ld l, c
    ld l, d
    ld e, l
    dec b
    ld b, $04
    ldh [rOCPS], a
    rlca
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
    nop
    ld b, $05
    ld b, $05
    ld [$fd05], sp
    ld b, $05
    ld [$0805], sp
    ld b, $05
    ldh [rTMA], a
    ld d, d
    ld d, e
    rst $38
    ld d, e
    ld d, h
    rlca
    dec b
    ld b, $08
    ld d, d
    ld d, e
    sbc a
    ld d, e
    ld d, h
    rlca
    ld [$0605], sp
    ldh [rP1], a
    dec b
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld [$605f], sp
    ld h, c
    ld h, d
    ld c, a
    ld d, b
    ld d, c
    ldh [$5c], a
    rlca
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, $4f
    ld d, b
    ld h, e
    ld h, h
    ld d, c
    ld e, h
    ld e, l
    ldh [$5e], a
    dec b
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld [$5c51], sp
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld e, a
    ldh [$60], a
    rlca
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, $5d
    ld e, [hl]
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld l, c
    ldh [rOCPS], a
    dec b
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld [$605f], sp
    ld e, l
    ld l, b
    ld l, c
    ld l, d
    nop
    ldh [rSB], a
    rlca
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
    add b
    nop
    add b
    nop
    add b
    nop
    push af
    ld b, $69
    ld l, d
    nop
    ld e, e
    nop
    and b
    dec b
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $18
    ld [$5b00], sp
    ld bc, $0203
    inc bc
    ldh [$08], a
    rlca
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, $00
    ld bc, $0502
    ld [$0506], sp
    rst $38
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    rst $38
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    rst $38
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    rst $38
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
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
    rst $38
    ld [$5c51], sp
    ld c, a
    ld d, b
    ld e, a
    ld h, b
    ld c, a
    rst $38
    ld d, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, b
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld h, c
    ld h, d
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, b
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    rlca
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
    rst $38
    ld b, $5d
    ld e, [hl]
    ld d, c
    ld e, h
    ld c, a
    ld d, b
    ld d, c
    rst $38
    ld e, h
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld d, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld h, e
    ld h, h
    ld e, a
    rst $38
    ld h, b
    ld d, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld d, c
    ld e, h
    ld e, a
    rst $38
    ld h, b
    nop
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    dec b
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
    rst $38
    ld [$605f], sp
    ld e, l
    ld e, [hl]
    ld d, c
    ld e, h
    ld e, l
    rst $38
    ld e, [hl]
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    rst $38
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld c, a
    ld d, b
    ld h, c
    rst $38
    ld h, d
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld e, l
    ld e, [hl]
    ld c, a
    rst $38
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    rlca
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
    rst $38
    ld b, $4f
    ld d, b
    ld e, a
    ld l, e
    ld l, h
    ld e, [hl]
    ld e, a
    rst $38
    ld h, b
    ld l, c
    ld l, d
    ld e, l
    ld l, b
    ld l, c
    ld l, d
    ld e, l
    rst $38
    ld l, b
    ld e, a
    ld h, b
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld h, e
    rst $38
    ld h, h
    ld e, a
    ld h, b
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld d, c
    rst $38
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    ld e, l
    ld e, [hl]
    dec b
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
    rst $38
    ld [$5e51], sp
    ld l, c
    ld l, l
    ld l, [hl]
    ld l, b
    ld l, c
    rst $38
    ld l, d
    ld d, a
    ld e, b
    inc bc
    ld [bc], a
    inc bc
    ld e, c
    ld e, d
    rst $38
    ld e, l
    ld l, c
    ld l, d
    ld d, c
    ld e, h
    ld e, l
    ld l, b
    ld l, c
    rst $38
    ld l, d
    ld h, l
    ld h, [hl]
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld e, l
    rst $38
    ld e, [hl]
    ld c, a
    ld l, d
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rlca
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
    rst $38
    ld b, $04
    ld l, b
    ld e, e
    ld l, a
    ld d, l
    sbc b
    ld d, a
    rst $38
    ld e, b
    ld c, e
    ld [$0605], sp
    ld [$4c06], sp
    rst $28
    ld e, c
    ld e, d
    ld e, l
    ld e, [hl]
    ld d, a
    ld e, b
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld e, c
    ld e, d
    ld l, b
    ld c, a
    ld l, d
    ld bc, $02ef
    inc b
    ld e, l
    ld l, b
    ld c, a
    ld d, b
    dec b
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
    rst $38
    ld [$0206], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld c, e
    rst $38
    ld [$0605], sp
    rlca
    ld [$0806], sp
    dec b
    rst $38
    ld [$024c], sp
    inc bc
    ld [bc], a
    ld c, e
    ld [$ff05], sp
    ld b, $05
    ld b, $4c
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    or a
    ld b, $98
    ld e, e
    ld e, l
    ld l, d
    rlca
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
    rst $38
    ld b, $08
    ld b, $05
    ld b, $05
    ld b, $05
    rst $38
    ld b, $07
    ld [$0605], sp
    dec b
    ld b, $05
    rst $38
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $08
    rst $38
    rlca
    ld [$0507], sp
    ld b, $05
    ld b, $07
    rst $38
    ld [$0207], sp
    inc bc
    ld [bc], a
    inc b
    nop
    dec b
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
    add b
    nop
    rst $38
    nop
    ld [$5d5c], sp
    ld e, [hl]
    ld c, a
    ld e, a
    ld h, b
    rst $38
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld c, a
    ld d, b
    rst $38
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    rst $38
    ld c, a
    ld d, b
    ld h, c
    ld h, d
    ld c, a
    ld d, b
    ld e, l
    rlca
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
    add b
    nop
    rst $38
    nop
    ld [$5f5e], sp
    ld h, b
    ld d, c
    ld h, c
    ld h, d
    rst $38
    ld e, a
    ld h, b
    ld c, a
    ld d, b
    ld h, e
    ld h, h
    ld d, c
    ld e, h
    rst $38
    ld c, a
    ld d, b
    ld h, e
    ld h, h
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    rst $38
    ld d, c
    ld e, h
    ld h, e
    ld h, h
    ld d, c
    ld e, h
    ld e, a
    dec b
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
    add b
    nop
    rst $38
    nop
    ld [$4f60], sp
    ld l, d
    ld e, l
    ld h, e
    ld h, h
    rst $38
    ld c, a
    ld l, d
    ld d, c
    ld e, h
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    rst $38
    ld d, c
    ld e, h
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    rst $38
    ld e, l
    ld e, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld c, a
    rlca
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
    add b
    nop
    rst $38
    nop
    ld [$5150], sp
    ld l, e
    ld l, h
    ld c, a
    ld d, b
    rst $38
    ld d, c
    ld l, e
    ld l, h
    ld e, [hl]
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    rst $38
    ld e, l
    ld l, b
    ld d, c
    ld e, h
    ld e, a
    ld h, b
    ld d, c
    ld e, h
    rst $38
    ld e, l
    ld l, b
    ld d, c
    ld e, h
    ld e, l
    ld l, b
    ld d, c
    dec b
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
    add b
    nop
    rst $38
    nop
    ld [$5168], sp
    ld l, l
    ld l, [hl]
    ld e, l
    ld l, d
    rst $38
    ld e, l
    ld l, l
    ld l, [hl]
    ld l, b
    ld e, l
    ld l, b
    ld bc, $ff02
    inc bc
    inc b
    sbc b
    ld l, b
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    db $fd
    ld l, e
    ld l, h
    ld e, l
    ld l, e
    ld l, h
    ld e, l
    rlca
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
    add b
    nop
    rst $38
    nop
    ld [$5b00], sp
    ld l, a
    ld d, l
    ld e, e
    nop
    rst $38
    ld e, e
    ld l, a
    ld d, l
    nop
    ld e, e
    nop
    dec b
    ld b, $ff
    dec b
    ld b, $03
    inc b
    ld d, c
    ld e, h
    ld e, l
    ld l, b
    rst $38
    ld l, l
    ld l, [hl]
    nop
    ld l, l
    ld l, [hl]
    nop
    ld bc, $8005
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
    cp $00
    ld [$0203], sp
    inc bc
    ld [bc], a
    inc bc
    rst $38
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    ld [$07fe], sp
    ld [$0605], sp
    ld e, l
    ld l, b
    ld e, e
    rst $38
    ld l, a
    ld d, l
    ld e, e
    ld l, a
    ld d, l
    nop
    dec b
    rlca
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
    add b
    nop
    rst $18
    nop
    ld [$0506], sp
    ld b, $08
    dec b
    rst $38
    dec b
    ld b, $05
    ld b, $08
    ld b, $05
    ld b, $ff
    ld [$0706], sp
    ld [$0302], sp
    ld [bc], a
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [$8005], sp
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
    ret nz

    nop
    inc de
    add b
    inc de
    add b
    inc de
    add b
    inc de
    add b
    inc de
    add b
    inc de
    adc b
    inc de
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $28
    nop
    inc de
    nop
    ld bc, $0302
    inc b
    rst $38
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    rst $38
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    rst $38
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    rst $38
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    rst $38
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    ld hl, sp+$05
    ld b, $00
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $28
    nop
    inc de
    nop
    rlca
    ld [$0a09], sp
    rst $38
    dec bc
    ld [$0e09], sp
    dec bc
    ld [$0a09], sp
    rst $38
    dec bc
    ld [$0e09], sp
    dec bc
    ld [$0a09], sp
    rst $38
    dec bc
    ld [$0e09], sp
    dec bc
    ld [$0e09], sp
    rst $38
    dec bc
    ld [$0a09], sp
    dec bc
    ld [$0a09], sp
    rst $38
    dec bc
    ld [$0e09], sp
    dec bc
    ld [$0e09], sp
    ld hl, sp+$0b
    inc c
    nop
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $20
    nop
    inc de
    nop
    dec c
    dec [hl]
    add hl, sp
    cp $00
    ccf
    scf
    rrca
    ld [hl], $0d
    nop
    rst $38
    dec [hl]
    ld a, $37
    rrca
    nop
    ccf
    inc [hl]
    nop
    rst $38
    nop
    dec c
    scf
    rrca
    inc [hl]
    ld a, $37
    rrca
    cp $36
    dec c
    nop
    jr c, jr_00e_4e96

    dec c
    nop
    rst $38
    nop
    dec c
    scf
    rrca
    inc [hl]
    ccf
    add hl, sp
    rrca
    sbc b
    nop
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    db $fc
    nop
    inc de
    ld l, $00
    jr nc, jr_00e_4e7e

jr_00e_4e7e:
    rst $38
    nop
    add hl, sp
    dec a
    rrca
    jr c, jr_00e_4e85

jr_00e_4e85:
    jr nc, jr_00e_4eb9

    rst $38
    nop
    inc a
    add hl, sp
    rrca
    nop
    dec a
    nop
    ld sp, $00bf
    add hl, sp
    rrca
    nop
    ld a, [hl-]

jr_00e_4e96:
    dec a
    rrca
    di
    jr c, jr_00e_4e9b

jr_00e_4e9b:
    jr nc, jr_00e_4e9d

jr_00e_4e9d:
    jr z, jr_00e_4ec5

    rst $38
    daa
    nop
    dec a
    rrca
    nop
    add hl, sp
    db $10
    rrca
    ret c

    ld de, $1500
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    inc de
    add hl, hl
    jr z, jr_00e_4eec

jr_00e_4eb9:
    dec hl
    jr z, jr_00e_4ee2

    rst $18
    jr nc, jr_00e_4ebf

jr_00e_4ebf:
    rrca
    nop
    jr z, jr_00e_4ef6

    add hl, hl
    rst $38

jr_00e_4ec5:
    dec hl
    nop
    db $10
    rrca
    ld de, $2800
    inc sp
    rst $38
    ld h, $27
    nop
    rrca
    nop
    inc a
    nop
    rrca
    rst $38
    nop
    jr z, jr_00e_4f0d

    rra
    jr nz, jr_00e_4efe

    ld [hl+], a
    inc hl
    cp $24
    dec hl

jr_00e_4ee2:
    nop
    rrca
    nop
    ld [de], a
    inc de
    ret c

    inc d
    nop
    dec d
    nop

jr_00e_4eec:
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    inc de
    nop

jr_00e_4ef6:
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld hl, sp+$33
    dec hl

jr_00e_4efe:
    nop
    rrca
    nop
    db $e3
    nop
    ld [de], a
    inc de
    inc d
    inc hl
    sbc c
    nop
    rrca
    nop
    rrca
    cp a

jr_00e_4f0d:
    nop
    jr jr_00e_4f29

    ld [de], a
    inc de
    inc d
    dec e
    cp $1e
    nop
    db $10
    rrca
    ld de, $1615
    ld hl, sp+$17
    inc h
    dec h
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38

jr_00e_4f29:
    nop
    inc de
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    cp $1e
    nop
    db $10
    rrca
    ld de, $1312
    db $e3
    inc de
    dec d
    ld d, $17
    dec e
    rst $38
    ld e, $00
    db $10
    rrca
    ld de, $1000
    rrca
    rst $38
    ld de, $1200
    inc de
    dec d
    ld d, $17
    inc de
    add [hl]
    inc de
    dec d
    ld d, $f8
    rla
    inc d
    nop
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    inc de
    add [hl]
    inc de
    dec d
    ld d, $e3
    ld d, $15
    ld d, $17
    inc de
    add b
    inc de
    cp a
    inc de
    dec d
    ld d, $15
    ld d, $17
    ld d, $86
    ld d, $15
    ld d, $b8
    rla
    nop
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    rla
    ld bc, $0302
    inc b
    dec b
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $00
    ld b, a
    nop
    rst $38
    ld bc, $0302
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    ld hl, sp+$05
    ld [bc], a
    inc bc
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    rla
    rlca
    ld [$0e09], sp
    dec bc
    rst $38
    ld [$0a09], sp
    dec bc
    ld [$0e09], sp
    dec bc
    rst $38
    ld [$0a09], sp
    dec bc
    ld [$0a09], sp
    dec bc
    rst $38
    ld [$0e09], sp
    dec bc
    ld [$0e09], sp
    dec bc
    rst $38
    ld [$0a09], sp
    dec bc
    inc c
    nop
    ld b, e
    nop
    rst $38
    rlca
    ld [$0e09], sp
    dec bc
    ld [$0e09], sp
    ld hl, sp+$0b
    ld [$1509], sp
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    rla
    nop
    dec c
    dec [hl]
    rrca
    jr c, @+$01

    ld a, $35
    ld [hl], $38
    ld a, $35
    rrca
    ld [hl], $cf
    dec c
    nop
    dec c
    dec [hl]
    nop
    inc [hl]
    rst $38
    dec c
    scf
    rrca
    jr c, jr_00e_5065

    dec [hl]
    rrca
    jr c, @+$01

    ld a, $35
    scf
    dec [hl]
    nop
    ld b, [hl]
    ld c, c
    ld b, h
    rst $38
    jr c, jr_00e_5074

    scf
    rrca
    inc [hl]
    ld a, $35
    rrca
    ld hl, sp+$34
    dec c
    nop
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    or a
    nop
    rla
    nop
    db $10
    rrca
    ld de, $38ff
    nop
    jr c, jr_00e_5054

jr_00e_5054:
    inc a
    nop
    rrca
    jr c, jr_00e_5054

    nop
    ld b, e
    ld b, a
    ld c, b
    nop
    ld c, b
    nop
    rst $38
    nop
    dec a
    rrca
    nop

jr_00e_5065:
    jr c, jr_00e_5067

jr_00e_5067:
    rrca
    nop
    ldh a, [$3c]
    nop
    add hl, sp
    nop
    rst $38
    nop
    jr c, @+$3b

    rrca
    nop

jr_00e_5074:
    inc a
    nop
    rrca
    cp b
    nop
    ld b, e
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp [hl]
    nop
    rla
    ld b, e
    ld b, a
    ld [de], a
    inc de
    jp $0014


    rrca
    nop
    cp $49
    ld b, h
    ld c, e
    ld c, c
    ld c, d
    ld c, e
    ld c, c
    rst $38
    ld b, a
    nop
    rrca
    nop
    ld [de], a
    inc d
    rrca
    ld de, $00f0
    ld c, [hl]
    ld d, b
    ld d, c
    db $fd
    ld d, d
    ld c, [hl]
    db $10
    rrca
    ld de, $0f00
    ld hl, sp+$00
    ld b, [hl]
    ld c, e
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp [hl]
    nop
    rla
    ld b, h
    ld b, e
    dec d
    ld d, $cf
    rla
    inc de
    inc d
    db $10
    rrca
    ld de, $00ff
    ld c, e
    ld c, h
    ld c, l
    ld c, e
    ld c, h
    ld c, l
    nop
    cp $00
    db $10
    rrca
    ld de, $1715
    inc de
    ldh a, [rNR14]
    ld c, a
    ld d, e
    ld d, h
    rst $38
    ld d, l
    ld c, a
    ld [de], a
    inc de
    inc d
    nop
    db $10
    rrca
    ld hl, sp+$11
    nop
    ld b, b
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp [hl]
    nop
    rla
    nop
    ld [de], a
    dec d
    ld d, $cc
    rla
    ld d, $17
    inc de
    rst $38
    inc de
    inc d
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, d
    nop
    xor $10
    ld [de], a
    inc de
    dec d
    rla
    ld d, $e0
    rla
    inc d
    ld d, [hl]
    db $fc
    ld d, [hl]
    ld [de], a
    dec d
    ld d, $17
    inc de
    sbc b
    inc de
    dec d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp d
    nop
    rla
    nop
    dec d
    ld d, $cc
    rla
    ld d, $17
    ld d, $e0
    ld d, $17
    inc de
    xor $13
    dec d
    ld d, $15
    rla
    ld d, $a0
    rla
    inc l
    call c, $152c
    ld d, $17
    ld d, $98
    ld d, $15
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    rla
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    ld hl, sp+$05
    ld [bc], a
    inc bc
    dec d
    ld h, b
    sbc b
    ld h, b
    ld e, d
    ld e, b
    add e
    ld e, b
    ld e, e
    ld e, a
    db $fc
    ld h, b
    ld h, l
    nop
    and l
    xor c
    nop
    db $ec
    ld h, h
    ld e, a
    ld h, b
    ld e, d
    ld e, b
    cp b
    ld e, b
    ld e, e
    ld e, a
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    rla
    ld a, [bc]
    dec bc
    ld [$0e09], sp
    ei
    dec bc
    ld [$1509], sp
    ld h, b
    ld e, d
    ld e, b
    sbc b
    ld e, b
    ld e, e
    and h
    add e
    and h
    ld e, d
    ld e, b
    rst $38
    ld e, b
    ld e, c
    and a
    xor b
    xor d
    or d
    or e
    nop
    call z, $5857
    ld e, e
    and h
    cp b
    and h
    ld e, d
    ld e, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    rla
    nop
    dec [hl]
    dec c
    scf
    rrca
    rst $38
    ld [hl], $3f
    add hl, sp
    dec d
    ld h, b
    ld e, d
    ld e, e
    ld h, e
    adc a
    ld h, e
    add a
    and d
    and e
    sbc [hl]
    rst $38
    sbc a
    add a
    ld h, e
    add a
    ld h, e
    add a
    add l
    sub a
    rst $38
    sbc b
    nop
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    rst $38
    nop
    sbc d
    sbc e
    add [hl]
    add a
    ld h, e
    add a
    ld h, e
    sbc b
    ld h, e
    ld e, d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp e
    nop
    rla
    ld [hl-], a
    nop
    dec a
    rrca
    rst $38
    jr c, jr_00e_522d

    nop
    dec d
    ld h, b
    ld h, d
    ld h, e
    add a
    rst $38
    and d
    and e
    and b
    and c
    sbc [hl]
    sbc a
    and d
    and e
    rst $08
    add a
    ld h, e
    add a
    adc b
    adc c
    sub a
    db $fd
    sbc c
    nop
    or h
    or l
    or [hl]
    or a
    nop
    cp $00
    sbc h
    sbc e
    adc c
    adc h
    add a
    ld h, e
    sbc b
    ld h, e
    ld e, d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp l
    nop
    rla
    add hl, hl
    cpl
    nop
    rrca
    cp [hl]
    nop
    cpl
    dec d
    ld e, b
    ld e, e

jr_00e_522d:
    ld h, e
    rst $38
    ld h, e
    sbc [hl]
    sbc a
    and d
    and e
    and d
    and e
    ld h, e
    sbc b
    ld h, e
    ld e, d
    ld e, b
    pop af
    ld e, b
    ld e, e
    ld h, [hl]
    nop
    ld h, [hl]
    call z, Call_00e_585a
    ld e, e
    ld h, e
    ld hl, sp-$62
    sbc a
    ld h, e
    ld e, d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    rla
    inc d
    ld a, [hl+]
    daa
    nop
    rrca
    db $fc
    nop
    jr z, jr_00e_5288

    dec d
    ld e, e
    ld h, e
    ld hl, sp-$5e
    and e
    and d
    and e
    ld h, e
    call c, Call_00e_585a
    ld e, e
    ld e, h
    ld e, [hl]
    pop af
    ld e, [hl]
    ld h, l
    sub [hl]
    nop
    sub [hl]
    db $ed
    ld h, h
    ld e, h
    ld e, [hl]
    ld h, d
    ld h, e
    sbc [hl]
    ret c

    sbc a
    ld h, e
    ld e, d
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    rla

jr_00e_5288:
    ld e, $00
    db $10
    rrca
    call c, $0011
    dec d
    ld e, e
    ld h, e
    ldh a, [$63]
    adc b
    ld e, d
    ld e, b
    add sp, $5b
    ld e, h
    ld e, [hl]
    ld h, b
    ld hl, sp+$60
    ld h, l
    or d
    or e
    nop
    db $ed
    ld h, h
    ld e, a
    ld h, b
    ld h, d
    ld h, e
    add a
    ld hl, sp-$5e
    and e
    and b
    ld e, d
    nop
    add b
    nop
    add b
    nop
    add b
    inc de
    xor b
    inc de
    rla
    inc de
    db $fd
    inc de
    inc d
    nop
    dec d
    ld e, e
    ld h, e
    ld e, d
    cp b
    ld e, b
    ld e, e
    ld e, h
    ld e, [hl]
    ret nz

    ld e, [hl]
    ld h, b
    rst $38
    ld h, b
    ld h, l
    cp b
    or b
    or c
    sub e
    sub h
    sub l
    xor $64
    ld e, a
    ld h, b
    ld e, d
    ld e, e
    ld h, e
    ld hl, sp-$79
    and d
    and e
    ld e, d
    nop
    add b
    nop
    add b
    nop
    rst $38
    rla
    ld bc, $0302
    inc b
    dec b
    ld [bc], a
    inc bc
    rst $38
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    db $fd
    inc b
    dec b
    ld [bc], a
    dec d
    ld e, e
    ld h, e
    ld e, d
    pop af
    ld e, b
    ld e, e
    ld e, h
    ld h, b
    ld e, d
    add c
    ld e, b
    ld e, e
    rst $38
    ld e, a
    ld h, l
    and l
    or a
    cp c
    cp d
    cp e
    cp h
    rst $28
    ld h, h
    ld e, a
    ld h, b
    ld e, [hl]
    ld h, d
    add [hl]
    ld h, e
    sbc b
    ld h, e
    ld e, d
    ld e, b
    add d
    ld e, b
    nop
    add b
    nop
    rst $38
    rla
    rlca
    ld [$0e09], sp
    dec bc
    ld [$ff09], sp
    ld a, [bc]
    dec bc
    ld [$0e09], sp
    dec bc
    ld [$fe09], sp
    ld c, $0b
    ld [$5815], sp
    ld e, e
    ld h, e
    db $fd
    ld h, e
    ld e, d
    ld e, e
    ld e, a
    ld e, d
    ld e, b
    ld e, e
    add c
    and h
    ld e, d
    db $fd
    ld e, b
    ld e, c
    and [hl]
    and l
    xor c
    or a
    xor c
    rst $20
    ld h, h
    ld e, a
    ld h, b
    ld h, d
    adc c
    adc h
    sbc h
    ld h, e
    ld e, d
    ld e, e
    ld h, e
    add [hl]
    ld h, e
    ld e, d
    nop
    add b
    nop
    rst $38
    rla
    nop
    ccf
    dec [hl]
    rrca
    ld [hl], $0d
    nop
    cp a
    nop
    ld a, $35
    rrca
    ld [hl], $3e
    scf
    cp $0f
    inc [hl]
    ccf
    dec d
    ld e, [hl]
    ld h, d
    ld h, e
    cp h
    ld h, e
    ld e, d
    ld e, b
    ld e, e
    ld h, e
    rst $38
    ld h, e
    sbc [hl]
    sbc a
    add a
    ld h, e
    add a
    add l
    sub a
    rst $38
    sbc b
    nop
    and a
    xor b
    xor d
    or d
    or e
    xor d
    and $64
    ld e, a
    ld h, b
    ld h, d
    ld h, e
    ldh a, [$9e]
    sbc a
    sbc [hl]
    ld h, e
    add [hl]
    ld h, e
    ld e, d
    nop
    add b
    nop
    rst $38
    rla
    nop
    dec a
    nop
    rrca
    jr c, jr_00e_53a9

jr_00e_53a9:
    jr z, @+$01

    ld h, $27
    inc a
    nop
    rrca
    ld a, [hl-]
    inc a
    dec sp
    rst $38
    rrca
    nop
    dec a
    dec d
    ld h, b
    ld e, d
    ld e, e
    ld h, e
    add e
    ld h, e
    sbc [hl]
    sbc a
    rst $28
    and d
    and e
    ld h, e
    add a
    adc b
    adc c
    sub a
    rst $38
    sbc c
    nop
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    rst $20
    ld h, h
    ld e, a
    ld h, b
    ld h, d
    ld h, e
    and d
    ldh a, [$a3]
    and d
    and e
    ld h, e
    add [hl]
    ld h, e
    ld e, d
    nop
    add b
    nop
    sbc $17
    nop
    db $10
    rrca
    ld de, $ef00
    ld [hl+], a
    inc hl
    nop
    rrca
    jr c, jr_00e_53f1

jr_00e_53f1:
    dec a
    rst $18
    rrca
    nop
    dec d
    ld h, b
    ld e, [hl]
    ld h, d
    ld h, e
    sbc a
    ld h, e
    and d
    and e
    and b
    and c
    sbc [hl]
    or $9f
    and d
    and e
    ld h, e
    ld e, d
    ld e, b
    db $fd
    ld e, b
    ld e, c
    or h
    or l
    or [hl]
    or a
    nop
    rst $20
    ld h, h
    ld e, a
    ld h, b
    ld h, d
    and d
    and e
    db $fc
    sbc [hl]
    sbc a
    ld h, e
    ld e, d
    ld e, e
    ld h, e
    add [hl]
    ld h, e
    ld e, d
    nop
    add b
    nop
    ld hl, sp+$17
    ld l, $00
    ld [de], a
    inc de
    db $fc
    inc d
    dec e
    ld e, $00
    rrca
    nop
    ei
    rrca
    nop
    jr z, jr_00e_544b

    ld h, b
    ld e, d
    ld e, b
    adc $5b
    ld h, e
    and d
    and e
    ld h, e
    ld sp, hl
    and d
    and e
    and d
    and e
    ld h, e
    ld h, d
    ldh a, [$5c]
    ld e, d
    ld e, c
    sbc l

jr_00e_544b:
    rst $20
    ld h, h
    ld e, a
    ld h, b
    ld h, d
    ld h, e
    sbc [hl]
    cp $9f
    add a
    ld h, e
    ld e, d
    ld e, b
    ld e, e
    ld h, e
    add [hl]
    ld h, e
    ld e, d
    nop
    add b
    nop
    ld hl, sp+$17
    add hl, hl
    dec hl
    dec d
    ld d, $df
    rla
    inc de
    inc d
    rrca
    ld de, $1000
    ld a, [$110f]
    nop
    dec d
    ld h, b
    ld e, [hl]
    jp Jump_00e_585a


    ld e, e
    ld h, e
    pop af
    ld h, e
    and d
    and e
    ld h, e
    ld h, d
    ldh a, [$5f]
    ld e, [hl]
    ld e, d
    ld e, b
    and $5b
    ld e, a
    ld h, b
    ld h, d
    ld h, e
    sbc [hl]
    ld h, e
    ld e, d
    ld e, h
    ld h, d
    ld h, e
    add [hl]
    ld h, e
    ld e, d
    nop
    add b
    nop
    ld hl, sp+$17
    nop
    ld [de], a
    dec d
    ld d, $d8
    rla
    ld d, $17
    inc de
    sbc b
    inc de
    dec d
    ld h, b
    add e
    ld e, [hl]
    ld e, d
    ld e, b
    adc l
    ld e, b
    ld e, e
    ld h, e
    ld h, d
    ldh [$5f], a
    ld h, b
    ld e, [hl]
    add $5e
    ld h, b
    ld h, d
    ld h, e
    cp $a2
    and e
    sbc [hl]
    ld h, d
    ld e, a
    ld e, d
    ld e, b
    add d
    ld e, b
    nop
    add b
    nop
    ei
    rla
    ld [hl], d
    ld [hl], e
    ld a, c
    nop
    ld l, a
    ld [hl], b
    add b
    nop
    sbc b
    nop
    add c
    ld h, b
    add c
    ld h, b
    ld e, d
    adc l
    ld e, b
    ld e, e
    ld h, e
    ld h, d
    ldh [$5f], a
    ld e, d
    ld e, b
    rst $20
    ld e, e
    ld e, a
    ld h, b
    ld h, d
    ld h, e
    and b
    ld hl, sp-$5f
    and d
    and e
    ld h, d
    nop
    add b
    nop
    add b
    nop
    rst $38
    rla
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, a
    rst $38
    ld [hl], d
    ld [hl], e
    ld a, c
    nop
    ld a, d
    ld a, e
    ld [hl], l
    db $76
    ei
    ld [hl], a
    ld a, d
    ld a, e
    add d
    ld h, b
    ld e, d
    ld e, b
    add c
    ld e, b
    ld e, e
    add a
    ld h, e
    add a
    ld e, d
    ld e, e
    ldh [$5a], a
    ld e, e
    and h
    cp $5a
    ld e, c
    ld e, a
    ld h, b
    ld e, d
    ld e, e
    ld h, e
    ld hl, sp-$60
    and c
    ld h, e
    ld e, d
    nop
    add b
    nop
    add b
    nop
    db $fc
    rla
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld a, a
    nop
    ei
    nop
    db $76
    ld [hl], a
    ld [hl], h
    ld a, a
    db $76
    ld [hl], a
    ei
    ld a, c
    ld a, a
    ld h, a
    ld l, b
    ld e, b
    ld e, e
    ld h, e
    xor $8d
    adc [hl]
    ld h, e
    sub c
    adc [hl]
    ld h, e
    rst $38
    ld h, e
    ld l, e
    ld l, h
    ld h, e
    add l
    add [hl]
    ld h, d
    ld e, h
    rst $28
    ld h, d
    ld h, e
    add a
    and b
    and c
    and d
    and e
    db $fd
    add a
    ld e, d
    ld e, c
    ld e, a
    ld h, d
    ld h, e
    sbc [hl]
    ld hl, sp-$61
    ld h, e
    add a
    ld e, d
    nop
    add b
    nop
    add b
    nop
    ld sp, hl
    rla
    ld e, b
    ld e, c
    add b
    nop
    ld [hl], l
    rst $30
    db $76
    ld [hl], a
    ld [hl], h
    nop
    ld l, a
    ld [hl], b
    ld a, d
    ei
    ld a, e
    nop
    ld l, c
    ld l, d
    add a
    ld l, e
    ld l, h
    cp $8f
    sub b
    ld l, e
    ld l, h
    adc a
    sub b
    ld h, e
    rst $38
    ld h, e
    add e
    add h
    ld h, e
    adc b
    ld e, d
    ld e, e
    ld e, a
    rst $18
    ld h, d
    ld h, e
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    and d
    rst $38
    and e
    add a
    ld e, d
    ld e, b
    ld e, e
    ld h, e
    add a
    ld h, e
    ld hl, sp+$63
    adc b
    adc c
    ld e, d
    nop
    add b
    nop
    add b
    nop
    call c, $5e17
    ld h, c
    add b
    nop
    sbc a
    nop
    add c
    ld l, [hl]
    ld [hl], l
    ld [hl], d
    ld a, [hl]
    adc a
    nop
    adc c
    add a
    add e
    add h
    rst $38
    adc l
    adc [hl]
    add e
    add h
    sub c
    adc [hl]
    ld h, e
    adc a
    rst $00
    sub b
    ld h, e
    ld h, d
    ld e, h
    ld h, b
    rst $38
    ld h, d
    ld h, e
    and d
    and e
    and d
    and e
    and b
    and c
    ret c

    add a
    ld h, e
    add a
    ld h, e
    ld hl, sp+$63
    add a
    ld h, e
    ld e, d
    nop
    add b
    nop
    add b
    nop
    adc $17
    ld e, l
    ld h, c
    add b
    nop
    db $fc
    nop
    add c
    ld l, [hl]
    add c
    ld l, [hl]
    nop
    adc [hl]
    nop
    add l
    add [hl]
    ld h, e
    rst $28
    sub c
    adc [hl]
    ld h, e
    adc l
    adc [hl]
    ld h, e
    adc l
    rst $18
    sub d
    ld h, e
    ld e, d
    ld e, b
    ld e, e
    ld e, a
    ld h, b
    rst $18
    ld h, d
    ld h, e
    and d
    and e
    and d
    and e
    add a
    adc a
    ld h, e
    add l
    add [hl]
    add a
    ld h, e
    cp b
    ld h, e
    ld e, d
    ld e, b
    nop
    add b
    nop
    add b
    nop
    rst $00
    rla
    ld e, l
    ld h, c
    ld e, d
    ld e, b
    rst $38
    ld e, c
    add c
    ld l, [hl]
    add c
    ld l, [hl]
    add c
    ld l, [hl]
    nop
    db $db
    nop
    ld l, l
    nop
    adc c
    adc h
    ld h, e
    rst $28
    adc l
    adc [hl]
    ld h, e
    adc l
    adc [hl]
    ld h, e
    adc l
    sbc $8e
    ld h, e
    ld h, d
    ld e, h
    ld e, [hl]
    ld h, b
    rst $00
    ld h, d
    ld h, e
    adc e
    adc h
    ld h, e
    rst $28
    ld h, e
    ld e, d
    ld e, b
    ld e, e
    adc d
    adc e
    adc h
    cp b
    ld h, e
    ld h, d
    ld e, h
    nop
    add b
    nop
    add b
    nop
    jp nz, Jump_00e_5d17

    ld e, [hl]
    ret nz

    ld e, d
    ld e, b
    add b
    ld e, b
    add b
    ld e, b
    cp h
    ld e, b
    ld e, e
    ld h, d
    ld e, a
    ld h, b
    reti


    ld e, d
    ld e, b
    ld e, e
    ld h, e
    ld e, d
    db $fc
    ld e, b
    ld e, e
    ld e, h
    ld e, [hl]
    ld e, d
    ld e, b
    cp b
    ld e, b
    ld e, c
    ld e, a
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc h
    nop
    call nz, $80c6
    add $c3
    add $c9
    add $c3
    sbc c
    jp Jump_00e_63c4


    ret z

    ldh [$c6], a
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc h
    nop
    call nz, $80c9
    ret


    jp Jump_00e_63ca


    ret z

    jp $c39e


    add $63
    add a
    ld h, e
    ldh [$c8], a
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc h
    nop
    call nz, $e063
    ld h, e
    add a
    ld h, e
    cp l
    ld h, e
    add a
    ld h, e
    add a
    ld h, e
    push bc
    sbc e
    add $ca
    ld h, e
    add a
    ld h, e
    ldh [$63], a
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    call nz, $8863
    adc c
    ret nz

    adc h
    ld h, e
    rst $38
    ld h, e
    add a
    adc b
    adc c
    adc h
    add a
    ld h, e
    ret z

    or [hl]
    ret


    jp z, $8763

    ld h, e
    ldh [$63], a
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    call nz, $8763
    adc b
    ldh [$89], a
    adc h
    ld h, e
    ld hl, sp-$78
    add l
    adc e
    adc h
    ld h, e
    sbc [hl]
    ld h, e
    adc b
    adc c
    add a
    ld h, e
    ldh [$63], a
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc h
    nop
    call nz, $9963
    ld h, e
    ld e, d
    ld e, b
    ld e, e
    sbc b
    ld h, e
    add a
    ld h, e
    sbc a
    ld h, e
    add a
    adc b
    adc c
    adc h
    ld h, e
    ldh [$63], a
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld e, b
    ld e, e
    ld h, e
    db $fd
    ld h, e
    ld e, d
    ld e, b
    ld e, e
    ld e, h
    ld e, [hl]
    ld h, d
    add b
    ld h, e
    add b
    ld h, e
    ldh [$63], a
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    ld e, [hl]
    ld h, d
    ld h, e
    ld e, d
    ld sp, hl
    ld e, b
    ld e, e
    ld e, h
    ld e, [hl]
    ld h, b
    ld h, l
    add b
    res 0, b
    set 4, b
    set 0, e
    ld e, e
    adc b
    ld e, e
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    ld h, b
    ld h, d
    ld h, e
    push bc
    ret


    add $c3
    add $c9
    add c
    ret


    add $83
    add $c9
    jp z, $caf7

    ld e, d
    ld e, c
    rst $18
    ldh [$db], a
    call c, $dfb8
    ldh [$c2], a
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    ld h, b
    ld h, d
    ld h, e
    ret z

    set 1, c
    add $c9
    jp z, $8163

    ld h, e
    ret z

    add [hl]
    ret


    jp z, $ff63

    ld h, e
    ld e, d
    ld e, c
    ret c

    reti


    nop
    db $db
    pop bc
    ld hl, sp+$00
    cp l
    cp [hl]
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld h, b
    ld h, d
    ld h, e
    ei
    ld h, e
    ret z

    ret


    jp z, $8763

    ld h, e
    db $fc
    ld h, e
    ld e, d
    ld e, b
    ld e, e
    call z, $8363
    ld h, e
    add a
    ld h, e
    rst $38
    add a
    ld e, d
    ld e, c
    cp a
    reti


    nop
    db $db
    sbc $b8
    nop
    db $e4
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    ld h, b
    ld h, d
    add a
    ld h, e
    rst $08
    add a
    ld h, e
    adc b
    adc c
    adc h
    ld e, d
    rst $38
    ld e, b
    ld e, e
    ld e, h
    ld e, [hl]
    ld h, c
    call z, $8763
    db $fd
    ld h, e
    add a
    ld h, e
    add a
    adc b
    adc c
    push de
    rst $38
    rst $10
    ret c

    reti


    db $e4
    cp l
    nop
    db $dd
    call c, $00f8
    push hl
    reti


    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    ld h, b
    ld h, d
    ret nc

    pop de
    pop af
    pop de
    adc c
    adc h
    ld h, e
    ld h, d
    rst $20
    ld e, h
    ld e, [hl]
    ld e, l
    ld h, c
    call z, $f563
    adc b

Call_00e_585a:
Jump_00e_585a:
    push de
    sub $d1
    sub $d7
    rst $38
    ret c

    reti


    nop
    ld [c], a
    db $e3
    nop
    jp hl


    pop bc
    ld hl, sp+$00
    push hl
    reti


    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld h, b
    ld h, d
    call $cdf9
    adc $cf
    ld d, a
    ld e, b
    ld e, e
    jp Jump_00e_5d5f


    ld h, c
    ld e, d
    ldh [$58], a
    ld e, c
    call $cdf3
    ld d, a
    ld e, c
    nop
    db $db
    sbc $f8
    nop
    cp a
    cp l
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld h, b
    ld h, l
    ret nz

    db $fc
    ret nz

    ld d, a
    ld e, b
    ld e, e
    ld e, h
    ld e, [hl]
    add c
    ld e, l
    ld e, [hl]
    ldh [$5e], a
    ld h, l
    ret nz

    rst $38
    ret nz

    ld d, a
    ld e, c
    cp l
    cp [hl]
    nop
    db $db
    call c, $00f8
    add sp, -$1c
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld h, b
    ld e, d
    ld e, b
    ld hl, sp+$58
    ld e, e
    ld e, h
    ld e, [hl]
    ld e, l
    add b
    ld e, l
    ldh [$5d], a
    ld e, d
    ld e, b
    add b
    ld e, b
    cp b
    ld e, b
    ld e, e
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    db $fc
    nop
    and d
    jp z, $d0cb

    nop
    add b
    nop
    add b
    nop
    ldh a, [$cd]
    jp z, $00d0

    adc a
    nop
    rst $08
    jp z, $cccb

    add b
    nop
    add b
    nop
    cp $cd
    jp z, $cccb

    nop
    sbc [hl]
    nop
    add b
    nop
    add b
    nop
    xor $00
    and c
    nop
    ret


    call z, $fc00
    nop
    ret


    jp z, $d0cb

    nop
    cp [hl]
    nop
    ret


    jp z, $cccb

    nop
    adc a
    nop
    ret


    jp z, $cccb

    cp h
    nop
    adc $ca
    ret nc

    nop
    cp h
    nop
    rst $08
    jp z, $00d0

    sbc a
    nop
    rst $08
    jp z, $cccb

    nop
    add [hl]
    nop
    sbc a
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    and d
    nop
    adc [hl]
    nop
    ret


    call z, $fb00
    nop
    call $ccca
    nop
    ret


    ret nc

    add c
    nop
    ret


    ret nz

    ret nc

    nop
    adc a
    nop
    adc $ca
    set 1, h
    ld hl, sp+$00
    ret


    jp z, $00d0

    cp [hl]
    nop
    rst $08
    jp z, $9ecc

    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    and c
    nop
    adc b
    nop
    adc [hl]
    add b
    adc [hl]
    add b
    adc [hl]
    add b
    adc [hl]
    add b
    adc [hl]
    adc c
    adc [hl]
    nop
    ret


    add $cc
    nop
    sbc a
    nop
    add b
    nop
    add b
    nop
    db $fc
    nop
    and d
    ret


    jp z, $00cc

    adc b
    nop
    adc [hl]
    add b
    adc [hl]
    add b
    adc [hl]
    add b
    adc [hl]
    add b
    adc [hl]
    adc b
    adc [hl]
    nop
    add [hl]
    nop
    sbc [hl]
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    and c
    nop
    cp b
    nop
    sub b
    adc a
    adc l
    add b
    adc l
    add b
    adc l
    add b
    adc l
    add b
    adc l
    adc h
    adc l
    sub c
    nop
    adc [hl]
    nop
    call nz, $009f
    add b
    nop
    add b
    nop
    ldh [rP1], a
    and d
    nop
    cp a
    nop
    sub e
    sub d
    sub [hl]
    sub a
    sub [hl]
    sub l
    rst $38
    sub [hl]
    sub a
    sub [hl]
    sub l
    sub [hl]
    sub l
    sub [hl]
    sub l
    rst $38
    sub [hl]
    sub a
    sub [hl]
    sub a
    sub [hl]
    sub l
    sub [hl]
    sub a
    rst $38
    sub [hl]
    sub l
    sub [hl]
    sub a
    sub [hl]
    sub l
    sub [hl]
    sub l
    rst $38
    sub [hl]
    sub a
    sub [hl]
    sub l
    sub [hl]
    sub l
    sub [hl]
    sub a
    db $fc
    sub [hl]
    sub a
    sub [hl]
    sub l
    sub h
    nop
    sbc [hl]
    nop
    ret nz

    push bc
    sbc [hl]
    nop
    add b
    nop
    add b
    nop
    xor $00
    and c
    nop
    xor h
    xor l
    nop
    rst $38
    nop
    sbc l
    sbc [hl]
    rrca
    ld c, $98
    ld c, $0f
    rst $38
    ld c, $98
    ld c, $0f
    ld c, $0f
    ld c, $0f
    rst $38
    ld c, $98
    ld c, $98
    ld c, $0f
    ld c, $98
    rst $38
    ld c, $0f
    ld c, $98
    ld c, $0f
    ld c, $0f
    rst $38
    ld c, $98
    ld c, $0f
    ld c, $0f
    ld c, $98
    db $fc
    ld c, $98
    ld c, $0f
    and d
    nop
    sbc [hl]
    nop
    pop bc
    add $9f
    nop
    add b
    nop
    add b
    nop
    ld hl, sp+$00
    and d
    set 1, h
    nop
    cp b
    nop
    sbc a
    ld de, $8300
    nop
    ld c, $0f
    rst $38
    inc e
    dec e
    inc e
    dec e
    inc e
    dec e
    ld c, $0f
    rst $38
    ld e, l
    ld e, [hl]
    rrca
    ld e, l
    ld e, [hl]
    inc e
    dec e
    inc e
    rst $38
    dec e
    ld c, $57
    ld e, b
    ld e, [hl]
    ld c, $0f
    inc e
    rst $38
    dec e
    ld e, l
    ld e, [hl]
    ld c, $a1
    xor [hl]
    or c
    nop
    cp [hl]
    nop
    cp h
    jp nz, $9ec7

    nop
    add b
    nop
    add b
    nop
    db $fd
    nop
    and c
    ret


    jp z, $00cc

    sbc l
    cp b
    nop
    sbc [hl]
    rrca
    nop
    add e
    nop
    inc e
    dec e
    db $e3
    ld [hl], c
    ld [hl], e
    ccf
    inc e
    dec e
    rst $38
    ld h, c
    ld h, d
    ld de, $5c5b
    ccf
    ld [hl], h
    ld l, h
    rst $38
    ld [hl], c
    inc e
    dec e
    ld e, c
    ld e, d
    inc e
    dec e
    ccf
    rst $38
    ccf
    ld e, c
    ld e, d
    db $10
    and d
    xor a
    or d
    or c
    cp $b6
    cp c
    cp l
    jp $9fc8


    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    and d
    nop
    ld hl, sp-$37
    call z, $119f
    nop
    add e
    nop
    rrca
    ccf
    rst $30
    ccf
    ld l, l
    ld l, [hl]
    ld [hl], b
    ld l, h
    ccf
    ld c, $ff
    ld h, b
    ld e, a
    rrca
    ld [hl], b
    ld l, h
    ld [hl], c
    ld l, l
    ld l, [hl]
    adc h
    ld [hl], c
    ld l, h
    ld [hl], b
    sbc a
    ld [hl], b
    ld c, $a1
    or b
    or e
    or h
    or $b7
    cp d
    cp [hl]
    nop
    sbc [hl]
    nop
    add b
    nop
    add b
    nop
    and $00
    and c
    nop
    sbc l
    nop
    cp b
    nop
    sbc [hl]
    rrca
    nop
    add e
    nop
    ld de, $873f
    ccf
    ld a, b
    ld a, d
    inc e
    ldh a, [rNR33]
    inc e
    dec e
    ccf
    adc a
    ccf
    ld a, b
    ld l, l
    ld l, h
    ld a, d
    cp l
    ld a, d
    ld l, a
    db $10
    and d
    nop
    or l
    or $b8
    cp e
    cp a
    nop
    sbc a
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    and d
    nop
    cp b
    nop
    sbc a
    ld de, $8300
    nop
    rrca
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    cp h
    ccf
    ld l, c
    ld l, b
    and c
    nop
    add [hl]
    nop
    sbc [hl]
    nop
    add b
    nop
    add b
    nop
    ld hl, sp+$00
    and c
    xor h
    xor l
    nop
    cp b
    nop
    sbc [hl]
    rrca
    nop
    add e
    nop
    ld de, $803f
    ccf
    add b
    ccf
    add b
    ccf
    cp h
    ccf
    ld l, e
    ld h, d
    and d
    adc a
    add [hl]
    adc a
    sbc a
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    and d
    nop
    cp b
    nop
    sbc a
    ld de, $8300
    nop
    rrca
    ccf

jr_00e_5b82:
    add c
    ccf
    jr jr_00e_5b82

    add hl, de
    ld h, [hl]
    ld l, b
    add hl, de
    ld h, e
    ccf
    sbc a
    ccf
    ld l, c
    ld l, b
    add hl, de
    ld h, e
    ccf
    cp a
    ccf
    ld e, a
    ld h, b
    and c
    pop de
    jp nc, $fed1

    jp nc, $92d1

    pop de
    jp nc, $009e

    add b
    nop
    rst $38
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    xor $10
    ld de, $ac00
    xor l
    nop
    cp b
    nop
    sbc [hl]
    rrca
    nop
    add e
    nop
    ld de, $8719
    ld c, a
    jr jr_00e_5bdb

    db $10
    rst $38
    ld de, $6560
    ld l, b
    ld h, b
    jr jr_00e_5be4

    ld h, [hl]
    rst $38
    ld h, a
    ld l, b
    add hl, de
    ld e, a
    ld h, b
    ld de, $6466
    cp a
    ccf
    inc e
    ld de, $0ea2

jr_00e_5bdb:
    sbc b
    ld c, $fe
    sbc b
    ld c, $0f
    ld c, $98
    sbc a

jr_00e_5be4:
    nop
    add b
    nop
    jp $00a1


    rst $08
    jp z, $ccc0

    nop
    cp a
    nop
    sbc a
    ld de, $0f0e
    ld c, $0f
    rst $38
    ld c, $0f
    ld c, $0f
    db $10
    ld de, $7f0e
    add a
    ccf
    add h
    ld c, $0f
    rst $38
    ld de, $1110
    ld e, l
    ld e, e
    ld e, d
    dec e
    inc e
    rst $38
    dec e
    ld e, l
    rrca
    ld e, l
    ld e, [hl]
    ld c, $60
    ld h, c
    sbc a
    ccf
    ld c, $0f
    ld c, $0f
    ld c, $ff
    rrca
    inc e
    dec e
    inc e
    dec e
    inc e
    dec e
    inc e
    rst $38
    dec e
    ld c, $65
    ld h, a
    ld l, b
    ld c, $10
    ld de, $a2fe
    nop
    ret


    jp z, $d0cb

    nop
    add c
    nop
    sbc l
    cp a
    nop
    sbc [hl]
    rrca
    db $10
    ld de, $1d1c
    rst $38
    inc e
    dec e
    inc e
    dec e
    ld c, $0f
    db $10
    ld a, a
    add a
    ccf
    add h
    db $10
    ld de, $0ffe
    ld c, $0f
    ld e, e
    ld e, h
    ld a, h
    ccf
    rst $38
    ccf
    ld e, b
    dec e
    ld d, l
    ld d, [hl]
    inc e
    ld c, $60
    rst $18
    add hl, de
    ccf
    db $10
    ld de, $1d1c
    inc e
    call c, $701d
    ld l, h
    ld [hl], e
    ccf
    rst $38
    ccf
    inc e
    ld l, e
    ld h, l
    ld l, b
    db $10
    rrca
    ld c, $c0
    and c
    nop
    ldh a, [rP1]
    ret


    call z, $ff00
    nop
    adc a
    db $10
    ld de, $0f0e
    ld a, h
    ccf
    adc a
    ccf
    db $10
    ld c, $10
    ld a, l
    rst $08
    ld a, [hl]
    ccf
    add e
    add d
    ld c, $0f
    rst $30
    ld de, $1d1c
    ccf
    db $76
    ld l, h
    ld [hl], c
    cp e
    ld [hl], c
    ld l, l
    ld l, [hl]
    ld [hl], c
    inc e
    dec e
    db $dd
    dec e
    ccf
    ld c, $0f
    ld d, h
    ccf
    adc [hl]
    ccf
    ld l, l
    ld l, [hl]
    ld [hl], c
    rst $38
    ld l, h
    ld a, d
    ld e, a
    ld h, b
    ld e, a
    rrca
    ld de, $c010
    and d
    nop
    add c
    nop
    sbc c
    rst $38
    sbc e
    sub d
    ld c, $0f
    db $10
    ld de, $6c76
    rst $38
    ld l, [hl]
    ld [hl], b
    ld l, h
    ccf
    ld c, $10
    ld c, $0f
    rst $38
    ld a, l
    ld a, [hl]
    ccf
    add e
    add d
    rrca
    db $10
    ld de, $0fdc
    ld a, d
    ld l, l
    ld l, [hl]
    ld a, d
    or b
    ld a, d
    ld a, e
    ccf
    cp l
    ccf
    jr jr_00e_5cf9

    ld de, $3f54
    adc h
    ccf
    ld a, c
    ccf
    rst $38
    ld a, b
    ld a, d
    inc e
    dec e
    inc e
    ld c, $0f

jr_00e_5cf9:
    ld c, $f8
    and c
    rst $08
    jp z, $00d0

    add a
    nop
    sbc c
    sbc e
    sbc d
    rst $38
    rrca
    ld c, $10
    ld de, $0f0e
    ccf
    ld l, l
    rst $38
    ld a, e
    ccf
    ld a, b
    ld a, d
    db $10
    ld de, $1110

Jump_00e_5d17:
    rst $38
    db $10
    add a
    ccf
    adc b
    ld c, $11
    ld c, $0f
    call c, $7a11
    ld l, a
    ld a, e
    ccf
    add b
    ccf
    cp l
    ccf
    db $10
    ld de, $540f
    ccf
    adc a
    ccf
    ld a, c
    ld d, b
    ld d, c
    ccf
    add a
    ccf
    inc e
    ld de, $dc10
    and d
    nop
    ret


    call z, $9f00
    nop
    sbc c
    sbc e
    sbc d
    rrca
    db $10
    cp $11
    db $10
    ld c, $0f
    db $10
    ld de, $883f
    ccf
    add c
    rst $38
    add c
    add b
    ccf
    add h
    db $10
    ld c, $10
    ld de, $0fc0
    ccf
    add b

Jump_00e_5d5f:
    ccf
    db $fd
    ccf
    ld l, c
    ld l, b
    rrca
    ld de, $3f54
    sbc a
    ccf
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ccf
    add e
    ccf
    ld c, $0f
    ret nz

    and c
    nop
    rst $38
    sub b
    sbc c
    sbc e
    sbc d
    rrca
    db $10
    ld de, $fe0e
    rrca
    ld c, $10
    ld de, $0f0e
    ccf
    adc b
    ccf
    adc h
    sbc a
    adc h
    add h
    ld c, $10
    ld c, $0f
    pop bc
    ld de, $183f
    ld hl, sp+$66
    ld l, b
    add hl, de
    ld h, e
    ccf
    db $fd
    ccf
    ld e, a
    ld h, b
    ld de, $540f
    jr @+$01

    jr jr_00e_5dbf

    ld d, b
    ld d, d
    ld d, e
    ld d, b
    ld d, c
    add hl, de
    add e
    ccf
    db $10
    dec e
    rst $00
    and d
    nop
    xor h
    xor l
    nop
    rst $38
    sub e
    sbc d
    rrca
    db $10
    ld de, $0e0f
    db $10

jr_00e_5dbf:
    cp $11
    db $10
    ld c, $0f
    db $10
    ld de, $883f
    ccf
    add [hl]
    sbc a
    add [hl]
    add l
    db $10
    ld c, $10
    ld de, $0fdf
    ccf
    ld c, [hl]
    ccf
    jr jr_00e_5df1

    db $10
    cp a
    ld h, b
    ld de, $195f
    ld h, [hl]
    ld h, a
    ld l, b
    db $fd
    add hl, de
    db $10
    ld de, $110f
    ld d, h
    db $10
    rst $38
    db $10
    ld de, $5052
    ld d, c
    ld d, d
    ld d, e

jr_00e_5df1:
    dec e
    rst $20
    jr jr_00e_5e0e

    ccf
    jr jr_00e_5e07

    ld c, $c0
    and c
    nop
    rst $38
    sbc a
    db $10
    ld de, $1c1d
    dec e
    inc e
    dec e
    cp $1c

jr_00e_5e07:
    dec e
    ld c, $0f
    ld c, $0f
    ccf
    adc [hl]

jr_00e_5e0e:
    ccf
    db $10
    ld de, $8000
    nop
    push bc
    ld de, $1c3f
    ld c, $ff
    rrca
    ld c, $0f
    ld d, l
    ld d, [hl]
    inc e
    dec e
    db $10
    db $fd
    ld de, $1d10
    ld c, $0f
    ld d, h
    ld c, $ff
    ld c, $0f
    inc e
    dec e
    ld c, $0f
    ld c, $1d
    rst $20
    inc e
    dec e
    ccf
    inc e
    dec e
    db $10
    ei
    and d
    nop
    xor h
    xor l
    nop
    rst $08
    jp z, $9ef0

    ld c, $0f
    ccf
    cp a
    ccf
    db $10
    ld de, $1110
    ld l, l
    ld [hl], e
    adc [hl]
    ccf
    ld c, $0f
    nop
    add b
    nop
    db $e3
    rrca
    ld c, [hl]
    ccf
    ld a, h
    inc e
    rst $30
    dec e
    inc e
    dec e
    ccf
    ld a, c
    ccf
    ld d, h
    cp l
    ld d, h
    ccf
    inc e
    dec e
    ld d, h
    inc e
    rst $38
    inc e
    dec e
    ccf
    ld a, h
    inc e
    ld de, $3f10
    add c
    ccf
    ld c, $f0
    and c
    ret


    call z, $f000
    and b
    inc e
    dec e
    ccf
    cp a
    ccf
    ld c, $0f
    ld c, $0f
    ld a, d
    ld l, h
    adc [hl]
    ccf
    db $10
    ld de, $8000
    nop
    jp $3f11


    db $76
    ld [hl], b
    rst $08
    ld l, h
    ld [hl], b
    ld l, l
    ld l, [hl]
    ld [hl], c
    ld d, h
    and l
    ld d, h
    ld [hl], c
    ld d, h
    ld [hl], c
    rst $38
    ld [hl], c
    ld l, l
    ld l, h
    ld [hl], d
    ccf
    ld c, $0f
    ccf
    add c
    ccf
    db $10
    add $a2
    nop
    sbc l
    nop
    rst $38
    nop
    and h
    and [hl]
    ccf
    xor b
    xor d
    ccf
    xor b
    rst $38
    xor d
    ccf
    db $10
    ld de, $1110
    ccf
    ld a, c
    adc [hl]
    ccf
    ld c, $0f
    nop
    add b
    nop
    ret c

    rrca
    ccf
    ld c, [hl]
    ccf
    adc l
    ccf
    ld l, a
    ld a, d
    ld d, h
    cp l
    ld d, h
    ld a, d
    ld l, a
    ld a, d
    ld d, h
    ld a, d
    rst $30
    ld a, d
    ld l, a
    ld [hl], l
    ccf
    db $10
    ld de, $814e
    ccf
    ld c, $c0
    and c
    nop
    rst $38
    nop
    and l
    and a
    ccf
    xor c
    xor e
    ccf
    xor c
    rst $38
    xor e
    ccf
    ld c, $0f
    ld c, $0f
    ccf
    ld l, l
    adc [hl]
    ccf
    ld a, [de]
    ld de, $8000
    nop
    ret nz

    ld de, $813f
    ccf
    ld d, h
    and l
    ld d, h
    ccf
    ld d, h
    ccf
    or a
    ccf
    ld [hl], l
    ccf
    ld c, $0f
    ccf
    add c
    ccf
    db $10
    pop bc
    and d
    nop
    and e
    ld sp, hl
    add hl, de
    jr jr_00e_5f39

    sbc h
    ccf
    sbc h
    cp a
    ccf
    db $10
    ld de, $1110
    ld a, d
    ld a, e
    adc [hl]
    ccf
    ld c, $0f
    nop
    add b
    nop
    add $0f
    ccf
    ld c, [hl]
    ccf
    add c
    ccf

jr_00e_5f39:
    ld d, h
    and l
    ld d, h
    ccf
    ld d, h
    ccf
    or a
    ccf
    ld a, b
    ld a, d
    db $10
    ld de, $833f
    ccf
    jr jr_00e_5f59

    pop af
    and c
    xor [hl]
    or c
    nop
    sbc a
    ldh a, [rNR11]
    db $10
    rrca
    ccf
    cp [hl]
    ccf
    ld c, $0f

jr_00e_5f59:
    ld c, $0f
    ccf
    adc [hl]
    ccf
    ld a, [de]
    ld de, $8000
    nop
    ret nz

    ld de, $ff3f
    ccf
    ld l, c
    ld l, b
    jr jr_00e_5f85

    ld h, e
    ccf
    ld d, h
    and l
    ld d, h
    ccf
    ld d, h
    ccf
    add a
    ccf
    ld c, $0f
    ccf
    add e
    ccf
    db $10
    dec e
    rst $38
    and d
    xor a
    or d
    or c
    xor h
    xor l
    nop

jr_00e_5f85:
    sbc [hl]
    or $0f
    ld c, $11
    ccf
    sbc h
    ccf
    cp [hl]
    ccf
    db $10
    ld de, $1110
    ccf
    adc [hl]
    ccf
    ld c, $0f
    nop
    add b
    nop
    reti


    rrca
    ccf
    ld c, [hl]
    ccf
    jr @+$01

    add hl, de
    ld e, a
    ld h, b
    db $10
    ld de, $195f

jr_00e_5fa9:
    jr jr_00e_5fa9

    add hl, de
    jr jr_00e_5fc7

    jr jr_00e_5fc9

    jr jr_00e_5fcb

    add a
    ccf
    db $10
    ld de, $ff19
    jr @+$1b

    jr jr_00e_5fd5

    jr jr_00e_5fd7

    rrca
    ld c, $ff
    and c
    or b
    xor [hl]
    or d
    or c
    or [hl]

jr_00e_5fc7:
    cp c
    sbc a

jr_00e_5fc9:
    ldh a, [rNR11]

jr_00e_5fcb:
    db $10
    rrca
    dec a
    cp [hl]
    dec a
    ld c, $0f
    ld c, $0f
    dec a

jr_00e_5fd5:
    adc [hl]
    dec a

jr_00e_5fd7:
    ld a, [de]
    ld de, $8000
    nop
    pop bc
    ld de, $103d
    rst $38
    ld de, $1110
    db $10
    ld de, $0f0e
    ld b, [hl]
    cp $47
    ld c, $0f
    ld c, $0f
    db $10
    ld de, $3d86
    ld c, $00
    add b
    nop
    rst $38
    and d
    xor h
    xor l
    or e
    or h
    or a
    sbc l
    sbc [hl]
    ld hl, sp+$0f
    ld c, $11
    rla
    nop
    cp [hl]
    nop
    db $10
    ld de, $1110
    nop
    adc [hl]
    nop
    ld c, $0f
    nop
    add b
    nop
    db $e3
    ld c, $17
    nop
    ld d, $0e
    rst $38
    rrca
    ld c, $0f
    ld b, [hl]
    ld b, a
    ld a, [de]
    dec de
    ld b, b
    cp $41
    ld a, [de]
    dec de
    db $10
    ld de, $0f0e
    add [hl]
    nop
    stop
    add b
    nop
    rst $18
    and c
    nop
    jp nz, $b800

    cp e
    sbc a
    ld hl, sp+$11
    db $10
    rrca
    ld de, $be01
    ld bc, $0f0e
    ld c, $0f
    ld bc, $018e
    ld a, [de]
    ld de, $8000
    nop
    ld [c], a
    db $10
    ld de, $1a01
    db $fc
    dec de
    ld a, [de]
    dec de
    ld b, b
    ld b, c
    ld [bc], a
    sbc [hl]
    ld [bc], a
    ld c, $0f
    ld a, [de]
    dec de
    add [hl]
    ld bc, $000e
    add b
    nop
    rst $08
    and d
    nop
    sbc l
    jp nz, $9e00

    db $fc
    rrca
    ld c, $11
    ld c, $17
    ld [bc], a
    cp [hl]
    ld [bc], a
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld [bc], a
    adc [hl]
    ld [bc], a
    ld c, $0f
    nop
    add b
    nop
    or b
    ld c, $17
    ld [bc], a
    add b
    ld [bc], a
    sbc h
    ld [bc], a
    ld a, [de]
    dec de
    ld [bc], a
    add [hl]
    ld [bc], a
    stop
    add b
    nop
    pop bc
    and c
    nop
    sbc a
    db $fc
    ld de, $0f10
    db $10
    ld de, $8002
    ld [bc], a
    adc [hl]
    ld [bc], a
    ld a, [de]
    ld de, $8000
    nop
    or b
    db $10
    ld de, $9c02
    ld [bc], a
    ld c, h
    ld c, l
    ld [bc], a
    add b
    ld [bc], a
    add [hl]
    ld [bc], a
    ld c, $00
    add b
    nop
    ld sp, hl
    and d
    nop
    xor h
    xor l
    nop
    sbc [hl]
    db $fc
    rrca
    ld c, $11
    ld c, $0f
    ld [bc], a
    cp [hl]
    ld [bc], a
    ld [de], a
    dec d
    inc d
    inc de
    ld [bc], a
    adc [hl]
    ld [bc], a
    ld c, $0f
    nop
    add b
    nop
    or c
    ld c, $0f
    ld [bc], a
    ld c, b
    db $dd
    ld c, c
    ld [bc], a
    ld b, d
    ld b, e
    ld [bc], a
    ld c, h
    ret nz

    ld c, l
    ld [bc], a
    add [hl]
    ld [bc], a
    stop
    add b
    nop
    pop bc
    and c
    nop
    sbc a
    db $fc
    ld de, $0e10
    db $10
    ld de, $be02
    ld [bc], a
    db $10
    ld de, $1110
    ld [bc], a
    adc [hl]
    ld [bc], a
    ld a, [de]
    ld de, $8000
    nop
    or e
    db $10
    ld de, $4a02
    ld b, h
    rst $38
    ld b, l
    ld c, e
    ld c, d
    ld b, h
    ld b, l
    ld c, e
    ld c, d
    ld b, h
    cp $45
    ld c, e
    ld [de], a
    dec d
    inc d
    inc de
    ld [bc], a
    add [hl]
    ld [bc], a
    ld c, $00
    add b
    nop
    pop bc
    and d
    db $d3
    sbc [hl]
    rst $38
    rrca
    ld c, $10
    ld de, $8a0f
    adc c
    adc d
    rst $38
    adc c
    adc d
    ld c, $0f
    ld c, $0f
    adc c
    adc d
    rst $38
    adc c
    adc d
    adc c
    adc d
    ld c, $0f
    db $10
    ld de, $10ff
    ld de, $1110
    db $10
    ld de, $1110
    rst $38
    ld c, $0f
    ld c, $15
    inc d
    dec d
    ld c, $0f
    rst $38
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    cp $0e
    rrca
    db $10
    ld de, $1110
    ld [bc], a
    cp $02
    ld [de], a
    dec d
    inc d
    dec d
    stop
    add b
    nop
    add b
    nop
    add b
    nop
    sbc b
    nop
    rrca
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld c, $fe
    db $10
    ld de, $0f0e
    ld c, $0f
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld c, $0f
    ld a, [de]
    rst $38
    dec de
    ld c, $0f
    db $10
    ld de, $1110
    db $10
    add b
    nop
    add b
    nop
    sbc b
    nop
    ld de, $8000
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    db $10
    sbc $0e
    db $10
    ld de, $1110
    ld [bc], a
    add a
    ld [bc], a
    ld a, [de]
    dec de
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, [de]
    dec de
    ld c, $0f
    ld c, $0f
    ld c, $80
    nop
    add b
    nop
    sbc b
    nop
    rrca
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld c, $ee
    db $10
    ld c, $0f
    ld c, $0f
    ld [bc], a
    add b
    ld [bc], a
    sbc a
    ld [bc], a
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    db $10
    add b
    nop
    add b
    nop
    sbc c
    nop
    ld de, $3300
    rst $30
    inc [hl]
    dec [hl]
    ld [hl], $00
    inc sp
    inc [hl]
    dec [hl]
    rst $38
    ld [hl], $00
    inc sp
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld [hl], $bf
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    inc sp
    db $fd
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld [hl], $00
    ld a, [de]
    cp $0e
    db $10
    rrca
    ld de, $1110
    ld [bc], a
    add b
    ld [bc], a
    add c
    ld [bc], a
    ld c, $80
    nop
    add b
    nop
    sbc e
    nop
    rrca
    nop
    scf
    jr c, @+$01

    add hl, sp
    ld a, [hl-]

jr_00e_6220:
    dec sp
    inc a
    scf
    jr c, jr_00e_625e

    ld a, [hl-]
    rst $38
    dec sp
    scf
    jr c, @+$3b

    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    rst $38
    inc a
    scf
    jr c, jr_00e_626d

    ld a, [hl-]
    dec sp
    scf
    jr c, @+$01

    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    scf
    jr c, jr_00e_6220

    db $10
    ld c, $0f
    ld c, $0f
    ld [bc], a
    add b
    ld [bc], a
    add c
    ld [bc], a
    db $10
    add b
    nop
    add b
    nop
    sbc a
    nop
    ld de, $0c0b
    dec bc
    dec c
    add b
    nop
    add b
    nop
    add b
    nop

jr_00e_625e:
    add b

Call_00e_625f:
    nop
    sbc $0e
    db $10
    ld de, $1110
    ld [bc], a
    ldh a, [rSC]
    ld c, b
    ld c, c
    ld [bc], a
    add c

jr_00e_626d:
    ld [bc], a
    ld c, $80
    nop
    add b
    nop
    sbc a
    nop
    rrca
    dec b
    inc bc
    inc b
    ld b, $80
    ld bc, $0180
    add b
    ld bc, $0180
    rst $18
    db $10
    ld c, $0f
    ld c, $0f
    inc d
    inc de
    ei
    ld c, d
    ld b, h
    ld b, l
    ld c, e
    ld [bc], a
    ld [de], a
    inc de
    add c
    ld [bc], a
    db $10
    add b
    nop
    add b
    nop
    sbc a
    nop
    ld de, $0504
    ld b, $04
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    rst $18
    ld c, $10
    ld de, $1110
    db $10
    ld de, $0eff
    rrca
    ld c, $0f
    inc d
    dec d
    db $10
    ld de, $14e1
    inc de
    ld [bc], a
    ld c, $80
    nop
    add b
    nop
    adc l
    nop
    ld b, $04
    ld b, $80
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    rst $38
    ld a, [de]
    dec de
    ld c, $0f
    ld c, $0f
    ld c, $0f
    rst $38
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld c, $0f
    ld c, $0f
    pop hl
    ld a, [de]
    dec de
    ld [bc], a
    db $10
    add b
    nop
    add b
    nop
    adc a
    nop
    dec b
    ld b, $03
    inc b
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    cp a
    ld [bc], a
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    adc a
    ld [bc], a
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    add c
    ld [bc], a
    ld c, $80
    nop
    add b
    nop
    adc a
    nop
    dec b
    inc bc
    dec b
    ld b, $80
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add c
    ld [bc], a
    db $10
    add b
    nop
    add b
    nop
    adc a
    nop
    inc bc
    inc b
    ld b, $04
    add b
    ld [bc], a
    adc [hl]
    ld [bc], a
    inc l
    dec l
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add a
    ld [bc], a
    inc l
    dec l
    ld [bc], a
    add c
    ld [bc], a
    ld c, $80
    nop
    add b
    nop
    adc a
    nop
    dec b
    ld b, $04
    ld b, $e0
    ld [$022d], sp
    rst $38
    ld [bc], a
    inc l
    dec l
    ld l, $26
    jr z, jr_00e_6382

    ld sp, $2ef0
    ld [hl+], a
    inc h
    ld [bc], a
    add b
    ld [bc], a
    sbc a
    ld [bc], a
    inc l
    dec l
    inc l
    dec l
    ld [bc], a
    adc a
    ld [bc], a
    ld l, $26
    jr z, jr_00e_639b

    add e
    ld [bc], a
    ld a, [hl+]
    db $10
    add b
    nop
    add b
    nop
    adc a
    nop
    inc bc
    dec b
    ld b, $04
    ldh a, [rTMA]
    jr z, jr_00e_63ad

    ld [bc], a
    rst $38
    ld l, $26

jr_00e_6382:
    jr z, jr_00e_63af

    daa
    add hl, hl
    rlca
    add hl, bc
    ldh a, [$08]
    inc hl
    dec h
    ld [bc], a
    ld hl, sp+$02
    ld l, $22
    inc h
    ld [bc], a
    cp a
    ld [bc], a
    ld l, $26
    jr z, jr_00e_63bf

    jr z, jr_00e_63ca

jr_00e_639b:
    cp a
    ld [bc], a
    ld l, $22
    inc h
    daa
    add hl, hl
    ld a, [hl+]
    rst $38
    ld sp, $2202
    inc h
    dec hl
    ld e, $1f
    ld c, $80

jr_00e_63ad:
    nop
    add b

jr_00e_63af:
    nop
    adc a
    nop
    inc b
    inc bc
    inc b
    inc bc
    cp $04
    add hl, hl
    ld a, [hl+]
    ld sp, $2e02
    dec hl
    rst $38

jr_00e_63bf:
    dec hl
    daa
    add hl, hl
    rlca
    inc c

Jump_00e_63c4:
    dec bc
    inc b
    dec b
    rst $38
    ld b, $0b

Jump_00e_63ca:
jr_00e_63ca:
    dec c
    ld [bc], a
    ld l, $22
    inc h
    dec hl
    rst $38
    ld e, $3e
    inc hl
    dec h
    dec hl
    jr nc, jr_00e_6405

    inc l
    rst $38
    dec l
    ld [hl+], a
    inc h
    daa
    add hl, hl
    daa
    add hl, hl
    ld [bc], a
    cp $02
    ld [hl+], a
    inc h
    inc hl
    dec h
    ld e, $1f
    db $fd
    ld a, $2b
    inc hl
    dec h
    ld e, $21
    db $10
    add b
    nop
    add b
    nop
    adc a
    nop
    ld b, $05
    ld b, $05
    rst $38
    ld b, $09
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    inc c
    dec bc

jr_00e_6405:
    rst $38
    inc c
    dec bc
    inc c
    dec b
    inc bc
    inc b
    ld b, $03
    cp a
    inc b
    ld b, $08
    ld a, [hl+]
    inc hl
    dec h
    ld e, $af
    ld hl, $201f
    ld h, $28
    ld h, $fb
    jr z, jr_00e_6443

    dec h
    ld e, $1f
    jr nz, jr_00e_644f

    db $fc
    ld a, [hl+]
    inc hl
    dec h
    ld e, $1f
    ld hl, $21c9
    rra
    ld hl, $800e
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

Call_00e_643c:
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_00e_6443:
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
    add b
    nop

jr_00e_644f:
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
    rst $10
    ld h, h
    rst $10
    ld l, b
    rst $10
    ld l, h
    nop
    nop
    nop
    nop
    ld e, h
    ld e, l
    ld b, d
    ld b, e
    ld e, [hl]
    ld e, l
    ld b, [hl]
    ld b, a
    ld e, [hl]
    ld e, l
    ld b, d
    ld b, e
    ld e, [hl]
    ld e, a
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld e, h
    ld e, l
    ld b, d
    ld b, e

Call_00e_64ff:
    ld e, [hl]
    ld e, l
    ld b, [hl]
    ld b, a
    ld e, [hl]
    ld e, l
    ld b, d
    ld b, e
    inc [hl]
    jr c, jr_00e_653f

    add hl, sp
    nop
    nop
    nop
    dec c
    ld [de], a
    jr jr_00e_6525

    add hl, de
    ld e, $1e
    rra
    inc hl
    ld e, $1e
    inc hl
    inc hl
    ld e, $2c
    inc hl
    inc hl
    dec [hl]
    add hl, sp
    dec [hl]
    add hl, sp
    nop
    nop

jr_00e_6525:
    nop
    ld b, $0d
    ld c, $09
    rrca
    inc d
    ld a, [de]
    dec d
    dec de
    jr nz, @+$26

    ld hl, $2325
    inc hl
    jr z, @+$25

    inc hl
    dec l
    inc hl
    ld l, $37
    dec sp
    scf
    dec sp

jr_00e_653f:
    inc a
    ld a, l
    inc [hl]
    jr c, jr_00e_6544

jr_00e_6544:
    rlca
    nop
    ld [$100a], sp
    dec bc
    ld de, $1c16
    rla
    dec e
    ld [hl+], a
    ld h, $17
    daa
    add hl, hl
    jr nc, jr_00e_6580

    ld sp, $2f30
    ld sp, $373d
    dec sp
    ld a, $3f
    inc c
    ld de, $110c
    rla
    dec e
    rla
    dec e
    rla
    daa
    rla
    daa
    dec hl
    ld [hl-], a
    dec hl
    inc sp
    ld [hl-], a
    dec a
    inc sp
    dec a
    ld a, $3f
    ld a, $3f
    dec [hl]
    add hl, sp
    dec [hl]
    add hl, sp
    nop
    nop
    ld l, a
    nop
    ld h, c

jr_00e_6580:
    nop
    ld h, d
    ld l, b
    nop
    ld l, c
    nop
    ld l, e
    ld l, a
    nop
    ld h, b
    nop
    nop
    ld l, h
    nop
    ld a, h
    nop
    nop
    nop
    ld a, l
    ld h, e
    ld l, c
    ld h, h
    ld l, d
    ld h, l
    ld l, e
    ld h, [hl]
    ld l, h
    ld h, a
    nop
    nop
    ld l, [hl]
    nop
    nop
    ld l, l
    nop
    nop
    ld [hl], b
    ld [hl], b
    db $76
    ld [hl], c
    ld [hl], a
    ld [hl], d
    ld a, b
    nop
    nop
    ld h, e
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld [hl], e
    ld a, c
    ld a, d
    ld l, l
    ld h, h
    nop
    ld l, l
    nop
    ld l, a
    ld [hl], l
    ld [hl], b
    db $76
    ld l, l
    ld l, l
    ld a, b
    ld h, e
    nop
    nop
    nop
    ld h, a
    ld [hl], c
    ld [hl], a
    ld [hl], d
    ld a, b
    ld a, c
    ld h, h
    ld l, l
    ld a, c
    ld a, c
    ld l, l
    ld l, l
    ld h, a
    nop
    nop
    nop
    ld l, [hl]
    ld [hl], e
    ld a, c
    ld a, d
    ld l, l
    nop
    ld l, l
    ld h, a
    nop
    ld h, [hl]
    nop
    ld h, a
    nop
    nop
    ld [hl], l
    ld [hl], b
    db $76
    ld a, e
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld l, l
    nop
    nop
    nop
    inc bc
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    nop
    dec b
    nop
    nop
    dec b
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld e, [hl]
    ld e, a
    ld b, [hl]
    ld b, a
    inc bc
    dec b
    inc b
    dec de
    jr nz, jr_00e_6615

jr_00e_6615:
    ld hl, $2c36
    inc a
    dec l
    dec a
    nop
    ld [hl], $00
    ld [hl], $15
    rla
    ld d, $18
    rla
    rla
    jr @+$1a

    rla
    add hl, de
    jr jr_00e_6645

    ld a, d
    nop
    ld a, e
    ld a, [hl]
    ld b, $00
    rlca
    ld [$0000], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    inc de
    inc d
    nop
    nop

jr_00e_6645:
    ld bc, $2e02
    nop
    cpl
    ld [hl], $00
    ld [hl], $00
    ld [hl], $22
    ld [hl-], a
    inc hl
    inc sp
    ld h, $36
    daa
    scf
    inc h
    inc [hl]
    jr nc, @+$40

    jr z, jr_00e_6695

    add hl, hl
    nop
    ld sp, $253f
    dec [hl]
    ld a, [hl+]
    nop
    dec hl
    dec sp
    inc a
    ld h, b
    dec a
    ld h, c
    jr z, jr_00e_66a5

    ld h, a
    nop
    ld sp, $683f
    ld l, c
    nop
    ld [hl], $00
    nop
    ld [hl+], a
    ld [hl-], a
    ld h, l
    ld h, [hl]
    jr nz, jr_00e_667d

jr_00e_667d:
    ld h, d
    nop
    inc l
    inc a
    ld h, e
    ld h, h
    ld l, d
    ld [hl], b
    ld l, e
    ld [hl], c
    db $76
    ld a, h
    ld [hl], a
    ld a, l
    ld l, h
    ld [hl], d
    ld l, l
    ld [hl], e
    ld a, b
    nop
    ld a, c
    nop
    ld l, [hl]
    ld [hl], h

jr_00e_6695:
    ld l, a
    ld [hl], l
    inc e
    ld e, $1d
    rra
    ld e, $1e
    rra
    rra
    nop
    nop
    ld bc, $1f02
    rra

jr_00e_66a5:
    rra
    rra
    jr nz, jr_00e_66a9

jr_00e_66a9:
    ld h, d
    nop
    inc l
    inc a
    ld h, e
    ld h, h
    rlca
    dec bc
    ld [$0f0c], sp
    inc de
    db $10
    inc d
    rla
    dec de
    jr jr_00e_66d7

    rra
    rra
    ld l, d
    rra
    add hl, bc
    dec c
    ld a, [bc]
    ld c, $11
    dec d
    ld [de], a
    ld d, $19
    dec e
    ld a, [de]
    ld e, $6b
    ld l, l
    ld l, h
    ld l, [hl]
    rra
    rra
    ld l, a
    rra
    rra
    rra
    inc b
    dec b

jr_00e_66d7:
    ld [hl], b
    ld [hl], d
    ld [hl], c
    ld [hl], e
    ld [hl], h
    db $76
    ld [hl], l
    ld [hl], a
    rra
    rra
    ld a, b
    rra
    nop
    nop
    ld a, c
    inc bc
    nop
    nop
    ld b, $00
    inc a
    ld h, b
    dec a
    ld h, c
    jr z, jr_00e_6729

    ld h, a
    nop
    ld sp, $683f
    ld l, c
    nop
    ld [hl], $00
    nop
    ld [hl+], a
    ld [hl-], a
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_6729:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00e_67ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    rlca
    nop
    jr nz, jr_00e_68a7

    ld d, $00

jr_00e_68a7:
    ld b, c
    dec bc
    inc h
    nop
    ld [hl], a
    ld c, [hl]
    dec a
    jr nz, jr_00e_68b0

jr_00e_68b0:
    nop
    dec c
    nop
    nop
    db $10
    dec c
    nop
    ld a, [bc]
    jr nz, jr_00e_68c7

    nop
    ld b, [hl]
    jr c, jr_00e_68cb

    nop
    rst $38
    jr c, jr_00e_68ce

    inc b
    ld [hl-], a
    jr c, jr_00e_68d2

    inc b

jr_00e_68c7:
    nop
    nop
    nop
    nop

jr_00e_68cb:
    nop
    nop
    nop

jr_00e_68ce:
    nop
    nop
    nop
    nop

jr_00e_68d2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    rlca
    ld a, [bc]
    rrca
    dec bc
    db $10
    inc d
    jr jr_00e_68fb

    add hl, de
    dec de
    rra
    inc e
    jr nz, jr_00e_690f

    daa
    inc h
    jr z, jr_00e_691b

    cpl
    inc l
    jr nc, jr_00e_68f8

    ld [$0905], sp
    inc c

jr_00e_68f8:
    ld de, $120d

jr_00e_68fb:
    ld d, $1a
    rla
    nop
    dec e
    ld hl, $221e
    dec h
    add hl, hl
    ld h, $2a
    dec l
    ld sp, $322e
    ld c, $13
    nop
    nop

jr_00e_690f:
    dec e
    ld hl, $3533
    inc [hl]
    ld [hl], $34
    ld [hl], $37
    add hl, sp
    jr c, jr_00e_6955

jr_00e_691b:
    dec sp
    dec a
    inc a
    ld a, $40
    ld b, d
    ld b, c
    ld b, e
    ld b, h
    ld b, d
    ld b, l
    ld b, e
    ld b, h
    ld b, [hl]
    ld b, l
    ld b, a
    ld c, b
    ld c, d
    ld c, c
    ld c, e
    ld c, h
    ld c, [hl]
    ld c, l
    ld c, a
    ld e, h
    ld e, [hl]
    ld e, l
    ld e, a
    ld h, b
    ld h, d
    ld h, c
    ld h, e
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, e
    ld l, c
    ld h, e
    ld h, a
    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld h, e
    ld l, l
    ld l, c
    ld l, e
    ld l, [hl]
    db $76
    ld l, a
    ld [hl], a
    ld h, h
    ld l, b

jr_00e_6955:
    ld h, l
    ld l, c
    ld l, d
    ld l, h
    ld l, e
    ld l, l
    nop
    nop
    ld l, [hl]
    ld [hl], c
    nop
    nop
    ld h, h
    ld l, b
    nop
    nop
    ld l, d
    ld l, h
    nop
    ld a, [hl]
    nop
    ld a, a
    ld a, e
    ld a, l
    ld a, h
    ld a, h
    ld a, l
    ld a, e
    ld a, h
    ld a, h
    ld a, [hl]
    nop
    ld a, a
    nop
    ld a, [hl]
    ld a, e
    ld a, a
    ld a, h
    ld a, l
    ld a, c
    ld a, h
    ld a, d
    ld a, c
    ld a, l
    ld a, d
    ld a, h
    ld a, e
    ld a, [hl]
    ld a, h
    ld a, a
    nop
    nop
    nop
    nop
    ld a, c
    nop
    ld a, c
    nop
    nop
    ld a, b
    nop
    ld a, c
    ld a, b
    nop
    ld a, c
    nop
    nop
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    nop
    ld a, c
    ld a, b
    nop
    nop
    nop
    ld a, b
    ld a, c
    ld a, c
    ld a, d
    ld a, d
    nop
    ld bc, $3f00
    ld bc, $3f00
    nop
    nop
    ld bc, $0200
    ld bc, $0200
    nop
    nop
    ccf
    nop
    nop
    ccf
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ccf
    ld [bc], a
    nop
    ccf
    nop
    ld c, $13
    nop
    ld bc, $130e
    ld bc, $6f00
    ld a, h
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], h
    ld [hl], d
    ld [hl], l
    db $76
    ld a, b
    ld [hl], a
    ld a, c
    nop
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, l
    nop
    ld a, [hl]
    ld a, a
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    ld l, l
    ld a, d
    ld l, [hl]
    ld a, e
    ld l, a
    ld a, h
    nop
    ld [hl], e
    nop
    nop
    ld a, d
    nop
    ld h, b
    ld h, d
    ld h, c
    ld h, e
    ld h, c
    ld h, e
    ld h, c
    ld h, e
    nop
    nop
    ld h, l
    ld h, [hl]
    nop
    nop
    ld h, a
    ld h, [hl]
    nop
    nop
    ld h, a
    ld l, b
    nop
    ld l, c
    nop
    ld l, d
    ld l, e
    ld l, c
    ld l, h
    ld l, d
    ld l, e
    nop
    ld l, h
    nop
    ld h, h
    ld h, h
    nop
    nop
    jr nz, jr_00e_6a69

    ld hl, $2435
    inc [hl]
    dec h
    dec [hl]
    inc h
    jr nc, jr_00e_6a63

    ld sp, $342b
    inc l
    dec [hl]
    inc h
    dec sp
    dec h
    inc a
    ld [hl+], a
    ld [hl-], a
    inc hl
    inc sp
    ld h, $36
    daa
    scf
    add hl, hl
    ld [hl-], a
    ld a, [hl+]
    inc sp
    dec l
    add hl, sp
    inc hl
    ld a, [hl-]
    ld a, [hl+]
    inc sp
    ld a, [hl+]
    inc sp
    ld h, $36
    daa
    scf
    dec hl
    dec sp
    inc l
    inc a

jr_00e_6a63:
    dec a
    dec a
    dec a
    dec a
    jr nz, jr_00e_6aa4

jr_00e_6a69:
    ld hl, $2b3c
    jr nc, @+$2e

    ld sp, $3020
    ld hl, $0731
    rla
    ld [$0b18], sp
    dec de
    inc c
    inc e
    add hl, bc
    add hl, de
    nop
    nop
    dec c
    dec e
    ld c, $1e
    ld [hl], b
    ld [hl], e
    ld [hl], c
    ld bc, $7976
    ld [bc], a
    ld a, d
    nop
    nop
    nop
    rrca
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, l
    nop
    nop
    rra
    inc de
    nop
    nop
    ld de, $0010
    rra
    db $10
    rra
    inc de
    ld de, $1212
    db $10

jr_00e_6aa4:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    ld [de], a
    nop
    nop
    ld [de], a
    inc de
    nop
    ld [de], a
    ld de, $1210
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc de
    ld de, $0000
    db $10
    ld [de], a
    nop
    ld [de], a
    inc de
    ld de, $1113
    db $10
    ld [de], a
    db $10
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    nop
    inc bc
    nop
    inc b
    inc d
    dec b
    dec d
    ld b, $16
    dec b
    dec d
    ld a, [bc]
    ld a, [de]
    ld [hl], d
    ld [hl], h
    dec a
    ld [hl], l
    ld [hl], a
    ld a, e
    ld a, b
    dec a
    dec a
    jr z, jr_00e_6b16

    jr c, jr_00e_6b28

    dec a
    jr z, jr_00e_6b2b

    dec a
    dec a
    jr z, jr_00e_6b2f

    dec a
    jr z, jr_00e_6b37

    dec a
    jr c, jr_00e_6b25

    jr z, jr_00e_6b37

    jr c, jr_00e_6b29

    jr z, @+$3a

    jr c, jr_00e_6b2d

    dec a
    dec a
    jr c, jr_00e_6b46

    dec a
    dec a
    ld h, b
    ld h, d
    ld h, c
    ld h, e
    ld h, h
    ld l, [hl]
    ld h, l
    ld l, a
    ld h, [hl]
    ld l, b
    ld h, a

jr_00e_6b16:
    ld l, c
    ld l, d
    ld l, h
    ld l, e
    ld l, l
    ld h, b
    ld h, d
    cpl
    ccf
    ld l, $3e
    ld h, l
    ld l, a
    ld [hl], c
    nop

jr_00e_6b25:
    ld [hl], d
    ld [hl], l
    nop

jr_00e_6b28:
    nop

jr_00e_6b29:
    ld a, b
    nop

jr_00e_6b2b:
    nop
    ld [hl], d

jr_00e_6b2d:
    ld [hl], b
    ld [hl], e

jr_00e_6b2f:
    dec bc
    inc c
    nop
    nop
    jr c, jr_00e_6b38

    inc bc
    inc b

jr_00e_6b37:
    inc b

jr_00e_6b38:
    nop
    dec b
    ld b, $04
    dec b
    dec b
    ld b, $00
    add hl, bc
    rlca
    ld [$280a], sp
    add hl, bc

jr_00e_6b46:
    ld a, [bc]
    ld [$0709], sp
    ld [$0101], sp
    ld [bc], a
    ld [bc], a
    dec c
    rrca
    ld c, $10
    ld de, $1213
    inc d
    dec d
    rla
    ld d, $18
    add hl, de
    dec de
    ld a, [de]
    inc e
    dec e
    rra
    ld e, $60
    ld h, c
    ld h, e
    ld h, d
    ld h, h
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, c
    ld l, b
    ld l, d
    nop
    ld l, e
    nop
    ld l, h
    nop
    ld h, a
    nop
    ld l, b
    ld l, c
    ld l, e
    ld l, d
    ld l, h
    nop
    nop
    ld h, a
    ld l, c
    ld l, b
    ld l, d
    nop
    ld l, l
    ld l, l
    nop
    ld l, [hl]
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], d
    ld [hl], l
    ld [hl], e
    db $76
    ld a, b
    ld l, [hl]
    ld a, c
    ld a, e
    ld [hl], b
    ld [hl], e
    ld a, h
    ld [hl], h
    db $76
    ld a, c
    ld [hl], a
    ld a, d
    ld a, e
    ld a, h
    ld [hl], c
    ld l, a
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    ld [hl], l
    ld a, b
    ld [hl], c
    ld [hl], h
    nop
    nop
    ld [hl], a
    ld a, d
    nop
    ld l, a
    ld [hl], c
    ld [hl], h
    ld l, a
    nop
    ld l, a
    ld l, a
    nop
    nop
    ld [hl], b
    ld [hl], e
    ld [hl], c
    ld [hl], h
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], e
    db $76
    ld [hl], h
    ld [hl], a
    ld a, c
    ld a, e
    ld a, d
    ld [hl], c
    ld a, h
    ld [hl], h
    ld [hl], h
    ld [hl], c
    ld a, h
    ld a, [hl]
    ld a, l
    ld a, a
    ld [hl], l
    ld a, [hl]
    db $76
    ld a, [hl]
    ld a, h
    ld [hl], l
    ld a, l
    ld a, a
    nop
    nop
    ld bc, $7102
    ld [hl], e
    ld a, c
    ld [hl], h
    inc b
    ld b, $05
    rlca
    ld [$0906], sp
    rlca
    ld [$090a], sp
    dec bc
    inc c
    db $10
    dec c
    ld de, $1014
    dec d
    ld de, $1814
    dec d
    add hl, de
    ld c, $12
    rrca
    inc de
    ld d, $12
    rla
    inc de
    ld d, $1a
    rla
    dec de
    inc e
    ld e, $1d
    rra
    ld h, b
    dec a
    ld h, c
    ld h, d
    ld h, [hl]
    ld h, l
    ld h, a
    ld l, b
    ld h, [hl]
    ld h, e
    ld h, a
    ld l, b
    ld h, h
    ld h, e
    ld h, a
    ld l, b
    dec a
    jr z, jr_00e_6c7d

    ld h, h
    jr c, jr_00e_6c45

    ld h, e
    ld h, h
    jr c, jr_00e_6c5e

    ld h, e
    jr z, jr_00e_6c91

    ld l, a
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], e
    ld [hl], d
    ld [hl], h
    jr c, jr_00e_6c96

    ld l, c
    ld h, h
    ld h, h
    ld h, e
    ld h, e
    ld h, h
    ld h, h
    ld l, d
    ld h, e
    ld h, h
    ld h, [hl]
    ld h, a
    ld l, d
    ld h, [hl]
    ld l, b
    nop
    ld h, a
    ld l, b
    jr c, jr_00e_6c7e

    ld l, c
    ld h, h
    ld l, l
    ld l, a

jr_00e_6c45:
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], e
    ld [hl], d
    ld [hl], h
    ld l, l
    ld l, a
    ld l, [hl]
    ld [hl], a
    ld a, d
    ld a, e
    ld [hl], d
    ld [hl], h
    ld d, $12
    ld l, e
    ld l, h
    ld d, $12
    ld l, e
    inc bc
    inc h
    inc [hl]
    dec h

jr_00e_6c5e:
    dec [hl]
    nop
    nop
    nop
    ld h, a
    nop
    nop
    ld l, b
    nop
    ld h, a
    ld l, b
    nop
    nop
    nop
    ld h, a
    ld h, a
    ld l, b
    nop
    ld h, a
    nop
    nop
    ld l, b
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld l, b
    ld l, l
    ld a, b

jr_00e_6c7d:
    ld l, [hl]

jr_00e_6c7e:
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_6c91:
    nop
    nop
    nop
    nop
    nop

jr_00e_6c96:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$04ff], sp
    ld de, $0f0c
    nop
    ld d, b
    ld bc, $002b
    ld [hl-], a
    jr jr_00e_6cc9

    nop
    ld [hl], d
    ld d, $3f
    nop
    ld a, [bc]
    ld [$000c], sp
    nop
    jr nz, jr_00e_6cc2

    nop
    nop
    jr z, jr_00e_6cc6

    ld bc, $1814
    inc c
    ld bc, $3814
    inc c

jr_00e_6cc2:
    ld bc, $00ff
    nop

jr_00e_6cc6:
    nop
    nop
    nop

jr_00e_6cc9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc c
    ld c, $0d
    rrca
    ld [de], a
    inc d
    inc de
    dec d
    ld d, $18
    rla
    add hl, de
    ld a, [de]
    inc e
    dec de
    dec e
    db $10
    ld e, [hl]
    dec c
    rrca
    ld e, [hl]
    ld de, $1513
    ld e, [hl]
    ld e, [hl]
    dec c
    rrca
    ld e, [hl]
    ld e, [hl]
    inc de
    dec d
    ld e, [hl]
    ld e, [hl]
    dec c
    rrca
    ld e, [hl]
    ld e, [hl]
    inc de
    dec d
    ld e, [hl]
    ld de, $1513
    ld b, b
    ld b, h
    ld b, c
    ld b, l
    ld c, b
    ld c, h
    ld c, c
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, a
    ld c, d
    ld c, [hl]
    ld c, e
    ld c, a
    db $10
    ld e, [hl]
    ld b, c
    ld b, l
    ld e, [hl]
    ld de, $4d49
    ld e, [hl]
    ld e, [hl]
    ld b, c
    ld b, l
    ld e, [hl]
    ld e, [hl]
    ld c, c
    ld c, l
    db $10
    ld e, [hl]
    ld b, c
    ld b, l
    ld e, [hl]
    ld de, $4d49
    ld e, [hl]
    ld e, [hl]
    ld b, c
    ld b, l
    ld e, [hl]
    ld e, [hl]
    ld c, c
    ld c, l
    ld b, d
    ld b, [hl]
    ld e, $47
    ld c, d
    ld c, [hl]
    inc b
    ld c, a
    ld b, d
    ld b, [hl]
    ld e, h
    ld b, a
    ld c, d
    ld c, [hl]
    ld c, e
    ld e, l
    rlca
    dec sp
    ld [$3e3c], sp
    dec sp
    ccf
    inc a
    ld a, $09
    ccf
    ld a, [bc]
    dec bc
    dec a
    ccf
    inc a
    ld h, b
    ld h, h
    ld h, c
    ld h, l
    ld h, d
    ld h, [hl]
    ld h, e
    ld h, a
    ld l, b
    ld l, h
    ld l, c
    ld l, l
    ld l, d
    ld l, [hl]
    ld l, e
    ld l, a
    ld [hl], b
    ld [hl], h
    ld [hl], c
    ld [hl], l
    ld [hl], d
    db $76
    ld [hl], e
    ld [hl], a
    ld a, b
    ld a, h
    ld a, c
    ld a, l
    ld a, d
    ld a, [hl]
    ld a, e
    ld a, a
    ld h, b
    ld h, h
    add hl, sp
    ld a, [hl-]
    dec [hl]
    scf
    ld [hl], $38
    inc bc
    inc bc
    inc bc
    jr nc, jr_00e_6d8f

    inc bc
    jr nc, jr_00e_6d92

jr_00e_6d8f:
    inc bc
    inc bc
    inc bc

jr_00e_6d92:
    ld sp, $0303
    ld [hl-], a
    inc bc
    inc sp
    inc bc
    inc [hl]
    jr nc, jr_00e_6dcf

    inc bc
    inc [hl]
    inc bc
    inc sp
    inc bc
    inc [hl]
    ld sp, $0000
    ld h, $29
    nop
    nop
    dec hl
    dec l
    nop
    nop
    ld l, $00
    nop
    nop
    cpl
    nop
    jr nz, jr_00e_6dd7

    ld hl, $2423
    daa
    dec h
    jr z, jr_00e_6de6

    inc l
    inc h
    daa
    add hl, hl
    dec hl
    ld a, [hl+]
    inc l
    dec l
    ld l, $00
    inc l
    nop
    nop
    ld hl, $0523
    dec b
    ld b, $06

jr_00e_6dcf:
    ld a, $09
    ccf
    ld a, [bc]
    ld e, a
    ld e, a
    ld e, a
    ld e, a

jr_00e_6dd7:
    jr nz, jr_00e_6dfb

    ld hl, $2423
    ld h, $25
    daa
    add hl, hl
    dec hl
    jr nz, @+$24

    inc h
    cpl
    inc h

jr_00e_6de6:
    ld h, $30
    ld [hl-], a
    ld sp, $3433
    ld [hl], $35
    scf
    ld [hl], h
    db $76
    ld [hl], l
    ld [hl], a
    ld a, b
    ld a, d
    ld a, c
    ld a, e
    jr z, jr_00e_6e23

    jr nz, jr_00e_6e1d

jr_00e_6dfb:
    inc l
    ld l, $2d
    ld h, $38
    ld a, [hl-]
    add hl, sp
    dec sp
    inc a
    ld a, $3d
    ccf
    jr z, jr_00e_6e33

    add hl, hl
    dec hl
    inc l
    ld l, $2d
    cpl
    ld h, b
    ld h, d
    ld h, c
    ld h, e
    ld [hl], b
    ld [hl], d
    ld [hl], c
    ld [hl], e
    ld h, h
    ld h, a
    ld h, l
    ld l, b
    ld l, d
    ld l, l

jr_00e_6e1d:
    ld l, e
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld h, l
    ld l, b

jr_00e_6e23:
    ld l, h
    ld l, a
    ld l, e
    ld l, [hl]
    ld bc, $0201
    ld [bc], a
    ld a, [de]
    dec c
    dec de
    jr nz, jr_00e_6e3e

    jr jr_00e_6e3c

    add hl, de

jr_00e_6e33:
    ld a, [de]
    inc bc
    dec de
    ld hl, $1809
    ld a, [bc]
    add hl, de
    add hl, bc

jr_00e_6e3c:
    rrca
    ld a, [bc]

jr_00e_6e3e:
    dec h
    rrca
    jr jr_00e_6e67

    add hl, de
    ld a, [de]
    inc bc
    dec de
    ld hl, $0303
    ld hl, $4020
    ld b, h
    inc e
    dec e
    ld c, b
    ld c, h
    ld e, $1f
    inc d
    dec d
    ld b, c
    ld b, l
    ld d, $17
    ld b, e
    ld b, a
    inc hl
    ld [hl+], a
    ld de, $2222
    inc h
    ld [hl+], a
    inc de
    db $10
    ld b, $11
    inc bc

jr_00e_6e67:
    rlca
    ld b, $0f
    ld [hl+], a
    inc c
    inc b
    ld [$1022], sp
    inc b
    ld de, $0422
    dec b
    dec c
    ld c, $04
    ld [de], a
    ld [hl+], a
    inc de
    dec b
    rlca
    ld [$0503], sp
    ld [de], a
    ld [$0813], sp
    inc bc
    ld [$2603], sp
    jr z, jr_00e_6eb1

    add hl, hl
    ld a, [hl+]
    inc l
    dec hl
    dec l
    ld l, $3d
    cpl
    ld a, $3f
    dec bc
    ld e, a
    ld e, a
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    ld [hl], $31
    inc [hl]
    scf
    ld [hl-], a
    dec sp
    inc sp
    inc a
    ld e, a
    ld e, a
    ld e, a
    dec [hl]
    jr nc, jr_00e_6f0c

    jr nc, @+$61

    jr nc, jr_00e_6ee9

jr_00e_6eb1:
    ld a, [hl-]
    add hl, sp
    ld [hl], $5f
    ld e, a
    ld e, a
    ld a, [hl-]
    ld [hl-], a
    ld e, a
    ld e, a
    ld e, a
    ld sp, $315f
    ld [hl-], a
    ld [hl-], a
    ld e, a
    ld e, a
    ld [hl], $5f
    ld e, a
    ld e, a
    jr nc, jr_00e_6efa

    jr nc, jr_00e_6efc

    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    db $76
    ld e, a
    ld h, [hl]
    db $76
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, c
    ld [hl], b
    ld h, d
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld h, d
    ld h, d
    ld l, b
    ld l, c
    ld l, c
    ld a, c
    ld e, a
    ld a, b
    ld a, b
    ld l, b
    ld h, e
    ld [hl], e

jr_00e_6ee9:
    ld h, e
    ld [hl], e
    ld h, h
    ld [hl], e
    ld h, l
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld h, l
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, e
    ld [hl], e
    ld h, e

jr_00e_6efa:
    ld [hl], e
    ld l, d

jr_00e_6efc:
    ld l, e
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, d
    ld a, d
    ld a, e
    ld a, e
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    nop

jr_00e_6f0c:
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    nop
    nop
    nop
    inc b
    nop
    nop
    inc bc
    nop
    dec b
    ld b, $07
    ld [$060d], sp
    ld c, $0c
    dec b
    add hl, bc
    rlca
    ld a, [bc]
    dec b
    ld b, $07
    ld [$0605], sp
    dec bc
    inc c
    dec b
    ld b, $0f
    inc d
    ld [de], a
    dec d
    inc de
    ld d, $00
    nop
    rla
    ld a, [de]
    jr jr_00e_6f5c

    add hl, de
    inc e
    rla
    ld a, [de]
    jr jr_00e_6f62

    jr z, jr_00e_6f73

    add hl, hl
    dec hl
    inc l
    ld l, $2d
    cpl
    jr nz, jr_00e_6f95

    ld hl, $2245
    ld b, [hl]
    inc hl
    ld b, a
    ld [hl+], a
    ld b, [hl]
    rra
    ld b, a
    ld c, b

jr_00e_6f5c:
    inc h
    ld c, c
    dec h
    ld c, d
    ld h, $4b

jr_00e_6f62:
    daa
    db $10
    ld e, [hl]
    ld hl, $3045
    inc sp
    ld sp, $3134
    inc [hl]
    ld [hl-], a
    dec [hl]
    ld e, a
    ld e, a
    ld [hl], $5f

jr_00e_6f73:
    ld [hl], $5f
    scf
    ld e, a
    jr c, jr_00e_6fb4

    add hl, sp
    nop
    ld a, [hl-]
    inc a
    ld e, a
    ld e, a
    dec a
    ld e, a
    ld a, $5f
    ccf
    ld e, a
    ld e, a
    ld e, a
    inc l
    ld a, l
    dec l
    ld a, a
    ld a, [hl]
    ld l, $7f
    cpl
    ld l, e
    ld h, a
    ld l, d
    nop
    ld h, a
    ld h, d

jr_00e_6f95:
    nop
    ld l, b
    nop
    ld l, c
    nop
    ld l, d
    nop
    nop
    ld l, b
    nop
    ld l, e
    ld h, a
    ld l, d
    ld l, d
    ld l, e
    ld l, h
    ld l, d
    nop
    ld l, c
    ld l, l
    ld h, b
    ld h, a
    ld h, c
    ld l, c
    nop
    ld l, d
    nop
    ld h, d
    ld h, h
    ld h, l
    ld h, e

jr_00e_6fb4:
    ld h, [hl]
    ld h, e
    nop
    ld l, b
    nop
    ld l, c
    nop
    ld l, e
    ld l, e
    ld l, d
    ld h, d
    ld h, b
    ld h, a
    ld h, c
    ld l, c
    nop
    ld l, d
    nop
    nop
    nop
    ld h, d
    ld h, d
    ld h, e
    nop
    ld h, h
    ld h, a
    ld h, e
    ld l, d
    ld h, e
    ld l, b
    nop
    ld l, c
    nop
    ld l, d
    nop
    nop
    nop
    nop
    ld h, d
    nop
    ld h, e
    ld h, d
    ld h, e
    ld l, d
    nop
    nop
    nop
    ld h, l
    nop
    ld h, [hl]
    nop
    nop
    ld h, d
    ld h, d
    ld l, h
    ld h, e
    ld l, c
    ld h, a
    ld l, d
    ld l, d
    ld l, b
    ld l, d
    ld l, c
    nop
    ld h, d
    ld h, b
    nop
    ld h, c
    nop
    nop
    nop
    ld l, [hl]
    ld [hl], b
    ld l, a
    ld [hl], c
    ld [hl], d
    ld [hl], h
    ld [hl], e
    ld [hl], l
    db $76
    ld a, b
    ld [hl], a
    ld a, c
    ld a, d
    nop
    ld a, e
    ld a, h
    nop
    nop
    ld l, a
    ld [hl], c
    ld l, [hl]
    nop
    ld l, a
    ld [hl], c
    nop
    ld [hl], b
    ld l, a
    ld [hl], c
    ld a, d
    ld [hl], b
    ld a, e
    ld a, h
    dec b
    ld b, $0b
    inc c
    dec b
    ld b, $0f
    inc d
    dec e
    dec e
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    rst $38
    jr jr_00e_70b3

    nop
    nop
    rst $38
    rst $38
    ld d, d
    dec d
    dec l
    nop
    dec d
    ld a, [hl-]
    inc c
    jr nz, jr_00e_70d9

    rrca
    dec e
    jr nz, jr_00e_70dd

    rrca
    dec e
    jr nz, jr_00e_70c4

    jr z, jr_00e_70be

    inc bc

jr_00e_70b3:
    inc a
    jr nz, jr_00e_70c2

    inc bc
    jr z, jr_00e_70d9

    inc c
    inc bc
    inc a
    jr jr_00e_70ca

jr_00e_70be:
    ld [bc], a
    jr z, jr_00e_70d9

    inc c

jr_00e_70c2:
    ld [bc], a
    ld a, [bc]

jr_00e_70c4:
    jr @+$0e

    ld [bc], a
    nop
    jr jr_00e_70d6

jr_00e_70ca:
    inc bc
    inc a
    ld [$040c], sp
    ld [hl-], a
    ld [$020c], sp
    rst $38
    nop
    nop

jr_00e_70d6:
    nop
    db $dd
    ld [hl], b

jr_00e_70d9:
    ld sp, $8a71
    ld [hl], c

jr_00e_70dd:
    ret nz

    nop
    ld bc, $0188
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
    add b
    nop
    add b
    nop
    cp l
    nop
    rla
    jr @+$1b

    ld bc, $a700
    nop
    ld bc, $1100
    ld [de], a
    ldh a, [rNR14]
    dec d
    inc de
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $01e2
    nop
    ld bc, $a000
    ld bc, $8000
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    and b
    nop
    ld bc, $0080
    add b
    nop
    adc h
    nop
    ld bc, $8000
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $0180
    ld hl, sp+$01
    rla
    ld bc, $0100
    jp $0001


    ld bc, $8000
    nop
    add b
    nop
    ret nc

    ld de, $0001
    add b
    nop
    add e
    nop
    ld bc, $8600
    nop
    ld bc, $8c00
    nop
    ld bc, $8000
    nop
    add b
    nop
    add b
    nop
    and b
    nop
    ld bc, $018c
    ld de, $8000
    nop
    add c
    nop
    ld bc, $01a0
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    sub b
    nop
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0188
    nop
    add b
    nop
    add e
    nop
    ld bc, $8000
    ld bc, $0180
    adc h
    ld bc, $0100
    add b
    ld bc, $0180
    adc b
    ld bc, $8000
    nop
    add a
    nop
    rla
    ld de, $b901
    ld bc, $1016
    ld bc, $c817
    ld d, $01
    nop
    and b
    nop
    ld bc, $01f8
    ld [de], a
    jr @+$16

    ld bc, $0188
    nop
    adc d
    nop
    ld bc, $8000
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret z

    nop
    ld bc, $8000
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    db $eb
    ld [hl], c
    ld b, l
    ld [hl], d
    xor [hl]
    ld [hl], d
    ret nz

    nop
    db $10
    ret z

    db $10
    rrca
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
    add b
    nop
    add b
    nop
    cp a
    nop
    add hl, de
    ld a, [de]
    dec de
    rrca
    stop
    and a
    nop
    ld [$1900], sp
    ld a, [de]
    ldh a, [rNR32]
    dec e
    dec de
    nop
    add b
    nop
    add b
    nop
    cp d
    nop
    rlca
    inc b
    nop
    rrca
    ld [c], a
    rrca
    inc b
    rrca
    inc b
    or b
    rrca
    inc b
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
    nop
    ret nz

    nop
    ld bc, $0180
    and b
    ld bc, $8010
    nop
    add b
    nop
    adc h
    nop
    stop
    adc b
    nop
    ld bc, $0180
    add b
    nop
    add d
    nop
    ld bc, $0183
    db $10
    ld de, $1188
    db $10
    ld sp, hl
    db $10
    add hl, de
    ld de, $1100
    db $10
    rst $10
    db $10
    ld bc, $0100
    stop
    add b
    nop
    add b
    nop
    ret nc

    add hl, de
    stop
    add b
    nop
    add e
    nop
    stop
    add [hl]
    nop
    ld [$8c00], sp
    nop
    add hl, bc
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh [rTAC], a
    ld bc, $9c10
    db $10
    ld [de], a
    add hl, de
    nop
    sub h
    nop
    ld bc, $9100
    nop
    ld bc, $e010
    db $10
    rrca
    nop
    ldh [rP1], a
    ld bc, $8000
    nop
    add b
    nop
    nop
    pop af
    nop
    rlca
    inc b
    db $10
    rrca
    sub b
    rrca
    db $10
    and d
    db $10
    rrca
    db $10
    add e
    db $10
    rrca
    db $10
    cp a
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    add sp, $0f
    db $10
    rrca
    inc b
    sub b
    inc b
    nop
    add e
    nop
    rrca
    nop
    add b
    db $10
    add d
    rrca
    db $10
    adc h
    stop
    db $10
    add b
    db $10
    add b
    db $10
    adc b
    stop
    add b
    nop
    add l
    nop
    add hl, de
    db $10
    xor e
    db $10
    jr jr_00e_72fd

    inc d
    add hl, de
    reti


    jr jr_00e_7301

    db $10
    inc bc
    nop
    and h
    nop
    db $10
    inc d
    ret c

    db $10
    ld a, [de]
    inc e

jr_00e_72fd:
    db $10
    adc b
    stop

jr_00e_7301:
    adc d
    nop
    stop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret c

    nop
    db $10
    ld [$0080], sp
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    ld [hl+], a
    ld [hl], e
    ld c, h
    ld [hl], e
    ld a, l
    ld [hl], e
    ret c

    ld [bc], a
    nop
    ld bc, $d800
    ld [bc], a
    nop
    ld bc, $c600
    ld [bc], a
    nop
    ld bc, $e600
    nop
    ld [bc], a
    nop
    ld bc, $ec00
    nop
    ld [bc], a
    nop
    ld bc, $8c00
    nop
    inc bc
    nop
    adc l
    nop
    ld [bc], a
    nop
    ld bc, $0087
    inc bc
    ld [bc], a
    ld bc, $8000
    nop
    and $00
    ld [bc], a
    nop
    ld bc, $e600
    nop
    ld [bc], a
    nop
    ld bc, $fa00
    nop
    inc bc
    ld [bc], a
    ld bc, $0003
    ld sp, hl
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    ld a, [$0102]
    ld [bc], a
    ld bc, $0003
    cp h
    nop
    ld [bc], a
    ld bc, $0003
    cp [hl]
    nop
    ld [bc], a
    nop
    ld bc, $0003
    nop
    rst $30
    nop
    inc bc
    ld [bc], a
    nop
    ld bc, $0003
    rst $38
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0003
    adc [hl]
    inc bc
    ld [bc], a
    ld bc, $9803
    inc bc
    nop
    inc bc
    sbc c
    inc bc
    nop
    inc bc
    nop
    or a
    nop
    ld [bc], a
    nop
    ld bc, $0102
    or a
    nop
    ld [bc], a
    nop
    ld bc, $0102
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    adc d
    jp nz, $8073

    adc b
    rra
    ld a, b
    xor d
    nop
    ld [$070f], sp
    cp a
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld b, $07
    inc b
    rst $38
    dec bc
    inc c
    jr jr_00e_73f3

    jr z, jr_00e_7405

    jr z, jr_00e_7407

    cp $35
    scf
    ld [hl], $3f
    dec de
    ld a, [de]
    inc bc
    xor d
    nop
    ld [$070f], sp
    cp a
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld b, $07
    inc b
    rst $38
    dec bc
    inc c
    ld [$080f], sp

jr_00e_73f3:
    rrca
    jr @+$21

    rst $38
    dec d
    scf
    ld [hl], $37
    inc sp
    ld [hl-], a
    inc hl
    inc sp
    add b
    nop
    add b
    nop
    add b
    nop

jr_00e_7405:
    xor a
    nop

jr_00e_7407:
    ld h, b
    ldh a, [$90]
    rst $28
    sbc a
    rst $38
    cp $c1
    sbc $e1
    rst $18
    db $e4
    cp a
    call nz, $ffff
    nop
    db $fd
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $fd
    ld b, $ff
    inc bc
    rst $38
    nop
    cp $01
    cp $fc
    add e
    db $fc
    ld b, e
    rst $38
    ld a, a
    ret nz

    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    inc sp
    ld a, a
    ld c, h
    db $76
    ld c, a
    rst $38
    rst $38
    ldh a, [$f7]
    ld hl, sp-$09
    ld sp, hl
    rst $28
    pop af
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld a, a
    add c
    ccf
    ret nz

    ccf
    ret nz

    ccf
    cp $fe
    ld e, a
    pop hl
    rst $38
    pop bc
    ld h, c
    ld e, a
    ccf
    xor d
    ld de, $0f1f
    rlca
    rst $38
    ld [bc], a
    inc bc
    dec b
    ld b, $07
    inc b
    dec bc
    inc c
    rst $38
    add hl, bc
    ld c, $08
    rrca
    ld [$1e1f], sp
    rra
    cp $1d
    dec de
    rrca
    jr jr_00e_7487

    inc c
    rlca
    xor d
    nop
    ld [$070f], sp
    cp a
    inc bc
    ld [bc], a
    inc bc

jr_00e_7487:
    dec b
    ld b, $07
    inc b
    rst $38
    set 5, h
    ld l, b
    rst $28
    jr jr_00e_74b1

    ld [$fe0f], sp
    dec b
    rlca
    ld b, $07
    inc bc
    ld [bc], a
    inc bc
    add b
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    ld h, c
    di
    sub d
    rst $38
    xor $9f
    rst $38
    ldh [$ef], a
    ldh a, [$ef]
    ld a, [c]
    rst $38

jr_00e_74b1:
    rst $18
    ld [c], a
    rst $38
    nop
    cp $01
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    cp $03
    ld a, a
    add c
    ld a, a
    add b
    cp $ff
    ldh [$de], a
    ld sp, $11fe
    rst $38
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ld h, b
    ldh a, [$90]
    or b
    ret nc

    rst $38
    ld sp, $1ff9
    rst $38
    sbc [hl]
    rst $38
    db $ec
    sbc [hl]
    rst $38
    ld hl, sp+$08
    or h
    ld c, h
    db $fc
    inc h
    db $fc
    inc h
    rst $38

jr_00e_74ea:
    or h
    ld l, h
    ld hl, sp-$38
    adc b
    ld a, b
    jr c, jr_00e_74ea

    cp $7c
    call nz, $84fc
    call nz, Call_00e_78bc
    add b
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    add b
    ld b, b
    ret nz

    rst $38
    ld b, h
    db $e4
    cp h
    ld a, h
    ld hl, sp+$3c
    ldh a, [$38]
    rst $38
    ld hl, sp+$08
    ld l, h
    sub h
    db $fc
    inc c
    db $fc
    inc c
    rst $28
    ld l, h
    sbc h
    ld hl, sp-$18
    jr @-$6e

    ld [hl], b
    cp $20
    ldh [$30], a
    ret nc

    ldh a, [rNR10]
    ldh [$aa], a
    inc b
    rlca
    inc bc
    ld bc, $02ff
    inc bc
    dec b
    ld b, $07
    inc b
    dec bc
    inc c
    rst $38
    ld [$080f], sp
    rrca
    jr jr_00e_755b

    ld h, h
    rst $20
    add sp, -$3e
    db $e3
    ld bc, $aa00
    nop
    ld [$070f], sp
    cp a
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld b, $07
    inc b
    rst $38
    dec bc
    inc c
    ld [$480f], sp
    ld l, a
    ld l, b
    ld l, a
    cp $6d

jr_00e_755b:
    ld l, a
    ld [hl], $37
    inc bc
    ld [bc], a
    inc bc
    add b
    nop
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
    ld b, b
    ret nz

    ld [hl+], a
    ld a, [c]
    ld e, $fe
    call c, $ff7e
    ld hl, sp+$5c
    ld hl, sp+$08
    call c, $fc24
    inc d
    rst $38
    db $fc
    inc d
    call nc, $f83c
    add sp, -$38

jr_00e_7586:
    jr c, jr_00e_7586

    db $10
    ldh a, [$38]
    add sp, -$08
    ret z

    ld hl, sp-$80
    nop
    adc b
    nop
    ld bc, $018b
    rra
    daa
    add hl, sp
    cp $47
    ld a, c
    ld b, [hl]
    ld a, c
    ld b, b
    ld a, a
    ccf
    add b
    nop
    add b
    nop
    adc e
    ld bc, $4f3f
    ld [hl], c
    cp $8f
    pop af
    adc h
    di
    add c
    rst $38
    ld a, [hl]
    add b
    nop
    add d
    nop
    ld bc, $01af
    rra
    ld l, a
    ld [hl], c
    adc a
    pop af
    cp $8f
    pop af
    add l
    ei
    add e
    rst $38
    ld a, h
    add b
    nop
    and b
    nop
    ld bc, $0fbf
    scf
    add hl, sp
    ld e, a
    ld h, c
    ld e, l
    ld h, e
    cp $8e
    di
    add e
    cp $87
    cp $79
    add b
    nop
    adc b
    nop
    ld bc, $01af
    rra
    ld l, a
    ld [hl], c
    adc a
    pop af
    cp $8e
    pop af
    add l
    ei
    add [hl]
    cp $78
    add b
    nop
    add b
    nop
    xor a
    ld bc, $3b07
    dec a
    ld c, a
    ld [hl], c
    cp $8f
    pop af
    add [hl]
    ld sp, hl
    add c
    rst $38
    ld a, [hl]
    adc e
    nop
    ld bc, $0302
    rst $38
    inc bc
    ld [bc], a
    dec b
    ld b, $07
    dec b
    rlca
    inc b
    rst $38
    rlca
    dec b
    rlca
    inc b
    dec b
    ld b, $03
    ld [bc], a
    jp c, $0302

    ld [bc], a
    inc bc
    nop
    cp a
    rrca
    scf
    jr c, jr_00e_7683

    ld h, b
    ld a, a
    ld b, b
    rst $38
    cp a
    ret nz

    rst $38
    add b
    ld [hl], a
    adc [hl]
    ld a, a
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    or $09
    ei
    dec b
    cp $ff
    ld b, $7f
    adc h
    cp [hl]
    jp $bfff


    rrca
    scf
    jr c, jr_00e_76a5

    ld h, b
    ld a, a
    ld b, b
    rst $38
    cp a
    ret nz

    ei
    add [hl]
    ld a, a
    add h
    ld a, a
    add [hl]
    rst $38
    rst $38
    nop
    rst $38
    nop
    or $09
    ei
    dec b
    cp $ff
    ld b, $7f
    adc h
    cp [hl]
    jp $afff


    nop
    rlca
    dec de
    inc e
    cpl
    jr nc, @+$01

    ld e, a
    ld h, b
    ld a, a
    ld b, b
    cp [hl]
    pop bc
    rst $38
    add c
    rst $38
    ld a, a
    add c
    rst $38
    nop
    rst $30
    ld [$847b], sp
    cp $7f
    add h
    cp l
    adc $de
    db $e3

jr_00e_7683:
    ccf
    add d
    nop
    rra
    rst $38
    ld l, a

jr_00e_7689:
    ld [hl], b
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
    rst $38
    nop
    rst $38
    nop
    cp $ff
    nop
    adc $31
    di
    inc e
    rst $38
    adc e
    nop
    rra
    ld l, a

jr_00e_76a5:
    ld [hl], b
    rst $38
    cp a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
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
    cp $df
    jr nz, jr_00e_7689

    inc sp
    and e
    ld a, h
    rst $18
    xor a
    nop
    rrca
    scf
    jr c, @+$61

    ld h, b
    rst $38
    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    cp $e3
    sbc h
    cp c
    adc $5c
    ld h, a
    ccf
    adc e
    nop
    rlca
    dec de
    inc e
    rst $38
    cpl
    jr nc, jr_00e_7749

    ld h, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$847b], sp
    cp $7f
    add h
    cp a
    call z, Call_00e_625f
    ccf
    xor a
    nop
    ld a, a
    cp [hl]
    pop bc
    rst $38
    nop
    rst $38

jr_00e_7708:
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    sbc b
    rst $38
    adc b
    rst $38

jr_00e_7711:
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    ld b, b
    cp $01
    cp $bc
    ld h, a
    db $fc
    rst $28

jr_00e_771e:
    rra
    dec de
    rra
    cp a
    add b
    ld h, b
    ldh [$d0], a
    jr nc, @-$0e

    db $10

jr_00e_7729:
    rst $38
    add sp, $18
    ld hl, sp+$08
    ld hl, sp+$68
    ld hl, sp+$08

jr_00e_7732:
    rst $30
    add sp, -$68
    ret nc

    jr nc, jr_00e_7708

    ldh a, [$50]
    cp $e0
    jr nz, jr_00e_771e

    ld h, b

jr_00e_773f:
    jr nc, jr_00e_7711

    ldh a, [$bf]
    add b
    ld h, b
    ldh [$d0], a
    jr nc, @-$0e

jr_00e_7749:
    db $10
    rst $38
    add sp, $18
    cp b
    ld l, b
    ld hl, sp+$48
    ld hl, sp+$68
    rst $30
    add sp, -$68
    ret nc

    jr nc, jr_00e_7729

    ldh a, [$50]
    cp $e0
    jr nz, jr_00e_773f

    ld h, b
    jr nc, jr_00e_7732

    ldh a, [$af]
    nop
    ret nz

    or b
    ld [hl], b
    add sp, $18
    rst $38
    ld hl, sp+$08
    db $f4
    inc c
    call c, $fcb4
    inc h
    rst $38
    db $fc
    or h
    db $fc
    inc b
    db $f4
    ld c, h
    add sp, $18
    sbc $18

jr_00e_777e:
    add sp, -$08
    ld [hl], b
    sub b
    ldh a, [$82]
    nop
    ldh [rIE], a
    ret c

    jr c, jr_00e_777e

    inc c
    db $fc
    inc b
    ld_long a, $ff06
    cp $02
    ld l, [hl]
    jp c, $92fe

    cp $da
    cp $fa
    ld b, $f2
    xor [hl]
    rst $00
    ld a, c

jr_00e_779f:
    rst $38
    adc e
    nop
    add b
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, @-$16

    jr jr_00e_779f

    inc c
    db $fc
    inc b
    rst $38
    cp $02
    cp $02
    ld l, [hl]
    jp c, $92fe

    cp $fa
    sbc $f4
    inc c
    xor [hl]
    ld a, [c]
    cp $af
    nop
    ret nz

    or b
    ld [hl], b
    add sp, $18
    rst $38
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    rst $38
    cp $02
    ld l, [hl]
    jp c, $92fe

    ld a, [$fede]
    db $fc
    inc b
    db $e4
    inc a
    jr @-$06

    ldh [$8b], a
    nop
    ldh [$d8], a
    jr c, @+$01

    db $f4
    inc c
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    rst $38
    ld l, [hl]
    jp c, $92fe

    cp $da
    ld a, [$fe06]

jr_00e_77f8:
    db $fc
    inc h
    ld l, h
    sub h
    sbc h
    db $f4

Jump_00e_77fe:
    ld hl, sp-$75
    nop
    ret nz

    and b
    ld h, b
    rst $38
    ret nc

    jr nc, jr_00e_77f8

    db $10
    add sp, $18
    ld hl, sp+$08
    rst $38
    db $fc
    inc c
    ld a, [$fd0e]
    dec bc
    db $fd
    dec bc
    cp $7d
    adc e
    xor c
    rst $18
    ld l, d
    sbc [hl]
    db $fc
    nop
    adc e
    nop
    add b
    ld b, b
    ret nz

    rst $38
    jr nz, @-$1e

    sub h
    ld [hl], h
    call z, Call_00e_643c
    sbc h
    rst $38
    inc [hl]
    call z, $e49c

jr_00e_7832:
    ld c, h
    ld [hl], h
    inc h
    inc a
    add sp, $14
    inc e
    ld [$8b00], sp
    nop
    ld [$1c14], sp
    rst $38
    inc h
    inc a
    ld c, h
    ld [hl], h
    sbc h
    db $e4
    inc [hl]
    call z, Call_00e_64ff
    sbc h
    call z, $943c
    ld [hl], h
    jr nz, jr_00e_7832

    add sp, $40
    ret nz

    add b
    nop
    add d
    nop
    ld bc, $22ff
    inc hl
    inc [hl]
    scf
    add hl, hl
    ld a, $23
    inc a
    rst $38
    ld [hl], $29
    inc a
    inc hl
    add hl, hl
    scf
    ld [hl+], a
    ld a, $e8
    inc d
    inc e
    ld [$8b00], sp
    nop
    ld [$1c14], sp
    rst $38
    ld [hl+], a
    ld a, $29
    scf
    inc a
    inc hl
    ld [hl], $29

jr_00e_787f:
    rst $38
    inc hl
    inc a
    add hl, hl
    ld a, $34
    scf
    ld [hl+], a
    inc hl
    and b
    ld bc, $8200
    nop
    ld a, b
    rst $38
    or h
    call z, $847c
    ld a, h
    add h
    db $fc
    inc b
    rst $38
    cp b
    ld c, b
    or b
    ld [hl], b
    call c, $fa2c
    ld b, $ff
    cp $02
    sbc $22
    ld a, [$dc26]
    inc a
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_00e_78c1

    ldh a, [rIE]
    adc b
    ld a, b
    jr c, jr_00e_787f

    ld hl, sp+$08
    db $fc
    inc e
    rst $38

Call_00e_78bc:
    xor [hl]
    ld [hl], d
    ld d, d
    xor $62

jr_00e_78c1:
    sbc $a2
    sbc $fa
    call nz, $c8bc
    cp b
    ld [hl], b
    nop
    add b
    nop
    cp a
    rst $38
    ld a, [hl]
    add c
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
    ld de, $ffff
    ld de, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    dec a
    jp nz, $f708

    inc hl
    call c, $0dff
    ld a, [c]
    ldh [$1f], a
    ld_long a, $ff05
    ldh a, [rIE]
    ld l, a
    sbc b
    sbc a
    ld l, b
    ld a, [bc]
    db $fd
    ld [$faff], sp
    db $10
    rst $38
    rra
    rst $38
    ldh [rP1], a
    add d
    nop
    ld c, $ff
    rra
    ld de, $203f
    ccf
    jr nz, jr_00e_7953

    jr nz, @+$01

    ld l, $31
    add hl, de
    ld e, $3d
    ld [hl+], a
    ld a, a
    ld b, b
    rst $38
    ld a, l
    ld b, d
    ld a, l
    ld b, d
    ld a, c
    ld h, [hl]
    cp a
    call c, $bfff
    ret nz

    cp [hl]
    pop bc
    sbc b
    rst $20
    jp $ffbc


    cp h
    jp $f788


    jp $b7bc


    ret z

    rst $38
    cp a
    pop bc
    ld a, [hl]
    ld b, e
    ld e, e
    ld h, [hl]
    inc hl
    ld a, $fa
    dec de
    ld e, $06
    rlca
    ld bc, $8b00
    nop
    add b
    ld b, c
    pop bc
    rst $38
    ld [hl+], a
    db $e3
    sub h
    ld [hl], a

jr_00e_7953:
    ret


    ld a, $63
    sbc h
    rst $38
    ld [hl], $c9
    sbc h
    db $e3
    ld c, c
    ld [hl], a
    ld [hl+], a
    ld a, $e8
    inc d
    inc e
    ld [$8b00], sp
    nop
    ld [$1c14], sp
    rst $38
    ld [hl+], a
    ld a, $49
    ld [hl], a
    sbc h
    db $e3
    ld [hl], $c9
    rst $38
    ld h, e
    sbc h
    ret


    ld a, $94
    ld [hl], a
    ld [hl+], a
    db $e3
    add sp, $41
    pop bc
    add b
    nop
    xor a
    nop
    ld bc, $0607
    rrca
    ld [$1fff], sp
    db $10
    ld e, $11
    rla
    ld a, [de]
    rrca
    inc c
    rst $38
    rrca
    ld [$080f], sp
    rra
    db $10
    rra
    db $10
    rst $38
    rra
    db $10
    rla
    add hl, de
    ld c, $0f
    inc d
    dec de
    rst $38
    add hl, de
    ld d, $21
    ld a, $23
    inc a
    ld [hl], $29
    rst $38
    inc a
    inc hl
    jr z, jr_00e_79e8

    ld hl, $233e
    inc a
    rst $38
    cpl
    jr nc, jr_00e_79f8

    jr nc, jr_00e_79d2

    jr jr_00e_79da

    ld e, $fe
    dec de
    rla
    rra
    db $10
    rrca
    ld [$bf07], sp
    inc a
    ld e, d
    ld h, [hl]
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    cpl

jr_00e_79d2:
    jr nc, jr_00e_79ef

    inc e
    scf
    jr c, @+$01

    ld a, a
    ld b, b

jr_00e_79da:
    rst $38
    add b
    rst $38
    add b
    cp e
    call nz, Call_00e_67ff
    ld a, b
    ccf
    jr nz, jr_00e_7a25

    jr nz, jr_00e_7a43

jr_00e_79e8:
    ld h, h
    rst $38
    ld [hl], c
    ld c, [hl]
    ld h, b
    ld e, a
    ld b, h

jr_00e_79ef:
    ld a, e
    adc [hl]
    pop af
    rst $38
    sbc e
    db $e4
    or c
    adc $e0

jr_00e_79f8:
    sbc a
    call nz, $ffbb
    adc [hl]
    pop af
    sbc a
    ldh [$bf], a
    ret nz

    rst $38
    ret nz

    cp $ff
    and b
    rst $38
    sbc h
    cp a
    jp $bf7e


    ld e, $2f
    ld sp, $203f
    ccf
    jr nz, @+$01

    ccf
    jr nz, jr_00e_7a37

    db $10
    dec bc
    inc c
    scf
    jr c, @+$01

    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, e

jr_00e_7a25:
    ld h, h
    rst $38
    daa
    jr c, jr_00e_7a59

    jr nc, jr_00e_7a6b

    jr nz, @+$59

    ld l, b
    rst $38
    ld h, e
    ld e, h
    ld b, c
    ld a, [hl]
    ld c, b
    ld [hl], a
    sbc h

jr_00e_7a37:
    db $e3
    rst $38
    or [hl]
    ret


    db $e3
    sbc h
    pop bc
    cp [hl]
    adc b
    rst $30
    rst $38
    sbc h

jr_00e_7a43:
    db $e3
    cp [hl]
    pop bc
    rst $38
    ret nz

    rst $18
    ldh [$fe], a
    rst $28
    or b
    ei
    sbc h
    cp a
    rst $00
    ld a, [hl]
    xor a
    nop
    ld a, $5d
    ld h, e
    ld a, a
    ld b, b

jr_00e_7a59:
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_00e_7a7a

    ld e, $ff
    inc sp
    inc a
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b

jr_00e_7a6b:
    rst $38
    cp l
    jp nz, Jump_00e_7c63

    cpl
    jr nc, jr_00e_7ab2

    jr nz, @+$01

    ld e, l
    ld h, d
    ld e, b
    ld h, a
    ld [hl], b

jr_00e_7a7a:
    ld c, a
    ld h, d
    ld e, l
    rst $38
    add a
    ld hl, sp-$73
    ld a, [c]
    ret c

    and a
    ldh a, [$8f]
    rst $38
    and d
    db $dd
    add a
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [$fe], a
    cp a
    ldh a, [$6f]
    ld e, [hl]
    ld e, a
    ld h, c
    ccf
    cp a
    ld a, a
    cp $81
    rst $38
    nop
    xor $19
    rst $38
    ld [hl], a
    adc b
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
    cp a
    ld b, b

jr_00e_7aaf:
    ccf
    ret nz

    rst $38

jr_00e_7ab2:
    sbc [hl]
    pop hl
    ld e, $e1
    sbc h
    ld h, e
    adc h
    ld [hl], e
    rst $38
    ret


    ld [hl], $c1
    ld a, $43
    cp h
    ld h, $d9
    rst $38
    inc l
    db $d3
    jr jr_00e_7aaf

    sub c
    ld l, [hl]
    add e
    ld a, h
    rst $38
    rst $00
    jr c, jr_00e_7aaf

    jr nz, @+$01

    nop
    cp $01
    cp [hl]
    rst $38
    rst $10
    ld e, b
    ld c, e
    call z, $8b87
    nop
    ld a, a
    cp $81
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $ffff
    ld hl, $00ff
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
    ei
    inc b
    rst $38
    pop af
    ld c, $e0
    rra
    ld b, h
    cp e
    ld c, $f1
    rst $38
    dec de
    db $e4
    or c
    ld c, [hl]
    ldh [$1f], a
    ld b, h
    cp e
    rst $38
    inc c
    di
    ld e, $e1
    cp a
    ld b, b
    rst $38
    nop
    cp $fe
    ld bc, $07f9
    rst $38
    cp $03
    xor a
    nop
    ld bc, $feff
    ld a, e
    add [hl]
    rst $38
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $38
    ld b, d
    rst $38
    rst $38
    ld b, d
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
    rst $30
    ld [$e3ff], sp
    inc e
    pop bc
    ld a, $88
    ld [hl], a
    inc e
    db $e3
    rst $38
    inc [hl]
    bit 4, d
    sbc l
    pop bc
    ld a, $88
    ld [hl], a
    rst $38
    dec de
    db $e4
    ccf
    ret nz

    ld a, a
    add b
    cp $01
    cp $fd
    inc bc
    di
    ld c, $fe
    rst $38
    ld bc, $008b
    add b
    ld a, a
    rst $38
    rst $38
    cp l
    ld b, d
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    rst $38
    ld de, $11ff
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

jr_00e_7b81:
    nop
    rst $38
    nop
    rst $38
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld [hl], b
    adc a
    ld [hl+], a
    db $dd
    rst $38
    rlca
    ld hl, sp-$73
    ld [hl], d
    ret c

    daa
    ld [hl], b
    adc a
    rst $38
    ld [hl+], a
    db $dd
    rlca
    ld hl, sp-$71
    ld [hl], b
    rst $18

jr_00e_7b9e:
    jr nz, jr_00e_7b9e

    rst $38
    nop
    rst $38
    ld bc, $07fa
    rst $38
    xor a
    nop
    ret nz

    and b
    ld h, b
    ldh a, [$90]
    rst $38

jr_00e_7baf:
    ld d, b
    or b
    ldh a, [rNR10]
    add sp, $18
    ld hl, sp+$08
    rst $38
    db $f4
    inc c
    db $f4
    inc c
    ld a, h
    add h
    ld a, h
    add h
    rst $38
    ld a, [hl-]
    add $3a
    add $12
    xor $92
    ld l, [hl]
    rst $38
    jp nz, $c63e

    ld a, [hl-]
    ld h, [hl]
    sbc d
    ld a, [hl+]
    sub $ff
    inc e
    db $e4
    sub h
    ld l, h
    add h
    ld a, h
    ret z

jr_00e_7bda:
    jr c, jr_00e_7bda

    ret z

    jr c, jr_00e_7baf

    jr nc, jr_00e_7b81

    ld h, b
    ret nz

    or $c0
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b

jr_00e_7bea:
    cp a
    ld [hl], b
    ld hl, sp-$78
    db $fc
    inc b
    db $fc
    inc b
    rst $38
    db $fc
    inc b
    ld hl, sp+$08
    sub b

jr_00e_7bf8:
    ld [hl], b
    ld hl, sp+$38
    rst $38
    or h
    ld c, h
    db $fc
    inc b
    db $fc

jr_00e_7c01:
    inc b
    call nc, $ff2c
    ret c

    jr c, jr_00e_7bf8

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    add sp, $18
    add sp, $18
    ld c, b
    cp b
    ld [$fff8], sp
    jr jr_00e_7c01

    cp b
    ld c, b
    add sp, $18
    ld [$fff8], sp
    jr c, jr_00e_7bea

    ld hl, sp+$08
    add sp, $18
    cp b
    ld a, b
    sbc $fc
    call nz, $0c3c
    db $fc
    ld hl, sp-$41
    ldh [$f0], a
    db $10
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    ld hl, sp+$08
    ldh a, [rNR10]
    ld h, b
    and b
    cp b
    ld a, b
    rst $38
    inc [hl]
    call z, $847c
    ld a, h
    add h
    inc [hl]
    call z, $98ff
    ld a, b
    ldh a, [rNR10]
    ldh a, [rNR10]
    add sp, $18
    rst $38
    add sp, $18
    ret z

    jr c, @-$76

    ld a, b
    jr c, @-$36

    rst $38
    ld a, b
    adc b
    ret z

    jr c, jr_00e_7c69

    ld hl, sp-$18

Jump_00e_7c63:
    jr @+$01

    ld hl, sp+$08
    ld hl, sp+$08

jr_00e_7c69:
    cp b
    ld a, b
    db $fc
    call nz, $c4fe
    inc a
    inc b
    db $fc
    ld [$f0f8], sp
    xor a
    nop
    ld [hl], b

jr_00e_7c78:
    ld hl, sp-$78
    db $fc
    inc b
    rst $38
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    rst $38
    db $fc
    inc a
    cp d
    ld b, [hl]
    cp $02
    cp [hl]
    ld b, d
    rst $38
    sbc d
    ld h, [hl]
    call c, $f03c
    db $10
    ldh a, [rNR10]
    rst $38
    add sp, $18
    ld hl, sp+$08
    ld a, b
    adc b
    jr z, jr_00e_7c78

    rst $38
    ld [$88f8], sp
    ld a, b
    ret c

    jr z, @+$6a

    sbc b
    rst $38
    ld [$78f8], sp
    adc b
    ld hl, sp+$08
    ldh a, [rNR10]
    or [hl]
    ld hl, sp+$3c
    call nz, $f83c
    xor a
    nop
    ld e, $2d
    inc sp
    ccf
    jr nz, @+$01

    ccf
    jr nz, jr_00e_7d02

    jr nz, jr_00e_7ce4

    db $10
    inc c
    rrca
    rst $38
    add hl, de
    ld e, $3f
    jr nz, jr_00e_7d4d

    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld e, l
    ld h, d
    inc sp
    inc a
    cpl
    jr nc, jr_00e_7d18

    jr nz, @+$01

    ld e, [hl]
    ld h, c
    ld e, h
    ld h, e
    ld a, b
    ld b, a
    ld d, c
    ld l, [hl]
    rst $38

jr_00e_7ce4:
    add e
    db $fc
    add [hl]
    ld sp, hl
    xor h
    db $d3
    cp b
    rst $00
    rst $38
    sub c
    xor $83
    db $fc
    rst $00
    cp b
    rst $28
    sub b
    cp $bf
    ret nz

    cp a
    rst $08
    ld e, a
    ld [hl], b
    ccf
    cp a
    rlca
    dec bc
    inc c
    rrca

jr_00e_7d02:
    ld [$080f], sp
    ei
    rrca
    ld [$0407], sp
    rlca
    inc c
    rrca
    rst $38
    rla
    jr @+$21

    db $10
    rra
    db $10
    rla
    jr @-$1f

    db $10

jr_00e_7d18:
    rra
    db $10
    cpl
    jr nc, jr_00e_7d5c

    jr nz, @+$01

    ld e, a
    ld h, b
    ld c, [hl]
    ld [hl], c
    ld b, h
    ld a, e
    and c
    sbc $ff
    or e
    call z, $e897
    adc [hl]
    pop af
    call nz, $ffbb
    pop hl
    sbc [hl]
    di
    adc h
    rst $38
    add b
    cp l
    jp Jump_00e_77fe


    ld c, [hl]
    ld e, e
    ld l, h
    inc l
    dec sp
    rra
    cp a
    ld bc, $0203
    rlca
    inc b
    rlca
    inc b
    rst $38
    rlca
    inc b
    dec b

jr_00e_7d4d:
    ld b, $05
    ld b, $0b
    inc c
    rst $38
    dec bc
    inc c
    rrca
    ld [$181f], sp
    inc de
    inc e
    rst $38

jr_00e_7d5c:
    inc e
    inc de
    cpl
    jr nc, jr_00e_7da0

    jr nz, jr_00e_7dc2

    ld h, b
    rst $38
    ld c, a
    ld [hl], b
    ld b, a
    ld a, b
    and d
    db $dd
    ldh a, [$8f]
    rst $38
    reti


    and [hl]
    adc a
    ldh a, [$84]
    ei
    and c
    sbc $ff
    di
    adc h
    rst $38
    add b
    cp a
    ret nz

    ld a, l
    ld b, e
    cp $53
    ld l, [hl]
    ld h, $3d
    inc e
    rra
    rlca
    xor a
    nop
    inc bc
    dec b
    ld b, $07
    inc b
    db $fd
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $07
    rst $38
    dec bc
    inc c
    rrca
    ld [$080f], sp
    rra
    jr @+$01

jr_00e_7da0:
    dec de
    inc e
    jr jr_00e_7dbb

    cpl
    jr nc, jr_00e_7de6

    jr nz, @+$01

    ld e, a
    ld h, b
    ld e, [hl]
    ld h, c
    ld e, h
    ld h, e
    adc b
    rst $30
    rst $38
    add c
    cp $a3
    call c, $c9b6
    sbc h

jr_00e_7db9:
    db $e3
    rst $38

jr_00e_7dbb:
    adc b
    rst $30
    jp $e7bc


    sbc b
    xor a

jr_00e_7dc2:
    ret nc

    cp $7f
    ld b, c
    ld e, a
    ld h, [hl]
    ld l, $39
    rra
    adc e
    nop
    add c
    ld a, [hl]
    rst $38
    rst $38
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38

jr_00e_7de6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    ld a, h
    add e
    jr c, jr_00e_7db9

    ld de, $ffee
    add e
    ld a, h
    add $39
    ld l, h
    sub e
    jr c, @-$37

    rst $38
    ld de, $83ee
    ld a, h
    rst $00
    jr c, @-$0f

    db $10
    cp $ff
    nop
    rst $38
    add b
    rst $38

jr_00e_7e0c:
    ld b, b
    rst $38
    cp a
    add c
    ld b, e
    jp nz, Jump_00e_7ebd

    sbc $21
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    rrca
    ldh a, [rTMA]
    ld sp, hl
    ld h, h
    sbc e
    ldh a, [rIF]
    rst $38
    cp c
    ld b, [hl]
    dec bc
    db $f4
    ld b, $f9
    db $e4
    dec de
    rst $38
    ldh a, [rIF]
    ld sp, hl
    ld b, $fb
    inc b

jr_00e_7e4a:
    rst $38
    ldh [$fe], a
    rst $30
    jr jr_00e_7e63

    db $fc
    inc a
    rst $38
    jp $e3bf


    rst $10
    inc [hl]
    ld sp, hl
    ld e, $ee
    ld de, $cfff
    jr nc, @-$5f

    ld h, b
    rst $38
    nop

jr_00e_7e63:
    ccf
    pop bc
    rst $38
    sbc a
    ld h, c
    rst $18
    jr nz, jr_00e_7e4a

    jr nz, jr_00e_7e0c

    ld h, b
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, @+$01

    add e
    ld a, h
    add hl, sp
    add $7c
    add e
    call nz, $ff3b
    add d
    ld a, l
    add hl, sp
    add $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    ldh a, [$7f]
    adc b
    cp $8b
    ld a, h
    add hl, bc
    cp $18
    rst $38
    rst $20
    xor a
    nop
    ret nz

    pop hl
    ld hl, $1eff
    rst $38
    cp $11
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $38
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_00e_7ebd:
    ccf
    ret nz

    ld e, $e1
    inc c
    di
    ret z

    scf
    rst $38
    pop hl
    ld e, $73
    adc h
    ld d, $e9
    inc c
    di
    rst $38
    ret nz

    ccf
    pop af
    ld c, $fb
    inc b
    rst $38
    nop
    cp $ff
    ldh [$f7], a

jr_00e_7edb:
    jr @+$13

    cp $ff
    xor a

jr_00e_7ee0:
    nop
    ldh a, [rBCPS]
    sbc b
    ld hl, sp+$08
    rst $38
    ld hl, sp+$08
    add sp, $18
    ldh a, [rNR10]
    ldh [rNR41], a
    rst $38
    ldh a, [$b0]

jr_00e_7ef2:
    ret c

    xor b
    db $fc
    inc b
    db $fc
    inc b
    rst $38
    call nc, $d82c
    jr c, @-$0e

jr_00e_7efe:
    db $10
    ldh a, [rNR10]
    rst $38
    ldh a, [rNR10]
    ld l, b
    sbc b
    jr z, jr_00e_7ee0

    jr jr_00e_7ef2

    rst $38
    adc b
    ld a, b
    ret z

    jr c, @+$6a

jr_00e_7f10:
    sbc b
    jr c, jr_00e_7edb

    rst $38

jr_00e_7f14:
    jr jr_00e_7efe

    adc b
    ld a, b
    ret z

jr_00e_7f19:
    jr c, @-$16

jr_00e_7f1b:
    jr jr_00e_7f1b

    ldh a, [rNR10]
    ret nc

    jr nc, jr_00e_7f9a

jr_00e_7f22:
    add sp, -$08
    cp a
    ldh [$d0], a
    jr nc, jr_00e_7f19

    db $10
    ldh a, [rNR10]
    rst $38
    ret nc

    jr nc, jr_00e_7f10

    jr nz, @-$1e

jr_00e_7f32:
    jr nz, jr_00e_7f14

    ld h, b
    rst $38
    ldh a, [$50]
    ld hl, sp+$08
    ret c

    jr z, @-$26

jr_00e_7f3d:
    jr z, @+$01

    ret nc

    jr nc, jr_00e_7f32

    db $10
    ldh a, [rNR10]
    or b
    ld d, b
    rst $38
    ld [$08f8], sp
    ld hl, sp+$48
    cp b
    add sp, $18
    rst $38

jr_00e_7f51:
    cp b
    ld c, b
    jr jr_00e_7f3d

    ld [$48f8], sp
    cp b
    rst $38
    add sp, $18
    ld hl, sp+$08
    add sp, $18
    ldh a, [rNR10]
    cp $d0
    jr nc, @+$22

    ldh [rSVBK], a
    sub b
    ldh a, [$bf]
    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ldh [rNR41], a
    rst $38

jr_00e_7f73:
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    rst $38
    ret nc

    jr nc, @-$2e

    jr nc, jr_00e_7f51

    jr nc, jr_00e_7f73

    db $10
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret z

    jr c, @+$01

    adc b
    ld a, b
    ld [$28f8], sp
    ret c

    ld a, b
    adc b
    rst $38
    ret c

    jr z, jr_00e_7f22

jr_00e_7f9a:
    ld a, b
    ld [$28f8], sp
    ret c

    rst $38
    ld a, b
    adc b
    ld hl, sp+$08
    add sp, $18

jr_00e_7fa6:
    ldh a, [rNR10]
    cp $d0

jr_00e_7faa:
    jr nc, @+$62

    ldh [$60], a
    and b

jr_00e_7faf:
    ldh [$af], a
    nop
    ldh [$d0], a
    jr nc, jr_00e_7fa6

    db $10
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    rst $38

jr_00e_7fc1:
    ret nc

    ld [hl], b
    add sp, $58
    ld hl, sp+$08
    ret c

    jr z, @+$01

    ret c

    jr z, @-$0e

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]

jr_00e_7fd2:
    rst $38
    ld l, b

jr_00e_7fd4:
    sbc b
    jr z, jr_00e_7faf

    jr jr_00e_7fc1

    adc b
    ld a, b
    rst $38
    ret z

    jr c, @+$6a

    sbc b
    jr c, jr_00e_7faa

    jr @-$16

    rst $38
    adc b
    ld a, b
    ret z

    jr c, jr_00e_7fd2

    jr jr_00e_7fd4

jr_00e_7fec:
    jr jr_00e_7fec

    ldh a, [rNR10]
    ret nc

    jr nc, @+$72

    ret nc

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

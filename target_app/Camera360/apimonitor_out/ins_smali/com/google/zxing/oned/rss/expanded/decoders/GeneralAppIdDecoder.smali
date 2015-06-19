.class final Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"
.field private final buffer:Ljava/lang/StringBuilder;
.field private final current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
.field private final information:Lcom/google/zxing/common/BitArray;
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V
iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
return-void
.end method
.method private decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
.registers 8
const/16 v4, 0xf
const/4 v3, 0x5
invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v1
if-ne v1, v4, :cond_13
new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v4, p1, 0x5
const/16 v5, 0x24
invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
:goto_12
return-object v3
:cond_13
if-lt v1, v3, :cond_24
if-ge v1, v4, :cond_24
new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v4, p1, 0x5
add-int/lit8 v5, v1, 0x30
add-int/lit8 v5, v5, -0x5
int-to-char v5, v5
invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
goto :goto_12
:cond_24
const/4 v3, 0x6
invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v2
const/16 v3, 0x20
if-lt v2, v3, :cond_3c
const/16 v3, 0x3a
if-ge v2, v3, :cond_3c
new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v4, p1, 0x6
add-int/lit8 v5, v2, 0x21
int-to-char v5, v5
invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
goto :goto_12
:cond_3c
packed-switch v2, :pswitch_data_70
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Decoding invalid alphanumeric value: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:pswitch_59
const/16 v0, 0x2a
:goto_5b
new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v4, p1, 0x6
invoke-direct {v3, v4, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
goto :goto_12
:pswitch_63
const/16 v0, 0x2c
goto :goto_5b
:pswitch_66
const/16 v0, 0x2d
goto :goto_5b
:pswitch_69
const/16 v0, 0x2e
goto :goto_5b
:pswitch_6c
const/16 v0, 0x2f
goto :goto_5b
nop
:pswitch_data_70
.packed-switch 0x3a
:pswitch_59
:pswitch_63
:pswitch_66
:pswitch_69
:pswitch_6c
.end packed-switch
.end method
.method private decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
.registers 9
const/16 v6, 0x5a
const/16 v5, 0xf
const/4 v4, 0x5
invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v2
if-ne v2, v5, :cond_15
new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v5, p1, 0x5
const/16 v6, 0x24
invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
:goto_14
return-object v4
:cond_15
if-lt v2, v4, :cond_26
if-ge v2, v5, :cond_26
new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v5, p1, 0x5
add-int/lit8 v6, v2, 0x30
add-int/lit8 v6, v6, -0x5
int-to-char v6, v6
invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
goto :goto_14
:cond_26
const/4 v4, 0x7
invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v3
const/16 v4, 0x40
if-lt v3, v4, :cond_3c
if-ge v3, v6, :cond_3c
new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v5, p1, 0x7
add-int/lit8 v6, v3, 0x1
int-to-char v6, v6
invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
goto :goto_14
:cond_3c
if-lt v3, v6, :cond_4d
const/16 v4, 0x74
if-ge v3, v4, :cond_4d
new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v5, p1, 0x7
add-int/lit8 v6, v3, 0x7
int-to-char v6, v6
invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
goto :goto_14
:cond_4d
const/16 v4, 0x8
invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v1
packed-switch v1, :pswitch_data_a2
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v4
throw v4
:pswitch_5b
const/16 v0, 0x21
:goto_5d
new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
add-int/lit8 v5, p1, 0x8
invoke-direct {v4, v5, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V
goto :goto_14
:pswitch_65
const/16 v0, 0x22
goto :goto_5d
:pswitch_68
const/16 v0, 0x25
goto :goto_5d
:pswitch_6b
const/16 v0, 0x26
goto :goto_5d
:pswitch_6e
const/16 v0, 0x27
goto :goto_5d
:pswitch_71
const/16 v0, 0x28
goto :goto_5d
:pswitch_74
const/16 v0, 0x29
goto :goto_5d
:pswitch_77
const/16 v0, 0x2a
goto :goto_5d
:pswitch_7a
const/16 v0, 0x2b
goto :goto_5d
:pswitch_7d
const/16 v0, 0x2c
goto :goto_5d
:pswitch_80
const/16 v0, 0x2d
goto :goto_5d
:pswitch_83
const/16 v0, 0x2e
goto :goto_5d
:pswitch_86
const/16 v0, 0x2f
goto :goto_5d
:pswitch_89
const/16 v0, 0x3a
goto :goto_5d
:pswitch_8c
const/16 v0, 0x3b
goto :goto_5d
:pswitch_8f
const/16 v0, 0x3c
goto :goto_5d
:pswitch_92
const/16 v0, 0x3d
goto :goto_5d
:pswitch_95
const/16 v0, 0x3e
goto :goto_5d
:pswitch_98
const/16 v0, 0x3f
goto :goto_5d
:pswitch_9b
const/16 v0, 0x5f
goto :goto_5d
:pswitch_9e
const/16 v0, 0x20
goto :goto_5d
nop
:pswitch_data_a2
.packed-switch 0xe8
:pswitch_5b
:pswitch_65
:pswitch_68
:pswitch_6b
:pswitch_6e
:pswitch_71
:pswitch_74
:pswitch_77
:pswitch_7a
:pswitch_7d
:pswitch_80
:pswitch_83
:pswitch_86
:pswitch_89
:pswitch_8c
:pswitch_8f
:pswitch_92
:pswitch_95
:pswitch_98
:pswitch_9b
:pswitch_9e
.end packed-switch
.end method
.method private decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
.registers 9
const/16 v6, 0xa
add-int/lit8 v3, p1, 0x7
iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
if-le v3, v4, :cond_2d
const/4 v3, 0x4
invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v2
if-nez v2, :cond_1f
new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
invoke-direct {v3, v4, v6, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V
:goto_1e
return-object v3
:cond_1f
new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v4
add-int/lit8 v5, v2, -0x1
invoke-direct {v3, v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V
goto :goto_1e
:cond_2d
const/4 v3, 0x7
invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v2
add-int/lit8 v3, v2, -0x8
div-int/lit8 v0, v3, 0xb
add-int/lit8 v3, v2, -0x8
rem-int/lit8 v1, v3, 0xb
new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
add-int/lit8 v4, p1, 0x7
invoke-direct {v3, v4, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V
goto :goto_1e
.end method
.method static extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I
.registers 7
const/4 v1, 0x0
const/4 v0, 0x0
:goto_2
if-ge v0, p2, :cond_16
add-int v2, p1, v0
invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v2
if-eqz v2, :cond_13
const/4 v2, 0x1
sub-int v3, p2, v0
add-int/lit8 v3, v3, -0x1
shl-int/2addr v2, v3
or-int/2addr v1, v2
:cond_13
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_16
return v1
.end method
.method private isAlphaOr646ToNumericLatch(I)Z
.registers 6
const/4 v1, 0x0
add-int/lit8 v2, p1, 0x3
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-le v2, v3, :cond_c
:goto_b
:cond_b
return v1
:cond_c
move v0, p1
:goto_d
add-int/lit8 v2, p1, 0x3
if-ge v0, v2, :cond_1c
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v2
if-nez v2, :cond_b
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_1c
const/4 v1, 0x1
goto :goto_b
.end method
.method private isAlphaTo646ToAlphaLatch(I)Z
.registers 6
const/4 v1, 0x0
add-int/lit8 v2, p1, 0x1
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-le v2, v3, :cond_c
:cond_b
:goto_b
return v1
:cond_c
const/4 v0, 0x0
:goto_d
const/4 v2, 0x5
if-ge v0, v2, :cond_35
add-int v2, v0, p1
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-ge v2, v3, :cond_35
const/4 v2, 0x2
if-ne v0, v2, :cond_2a
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
add-int/lit8 v3, p1, 0x2
invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v2
if-eqz v2, :cond_b
:cond_27
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_2a
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
add-int v3, p1, v0
invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v2
if-eqz v2, :cond_27
goto :goto_b
:cond_35
const/4 v1, 0x1
goto :goto_b
.end method
.method private isNumericToAlphaNumericLatch(I)Z
.registers 6
const/4 v1, 0x0
add-int/lit8 v2, p1, 0x1
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-le v2, v3, :cond_c
:goto_b
:cond_b
return v1
:cond_c
const/4 v0, 0x0
:goto_d
const/4 v2, 0x4
if-ge v0, v2, :cond_27
add-int v2, v0, p1
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-ge v2, v3, :cond_27
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
add-int v3, p1, v0
invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v2
if-nez v2, :cond_b
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_27
const/4 v1, 0x1
goto :goto_b
.end method
.method private isStillAlpha(I)Z
.registers 10
const/16 v7, 0x10
const/4 v6, 0x5
const/4 v2, 0x1
const/4 v3, 0x0
add-int/lit8 v4, p1, 0x5
iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v5
if-le v4, v5, :cond_10
:cond_f
:goto_f
return v3
:cond_10
invoke-virtual {p0, p1, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v0
if-lt v0, v6, :cond_1a
if-ge v0, v7, :cond_1a
move v3, v2
goto :goto_f
:cond_1a
add-int/lit8 v4, p1, 0x6
iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v5
if-gt v4, v5, :cond_f
const/4 v4, 0x6
invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v1
if-lt v1, v7, :cond_31
const/16 v4, 0x3f
if-ge v1, v4, :cond_31
:goto_2f
move v3, v2
goto :goto_f
:cond_31
move v2, v3
goto :goto_2f
.end method
.method private isStillIsoIec646(I)Z
.registers 10
const/4 v7, 0x5
const/4 v3, 0x1
const/4 v4, 0x0
add-int/lit8 v5, p1, 0x5
iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v6
if-le v5, v6, :cond_e
:cond_d
:goto_d
return v4
:cond_e
invoke-virtual {p0, p1, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v1
if-lt v1, v7, :cond_1a
const/16 v5, 0x10
if-ge v1, v5, :cond_1a
move v4, v3
goto :goto_d
:cond_1a
add-int/lit8 v5, p1, 0x7
iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v6
if-gt v5, v6, :cond_d
const/4 v5, 0x7
invoke-virtual {p0, p1, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v2
const/16 v5, 0x40
if-lt v2, v5, :cond_33
const/16 v5, 0x74
if-ge v2, v5, :cond_33
move v4, v3
goto :goto_d
:cond_33
add-int/lit8 v5, p1, 0x8
iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v6
if-gt v5, v6, :cond_d
const/16 v5, 0x8
invoke-virtual {p0, p1, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v0
const/16 v5, 0xe8
if-lt v0, v5, :cond_4d
const/16 v5, 0xfd
if-ge v0, v5, :cond_4d
:goto_4b
move v4, v3
goto :goto_d
:cond_4d
move v3, v4
goto :goto_4b
.end method
.method private isStillNumeric(I)Z
.registers 6
const/4 v1, 0x1
add-int/lit8 v2, p1, 0x7
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-le v2, v3, :cond_18
add-int/lit8 v2, p1, 0x4
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-gt v2, v3, :cond_16
:cond_15
:goto_15
return v1
:cond_16
const/4 v1, 0x0
goto :goto_15
:cond_18
move v0, p1
:goto_19
add-int/lit8 v2, p1, 0x3
if-ge v0, v2, :cond_28
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v2
if-nez v2, :cond_15
add-int/lit8 v0, v0, 0x1
goto :goto_19
:cond_28
iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
add-int/lit8 v2, p1, 0x3
invoke-virtual {v1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z
move-result v1
goto :goto_15
.end method
.method private parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
.registers 5
:goto_0
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillAlpha(I)Z
move-result v2
if-eqz v2, :cond_47
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
move-result-object v0
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I
move-result v3
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V
invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z
move-result v2
if-eqz v2, :cond_3d
new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V
new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
const/4 v3, 0x1
invoke-direct {v2, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
:goto_3c
return-object v2
:cond_3d
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_0
:cond_47
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z
move-result v2
if-eqz v2, :cond_65
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
const/4 v3, 0x3
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V
:goto_5e
:cond_5e
new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
const/4 v3, 0x0
invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V
goto :goto_3c
:cond_65
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z
move-result v2
if-eqz v2, :cond_5e
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
add-int/lit8 v2, v2, 0x5
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-ge v2, v3, :cond_8d
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
const/4 v3, 0x5
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V
:goto_87
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setIsoIec646()V
goto :goto_5e
:cond_8d
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V
goto :goto_87
.end method
.method private parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
.registers 6
:cond_0
iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v0
iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isAlpha()Z
move-result v4
if-eqz v4, :cond_28
invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z
move-result v1
:goto_16
iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v4
if-eq v0, v4, :cond_42
const/4 v2, 0x1
:goto_1f
if-nez v2, :cond_44
if-nez v1, :cond_44
:goto_23
invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
move-result-object v4
return-object v4
:cond_28
iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isIsoIec646()Z
move-result v4
if-eqz v4, :cond_39
invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z
move-result v1
goto :goto_16
:cond_39
invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z
move-result v1
goto :goto_16
:cond_42
const/4 v2, 0x0
goto :goto_1f
:cond_44
if-eqz v1, :cond_0
goto :goto_23
.end method
.method private parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
.registers 5
:goto_0
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillIsoIec646(I)Z
move-result v2
if-eqz v2, :cond_47
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
move-result-object v1
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I
move-result v3
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z
move-result v2
if-eqz v2, :cond_3d
new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V
new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
const/4 v3, 0x1
invoke-direct {v2, v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
:goto_3c
return-object v2
:cond_3d
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_0
:cond_47
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z
move-result v2
if-eqz v2, :cond_65
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
const/4 v3, 0x3
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V
:goto_5e
:cond_5e
new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
const/4 v3, 0x0
invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V
goto :goto_3c
:cond_65
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z
move-result v2
if-eqz v2, :cond_5e
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
add-int/lit8 v2, v2, 0x5
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-ge v2, v3, :cond_8d
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
const/4 v3, 0x5
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V
:goto_87
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V
goto :goto_5e
:cond_8d
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V
goto :goto_87
.end method
.method private parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
.registers 7
const/4 v5, 0x1
:goto_1
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillNumeric(I)Z
move-result v2
if-eqz v2, :cond_8a
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
move-result-object v1
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getNewPosition()I
move-result v3
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isFirstDigitFNC1()Z
move-result v2
if-eqz v2, :cond_59
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z
move-result v2
if-eqz v2, :cond_43
new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V
:goto_3d
new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
invoke-direct {v2, v0, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
:goto_42
return-object v2
:cond_43
new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I
move-result v4
invoke-direct {v0, v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V
goto :goto_3d
:cond_59
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getFirstDigit()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z
move-result v2
if-eqz v2, :cond_7f
new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V
new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
invoke-direct {v2, v0, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
goto :goto_42
:cond_7f
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto/16 :goto_1
:cond_8a
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isNumericToAlphaNumericLatch(I)Z
move-result v2
if-eqz v2, :cond_a1
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
const/4 v3, 0x4
invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V
:cond_a1
new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
const/4 v3, 0x0
invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V
goto :goto_42
.end method
.method  decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;
.registers 8
move v0, p2
const/4 v3, 0x0
:goto_2
invoke-virtual {p0, v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_13
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_13
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z
move-result v4
if-eqz v4, :cond_2c
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I
move-result v4
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
:goto_21
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I
move-result v4
if-ne v0, v4, :cond_2e
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
:cond_2c
const/4 v3, 0x0
goto :goto_21
:cond_2e
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I
move-result v0
goto :goto_2
.end method
.method  decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
.registers 8
iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V
if-eqz p2, :cond_d
iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_d
iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v1, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V
invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
move-result-object v0
if-eqz v0, :cond_34
invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z
move-result v1
if-eqz v1, :cond_34
new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I
move-result v4
invoke-direct {v1, v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V
:goto_33
return-object v1
:cond_34
new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I
move-result v2
iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V
goto :goto_33
.end method
.method  extractNumericValueFromBitArray(II)I
.registers 4
iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;
invoke-static {v0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I
move-result v0
return v0
.end method
.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.source "DecodedNumeric.java"
.field static final FNC1:I = 0xa
.field private final firstDigit:I
.field private final secondDigit:I
.method constructor <init>(III)V
.registers 5
const/16 v0, 0xa
invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V
if-ltz p2, :cond_d
if-gt p2, v0, :cond_d
if-ltz p3, :cond_d
if-le p3, v0, :cond_12
:cond_d
invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;
move-result-object v0
throw v0
:cond_12
iput p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I
iput p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I
return-void
.end method
.method  getFirstDigit()I
.registers 2
iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I
return v0
.end method
.method  getSecondDigit()I
.registers 2
iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I
return v0
.end method
.method  getValue()I
.registers 3
iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I
mul-int/lit8 v0, v0, 0xa
iget v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I
add-int/2addr v0, v1
return v0
.end method
.method  isAnyFNC1()Z
.registers 3
const/16 v1, 0xa
iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I
if-eq v0, v1, :cond_a
iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I
if-ne v0, v1, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method  isFirstDigitFNC1()Z
.registers 3
iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I
const/16 v1, 0xa
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method  isSecondDigitFNC1()Z
.registers 3
iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I
const/16 v1, 0xa
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
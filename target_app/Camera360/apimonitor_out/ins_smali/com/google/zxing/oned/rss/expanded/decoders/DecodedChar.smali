.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.source "DecodedChar.java"
.field static final FNC1:C = '$'
.field private final value:C
.method constructor <init>(IC)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V
iput-char p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C
return-void
.end method
.method  getValue()C
.registers 2
iget-char v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C
return v0
.end method
.method  isFNC1()Z
.registers 3
iget-char v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C
const/16 v1, 0x24
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
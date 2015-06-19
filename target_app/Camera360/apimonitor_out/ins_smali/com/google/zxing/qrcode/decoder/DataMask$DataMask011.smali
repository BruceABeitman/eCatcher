.class final Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;
.super Lcom/google/zxing/qrcode/decoder/DataMask;
.source "DataMask.java"
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;-><init>()V
return-void
.end method
.method  isMasked(II)Z
.registers 4
add-int v0, p1, p2
rem-int/lit8 v0, v0, 0x3
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
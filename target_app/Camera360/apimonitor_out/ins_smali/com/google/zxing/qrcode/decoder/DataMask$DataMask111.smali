.class final Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;
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
invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;-><init>()V
return-void
.end method
.method  isMasked(II)Z
.registers 5
add-int v0, p1, p2
and-int/lit8 v0, v0, 0x1
mul-int v1, p1, p2
rem-int/lit8 v1, v1, 0x3
add-int/2addr v0, v1
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
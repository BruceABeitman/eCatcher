.class final Lcom/google/zxing/g/a/j;
.super Lcom/google/zxing/g/a/c;
.source "DataMask.java"
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/zxing/g/a/c;-><init>(B)V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/g/a/j;-><init>()V
return-void
.end method
.method final a(II)Z
.registers 5
mul-int v0, p1, p2
and-int/lit8 v1, v0, 0x1
rem-int/lit8 v0, v0, 0x3
add-int/2addr v0, v1
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_d
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
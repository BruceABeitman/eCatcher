.class final Lcom/google/zxing/g/a/e;
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
invoke-direct {p0}, Lcom/google/zxing/g/a/e;-><init>()V
return-void
.end method
.method final a(II)Z
.registers 4
and-int/lit8 v0, p1, 0x1
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
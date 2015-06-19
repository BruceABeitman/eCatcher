.class public Lcom/pinguo/lib/util/MathUitls;
.super Ljava/lang/Object;
.source "MathUitls.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCenterClipInfo(II)Lcom/pinguo/lib/util/MathUitls$ClipInfo;
.registers 6
const/4 v3, 0x0
new-instance v1, Lcom/pinguo/lib/util/MathUitls$ClipInfo;
invoke-direct {v1}, Lcom/pinguo/lib/util/MathUitls$ClipInfo;-><init>()V
sub-int v2, p1, p0
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v2
shr-int/lit8 v0, v2, 0x1
if-ge p0, p1, :cond_14
invoke-virtual {v1, v3, v0, p0}, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->set(III)V
:goto_13
return-object v1
:cond_14
invoke-virtual {v1, v0, v3, p1}, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->set(III)V
goto :goto_13
.end method
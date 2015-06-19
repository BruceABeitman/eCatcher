.class public Lcom/pinguo/album/animations/FloatAnim;
.super Lcom/pinguo/album/animations/Animation;
.source "FloatAnim.java"
.field private mCurrent:F
.field private final mFrom:F
.field private final mTo:F
.method public constructor <init>(FFI)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/album/animations/Animation;-><init>()V
iput p1, p0, Lcom/pinguo/album/animations/FloatAnim;->mFrom:F
iput p2, p0, Lcom/pinguo/album/animations/FloatAnim;->mTo:F
iput p1, p0, Lcom/pinguo/album/animations/FloatAnim;->mCurrent:F
invoke-virtual {p0, p3}, Lcom/pinguo/album/animations/FloatAnim;->setDuration(I)V
return-void
.end method
.method public get()F
.registers 2
iget v0, p0, Lcom/pinguo/album/animations/FloatAnim;->mCurrent:F
return v0
.end method
.method protected onCalculate(F)V
.registers 5
iget v0, p0, Lcom/pinguo/album/animations/FloatAnim;->mFrom:F
iget v1, p0, Lcom/pinguo/album/animations/FloatAnim;->mTo:F
iget v2, p0, Lcom/pinguo/album/animations/FloatAnim;->mFrom:F
sub-float/2addr v1, v2
mul-float/2addr v1, p1
add-float/2addr v0, v1
iput v0, p0, Lcom/pinguo/album/animations/FloatAnim;->mCurrent:F
return-void
.end method
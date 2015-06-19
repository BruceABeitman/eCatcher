.class  Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"
.field  mAlpha:F
.field  mMatrix:[F
.field  mNextFree:Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x10
new-array v0, v0, [F
iput-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mMatrix:[F
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;-><init>()V
return-void
.end method
.method public restore(Lcom/pinguo/album/opengles/GLES11Canvas;)V
.registers 6
const/4 v3, 0x0
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mAlpha:F
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-ltz v0, :cond_d
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mAlpha:F
invoke-virtual {p1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;->setAlpha(F)V
:cond_d
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mMatrix:[F
aget v0, v0, v3
const/high16 v1, -0x80
cmpl-float v0, v0, v1
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$ConfigState;->mMatrix:[F
#getter for: Lcom/pinguo/album/opengles/GLES11Canvas;->mMatrixValues:[F
invoke-static {p1}, Lcom/pinguo/album/opengles/GLES11Canvas;->access$0(Lcom/pinguo/album/opengles/GLES11Canvas;)[F
move-result-object v1
const/16 v2, 0x10
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_22
return-void
.end method
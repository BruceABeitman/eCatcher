.class  Lcom/pinguo/album/opengles/GLES11Canvas$GLState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"
.field private mBlendEnabled:Z
.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;
.field private mLineSmooth:Z
.field private mLineWidth:F
.field private mTexEnvMode:I
.field private mTextureAlpha:F
.field private mTextureTarget:I
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
.registers 7
const/16 v2, 0xde1
const/4 v4, 0x1
const/high16 v1, 0x3f80
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x1e01
iput v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTexEnvMode:I
iput v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureAlpha:F
iput v2, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureTarget:I
iput-boolean v4, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mBlendEnabled:Z
iput v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mLineWidth:F
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mLineSmooth:Z
iput-object p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v0, 0xb50
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V
const/16 v0, 0xbd0
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
const v0, 0x8074
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V
const v0, 0x8078
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V
invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
const/16 v0, 0x2300
const/16 v1, 0x2200
const v2, 0x45f00800
invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V
const/16 v0, 0xbe2
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
const/16 v0, 0x303
invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V
const/16 v0, 0xcf5
const/4 v1, 0x2
invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V
return-void
.end method
.method public setBlendEnabled(Z)V
.registers 4
const/16 v1, 0xbe2
iget-boolean v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mBlendEnabled:Z
if-ne v0, p1, :cond_7
:goto_6
return-void
:cond_7
iput-boolean p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mBlendEnabled:Z
if-eqz p1, :cond_11
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
goto :goto_6
:cond_11
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V
goto :goto_6
.end method
.method public setColorMode(IF)V
.registers 9
const/4 v2, 0x0
const/high16 v5, 0x437f
invoke-static {p1}, Lcom/pinguo/album/utils/Utils;->isOpaque(I)Z
move-result v1
if-eqz v1, :cond_4d
const v1, 0x3f733333
cmpg-float v1, p2, v1
if-ltz v1, :cond_4d
move v1, v2
:goto_11
invoke-virtual {p0, v1}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setBlendEnabled(Z)V
const/high16 v1, -0x4080
iput v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureAlpha:F
invoke-virtual {p0, v2}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTextureTarget(I)V
ushr-int/lit8 v1, p1, 0x18
int-to-float v1, v1
mul-float/2addr v1, p2
const v2, 0x477fff00
mul-float/2addr v1, v2
div-float/2addr v1, v5
div-float v0, v1, v5
iget-object v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
shr-int/lit8 v2, p1, 0x10
and-int/lit16 v2, v2, 0xff
int-to-float v2, v2
mul-float/2addr v2, v0
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
shr-int/lit8 v3, p1, 0x8
and-int/lit16 v3, v3, 0xff
int-to-float v3, v3
mul-float/2addr v3, v0
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
and-int/lit16 v4, p1, 0xff
int-to-float v4, v4
mul-float/2addr v4, v0
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
mul-float/2addr v5, v0
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v5
invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V
return-void
:cond_4d
const/4 v1, 0x1
goto :goto_11
.end method
.method public setLineWidth(F)V
.registers 3
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mLineWidth:F
cmpl-float v0, v0, p1
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iput p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mLineWidth:F
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V
goto :goto_6
.end method
.method public setTexEnvMode(I)V
.registers 6
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTexEnvMode:I
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTexEnvMode:I
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
const/16 v1, 0x2300
const/16 v2, 0x2200
int-to-float v3, p1
invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
goto :goto_4
.end method
.method public setTextureAlpha(F)V
.registers 4
const/high16 v1, 0x3f80
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureAlpha:F
cmpl-float v0, v0, p1
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iput p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureAlpha:F
const v0, 0x3f733333
cmpl-float v0, p1, v0
if-ltz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V
const/16 v0, 0x1e01
invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTexEnvMode(I)V
goto :goto_8
:cond_1d
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V
const/16 v0, 0x2100
invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->setTexEnvMode(I)V
goto :goto_8
.end method
.method public setTextureTarget(I)V
.registers 4
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureTarget:I
if-ne v0, p1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureTarget:I
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureTarget:I
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V
:cond_10
iput p1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureTarget:I
iget v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureTarget:I
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;
iget v1, p0, Lcom/pinguo/album/opengles/GLES11Canvas$GLState;->mTextureTarget:I
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
goto :goto_4
.end method
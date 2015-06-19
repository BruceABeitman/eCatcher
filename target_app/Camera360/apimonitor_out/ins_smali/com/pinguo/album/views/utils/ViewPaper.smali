.class public Lcom/pinguo/album/views/utils/ViewPaper;
.super Ljava/lang/Object;
.source "ViewPaper.java"
.field private static final ROTATE_FACTOR:I = 0x4
.field private static final TAG:Ljava/lang/String; = "ViewPaper"
.field private mAnimationLeft:Lcom/pinguo/album/views/utils/EdgeAnimation;
.field private mAnimationRight:Lcom/pinguo/album/views/utils/EdgeAnimation;
.field private mMatrix:[F
.field private mWidth:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-direct {v0}, Lcom/pinguo/album/views/utils/EdgeAnimation;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationLeft:Lcom/pinguo/album/views/utils/EdgeAnimation;
new-instance v0, Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-direct {v0}, Lcom/pinguo/album/views/utils/EdgeAnimation;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationRight:Lcom/pinguo/album/views/utils/EdgeAnimation;
const/16 v0, 0x10
new-array v0, v0, [F
iput-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mMatrix:[F
return-void
.end method
.method public advanceAnimation()Z
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationLeft:Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-virtual {v0}, Lcom/pinguo/album/views/utils/EdgeAnimation;->update()Z
move-result v0
iget-object v1, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationRight:Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-virtual {v1}, Lcom/pinguo/album/views/utils/EdgeAnimation;->update()Z
move-result v1
or-int/2addr v0, v1
return v0
.end method
.method public edgeReached(F)V
.registers 4
iget v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mWidth:I
int-to-float v0, v0
div-float/2addr p1, v0
const/4 v0, 0x0
cmpg-float v0, p1, v0
if-gez v0, :cond_10
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationRight:Lcom/pinguo/album/views/utils/EdgeAnimation;
neg-float v1, p1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/utils/EdgeAnimation;->onAbsorb(F)V
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationLeft:Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/utils/EdgeAnimation;->onAbsorb(F)V
goto :goto_f
.end method
.method public getTransform(Landroid/graphics/Rect;F)[F
.registers 17
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationLeft:Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-virtual {v0}, Lcom/pinguo/album/views/utils/EdgeAnimation;->getValue()F
move-result v8
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationRight:Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-virtual {v0}, Lcom/pinguo/album/views/utils/EdgeAnimation;->getValue()F
move-result v10
invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I
move-result v0
int-to-float v12, v0
iget v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mWidth:I
div-int/lit8 v0, v0, 0x4
int-to-float v0, v0
add-float v11, v12, v0
iget v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mWidth:I
mul-int/lit8 v0, v0, 0x3
div-int/lit8 v9, v0, 0x2
int-to-float v0, v9
sub-float/2addr v0, v11
mul-float/2addr v0, v8
mul-float v1, v11, v10
sub-float/2addr v0, v1
int-to-float v1, v9
div-float v13, v0, v1
const/high16 v0, 0x3f80
const/high16 v1, 0x3f80
neg-float v2, v13
const/high16 v3, 0x4080
mul-float/2addr v2, v3
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D
move-result-wide v2
double-to-float v2, v2
add-float/2addr v1, v2
div-float/2addr v0, v1
const/high16 v1, 0x3f00
sub-float/2addr v0, v1
const/high16 v1, 0x4000
mul-float/2addr v0, v1
const/high16 v1, -0x3dcc
mul-float v7, v0, v1
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mMatrix:[F
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mMatrix:[F
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mMatrix:[F
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I
move-result v4
int-to-float v4, v4
invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I
move-result v5
int-to-float v5, v5
const/4 v6, 0x0
invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mMatrix:[F
const/4 v1, 0x0
const/high16 v3, 0x3f80
const/4 v4, 0x0
const/4 v5, 0x0
move v2, v7
invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mMatrix:[F
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mMatrix:[F
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/graphics/Rect;->width()I
move-result v4
neg-int v4, v4
div-int/lit8 v4, v4, 0x2
int-to-float v4, v4
invoke-virtual {p1}, Landroid/graphics/Rect;->height()I
move-result v5
neg-int v5, v5
div-int/lit8 v5, v5, 0x2
int-to-float v5, v5
const/4 v6, 0x0
invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mMatrix:[F
return-object v0
.end method
.method public onRelease()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationLeft:Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-virtual {v0}, Lcom/pinguo/album/views/utils/EdgeAnimation;->onRelease()V
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationRight:Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-virtual {v0}, Lcom/pinguo/album/views/utils/EdgeAnimation;->onRelease()V
return-void
.end method
.method public overScroll(F)V
.registers 4
iget v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mWidth:I
int-to-float v0, v0
div-float/2addr p1, v0
const/4 v0, 0x0
cmpg-float v0, p1, v0
if-gez v0, :cond_10
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationLeft:Lcom/pinguo/album/views/utils/EdgeAnimation;
neg-float v1, p1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/utils/EdgeAnimation;->onPull(F)V
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mAnimationRight:Lcom/pinguo/album/views/utils/EdgeAnimation;
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/utils/EdgeAnimation;->onPull(F)V
goto :goto_f
.end method
.method public setSize(II)V
.registers 3
iput p1, p0, Lcom/pinguo/album/views/utils/ViewPaper;->mWidth:I
return-void
.end method
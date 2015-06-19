.class public Lcom/pinguo/album/views/EdgeView;
.super Lcom/pinguo/album/views/GLBaseView;
.source "EdgeView.java"
.field public static final BOTTOM:I = 0x2
.field private static final BOTTOM_M:I = 0x20
.field public static final INVALID_DIRECTION:I = -0x1
.field public static final LEFT:I = 0x1
.field private static final LEFT_M:I = 0x10
.field public static final RIGHT:I = 0x3
.field private static final RIGHT_M:I = 0x30
.field private static final TAG:Ljava/lang/String; = "EdgeView"
.field public static final TOP:I
.field private static final TOP_M:I
.field private mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
.field private mMatrix:[F
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x4
invoke-direct {p0}, Lcom/pinguo/album/views/GLBaseView;-><init>()V
new-array v1, v3, [Lcom/pinguo/album/views/utils/EdgeEffect;
iput-object v1, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
const/16 v1, 0x40
new-array v1, v1, [F
iput-object v1, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/4 v0, 0x0
:goto_f
if-lt v0, v3, :cond_12
return-void
:cond_12
iget-object v1, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
new-instance v2, Lcom/pinguo/album/views/utils/EdgeEffect;
invoke-direct {v2, p1}, Lcom/pinguo/album/views/utils/EdgeEffect;-><init>(Landroid/content/Context;)V
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_f
.end method
.method public onAbsorb(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v0, v0, p2
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/utils/EdgeEffect;->onAbsorb(I)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v0, v0, p2
invoke-virtual {v0}, Lcom/pinguo/album/views/utils/EdgeEffect;->isFinished()Z
move-result v0
if-nez v0, :cond_14
invoke-virtual {p0}, Lcom/pinguo/album/views/EdgeView;->invalidate()V
:cond_14
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 15
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
sub-int v8, p4, p2
sub-int v6, p5, p3
const/4 v7, 0x0
:goto_8
const/4 v0, 0x4
if-lt v7, v0, :cond_6f
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x10
invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x20
invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x30
invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x10
const/high16 v2, 0x42b4
const/4 v3, 0x0
const/4 v4, 0x0
const/high16 v5, 0x3f80
invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x10
const/high16 v2, 0x3f80
const/high16 v3, -0x4080
const/high16 v4, 0x3f80
invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x20
const/4 v2, 0x0
int-to-float v3, v6
const/4 v4, 0x0
invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x20
const/high16 v2, 0x3f80
const/high16 v3, -0x4080
const/high16 v4, 0x3f80
invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x30
int-to-float v2, v8
const/4 v3, 0x0
const/4 v4, 0x0
invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
const/16 v1, 0x30
const/high16 v2, 0x42b4
const/4 v3, 0x0
const/4 v4, 0x0
const/high16 v5, 0x3f80
invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V
goto :goto_2
:cond_6f
and-int/lit8 v0, v7, 0x1
if-nez v0, :cond_7d
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v0, v0, v7
invoke-virtual {v0, v8, v6}, Lcom/pinguo/album/views/utils/EdgeEffect;->setSize(II)V
:goto_7a
add-int/lit8 v7, v7, 0x1
goto :goto_8
:cond_7d
iget-object v0, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v0, v0, v7
invoke-virtual {v0, v6, v8}, Lcom/pinguo/album/views/utils/EdgeEffect;->setSize(II)V
goto :goto_7a
.end method
.method public onPull(II)V
.registers 7
and-int/lit8 v1, p2, 0x1
if-nez v1, :cond_20
invoke-virtual {p0}, Lcom/pinguo/album/views/EdgeView;->getWidth()I
move-result v0
:goto_8
iget-object v1, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v1, v1, p2
int-to-float v2, p1
int-to-float v3, v0
div-float/2addr v2, v3
invoke-virtual {v1, v2}, Lcom/pinguo/album/views/utils/EdgeEffect;->onPull(F)V
iget-object v1, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v1, v1, p2
invoke-virtual {v1}, Lcom/pinguo/album/views/utils/EdgeEffect;->isFinished()Z
move-result v1
if-nez v1, :cond_1f
invoke-virtual {p0}, Lcom/pinguo/album/views/EdgeView;->invalidate()V
:cond_1f
return-void
:cond_20
invoke-virtual {p0}, Lcom/pinguo/album/views/EdgeView;->getHeight()I
move-result v0
goto :goto_8
.end method
.method public onRelease()V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
:goto_2
const/4 v2, 0x4
if-lt v0, v2, :cond_b
if-eqz v1, :cond_a
invoke-virtual {p0}, Lcom/pinguo/album/views/EdgeView;->invalidate()V
:cond_a
return-void
:cond_b
iget-object v2, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v2, v2, v0
invoke-virtual {v2}, Lcom/pinguo/album/views/utils/EdgeEffect;->onRelease()V
iget-object v2, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v2, v2, v0
invoke-virtual {v2}, Lcom/pinguo/album/views/utils/EdgeEffect;->isFinished()Z
move-result v2
if-eqz v2, :cond_21
const/4 v2, 0x0
:goto_1d
or-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_21
const/4 v2, 0x1
goto :goto_1d
.end method
.method protected render(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 6
invoke-super {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->render(Lcom/pinguo/album/opengles/GLESCanvas;)V
const/4 v1, 0x0
const/4 v0, 0x0
:goto_5
const/4 v2, 0x4
if-lt v0, v2, :cond_e
if-eqz v1, :cond_d
invoke-virtual {p0}, Lcom/pinguo/album/views/EdgeView;->invalidate()V
:cond_d
return-void
:cond_e
const/4 v2, 0x2
invoke-interface {p1, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V
iget-object v2, p0, Lcom/pinguo/album/views/EdgeView;->mMatrix:[F
mul-int/lit8 v3, v0, 0x10
invoke-interface {p1, v2, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->multiplyMatrix([FI)V
iget-object v2, p0, Lcom/pinguo/album/views/EdgeView;->mEffect:[Lcom/pinguo/album/views/utils/EdgeEffect;
aget-object v2, v2, v0
invoke-virtual {v2, p1}, Lcom/pinguo/album/views/utils/EdgeEffect;->draw(Lcom/pinguo/album/opengles/GLESCanvas;)Z
move-result v2
or-int/2addr v1, v2
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
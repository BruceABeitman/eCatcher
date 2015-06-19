.class final Lcom/bbm/ui/ha;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"
.field final synthetic a:Lcom/bbm/ui/TouchImageView;
.method private constructor <init>(Lcom/bbm/ui/TouchImageView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/ui/TouchImageView;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/ha;-><init>(Lcom/bbm/ui/TouchImageView;)V
return-void
.end method
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
.registers 6
invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F
move-result v0
iget-object v1, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v1, v1, Lcom/bbm/ui/TouchImageView;->m:F
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v3, v2, Lcom/bbm/ui/TouchImageView;->m:F
mul-float/2addr v3, v0
iput v3, v2, Lcom/bbm/ui/TouchImageView;->m:F
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->m:F
iget-object v3, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v3, v3, Lcom/bbm/ui/TouchImageView;->i:F
cmpl-float v2, v2, v3
if-lez v2, :cond_68
iget-object v0, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->i:F
iput v2, v0, Lcom/bbm/ui/TouchImageView;->m:F
iget-object v0, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v0, v0, Lcom/bbm/ui/TouchImageView;->i:F
div-float/2addr v0, v1
:cond_28
:goto_28
iget-object v1, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v1, v1, Lcom/bbm/ui/TouchImageView;->n:F
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->m:F
mul-float/2addr v1, v2
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->k:I
int-to-float v2, v2
cmpg-float v1, v1, v2
if-gtz v1, :cond_82
iget-object v1, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v1, v1, Lcom/bbm/ui/TouchImageView;->o:F
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->m:F
mul-float/2addr v1, v2
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->l:I
int-to-float v2, v2
cmpg-float v1, v1, v2
if-gtz v1, :cond_82
iget-object v1, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget-object v1, v1, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->k:I
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
iget-object v3, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v3, v3, Lcom/bbm/ui/TouchImageView;->l:I
div-int/lit8 v3, v3, 0x2
int-to-float v3, v3
invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z
:goto_61
iget-object v0, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
invoke-virtual {v0}, Lcom/bbm/ui/TouchImageView;->a()V
const/4 v0, 0x1
return v0
:cond_68
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->m:F
iget-object v3, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v3, v3, Lcom/bbm/ui/TouchImageView;->h:F
cmpg-float v2, v2, v3
if-gez v2, :cond_28
iget-object v0, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget-object v2, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v2, v2, Lcom/bbm/ui/TouchImageView;->h:F
iput v2, v0, Lcom/bbm/ui/TouchImageView;->m:F
iget-object v0, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget v0, v0, Lcom/bbm/ui/TouchImageView;->h:F
div-float/2addr v0, v1
goto :goto_28
:cond_82
iget-object v1, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
iget-object v1, v1, Lcom/bbm/ui/TouchImageView;->a:Landroid/graphics/Matrix;
invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F
move-result v2
invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F
move-result v3
invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z
goto :goto_61
.end method
.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
.registers 4
iget-object v0, p0, Lcom/bbm/ui/ha;->a:Lcom/bbm/ui/TouchImageView;
const/4 v1, 0x2
iput v1, v0, Lcom/bbm/ui/TouchImageView;->e:I
const/4 v0, 0x1
return v0
.end method
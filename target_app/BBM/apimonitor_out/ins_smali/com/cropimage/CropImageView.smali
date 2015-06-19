.class public Lcom/cropimage/CropImageView;
.super Lcom/cropimage/i;
.source "CropImageView.java"
.field  a:Ljava/util/ArrayList;
.field  b:Lcom/cropimage/g;
.field  c:F
.field  d:F
.field  e:I
.field private final m:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/cropimage/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-object v0, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
iput-object p1, p0, Lcom/cropimage/CropImageView;->m:Landroid/content/Context;
return-void
.end method
.method private b(Lcom/cropimage/g;)V
.registers 8
const/4 v5, 0x0
iget-object v1, p1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getLeft()I
move-result v0
iget v2, v1, Landroid/graphics/Rect;->left:I
sub-int/2addr v0, v2
invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getRight()I
move-result v0
iget v3, v1, Landroid/graphics/Rect;->right:I
sub-int/2addr v0, v3
invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getTop()I
move-result v0
iget v4, v1, Landroid/graphics/Rect;->top:I
sub-int/2addr v0, v4
invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getBottom()I
move-result v4
iget v1, v1, Landroid/graphics/Rect;->bottom:I
sub-int v1, v4, v1
invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I
move-result v1
if-eqz v2, :cond_3e
:goto_32
if-eqz v0, :cond_40
:goto_34
if-nez v2, :cond_38
if-eqz v0, :cond_3d
:cond_38
int-to-float v1, v2
int-to-float v0, v0
invoke-virtual {p0, v1, v0}, Lcom/cropimage/CropImageView;->b(FF)V
:cond_3d
return-void
:cond_3e
move v2, v3
goto :goto_32
:cond_40
move v0, v1
goto :goto_34
.end method
.method private c(Lcom/cropimage/g;)V
.registers 9
const/4 v6, 0x1
const/4 v5, 0x0
const v4, 0x3f19999a
iget-object v0, p1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v1
int-to-float v1, v1
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
int-to-float v0, v0
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getWidth()I
move-result v2
int-to-float v2, v2
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getHeight()I
move-result v3
int-to-float v3, v3
div-float v1, v2, v1
mul-float/2addr v1, v4
div-float v0, v3, v0
mul-float/2addr v0, v4
invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F
move-result v0
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getScale()F
move-result v1
mul-float/2addr v0, v1
const/high16 v1, 0x3f80
invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F
move-result v0
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getScale()F
move-result v1
sub-float v1, v0, v1
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
div-float/2addr v1, v0
float-to-double v1, v1
const-wide v3, 0x3fb999999999999aL
cmpl-double v1, v1, v3
if-lez v1, :cond_66
const/4 v1, 0x2
new-array v1, v1, [F
iget-object v2, p1, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F
move-result v2
aput v2, v1, v5
iget-object v2, p1, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F
move-result v2
aput v2, v1, v6
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V
aget v2, v1, v5
aget v1, v1, v6
invoke-virtual {p0, v0, v2, v1}, Lcom/cropimage/CropImageView;->b(FFF)V
:cond_66
invoke-direct {p0, p1}, Lcom/cropimage/CropImageView;->b(Lcom/cropimage/g;)V
return-void
.end method
.method protected final a(FF)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/cropimage/i;->a(FF)V
const/4 v0, 0x0
move v1, v0
:goto_5
iget-object v0, p0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_21
iget-object v0, p0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/cropimage/g;
iget-object v2, v0, Lcom/cropimage/g;->h:Landroid/graphics/Matrix;
invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z
invoke-virtual {v0}, Lcom/cropimage/g;->b()V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_5
:cond_21
return-void
.end method
.method protected final a(FFF)V
.registers 8
invoke-super {p0, p1, p2, p3}, Lcom/cropimage/i;->a(FFF)V
iget-object v0, p0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/cropimage/g;
iget-object v2, v0, Lcom/cropimage/g;->h:Landroid/graphics/Matrix;
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
invoke-virtual {v0}, Lcom/cropimage/g;->b()V
goto :goto_9
:cond_22
return-void
.end method
.method public final a(Lcom/cropimage/g;)V
.registers 3
iget-object v0, p0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->invalidate()V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 19
invoke-super/range {p0 .. p1}, Lcom/cropimage/i;->onDraw(Landroid/graphics/Canvas;)V
const/4 v1, 0x0
move v2, v1
:goto_5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v2, v1, :cond_202
move-object/from16 v0, p0
iget-object v1, v0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/cropimage/g;
iget-boolean v3, v1, Lcom/cropimage/g;->c:Z
if-nez v3, :cond_39
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
new-instance v4, Landroid/graphics/Path;
invoke-direct {v4}, Landroid/graphics/Path;-><init>()V
iget-boolean v3, v1, Lcom/cropimage/g;->b:Z
if-nez v3, :cond_3d
iget-object v3, v1, Lcom/cropimage/g;->q:Landroid/graphics/Paint;
const/high16 v4, -0x100
invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V
iget-object v3, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget-object v1, v1, Lcom/cropimage/g;->q:Landroid/graphics/Paint;
move-object/from16 v0, p1
invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:cond_39
:goto_39
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_5
:cond_3d
new-instance v5, Landroid/graphics/Rect;
invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V
iget-object v3, v1, Lcom/cropimage/g;->a:Landroid/view/View;
invoke-virtual {v3, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
iget-boolean v3, v1, Lcom/cropimage/g;->k:Z
if-eqz v3, :cond_10e
iget-object v3, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
move-result v3
int-to-float v3, v3
iget-object v6, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {v6}, Landroid/graphics/Rect;->height()I
move-result v6
int-to-float v6, v6
iget-object v7, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
int-to-float v7, v7
const/high16 v8, 0x4000
div-float v8, v3, v8
add-float/2addr v7, v8
iget-object v8, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->top:I
int-to-float v8, v8
const/high16 v9, 0x4000
div-float/2addr v6, v9
add-float/2addr v6, v8
const/high16 v8, 0x4000
div-float/2addr v3, v8
sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
invoke-virtual {v4, v7, v6, v3, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V
iget-object v3, v1, Lcom/cropimage/g;->q:Landroid/graphics/Paint;
const v6, -0x10fb2a
invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V
:goto_7c
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z
move-result v3
if-nez v3, :cond_127
sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
move-object/from16 v0, p1
invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
iget-boolean v3, v1, Lcom/cropimage/g;->b:Z
if-eqz v3, :cond_123
iget-object v3, v1, Lcom/cropimage/g;->o:Landroid/graphics/Paint;
:goto_8f
move-object/from16 v0, p1
invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
iget-object v3, v1, Lcom/cropimage/g;->q:Landroid/graphics/Paint;
move-object/from16 v0, p1
invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
:goto_9e
iget-object v3, v1, Lcom/cropimage/g;->d:Lcom/cropimage/h;
sget-object v4, Lcom/cropimage/h;->c:Lcom/cropimage/h;
if-ne v3, v4, :cond_39
iget-boolean v3, v1, Lcom/cropimage/g;->k:Z
if-eqz v3, :cond_15a
iget-object v3, v1, Lcom/cropimage/g;->n:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v3
iget-object v4, v1, Lcom/cropimage/g;->n:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v4
const-wide v5, 0x3fe921fb54442d18L
invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D
move-result-wide v5
iget-object v7, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {v7}, Landroid/graphics/Rect;->width()I
move-result v7
int-to-double v7, v7
const-wide/high16 v9, 0x4000
div-double/2addr v7, v9
mul-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J
move-result-wide v5
long-to-int v5, v5
iget-object v6, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
iget-object v7, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {v7}, Landroid/graphics/Rect;->width()I
move-result v7
div-int/lit8 v7, v7, 0x2
add-int/2addr v6, v7
add-int/2addr v6, v5
div-int/lit8 v3, v3, 0x2
sub-int v3, v6, v3
iget-object v6, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->top:I
iget-object v7, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {v7}, Landroid/graphics/Rect;->height()I
move-result v7
div-int/lit8 v7, v7, 0x2
add-int/2addr v6, v7
sub-int v5, v6, v5
div-int/lit8 v4, v4, 0x2
sub-int v4, v5, v4
iget-object v5, v1, Lcom/cropimage/g;->n:Landroid/graphics/drawable/Drawable;
iget-object v6, v1, Lcom/cropimage/g;->n:Landroid/graphics/drawable/Drawable;
invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v6
add-int/2addr v6, v3
iget-object v7, v1, Lcom/cropimage/g;->n:Landroid/graphics/drawable/Drawable;
invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v7
add-int/2addr v7, v4
invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v1, v1, Lcom/cropimage/g;->n:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto/16 :goto_39
:cond_10e
new-instance v3, Landroid/graphics/RectF;
iget-object v6, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-direct {v3, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
iget-object v3, v1, Lcom/cropimage/g;->q:Landroid/graphics/Paint;
const/16 v6, -0x7600
invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V
goto/16 :goto_7c
:cond_123
iget-object v3, v1, Lcom/cropimage/g;->p:Landroid/graphics/Paint;
goto/16 :goto_8f
:cond_127
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I
move-result v3
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I
move-result v6
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v6
new-instance v7, Landroid/graphics/Canvas;
invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
iget-boolean v3, v1, Lcom/cropimage/g;->b:Z
if-eqz v3, :cond_157
iget-object v3, v1, Lcom/cropimage/g;->o:Landroid/graphics/Paint;
:goto_145
invoke-virtual {v7, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
iget-object v3, v1, Lcom/cropimage/g;->q:Landroid/graphics/Paint;
invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto/16 :goto_9e
:cond_157
iget-object v3, v1, Lcom/cropimage/g;->p:Landroid/graphics/Paint;
goto :goto_145
:cond_15a
iget-object v3, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
add-int/lit8 v3, v3, 0x1
iget-object v4, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/lit8 v4, v4, 0x1
iget-object v5, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
add-int/lit8 v5, v5, 0x4
iget-object v6, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->bottom:I
add-int/lit8 v6, v6, 0x3
iget-object v7, v1, Lcom/cropimage/g;->l:Landroid/graphics/drawable/Drawable;
invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v7
div-int/lit8 v7, v7, 0x2
iget-object v8, v1, Lcom/cropimage/g;->l:Landroid/graphics/drawable/Drawable;
invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v8
div-int/lit8 v8, v8, 0x2
iget-object v9, v1, Lcom/cropimage/g;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v9
div-int/lit8 v9, v9, 0x2
iget-object v10, v1, Lcom/cropimage/g;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v10
div-int/lit8 v10, v10, 0x2
iget-object v11, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v11, v11, Landroid/graphics/Rect;->left:I
iget-object v12, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v12, v12, Landroid/graphics/Rect;->right:I
iget-object v13, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v13, v13, Landroid/graphics/Rect;->left:I
sub-int/2addr v12, v13
div-int/lit8 v12, v12, 0x2
add-int/2addr v11, v12
iget-object v12, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v12, v12, Landroid/graphics/Rect;->top:I
iget-object v13, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v13, v13, Landroid/graphics/Rect;->bottom:I
iget-object v14, v1, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget v14, v14, Landroid/graphics/Rect;->top:I
sub-int/2addr v13, v14
div-int/lit8 v13, v13, 0x2
add-int/2addr v12, v13
iget-object v13, v1, Lcom/cropimage/g;->l:Landroid/graphics/drawable/Drawable;
sub-int v14, v3, v7
sub-int v15, v12, v8
add-int/2addr v3, v7
add-int v16, v12, v8
move/from16 v0, v16
invoke-virtual {v13, v14, v15, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v3, v1, Lcom/cropimage/g;->l:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-object v3, v1, Lcom/cropimage/g;->l:Landroid/graphics/drawable/Drawable;
sub-int v13, v4, v7
sub-int v14, v12, v8
add-int/2addr v4, v7
add-int v7, v12, v8
invoke-virtual {v3, v13, v14, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v3, v1, Lcom/cropimage/g;->l:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-object v3, v1, Lcom/cropimage/g;->m:Landroid/graphics/drawable/Drawable;
sub-int v4, v11, v10
sub-int v7, v5, v9
add-int v8, v11, v10
add-int/2addr v5, v9
invoke-virtual {v3, v4, v7, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v3, v1, Lcom/cropimage/g;->m:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-object v3, v1, Lcom/cropimage/g;->m:Landroid/graphics/drawable/Drawable;
sub-int v4, v11, v10
sub-int v5, v6, v9
add-int v7, v11, v10
add-int/2addr v6, v9
invoke-virtual {v3, v4, v5, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v1, v1, Lcom/cropimage/g;->m:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto/16 :goto_39
:cond_202
return-void
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/cropimage/i;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/cropimage/i;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method protected onLayout(ZIIII)V
.registers 10
invoke-super/range {p0 .. p5}, Lcom/cropimage/i;->onLayout(ZIIII)V
iget-object v0, p0, Lcom/cropimage/CropImageView;->h:Lcom/cropimage/m;
iget-object v0, v0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
:cond_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/cropimage/g;
iget-object v2, v0, Lcom/cropimage/g;->h:Landroid/graphics/Matrix;
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
invoke-virtual {v0}, Lcom/cropimage/g;->b()V
iget-boolean v2, v0, Lcom/cropimage/g;->b:Z
if-eqz v2, :cond_f
invoke-direct {p0, v0}, Lcom/cropimage/CropImageView;->c(Lcom/cropimage/g;)V
goto :goto_f
:cond_2f
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 15
const/high16 v4, 0x41c8
const/high16 v10, 0x4000
const/high16 v11, 0x41a0
const/4 v3, 0x1
const/4 v6, 0x0
iget-object v0, p0, Lcom/cropimage/CropImageView;->m:Landroid/content/Context;
check-cast v0, Lcom/cropimage/CropImage;
iget-boolean v0, v0, Lcom/cropimage/CropImage;->a:Z
if-eqz v0, :cond_12
const/4 v3, 0x0
:cond_11
:goto_11
return v3
:cond_12
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_356
:cond_19
:goto_19
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_360
goto :goto_11
:pswitch_21
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->a()V
goto :goto_11
:pswitch_25
const/4 v0, 0x0
move v1, v0
:goto_27
iget-object v0, p0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_19
iget-object v0, p0, Lcom/cropimage/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/cropimage/g;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v8
invoke-virtual {v0}, Lcom/cropimage/g;->a()Landroid/graphics/Rect;
move-result-object v9
iget-boolean v2, v0, Lcom/cropimage/g;->k:Z
if-eqz v2, :cond_b6
invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I
move-result v2
int-to-float v2, v2
sub-float v2, v7, v2
invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I
move-result v4
int-to-float v4, v4
sub-float v4, v8, v4
mul-float v5, v2, v2
mul-float v7, v4, v4
add-float/2addr v5, v7
float-to-double v7, v5
invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v7
double-to-int v5, v7
iget-object v7, v0, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {v7}, Landroid/graphics/Rect;->width()I
move-result v7
div-int/lit8 v7, v7, 0x2
sub-int v8, v5, v7
invoke-static {v8}, Ljava/lang/Math;->abs(I)I
move-result v8
int-to-float v8, v8
cmpg-float v8, v8, v11
if-gtz v8, :cond_af
invoke-static {v4}, Ljava/lang/Math;->abs(F)F
move-result v5
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v7
cmpl-float v5, v5, v7
if-lez v5, :cond_a7
cmpg-float v2, v4, v6
if-gez v2, :cond_a4
const/16 v2, 0x8
:goto_85
:cond_85
if-eq v2, v3, :cond_12e
iput v2, p0, Lcom/cropimage/CropImageView;->e:I
iput-object v0, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Lcom/cropimage/CropImageView;->c:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iput v0, p0, Lcom/cropimage/CropImageView;->d:F
iget-object v1, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
const/16 v0, 0x20
if-ne v2, v0, :cond_12a
sget-object v0, Lcom/cropimage/h;->b:Lcom/cropimage/h;
:goto_9f
invoke-virtual {v1, v0}, Lcom/cropimage/g;->a(Lcom/cropimage/h;)V
goto/16 :goto_19
:cond_a4
const/16 v2, 0x10
goto :goto_85
:cond_a7
cmpg-float v2, v2, v6
if-gez v2, :cond_ad
const/4 v2, 0x2
goto :goto_85
:cond_ad
const/4 v2, 0x4
goto :goto_85
:cond_af
if-ge v5, v7, :cond_b4
const/16 v2, 0x20
goto :goto_85
:cond_b4
move v2, v3
goto :goto_85
:cond_b6
iget v2, v9, Landroid/graphics/Rect;->top:I
int-to-float v2, v2
sub-float/2addr v2, v11
cmpl-float v2, v8, v2
if-ltz v2, :cond_126
iget v2, v9, Landroid/graphics/Rect;->bottom:I
int-to-float v2, v2
add-float/2addr v2, v11
cmpg-float v2, v8, v2
if-gez v2, :cond_126
move v2, v3
:goto_c7
iget v4, v9, Landroid/graphics/Rect;->left:I
int-to-float v4, v4
sub-float/2addr v4, v11
cmpl-float v4, v7, v4
if-ltz v4, :cond_128
iget v4, v9, Landroid/graphics/Rect;->right:I
int-to-float v4, v4
add-float/2addr v4, v11
cmpg-float v4, v7, v4
if-gez v4, :cond_128
move v4, v3
:goto_d8
iget v5, v9, Landroid/graphics/Rect;->left:I
int-to-float v5, v5
sub-float/2addr v5, v7
invoke-static {v5}, Ljava/lang/Math;->abs(F)F
move-result v5
cmpg-float v5, v5, v11
if-gez v5, :cond_352
if-eqz v2, :cond_352
const/4 v5, 0x3
:goto_e7
iget v10, v9, Landroid/graphics/Rect;->right:I
int-to-float v10, v10
sub-float/2addr v10, v7
invoke-static {v10}, Ljava/lang/Math;->abs(F)F
move-result v10
cmpg-float v10, v10, v11
if-gez v10, :cond_f7
if-eqz v2, :cond_f7
or-int/lit8 v5, v5, 0x4
:cond_f7
iget v2, v9, Landroid/graphics/Rect;->top:I
int-to-float v2, v2
sub-float/2addr v2, v8
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v2
cmpg-float v2, v2, v11
if-gez v2, :cond_107
if-eqz v4, :cond_107
or-int/lit8 v5, v5, 0x8
:cond_107
iget v2, v9, Landroid/graphics/Rect;->bottom:I
int-to-float v2, v2
sub-float/2addr v2, v8
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v2
cmpg-float v2, v2, v11
if-gez v2, :cond_34f
if-eqz v4, :cond_34f
or-int/lit8 v5, v5, 0x10
move v2, v5
:goto_118
if-ne v2, v3, :cond_85
float-to-int v4, v7
float-to-int v5, v8
invoke-virtual {v9, v4, v5}, Landroid/graphics/Rect;->contains(II)Z
move-result v4
if-eqz v4, :cond_85
const/16 v2, 0x20
goto/16 :goto_85
:cond_126
const/4 v2, 0x0
goto :goto_c7
:cond_128
const/4 v4, 0x0
goto :goto_d8
:cond_12a
sget-object v0, Lcom/cropimage/h;->c:Lcom/cropimage/h;
goto/16 :goto_9f
:cond_12e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_27
:pswitch_133
iget-object v0, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
if-eqz v0, :cond_143
iget-object v0, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
invoke-direct {p0, v0}, Lcom/cropimage/CropImageView;->c(Lcom/cropimage/g;)V
iget-object v0, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
sget-object v1, Lcom/cropimage/h;->a:Lcom/cropimage/h;
invoke-virtual {v0, v1}, Lcom/cropimage/g;->a(Lcom/cropimage/h;)V
:cond_143
const/4 v0, 0x0
iput-object v0, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
goto/16 :goto_19
:pswitch_148
iget-object v0, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
if-eqz v0, :cond_19
iget-object v5, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
iget v2, p0, Lcom/cropimage/CropImageView;->e:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iget v1, p0, Lcom/cropimage/CropImageView;->c:F
sub-float v1, v0, v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iget v7, p0, Lcom/cropimage/CropImageView;->d:F
sub-float/2addr v0, v7
invoke-virtual {v5}, Lcom/cropimage/g;->a()Landroid/graphics/Rect;
move-result-object v7
if-eq v2, v3, :cond_1e4
const/16 v8, 0x20
if-ne v2, v8, :cond_1f7
iget-object v2, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
move-result v2
invoke-virtual {v7}, Landroid/graphics/Rect;->width()I
move-result v4
int-to-float v4, v4
div-float/2addr v2, v4
mul-float/2addr v1, v2
iget-object v2, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->height()F
move-result v2
invoke-virtual {v7}, Landroid/graphics/Rect;->height()I
move-result v4
int-to-float v4, v4
div-float/2addr v2, v4
mul-float/2addr v0, v2
new-instance v2, Landroid/graphics/Rect;
iget-object v4, v5, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
iget-object v4, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offset(FF)V
iget-object v0, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->left:F
iget-object v4, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
iget v4, v4, Landroid/graphics/RectF;->left:F
sub-float/2addr v1, v4
invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F
move-result v1
iget-object v4, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v4, v4, Landroid/graphics/RectF;->top:F
iget-object v7, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
iget v7, v7, Landroid/graphics/RectF;->top:F
sub-float/2addr v4, v7
invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F
move-result v4
invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V
iget-object v0, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->right:F
iget-object v4, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
iget v4, v4, Landroid/graphics/RectF;->right:F
sub-float/2addr v1, v4
invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F
move-result v1
iget-object v4, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v4, v4, Landroid/graphics/RectF;->bottom:F
iget-object v7, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
iget v7, v7, Landroid/graphics/RectF;->bottom:F
sub-float/2addr v4, v7
invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F
move-result v4
invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V
invoke-virtual {v5}, Lcom/cropimage/g;->a()Landroid/graphics/Rect;
move-result-object v0
iput-object v0, v5, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget-object v0, v5, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
invoke-virtual {v2, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V
const/16 v0, -0xa
const/16 v1, -0xa
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V
iget-object v0, v5, Lcom/cropimage/g;->a:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V
:cond_1e4
:goto_1e4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Lcom/cropimage/CropImageView;->c:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iput v0, p0, Lcom/cropimage/CropImageView;->d:F
iget-object v0, p0, Lcom/cropimage/CropImageView;->b:Lcom/cropimage/g;
invoke-direct {p0, v0}, Lcom/cropimage/CropImageView;->b(Lcom/cropimage/g;)V
goto/16 :goto_19
:cond_1f7
and-int/lit8 v8, v2, 0x6
if-nez v8, :cond_1fc
move v1, v6
:cond_1fc
and-int/lit8 v8, v2, 0x18
if-nez v8, :cond_201
move v0, v6
:cond_201
iget-object v8, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-virtual {v8}, Landroid/graphics/RectF;->width()F
move-result v8
invoke-virtual {v7}, Landroid/graphics/Rect;->width()I
move-result v9
int-to-float v9, v9
div-float/2addr v8, v9
mul-float/2addr v1, v8
iget-object v8, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-virtual {v8}, Landroid/graphics/RectF;->height()F
move-result v8
invoke-virtual {v7}, Landroid/graphics/Rect;->height()I
move-result v7
int-to-float v7, v7
div-float v7, v8, v7
mul-float/2addr v7, v0
and-int/lit8 v0, v2, 0x2
if-eqz v0, :cond_2fe
const/4 v0, -0x1
:goto_221
int-to-float v0, v0
mul-float/2addr v1, v0
and-int/lit8 v0, v2, 0x8
if-eqz v0, :cond_301
const/4 v0, -0x1
:goto_228
int-to-float v0, v0
mul-float v2, v0, v7
iget-boolean v0, v5, Lcom/cropimage/g;->i:Z
if-eqz v0, :cond_34b
cmpl-float v0, v1, v6
if-eqz v0, :cond_304
iget v0, v5, Lcom/cropimage/g;->j:F
div-float v0, v1, v0
move v12, v1
move v1, v0
move v0, v12
:goto_23a
new-instance v2, Landroid/graphics/RectF;
iget-object v7, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-direct {v2, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V
cmpl-float v7, v0, v6
if-lez v7, :cond_26a
invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
move-result v7
mul-float v8, v10, v0
add-float/2addr v7, v8
iget-object v8, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
invoke-virtual {v8}, Landroid/graphics/RectF;->width()F
move-result v8
cmpl-float v7, v7, v8
if-lez v7, :cond_26a
iget-object v0, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
invoke-virtual {v0}, Landroid/graphics/RectF;->width()F
move-result v0
invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
move-result v7
sub-float/2addr v0, v7
div-float/2addr v0, v10
iget-boolean v7, v5, Lcom/cropimage/g;->i:Z
if-eqz v7, :cond_26a
iget v1, v5, Lcom/cropimage/g;->j:F
div-float v1, v0, v1
:cond_26a
cmpl-float v7, v1, v6
if-lez v7, :cond_292
invoke-virtual {v2}, Landroid/graphics/RectF;->height()F
move-result v7
mul-float v8, v10, v1
add-float/2addr v7, v8
iget-object v8, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
invoke-virtual {v8}, Landroid/graphics/RectF;->height()F
move-result v8
cmpl-float v7, v7, v8
if-lez v7, :cond_292
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
invoke-virtual {v1}, Landroid/graphics/RectF;->height()F
move-result v1
invoke-virtual {v2}, Landroid/graphics/RectF;->height()F
move-result v7
sub-float/2addr v1, v7
div-float/2addr v1, v10
iget-boolean v7, v5, Lcom/cropimage/g;->i:Z
if-eqz v7, :cond_292
iget v0, v5, Lcom/cropimage/g;->j:F
mul-float/2addr v0, v1
:cond_292
neg-float v0, v0
neg-float v1, v1
invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->inset(FF)V
invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
move-result v0
cmpg-float v0, v0, v4
if-gez v0, :cond_2aa
invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
move-result v0
sub-float v0, v4, v0
neg-float v0, v0
div-float/2addr v0, v10
invoke-virtual {v2, v0, v6}, Landroid/graphics/RectF;->inset(FF)V
:cond_2aa
iget-boolean v0, v5, Lcom/cropimage/g;->i:Z
if-eqz v0, :cond_30e
iget v0, v5, Lcom/cropimage/g;->j:F
div-float v0, v4, v0
:goto_2b2
invoke-virtual {v2}, Landroid/graphics/RectF;->height()F
move-result v1
cmpg-float v1, v1, v0
if-gez v1, :cond_2c4
invoke-virtual {v2}, Landroid/graphics/RectF;->height()F
move-result v1
sub-float/2addr v0, v1
neg-float v0, v0
div-float/2addr v0, v10
invoke-virtual {v2, v6, v0}, Landroid/graphics/RectF;->inset(FF)V
:cond_2c4
iget v0, v2, Landroid/graphics/RectF;->left:F
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->left:F
cmpg-float v0, v0, v1
if-gez v0, :cond_310
iget-object v0, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v0, v0, Landroid/graphics/RectF;->left:F
iget v1, v2, Landroid/graphics/RectF;->left:F
sub-float/2addr v0, v1
invoke-virtual {v2, v0, v6}, Landroid/graphics/RectF;->offset(FF)V
:cond_2d8
:goto_2d8
iget v0, v2, Landroid/graphics/RectF;->top:F
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->top:F
cmpg-float v0, v0, v1
if-gez v0, :cond_326
iget-object v0, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v0, v0, Landroid/graphics/RectF;->top:F
iget v1, v2, Landroid/graphics/RectF;->top:F
sub-float/2addr v0, v1
invoke-virtual {v2, v6, v0}, Landroid/graphics/RectF;->offset(FF)V
:cond_2ec
:goto_2ec
iget-object v0, v5, Lcom/cropimage/g;->g:Landroid/graphics/RectF;
invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
invoke-virtual {v5}, Lcom/cropimage/g;->a()Landroid/graphics/Rect;
move-result-object v0
iput-object v0, v5, Lcom/cropimage/g;->e:Landroid/graphics/Rect;
iget-object v0, v5, Lcom/cropimage/g;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->invalidate()V
goto/16 :goto_1e4
:cond_2fe
move v0, v3
goto/16 :goto_221
:cond_301
move v0, v3
goto/16 :goto_228
:cond_304
cmpl-float v0, v2, v6
if-eqz v0, :cond_34b
iget v0, v5, Lcom/cropimage/g;->j:F
mul-float/2addr v0, v2
move v1, v2
goto/16 :goto_23a
:cond_30e
move v0, v4
goto :goto_2b2
:cond_310
iget v0, v2, Landroid/graphics/RectF;->right:F
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->right:F
cmpl-float v0, v0, v1
if-lez v0, :cond_2d8
iget v0, v2, Landroid/graphics/RectF;->right:F
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->right:F
sub-float/2addr v0, v1
neg-float v0, v0
invoke-virtual {v2, v0, v6}, Landroid/graphics/RectF;->offset(FF)V
goto :goto_2d8
:cond_326
iget v0, v2, Landroid/graphics/RectF;->bottom:F
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->bottom:F
cmpl-float v0, v0, v1
if-lez v0, :cond_2ec
iget v0, v2, Landroid/graphics/RectF;->bottom:F
iget-object v1, v5, Lcom/cropimage/g;->f:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->bottom:F
sub-float/2addr v0, v1
neg-float v0, v0
invoke-virtual {v2, v6, v0}, Landroid/graphics/RectF;->offset(FF)V
goto :goto_2ec
:pswitch_33c
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->getScale()F
move-result v0
const/high16 v1, 0x3f80
cmpl-float v0, v0, v1
if-nez v0, :cond_11
invoke-virtual {p0}, Lcom/cropimage/CropImageView;->a()V
goto/16 :goto_11
:cond_34b
move v0, v1
move v1, v2
goto/16 :goto_23a
:cond_34f
move v2, v5
goto/16 :goto_118
:cond_352
move v5, v3
goto/16 :goto_e7
nop
:pswitch_data_360
.packed-switch 0x1
:pswitch_21
:pswitch_33c
.end packed-switch
:pswitch_data_356
.packed-switch 0x0
:pswitch_25
:pswitch_133
:pswitch_148
.end packed-switch
.end method
.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 2
invoke-super {p0, p1}, Lcom/cropimage/i;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public bridge synthetic setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/cropimage/i;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
return-void
.end method
.method public bridge synthetic setImageRotateBitmapResetBase(Lcom/cropimage/m;Z)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/cropimage/i;->setImageRotateBitmapResetBase(Lcom/cropimage/m;Z)V
return-void
.end method
.method public bridge synthetic setRecycler(Lcom/cropimage/l;)V
.registers 2
invoke-super {p0, p1}, Lcom/cropimage/i;->setRecycler(Lcom/cropimage/l;)V
return-void
.end method
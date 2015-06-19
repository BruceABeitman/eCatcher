.class public final Lcom/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;
.source "AnimatorProxy.java"
.field public static final NEEDS_PROXY:Z
.field private static final PROXIES:Ljava/util/WeakHashMap;
.field private final mAfter:Landroid/graphics/RectF;
.field private mAlpha:F
.field private final mBefore:Landroid/graphics/RectF;
.field private final mCamera:Landroid/graphics/Camera;
.field private mHasPivot:Z
.field private mPivotX:F
.field private mPivotY:F
.field private mRotationX:F
.field private mRotationY:F
.field private mRotationZ:F
.field private mScaleX:F
.field private mScaleY:F
.field private final mTempMatrix:Landroid/graphics/Matrix;
.field private mTranslationX:F
.field private mTranslationY:F
.field private final mView:Ljava/lang/ref/WeakReference;
.method static constructor <clinit>()V
.registers 2
sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const/16 v1, 0xb
if-ge v0, v1, :cond_19
const/4 v0, 0x1
:goto_f
sput-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
sput-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;
return-void
:cond_19
const/4 v0, 0x0
goto :goto_f
.end method
.method private constructor <init>(Landroid/view/View;)V
.registers 4
const/high16 v1, 0x3f80
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
new-instance v0, Landroid/graphics/Camera;
invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;
iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F
iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F
iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;
const-wide/16 v0, 0x0
invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setDuration(J)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setFillAfter(Z)V
invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
return-void
.end method
.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
.registers 9
const/4 v5, 0x0
invoke-virtual {p2}, Landroid/view/View;->getWidth()I
move-result v4
int-to-float v3, v4
invoke-virtual {p2}, Landroid/view/View;->getHeight()I
move-result v4
int-to-float v1, v4
invoke-virtual {p1, v5, v5, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V
iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;
invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V
invoke-direct {p0, v2, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
iget-object v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;
invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
invoke-virtual {p2}, Landroid/view/View;->getLeft()I
move-result v4
int-to-float v4, v4
invoke-virtual {p2}, Landroid/view/View;->getTop()I
move-result v5
int-to-float v5, v5
invoke-virtual {p1, v4, v5}, Landroid/graphics/RectF;->offset(FF)V
iget v4, p1, Landroid/graphics/RectF;->right:F
iget v5, p1, Landroid/graphics/RectF;->left:F
cmpg-float v4, v4, v5
if-gez v4, :cond_38
iget v0, p1, Landroid/graphics/RectF;->right:F
iget v4, p1, Landroid/graphics/RectF;->left:F
iput v4, p1, Landroid/graphics/RectF;->right:F
iput v0, p1, Landroid/graphics/RectF;->left:F
:cond_38
iget v4, p1, Landroid/graphics/RectF;->bottom:F
iget v5, p1, Landroid/graphics/RectF;->top:F
cmpg-float v4, v4, v5
if-gez v4, :cond_48
iget v0, p1, Landroid/graphics/RectF;->top:F
iget v4, p1, Landroid/graphics/RectF;->bottom:F
iput v4, p1, Landroid/graphics/RectF;->top:F
iput v0, p1, Landroid/graphics/RectF;->bottom:F
:cond_48
return-void
.end method
.method private invalidateAfterUpdate()V
.registers 9
iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
if-eqz v1, :cond_10
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v2
if-nez v2, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;
invoke-direct {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;
invoke-virtual {v0, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v2
check-cast v2, Landroid/view/View;
iget v3, v0, Landroid/graphics/RectF;->left:F
float-to-double v3, v3
invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D
move-result-wide v3
double-to-int v3, v3
iget v4, v0, Landroid/graphics/RectF;->top:F
float-to-double v4, v4
invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D
move-result-wide v4
double-to-int v4, v4
iget v5, v0, Landroid/graphics/RectF;->right:F
float-to-double v5, v5
invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
move-result-wide v5
double-to-int v5, v5
iget v6, v0, Landroid/graphics/RectF;->bottom:F
float-to-double v6, v6
invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
move-result-wide v6
double-to-int v6, v6
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V
goto :goto_10
.end method
.method private prepareForUpdate()V
.registers 3
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;
invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
:cond_f
return-void
.end method
.method private transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
.registers 19
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I
move-result v14
int-to-float v13, v14
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I
move-result v14
int-to-float v2, v14
move-object/from16 v0, p0
iget-boolean v3, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z
if-eqz v3, :cond_96
move-object/from16 v0, p0
iget v4, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F
:goto_14
if-eqz v3, :cond_9c
move-object/from16 v0, p0
iget v5, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F
:goto_1a
move-object/from16 v0, p0
iget v6, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F
move-object/from16 v0, p0
iget v7, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F
move-object/from16 v0, p0
iget v8, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F
const/4 v14, 0x0
cmpl-float v14, v6, v14
if-nez v14, :cond_35
const/4 v14, 0x0
cmpl-float v14, v7, v14
if-nez v14, :cond_35
const/4 v14, 0x0
cmpl-float v14, v8, v14
if-eqz v14, :cond_5a
:cond_35
move-object/from16 v0, p0
iget-object v1, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;
invoke-virtual {v1}, Landroid/graphics/Camera;->save()V
invoke-virtual {v1, v6}, Landroid/graphics/Camera;->rotateX(F)V
invoke-virtual {v1, v7}, Landroid/graphics/Camera;->rotateY(F)V
neg-float v14, v8
invoke-virtual {v1, v14}, Landroid/graphics/Camera;->rotateZ(F)V
move-object/from16 v0, p1
invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V
invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V
neg-float v14, v4
neg-float v15, v5
move-object/from16 v0, p1
invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z
move-object/from16 v0, p1
invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z
:cond_5a
move-object/from16 v0, p0
iget v11, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F
move-object/from16 v0, p0
iget v12, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F
const/high16 v14, 0x3f80
cmpl-float v14, v11, v14
if-nez v14, :cond_6e
const/high16 v14, 0x3f80
cmpl-float v14, v12, v14
if-eqz v14, :cond_88
:cond_6e
move-object/from16 v0, p1
invoke-virtual {v0, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z
div-float v14, v4, v13
neg-float v14, v14
mul-float v15, v11, v13
sub-float/2addr v15, v13
mul-float v9, v14, v15
div-float v14, v5, v2
neg-float v14, v14
mul-float v15, v12, v2
sub-float/2addr v15, v2
mul-float v10, v14, v15
move-object/from16 v0, p1
invoke-virtual {v0, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z
:cond_88
move-object/from16 v0, p0
iget v14, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F
move-object/from16 v0, p0
iget v15, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F
move-object/from16 v0, p1
invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z
return-void
:cond_96
const/high16 v14, 0x4000
div-float v4, v13, v14
goto/16 :goto_14
:cond_9c
const/high16 v14, 0x4000
div-float v5, v2, v14
goto/16 :goto_1a
.end method
.method public static wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
.registers 3
sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;
invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;
if-eqz v0, :cond_10
invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;
move-result-object v1
if-eq v0, v1, :cond_1a
:cond_10
new-instance v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-direct {v0, p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V
sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;
invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1a
return-object v0
.end method
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 5
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_16
iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F
invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V
invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;
move-result-object v1
invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
:cond_16
return-void
.end method
.method public getAlpha()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F
return v0
.end method
.method public getPivotX()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F
return v0
.end method
.method public getPivotY()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F
return v0
.end method
.method public getRotation()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F
return v0
.end method
.method public getRotationX()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F
return v0
.end method
.method public getRotationY()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F
return v0
.end method
.method public getScaleX()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F
return v0
.end method
.method public getScaleY()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F
return v0
.end method
.method public getScrollX()I
.registers 3
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return v1
:cond_c
invoke-virtual {v0}, Landroid/view/View;->getScrollX()I
move-result v1
goto :goto_b
.end method
.method public getScrollY()I
.registers 3
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return v1
:cond_c
invoke-virtual {v0}, Landroid/view/View;->getScrollY()I
move-result v1
goto :goto_b
.end method
.method public getTranslationX()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F
return v0
.end method
.method public getTranslationY()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F
return v0
.end method
.method public getX()F
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return v1
:cond_c
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
int-to-float v1, v1
iget v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F
add-float/2addr v1, v2
goto :goto_b
.end method
.method public getY()F
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return v1
:cond_c
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v1
int-to-float v1, v1
iget v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F
add-float/2addr v1, v2
goto :goto_b
.end method
.method public setAlpha(F)V
.registers 4
iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F
cmpl-float v1, v1, p1
if-eqz v1, :cond_15
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_15
invoke-virtual {v0}, Landroid/view/View;->invalidate()V
:cond_15
return-void
.end method
.method public setPivotX(F)V
.registers 3
iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z
if-eqz v0, :cond_a
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_15
:cond_a
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_15
return-void
.end method
.method public setPivotY(F)V
.registers 3
iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z
if-eqz v0, :cond_a
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_15
:cond_a
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_15
return-void
.end method
.method public setRotation(F)V
.registers 3
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_e
return-void
.end method
.method public setRotationX(F)V
.registers 3
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_e
return-void
.end method
.method public setRotationY(F)V
.registers 3
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_e
return-void
.end method
.method public setScaleX(F)V
.registers 3
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_e
return-void
.end method
.method public setScaleY(F)V
.registers 3
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_e
return-void
.end method
.method public setScrollX(I)V
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_11
invoke-virtual {v0}, Landroid/view/View;->getScrollY()I
move-result v1
invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V
:cond_11
return-void
.end method
.method public setScrollY(I)V
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_11
invoke-virtual {v0}, Landroid/view/View;->getScrollX()I
move-result v1
invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V
:cond_11
return-void
.end method
.method public setTranslationX(F)V
.registers 3
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_e
return-void
.end method
.method public setTranslationY(F)V
.registers 3
iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V
iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F
invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V
:cond_e
return-void
.end method
.method public setX(F)V
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
int-to-float v1, v1
sub-float v1, p1, v1
invoke-virtual {p0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V
:cond_14
return-void
.end method
.method public setY(F)V
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v1
int-to-float v1, v1
sub-float v1, p1, v1
invoke-virtual {p0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V
:cond_14
return-void
.end method
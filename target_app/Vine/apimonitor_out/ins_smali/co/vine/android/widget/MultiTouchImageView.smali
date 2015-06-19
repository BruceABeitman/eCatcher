.class public Lco/vine/android/widget/MultiTouchImageView;
.super Landroid/widget/ImageView;
.source "MultiTouchImageView.java"
.field private static final GESTURE_NONE:I = 0x0
.field private static final GESTURE_PAN:I = 0x1
.field private static final GESTURE_ZOOM:I = 0x2
.field private static final MIN_SCALE_FACTOR:F = 1.0f
.field protected mBitmapHeight:F
.field protected mBitmapWidth:F
.field private mCurrentMinScale:F
.field private mGesture:I
.field private mLastDownX:F
.field private mLastDownY:F
.field private mLastZoomDistance:F
.field protected final mMatrix:Landroid/graphics/Matrix;
.field private final mMatrixBounds:Landroid/graphics/RectF;
.field private final mMatrixValues:[F
.field private mMidTouchX:F
.field private mMidTouchY:F
.field private final mStartBounds:Landroid/graphics/RectF;
.field private mTotalScaleFactor:F
.field protected mTransformBounds:Landroid/graphics/RectF;
.field private mViewHeight:F
.field private mViewWidth:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/high16 v1, 0x3f80
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
const/16 v0, 0x9
new-array v0, v0, [F
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixValues:[F
invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->initMultiTouchImageView()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/high16 v1, 0x3f80
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
const/16 v0, 0x9
new-array v0, v0, [F
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixValues:[F
invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->initMultiTouchImageView()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/high16 v1, 0x3f80
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
const/16 v0, 0x9
new-array v0, v0, [F
iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixValues:[F
invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->initMultiTouchImageView()V
return-void
.end method
.method private calculateScale(FFFFLandroid/widget/ImageView$ScaleType;)F
.registers 9
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
if-ne p5, v1, :cond_e
cmpl-float v1, p1, p3
if-lez v1, :cond_b
div-float v0, p4, p3
:goto_a
return v0
:cond_b
div-float v0, p2, p1
goto :goto_a
:cond_e
div-float v1, p2, p1
div-float v2, p4, p3
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v0
goto :goto_a
.end method
.method private resetGesture()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchX:F
iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchY:F
return-void
.end method
.method private resetScale()V
.registers 25
invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->updateBounds()Landroid/graphics/RectF;
move-result-object v9
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
move-object/from16 v20, v0
iget v3, v9, Landroid/graphics/RectF;->left:F
move-object/from16 v0, v20
iget v8, v0, Landroid/graphics/RectF;->left:F
cmpl-float v3, v3, v8
if-gtz v3, :cond_32
iget v3, v9, Landroid/graphics/RectF;->top:F
move-object/from16 v0, v20
iget v8, v0, Landroid/graphics/RectF;->top:F
cmpl-float v3, v3, v8
if-gtz v3, :cond_32
iget v3, v9, Landroid/graphics/RectF;->right:F
move-object/from16 v0, v20
iget v8, v0, Landroid/graphics/RectF;->right:F
cmpg-float v3, v3, v8
if-ltz v3, :cond_32
iget v3, v9, Landroid/graphics/RectF;->bottom:F
move-object/from16 v0, v20
iget v8, v0, Landroid/graphics/RectF;->bottom:F
cmpg-float v3, v3, v8
if-gez v3, :cond_136
:cond_32
move-object/from16 v0, v20
iget v3, v0, Landroid/graphics/RectF;->left:F
invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F
move-result v8
const/high16 v22, 0x4000
div-float v8, v8, v22
add-float v10, v3, v8
move-object/from16 v0, v20
iget v3, v0, Landroid/graphics/RectF;->top:F
invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F
move-result v8
const/high16 v22, 0x4000
div-float v8, v8, v22
add-float v11, v3, v8
iget v3, v9, Landroid/graphics/RectF;->left:F
invoke-virtual {v9}, Landroid/graphics/RectF;->width()F
move-result v8
const/high16 v22, 0x4000
div-float v8, v8, v22
add-float v15, v3, v8
iget v3, v9, Landroid/graphics/RectF;->top:F
invoke-virtual {v9}, Landroid/graphics/RectF;->height()F
move-result v8
const/high16 v22, 0x4000
div-float v8, v8, v22
add-float v16, v3, v8
sub-float v13, v10, v15
sub-float v14, v11, v16
const/4 v3, 0x0
cmpl-float v3, v13, v3
if-nez v3, :cond_74
const/4 v3, 0x0
cmpl-float v3, v14, v3
if-eqz v3, :cond_82
:cond_74
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v3, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
invoke-virtual {v3, v13, v14}, Landroid/graphics/RectF;->offset(FF)V
:cond_82
move-object/from16 v0, p0
iget v12, v0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
cmpg-float v3, v3, v12
if-gez v3, :cond_12d
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
div-float v19, v12, v3
move-object/from16 v0, p0
iput v12, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
move-object/from16 v0, p0
iget v8, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F
const/high16 v22, 0x4000
div-float v8, v8, v22
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F
move/from16 v22, v0
const/high16 v23, 0x4000
div-float v22, v22, v23
move/from16 v0, v19
move/from16 v1, v19
move/from16 v2, v22
invoke-virtual {v3, v0, v1, v8, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapWidth:F
move-object/from16 v0, p0
iget v6, v0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapHeight:F
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->width()F
move-result v5
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->height()F
move-result v7
sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
move-object/from16 v3, p0
invoke-direct/range {v3 .. v8}, Lco/vine/android/widget/MultiTouchImageView;->calculateScale(FFFFLandroid/widget/ImageView$ScaleType;)F
move-result v21
new-instance v17, Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
move-object/from16 v0, v17
invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V
mul-float v3, v4, v21
float-to-int v3, v3
float-to-int v8, v5
if-le v3, v8, :cond_103
mul-float v3, v4, v21
sub-float/2addr v3, v5
const/high16 v8, 0x4000
div-float v18, v3, v8
move-object/from16 v0, v17
iget v3, v0, Landroid/graphics/RectF;->left:F
sub-float v3, v3, v18
move-object/from16 v0, v17
iput v3, v0, Landroid/graphics/RectF;->left:F
move-object/from16 v0, v17
iget v3, v0, Landroid/graphics/RectF;->right:F
add-float v3, v3, v18
move-object/from16 v0, v17
iput v3, v0, Landroid/graphics/RectF;->right:F
:cond_103
mul-float v3, v6, v21
float-to-int v3, v3
float-to-int v8, v7
if-le v3, v8, :cond_124
mul-float v3, v6, v21
sub-float/2addr v3, v7
const/high16 v8, 0x4000
div-float v18, v3, v8
move-object/from16 v0, v17
iget v3, v0, Landroid/graphics/RectF;->top:F
sub-float v3, v3, v18
move-object/from16 v0, v17
iput v3, v0, Landroid/graphics/RectF;->top:F
move-object/from16 v0, v17
iget v3, v0, Landroid/graphics/RectF;->bottom:F
add-float v3, v3, v18
move-object/from16 v0, v17
iput v3, v0, Landroid/graphics/RectF;->bottom:F
:cond_124
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
move-object/from16 v0, v17
invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
:cond_12d
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lco/vine/android/widget/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
:cond_136
return-void
.end method
.method private touchDistance(Landroid/view/MotionEvent;)F
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F
move-result v2
invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F
move-result v3
sub-float v0, v2, v3
invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F
move-result v2
invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F
move-result v3
sub-float v1, v2, v3
mul-float v2, v0, v0
mul-float v3, v1, v1
add-float/2addr v2, v3
invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F
move-result v2
return v2
.end method
.method private updateBounds()Landroid/graphics/RectF;
.registers 10
iget-object v6, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixValues:[F
iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->getValues([F)V
const/4 v7, 0x2
aget v4, v6, v7
const/4 v7, 0x5
aget v5, v6, v7
iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
invoke-virtual {v7}, Landroid/graphics/RectF;->width()F
move-result v7
iget v8, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
mul-float v3, v7, v8
iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
invoke-virtual {v7}, Landroid/graphics/RectF;->height()F
move-result v7
iget v8, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
mul-float v2, v7, v8
add-float v1, v4, v3
add-float v0, v5, v2
iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
invoke-virtual {v7, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V
iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
return-object v7
.end method
.method  initMultiTouchImageView()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lco/vine/android/widget/MultiTouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 10
invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V
invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->getMeasuredWidth()I
move-result v0
int-to-float v0, v0
iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F
invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->getMeasuredHeight()I
move-result v0
int-to-float v0, v0
iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F
if-eqz p1, :cond_1d
iget v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F
iget v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F
sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
const/4 v3, 0x1
invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/widget/MultiTouchImageView;->setTransformDimensions(FFLandroid/widget/ImageView$ScaleType;Z)V
:cond_1d
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 29
.parameter
.end parameter
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I
move-result v23
move/from16 v0, v23
and-int/lit16 v0, v0, 0xff
move/from16 v23, v0
packed-switch v23, :pswitch_data_2d6
:pswitch_d
invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v23
:goto_11
return v23
:pswitch_12
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
move/from16 v23, v0
const/high16 v24, 0x3f80
cmpl-float v23, v23, v24
if-lez v23, :cond_4e
invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->getParent()Landroid/view/ViewParent;
move-result-object v23
const/16 v24, 0x1
invoke-interface/range {v23 .. v24}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
:goto_27
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
move/from16 v23, v0
if-nez v23, :cond_4b
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F
move-result v23
move/from16 v0, v23
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F
move-result v23
move/from16 v0, v23
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F
const/16 v23, 0x1
move/from16 v0, v23
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
:goto_4b
:cond_4b
const/16 v23, 0x1
goto :goto_11
:cond_4e
invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->getParent()Landroid/view/ViewParent;
move-result-object v23
const/16 v24, 0x0
invoke-interface/range {v23 .. v24}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
goto :goto_27
:pswitch_58
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
move/from16 v23, v0
if-eqz v23, :cond_6e
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
move/from16 v23, v0
const/16 v24, 0x1
move/from16 v0, v23
move/from16 v1, v24
if-ne v0, v1, :cond_4b
:cond_6e
const/16 v23, 0x0
move-object/from16 v0, p1
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F
move-result v23
const/16 v24, 0x1
move-object/from16 v0, p1
move/from16 v1, v24
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F
move-result v24
add-float v23, v23, v24
const/high16 v24, 0x4000
div-float v23, v23, v24
move/from16 v0, v23
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchX:F
const/16 v23, 0x0
move-object/from16 v0, p1
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F
move-result v23
const/16 v24, 0x1
move-object/from16 v0, p1
move/from16 v1, v24
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F
move-result v24
add-float v23, v23, v24
const/high16 v24, 0x4000
div-float v23, v23, v24
move/from16 v0, v23
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchY:F
invoke-direct/range {p0 .. p1}, Lco/vine/android/widget/MultiTouchImageView;->touchDistance(Landroid/view/MotionEvent;)F
move-result v23
move/from16 v0, v23
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F
const/16 v23, 0x2
move/from16 v0, v23
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
goto :goto_4b
:pswitch_c1
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
move/from16 v23, v0
const/16 v24, 0x1
move/from16 v0, v23
move/from16 v1, v24
if-ne v0, v1, :cond_1d8
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F
move-result v11
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F
move-result v12
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F
move/from16 v23, v0
sub-float v7, v11, v23
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F
move/from16 v23, v0
sub-float v8, v12, v23
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
move-object/from16 v23, v0
move-object/from16 v0, v23
iget v13, v0, Landroid/graphics/RectF;->left:F
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
move-object/from16 v23, v0
move-object/from16 v0, v23
iget v0, v0, Landroid/graphics/RectF;->right:F
move/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
move-object/from16 v23, v0
move-object/from16 v0, v23
iget v0, v0, Landroid/graphics/RectF;->top:F
move/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
move-object/from16 v23, v0
move-object/from16 v0, v23
iget v5, v0, Landroid/graphics/RectF;->bottom:F
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
iget v0, v15, Landroid/graphics/RectF;->left:F
move/from16 v16, v0
iget v0, v15, Landroid/graphics/RectF;->top:F
move/from16 v18, v0
iget v0, v15, Landroid/graphics/RectF;->right:F
move/from16 v17, v0
iget v14, v15, Landroid/graphics/RectF;->bottom:F
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F
move/from16 v23, v0
cmpl-float v23, v23, v12
if-lez v23, :cond_190
const/4 v9, 0x1
:goto_130
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F
move/from16 v23, v0
cmpl-float v23, v23, v11
if-lez v23, :cond_192
const/4 v10, 0x1
:goto_13b
if-eqz v10, :cond_1a3
cmpl-float v23, v19, v17
if-lez v23, :cond_194
add-float v23, v19, v7
cmpg-float v23, v23, v17
if-gez v23, :cond_194
sub-float v7, v17, v19
:goto_149
:cond_149
if-eqz v9, :cond_1c5
cmpl-float v23, v5, v14
if-lez v23, :cond_1bf
add-float v23, v5, v8
cmpg-float v23, v23, v14
if-gez v23, :cond_1bf
sub-float v8, v14, v5
:goto_157
:cond_157
const/16 v23, 0x0
cmpl-float v23, v7, v23
if-nez v23, :cond_163
const/16 v23, 0x0
cmpl-float v23, v8, v23
if-eqz v23, :cond_186
:cond_163
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
move-object/from16 v23, v0
move-object/from16 v0, v23
invoke-virtual {v0, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
move-object/from16 v23, v0
move-object/from16 v0, v23
invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->offset(FF)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
move-object/from16 v23, v0
move-object/from16 v0, p0
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lco/vine/android/widget/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
:cond_186
move-object/from16 v0, p0
iput v11, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F
move-object/from16 v0, p0
iput v12, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F
goto/16 :goto_4b
:cond_190
const/4 v9, 0x0
goto :goto_130
:cond_192
const/4 v10, 0x0
goto :goto_13b
:cond_194
cmpg-float v23, v19, v17
if-gtz v23, :cond_149
const/4 v7, 0x0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->getParent()Landroid/view/ViewParent;
move-result-object v23
const/16 v24, 0x0
invoke-interface/range {v23 .. v24}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
goto :goto_149
:cond_1a3
cmpg-float v23, v13, v16
if-gez v23, :cond_1b0
add-float v23, v13, v7
cmpl-float v23, v23, v16
if-lez v23, :cond_1b0
sub-float v7, v16, v13
goto :goto_149
:cond_1b0
cmpl-float v23, v13, v16
if-ltz v23, :cond_149
const/4 v7, 0x0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->getParent()Landroid/view/ViewParent;
move-result-object v23
const/16 v24, 0x0
invoke-interface/range {v23 .. v24}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
goto :goto_149
:cond_1bf
cmpg-float v23, v5, v14
if-gtz v23, :cond_157
const/4 v8, 0x0
goto :goto_157
:cond_1c5
cmpg-float v23, v21, v18
if-gez v23, :cond_1d2
add-float v23, v21, v8
cmpl-float v23, v23, v18
if-lez v23, :cond_1d2
sub-float v8, v18, v21
goto :goto_157
:cond_1d2
cmpl-float v23, v21, v18
if-ltz v23, :cond_157
const/4 v8, 0x0
goto :goto_157
:cond_1d8
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
move/from16 v23, v0
const/16 v24, 0x2
move/from16 v0, v23
move/from16 v1, v24
if-ne v0, v1, :cond_290
invoke-direct/range {p0 .. p1}, Lco/vine/android/widget/MultiTouchImageView;->touchDistance(Landroid/view/MotionEvent;)F
move-result v22
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F
move/from16 v23, v0
div-float v20, v22, v23
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
move/from16 v23, v0
mul-float v23, v23, v20
move/from16 v0, v23
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->updateBounds()Landroid/graphics/RectF;
move-result-object v6
iget v0, v6, Landroid/graphics/RectF;->left:F
move/from16 v23, v0
const/16 v24, 0x0
cmpg-float v23, v23, v24
if-gez v23, :cond_268
iget v0, v6, Landroid/graphics/RectF;->top:F
move/from16 v23, v0
const/16 v24, 0x0
cmpg-float v23, v23, v24
if-gez v23, :cond_268
iget v0, v6, Landroid/graphics/RectF;->right:F
move/from16 v23, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F
move/from16 v24, v0
cmpl-float v23, v23, v24
if-lez v23, :cond_268
iget v0, v6, Landroid/graphics/RectF;->bottom:F
move/from16 v23, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F
move/from16 v24, v0
cmpl-float v23, v23, v24
if-lez v23, :cond_268
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchX:F
move/from16 v24, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchY:F
move/from16 v25, v0
move-object/from16 v0, v23
move/from16 v1, v20
move/from16 v2, v20
move/from16 v3, v24
move/from16 v4, v25
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z
:goto_253
move/from16 v0, v22
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
move-object/from16 v23, v0
move-object/from16 v0, p0
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lco/vine/android/widget/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
goto/16 :goto_4b
:cond_268
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F
move/from16 v24, v0
const/high16 v25, 0x4000
div-float v24, v24, v25
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F
move/from16 v25, v0
const/high16 v26, 0x4000
div-float v25, v25, v26
move-object/from16 v0, v23
move/from16 v1, v20
move/from16 v2, v20
move/from16 v3, v24
move/from16 v4, v25
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z
goto :goto_253
:cond_290
invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v23
goto/16 :goto_11
:pswitch_296
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
move/from16 v23, v0
const/16 v24, 0x1
move/from16 v0, v23
move/from16 v1, v24
if-ne v0, v1, :cond_4b
invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetGesture()V
goto/16 :goto_4b
:pswitch_2a9
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
move/from16 v23, v0
const/16 v24, 0x2
move/from16 v0, v23
move/from16 v1, v24
if-ne v0, v1, :cond_2ba
invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetScale()V
:cond_2ba
invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetGesture()V
goto/16 :goto_4b
:pswitch_2bf
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I
move/from16 v23, v0
const/16 v24, 0x2
move/from16 v0, v23
move/from16 v1, v24
if-ne v0, v1, :cond_4b
invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetScale()V
invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetGesture()V
goto/16 :goto_4b
nop
:pswitch_data_2d6
.packed-switch 0x0
:pswitch_12
:pswitch_296
:pswitch_c1
:pswitch_2a9
:pswitch_d
:pswitch_58
:pswitch_2bf
.end packed-switch
.end method
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 6
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
if-eqz p1, :cond_1d
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
int-to-float v0, v0
iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapWidth:F
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
int-to-float v0, v0
iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapHeight:F
iget v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F
iget v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F
sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
const/4 v3, 0x1
invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/widget/MultiTouchImageView;->setTransformDimensions(FFLandroid/widget/ImageView$ScaleType;Z)V
:cond_1d
return-void
.end method
.method public setTransformDimensions(FFLandroid/widget/ImageView$ScaleType;Z)V
.registers 25
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F
move/from16 v19, v0
sub-float v2, v19, p1
const/high16 v4, 0x4000
div-float v12, v2, v4
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F
move/from16 v18, v0
sub-float v2, v18, p2
const/high16 v4, 0x4000
div-float v13, v2, v4
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
move-result v3
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->height()F
move-result v5
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
if-nez v2, :cond_66
new-instance v2, Landroid/graphics/RectF;
add-float v4, v12, p1
add-float v6, v13, p2
invoke-direct {v2, v12, v13, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
:goto_3b
const/4 v2, 0x0
cmpl-float v2, v3, v2
if-eqz v2, :cond_55
const/4 v2, 0x0
cmpl-float v2, v5, v2
if-eqz v2, :cond_55
move-object/from16 v2, p0
move/from16 v4, p1
move/from16 v6, p2
move-object/from16 v7, p3
invoke-direct/range {v2 .. v7}, Lco/vine/android/widget/MultiTouchImageView;->calculateScale(FFFFLandroid/widget/ImageView$ScaleType;)F
move-result v2
move-object/from16 v0, p0
iput v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F
:cond_55
if-nez p4, :cond_72
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
invoke-virtual {v2, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z
move-result v2
if-eqz v2, :cond_72
:goto_65
return-void
:cond_66
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;
add-float v4, v12, p1
add-float v6, v13, p2
invoke-virtual {v2, v12, v13, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V
goto :goto_3b
:cond_72
const/4 v15, 0x0
const/16 v16, 0x0
move-object/from16 v0, p0
iget v7, v0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapWidth:F
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapHeight:F
const/4 v2, 0x0
cmpl-float v2, v7, v2
if-lez v2, :cond_bc
const/4 v2, 0x0
cmpl-float v2, v9, v2
if-lez v2, :cond_bc
move-object/from16 v6, p0
move/from16 v8, p1
move/from16 v10, p2
move-object/from16 v11, p3
invoke-direct/range {v6 .. v11}, Lco/vine/android/widget/MultiTouchImageView;->calculateScale(FFFFLandroid/widget/ImageView$ScaleType;)F
move-result v14
mul-float v2, v14, v7
sub-float v2, v19, v2
const/high16 v4, 0x4000
div-float v15, v2, v4
mul-float v2, v14, v9
sub-float v2, v18, v2
const/high16 v4, 0x4000
div-float v16, v2, v4
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v14, v14}, Landroid/graphics/Matrix;->setScale(FF)V
move-object/from16 v0, v17
move/from16 v1, v16
invoke-virtual {v0, v15, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lco/vine/android/widget/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
:cond_bc
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
sub-float v4, v19, v15
sub-float v6, v18, v16
move/from16 v0, v16
invoke-virtual {v2, v15, v0, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;
invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
const/high16 v2, 0x3f80
move-object/from16 v0, p0
iput v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F
goto :goto_65
.end method
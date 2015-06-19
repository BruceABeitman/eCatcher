.class public Lco/vine/android/widget/AnimatingCircle;
.super Landroid/view/View;
.source "AnimatingCircle.java"
.field private static final COSINE_45_DEGREES:D = 0.0
.field private static final DEFAULT_DURATION:I = 0xfa
.field private static final FORTY_FIVE_DEGREES_IN_RADIANS:D = 0.8377580642700195
.field private static final STEP_LENGTH:I = 0x5
.field private mBackgroundColor:I
.field private final mClearPaint:Landroid/graphics/Paint;
.field private mHypoteneuse:F
.field private mIsAnimating:Z
.field private mListener:Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;
.field private mNewRadius:F
.field private final mPaint:Landroid/graphics/Paint;
.field private final mRadius:I
.field private mRunnable:Ljava/lang/Runnable;
.field private mStepDistance:F
.field private mXMargin:I
.field private final mXOffset:F
.method static constructor <clinit>()V
.registers 2
const-wide v0, 0x3feaceea00000000L
invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D
move-result-wide v0
sput-wide v0, Lco/vine/android/widget/AnimatingCircle;->COSINE_45_DEGREES:D
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/widget/AnimatingCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/AnimatingCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 20
invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
sget-object v13, Lco/vine/android/R$styleable;->AnimatingCircle:[I
const/4 v14, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
move/from16 v2, p3
invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v3
const/4 v13, 0x0
const v14, 0x7f090048
invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I
move-result v14
invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v13
move-object/from16 v0, p0
iput v13, v0, Lco/vine/android/widget/AnimatingCircle;->mBackgroundColor:I
const/4 v13, 0x1
const v14, 0x7f0b006d
invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v14
invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v13
move-object/from16 v0, p0
iput v13, v0, Lco/vine/android/widget/AnimatingCircle;->mRadius:I
invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
new-instance v13, Landroid/graphics/Paint;
invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/widget/AnimatingCircle;->mPaint:Landroid/graphics/Paint;
new-instance v13, Landroid/graphics/Paint;
invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/widget/AnimatingCircle;->mClearPaint:Landroid/graphics/Paint;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/widget/AnimatingCircle;->mClearPaint:Landroid/graphics/Paint;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/widget/AnimatingCircle;->mClearPaint:Landroid/graphics/Paint;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setDither(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/widget/AnimatingCircle;->mClearPaint:Landroid/graphics/Paint;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/widget/AnimatingCircle;->mClearPaint:Landroid/graphics/Paint;
new-instance v14, Landroid/graphics/PorterDuffXfermode;
sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
invoke-static/range {p1 .. p1}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
move-result-object v11
iget v12, v11, Landroid/graphics/Point;->x:I
iget v7, v11, Landroid/graphics/Point;->y:I
invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I
move-result v6
div-int/lit8 v4, v6, 0x2
int-to-float v13, v4
sget-wide v14, Lco/vine/android/widget/AnimatingCircle;->COSINE_45_DEGREES:D
double-to-float v14, v14
div-float v8, v13, v14
move-object/from16 v0, p0
iget v13, v0, Lco/vine/android/widget/AnimatingCircle;->mRadius:I
int-to-float v13, v13
div-float v10, v8, v13
move-object/from16 v0, p0
iput v8, v0, Lco/vine/android/widget/AnimatingCircle;->mHypoteneuse:F
const v13, 0x7f0b0017
invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v13
int-to-float v13, v13
move-object/from16 v0, p0
iput v13, v0, Lco/vine/android/widget/AnimatingCircle;->mXOffset:F
const v13, 0x7f0b0036
invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v13
move-object/from16 v0, p0
iput v13, v0, Lco/vine/android/widget/AnimatingCircle;->mXMargin:I
new-instance v13, Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;
move-object/from16 v0, p0
invoke-direct {v13, v0}, Lco/vine/android/widget/AnimatingCircle$AnimationRunnable;-><init>(Lco/vine/android/widget/AnimatingCircle;)V
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/widget/AnimatingCircle;->mRunnable:Ljava/lang/Runnable;
move-object/from16 v0, p0
iget v13, v0, Lco/vine/android/widget/AnimatingCircle;->mHypoteneuse:F
move-object/from16 v0, p0
iget v14, v0, Lco/vine/android/widget/AnimatingCircle;->mRadius:I
int-to-float v14, v14
sub-float v5, v13, v14
const/high16 v13, 0x437a
div-float v13, v5, v13
const/high16 v14, 0x40a0
mul-float/2addr v13, v14
move-object/from16 v0, p0
iput v13, v0, Lco/vine/android/widget/AnimatingCircle;->mStepDistance:F
const/4 v13, 0x0
move-object/from16 v0, p0
iput-boolean v13, v0, Lco/vine/android/widget/AnimatingCircle;->mIsAnimating:Z
const/4 v13, 0x1
const/4 v14, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v13, v14}, Lco/vine/android/widget/AnimatingCircle;->setLayerType(ILandroid/graphics/Paint;)V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/widget/AnimatingCircle;)F
.registers 2
iget v0, p0, Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
return v0
.end method
.method static synthetic access$002(Lco/vine/android/widget/AnimatingCircle;F)F
.registers 2
iput p1, p0, Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
return p1
.end method
.method static synthetic access$100(Lco/vine/android/widget/AnimatingCircle;)F
.registers 2
iget v0, p0, Lco/vine/android/widget/AnimatingCircle;->mStepDistance:F
return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 8
const/4 v1, 0x0
iget v0, p0, Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
cmpl-float v0, v0, v1
if-nez v0, :cond_c
iget v0, p0, Lco/vine/android/widget/AnimatingCircle;->mRadius:I
int-to-float v0, v0
iput v0, p0, Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
:cond_c
iget-object v0, p0, Lco/vine/android/widget/AnimatingCircle;->mPaint:Landroid/graphics/Paint;
iget v2, p0, Lco/vine/android/widget/AnimatingCircle;->mBackgroundColor:I
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lco/vine/android/widget/AnimatingCircle;->getMeasuredWidth()I
move-result v0
iget v2, p0, Lco/vine/android/widget/AnimatingCircle;->mXMargin:I
sub-int/2addr v0, v2
int-to-float v3, v0
invoke-virtual {p0}, Lco/vine/android/widget/AnimatingCircle;->getMeasuredHeight()I
move-result v0
int-to-float v4, v0
iget-object v5, p0, Lco/vine/android/widget/AnimatingCircle;->mPaint:Landroid/graphics/Paint;
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
invoke-virtual {p0}, Lco/vine/android/widget/AnimatingCircle;->getMeasuredWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
int-to-float v0, v0
iget v1, p0, Lco/vine/android/widget/AnimatingCircle;->mXOffset:F
add-float/2addr v0, v1
invoke-virtual {p0}, Lco/vine/android/widget/AnimatingCircle;->getMeasuredHeight()I
move-result v1
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
iget v2, p0, Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
iget-object v3, p0, Lco/vine/android/widget/AnimatingCircle;->mClearPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
return-void
.end method
.method public resetAnimation()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/widget/AnimatingCircle;->mIsAnimating:Z
return-void
.end method
.method public setAnimationListener(Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/AnimatingCircle;->mListener:Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;
return-void
.end method
.method public startDefaultAnimation()V
.registers 5
iget-boolean v1, p0, Lco/vine/android/widget/AnimatingCircle;->mIsAnimating:Z
if-nez v1, :cond_27
const/4 v1, 0x1
iput-boolean v1, p0, Lco/vine/android/widget/AnimatingCircle;->mIsAnimating:Z
iget-object v1, p0, Lco/vine/android/widget/AnimatingCircle;->mListener:Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;
invoke-interface {v1}, Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;->onAnimationStart()V
:goto_c
iget v1, p0, Lco/vine/android/widget/AnimatingCircle;->mNewRadius:F
iget v2, p0, Lco/vine/android/widget/AnimatingCircle;->mHypoteneuse:F
cmpg-float v1, v1, v2
if-gez v1, :cond_2d
invoke-virtual {p0}, Lco/vine/android/widget/AnimatingCircle;->getHandler()Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_26
iget-object v1, p0, Lco/vine/android/widget/AnimatingCircle;->mRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v1, p0, Lco/vine/android/widget/AnimatingCircle;->mRunnable:Ljava/lang/Runnable;
const-wide/16 v2, 0x5
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_26
:cond_26
return-void
:cond_27
iget-object v1, p0, Lco/vine/android/widget/AnimatingCircle;->mListener:Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;
invoke-interface {v1}, Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;->onAnimationRepeat()V
goto :goto_c
:cond_2d
const/4 v1, 0x0
iput-boolean v1, p0, Lco/vine/android/widget/AnimatingCircle;->mIsAnimating:Z
iget-object v1, p0, Lco/vine/android/widget/AnimatingCircle;->mListener:Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;
invoke-interface {v1}, Lco/vine/android/widget/AnimatingCircle$AnimatingCircleListener;->onAnimationEnd()V
goto :goto_26
.end method
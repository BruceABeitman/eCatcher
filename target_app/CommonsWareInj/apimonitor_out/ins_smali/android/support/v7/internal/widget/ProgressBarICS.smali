.class public Landroid/support/v7/internal/widget/ProgressBarICS;
.super Landroid/view/View;
.source "ProgressBarICS.java"
.field private static final ANIMATION_RESOLUTION:I = 0xc8
.field private static final MAX_LEVEL:I = 0x2710
.field private static final android_R_styleable_ProgressBar:[I
.field private mAnimation:Landroid/view/animation/AlphaAnimation;
.field private mBehavior:I
.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;
.field private mDuration:I
.field private mInDrawing:Z
.field private mIndeterminate:Z
.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
.field private mInterpolator:Landroid/view/animation/Interpolator;
.field private mLastDrawTime:J
.field private mMax:I
.field  mMaxHeight:I
.field  mMaxWidth:I
.field  mMinHeight:I
.field  mMinWidth:I
.field private mNoInvalidate:Z
.field private mOnlyIndeterminate:Z
.field private mProgress:I
.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;
.field private mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
.field  mSampleTile:Landroid/graphics/Bitmap;
.field private mSecondaryProgress:I
.field private mShouldStartAnimationDrawable:Z
.field private mTransformation:Landroid/view/animation/Transformation;
.field private mUiThreadId:J
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0xe
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Landroid/support/v7/internal/widget/ProgressBarICS;->android_R_styleable_ProgressBar:[I
return-void
:array_a
.array-data 0x4
0x36t 0x1t 0x1t 0x1t
0x37t 0x1t 0x1t 0x1t
0x38t 0x1t 0x1t 0x1t
0x39t 0x1t 0x1t 0x1t
0x3at 0x1t 0x1t 0x1t
0x3bt 0x1t 0x1t 0x1t
0x3ct 0x1t 0x1t 0x1t
0x3dt 0x1t 0x1t 0x1t
0x3et 0x1t 0x1t 0x1t
0x3ft 0x1t 0x1t 0x1t
0x1ft 0x1t 0x1t 0x1t
0x40t 0x1t 0x1t 0x1t
0x20t 0x1t 0x1t 0x1t
0x41t 0x1t 0x1t 0x1t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.registers 13
const/4 v5, 0x1
const/4 v4, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Thread;->getId()J
move-result-wide v6
iput-wide v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mUiThreadId:J
invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->initProgressBar()V
sget-object v6, Landroid/support/v7/internal/widget/ProgressBarICS;->android_R_styleable_ProgressBar:[I
invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
iput-boolean v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mNoInvalidate:Z
iget v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v6
invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMax(I)V
iget v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v6
invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
const/4 v6, 0x2
iget v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v6
invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V
const/4 v6, 0x3
iget-boolean v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v2
const/4 v6, 0x4
iget-boolean v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v6
iput-boolean v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z
const/4 v6, 0x5
invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_54
invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_54
const/4 v6, 0x6
invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_62
invoke-direct {p0, v1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_62
const/4 v6, 0x7
iget v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mDuration:I
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v6
iput v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mDuration:I
const/16 v6, 0x8
iget v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mBehavior:I
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v6
iput v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mBehavior:I
const/16 v6, 0x9
iget v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinWidth:I
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v6
iput v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinWidth:I
const/16 v6, 0xa
iget v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxWidth:I
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v6
iput v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxWidth:I
const/16 v6, 0xb
iget v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinHeight:I
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v6
iput v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinHeight:I
const/16 v6, 0xc
iget v7, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v6
iput v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I
const/16 v6, 0xd
const v7, 0x10a000b
invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v3
if-lez v3, :cond_ab
invoke-virtual {p0, p1, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->setInterpolator(Landroid/content/Context;I)V
:cond_ab
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iput-boolean v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mNoInvalidate:Z
iget-boolean v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z
if-nez v6, :cond_b6
if-eqz v2, :cond_b7
:cond_b6
move v4, v5
:cond_b7
invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V
return-void
.end method
.method static synthetic access$000(Landroid/support/v7/internal/widget/ProgressBarICS;IIZZ)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V
return-void
.end method
.method static synthetic access$102(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;)Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
return-object p1
.end method
.method private declared-synchronized doRefreshProgress(IIZZ)V
.registers 12
monitor-enter p0
:try_start_1
iget v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
if-lez v5, :cond_28
int-to-float v5, p2
iget v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
int-to-float v6, v6
div-float v4, v5, v6
:goto_b
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_2c
const/4 v3, 0x0
instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;
if-eqz v5, :cond_1c
move-object v0, v1
check-cast v0, Landroid/graphics/drawable/LayerDrawable;
move-object v5, v0
invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
:cond_1c
const v5, 0x461c4000
mul-float/2addr v5, v4
float-to-int v2, v5
if-eqz v3, :cond_2a
:goto_23
invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
:goto_26
:try_end_26
.catchall {:try_start_1 .. :try_end_26} :catchall_30
monitor-exit p0
return-void
:cond_28
const/4 v4, 0x0
goto :goto_b
:cond_2a
move-object v3, v1
goto :goto_23
:try_start_2c
:cond_2c
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->invalidate()V
:try_end_2f
.catchall {:try_start_2c .. :try_end_2f} :catchall_30
goto :goto_26
:catchall_30
move-exception v5
monitor-exit p0
throw v5
.end method
.method private initProgressBar()V
.registers 5
const/16 v3, 0x30
const/16 v2, 0x18
const/4 v1, 0x0
const/16 v0, 0x64
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
iput v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
iput v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z
const/16 v0, 0xfa0
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mDuration:I
const/4 v0, 0x1
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mBehavior:I
iput v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinWidth:I
iput v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxWidth:I
iput v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinHeight:I
iput v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I
return-void
.end method
.method private declared-synchronized refreshProgress(IIZ)V
.registers 9
monitor-enter p0
:try_start_1
iget-wide v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mUiThreadId:J
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Thread;->getId()J
move-result-wide v3
cmp-long v1, v1, v3
if-nez v1, :cond_15
const/4 v1, 0x1
invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_25
:goto_13
monitor-exit p0
return-void
:cond_15
:try_start_15
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
if-eqz v1, :cond_28
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->setup(IIZ)V
:goto_21
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->post(Ljava/lang/Runnable;)Z
:try_end_24
.catchall {:try_start_15 .. :try_end_24} :catchall_25
goto :goto_13
:catchall_25
move-exception v1
monitor-exit p0
throw v1
:cond_28
:try_start_28
new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;-><init>(Landroid/support/v7/internal/widget/ProgressBarICS;IIZ)V
:try_end_2d
.catchall {:try_start_28 .. :try_end_2d} :catchall_25
goto :goto_21
.end method
.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
.registers 15
const/4 v10, 0x1
instance-of v9, p1, Landroid/graphics/drawable/LayerDrawable;
if-eqz v9, :cond_41
move-object v1, p1
check-cast v1, Landroid/graphics/drawable/LayerDrawable;
invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I
move-result v0
new-array v6, v0, [Landroid/graphics/drawable/Drawable;
const/4 v3, 0x0
:goto_f
if-ge v3, v0, :cond_2f
invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I
move-result v4
invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v11
const v9, 0x102000d
if-eq v4, v9, :cond_23
const v9, 0x102000f
if-ne v4, v9, :cond_2d
:cond_23
move v9, v10
:goto_24
invoke-direct {p0, v11, v9}, Landroid/support/v7/internal/widget/ProgressBarICS;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
move-result-object v9
aput-object v9, v6, v3
add-int/lit8 v3, v3, 0x1
goto :goto_f
:cond_2d
const/4 v9, 0x0
goto :goto_24
:cond_2f
new-instance v5, Landroid/graphics/drawable/LayerDrawable;
invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
const/4 v3, 0x0
:goto_35
if-ge v3, v0, :cond_74
invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I
move-result v9
invoke-virtual {v5, v3, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V
add-int/lit8 v3, v3, 0x1
goto :goto_35
:cond_41
instance-of v9, p1, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v9, :cond_75
check-cast p1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v8
iget-object v9, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSampleTile:Landroid/graphics/Bitmap;
if-nez v9, :cond_51
iput-object v8, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSampleTile:Landroid/graphics/Bitmap;
:cond_51
new-instance v7, Landroid/graphics/drawable/ShapeDrawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
move-result-object v9
invoke-direct {v7, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V
new-instance v2, Landroid/graphics/BitmapShader;
sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;
sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
invoke-direct {v2, v8, v9, v11}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v9
invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
if-eqz p2, :cond_73
new-instance v9, Landroid/graphics/drawable/ClipDrawable;
const/4 v11, 0x3
invoke-direct {v9, v7, v11, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V
move-object v7, v9
:cond_73
move-object v5, v7
:goto_74
:cond_74
return-object v5
:cond_75
move-object v5, p1
goto :goto_74
.end method
.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 10
const/16 v7, 0x2710
instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;
if-eqz v5, :cond_36
move-object v1, p1
check-cast v1, Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I
move-result v0
new-instance v4, Landroid/graphics/drawable/AnimationDrawable;
invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V
invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z
move-result v5
invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V
const/4 v3, 0x0
:goto_1a
if-ge v3, v0, :cond_32
invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;
move-result-object v5
const/4 v6, 0x1
invoke-direct {p0, v5, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I
move-result v5
invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
add-int/lit8 v3, v3, 0x1
goto :goto_1a
:cond_32
invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z
move-object p1, v4
:cond_36
return-object p1
.end method
.method private updateDrawableBounds(II)V
.registers 16
const/4 v12, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingRight()I
move-result v10
sub-int v10, p1, v10
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I
move-result v11
sub-int v7, v10, v11
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingBottom()I
move-result v10
sub-int v10, p2, v10
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I
move-result v11
sub-int v0, v10, v11
const/4 v8, 0x0
const/4 v6, 0x0
iget-object v10, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v10, :cond_53
iget-boolean v10, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z
if-eqz v10, :cond_4e
iget-object v10, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
instance-of v10, v10, Landroid/graphics/drawable/AnimationDrawable;
if-nez v10, :cond_4e
iget-object v10, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v5
iget-object v10, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v4
int-to-float v10, v5
int-to-float v11, v4
div-float v3, v10, v11
int-to-float v10, p1
int-to-float v11, p2
div-float v1, v10, v11
cmpl-float v10, v3, v1
if-eqz v10, :cond_4e
cmpl-float v10, v1, v3
if-lez v10, :cond_5d
int-to-float v10, p2
mul-float/2addr v10, v3
float-to-int v9, v10
sub-int v10, p1, v9
div-int/lit8 v6, v10, 0x2
add-int v7, v6, v9
:cond_4e
:goto_4e
iget-object v10, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v10, v6, v8, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_53
iget-object v10, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v10, :cond_5c
iget-object v10, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v10, v12, v12, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_5c
return-void
:cond_5d
int-to-float v10, p1
const/high16 v11, 0x3f80
div-float/2addr v11, v3
mul-float/2addr v10, v11
float-to-int v2, v10
sub-int v10, p2, v2
div-int/lit8 v8, v10, 0x2
add-int v0, v8, v2
goto :goto_4e
.end method
.method private updateDrawableState()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawableState()[I
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_15
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_15
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_15
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_26
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_26
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_26
return-void
.end method
.method protected drawableStateChanged()V
.registers 1
invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V
invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableState()V
return-void
.end method
.method  getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
.registers 4
const/4 v2, 0x0
const/16 v1, 0x8
new-array v0, v1, [F
fill-array-data v0, :array_e
new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;
invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V
return-object v1
:array_e
.array-data 0x4
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
.end array-data
.end method
.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getInterpolator()Landroid/view/animation/Interpolator;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;
return-object v0
.end method
.method public declared-synchronized getMax()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getProgress()I
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_b
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_6
monitor-exit p0
return v0
:try_start_8
:cond_8
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
:try_end_a
.catchall {:try_start_8 .. :try_end_a} :catchall_b
goto :goto_6
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public declared-synchronized getSecondaryProgress()I
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_b
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_6
monitor-exit p0
return v0
:try_start_8
:cond_8
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
:try_end_a
.catchall {:try_start_8 .. :try_end_a} :catchall_b
goto :goto_6
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized incrementProgressBy(I)V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
add-int/2addr v0, p1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized incrementSecondaryProgressBy(I)V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
add-int/2addr v0, p1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 9
iget-boolean v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInDrawing:Z
if-nez v3, :cond_31
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v3
if-eqz v3, :cond_32
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getScrollX()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I
move-result v4
add-int v1, v3, v4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getScrollY()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I
move-result v4
add-int v2, v3, v4
iget v3, v0, Landroid/graphics/Rect;->left:I
add-int/2addr v3, v1
iget v4, v0, Landroid/graphics/Rect;->top:I
add-int/2addr v4, v2
iget v5, v0, Landroid/graphics/Rect;->right:I
add-int/2addr v5, v1
iget v6, v0, Landroid/graphics/Rect;->bottom:I
add-int/2addr v6, v2
invoke-virtual {p0, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->invalidate(IIII)V
:goto_31
:cond_31
return-void
:cond_32
invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_31
.end method
.method public declared-synchronized isIndeterminate()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-eqz v0, :cond_a
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->startAnimation()V
:cond_a
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-eqz v0, :cond_7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->stopAnimation()V
:cond_7
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_10
invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V
return-void
.end method
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
.registers 12
const-wide/16 v8, 0xc8
monitor-enter p0
:try_start_3
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_69
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I
move-result v4
int-to-float v4, v4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I
move-result v5
int-to-float v5, v5
invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawingTime()J
move-result-wide v2
iget-object v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
if-eqz v4, :cond_53
iget-object v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
iget-object v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mTransformation:Landroid/view/animation/Transformation;
invoke-virtual {v4, v2, v3, v5}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z
iget-object v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mTransformation:Landroid/view/animation/Transformation;
invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F
:try_end_2e
.catchall {:try_start_3 .. :try_end_2e} :catchall_70
move-result v1
const/4 v4, 0x1
:try_start_30
iput-boolean v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInDrawing:Z
const v4, 0x461c4000
mul-float/2addr v4, v1
float-to-int v4, v4
invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
:try_end_3a
.catchall {:try_start_30 .. :try_end_3a} :catchall_6b
const/4 v4, 0x0
:try_start_3b
iput-boolean v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInDrawing:Z
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v4
iget-wide v6, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mLastDrawTime:J
sub-long/2addr v4, v6
cmp-long v4, v4, v8
if-ltz v4, :cond_53
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v4
iput-wide v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mLastDrawTime:J
const-wide/16 v4, 0xc8
invoke-virtual {p0, v4, v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidateDelayed(J)V
:cond_53
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
iget-boolean v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mShouldStartAnimationDrawable:Z
if-eqz v4, :cond_69
instance-of v4, v0, Landroid/graphics/drawable/Animatable;
if-eqz v4, :cond_69
check-cast v0, Landroid/graphics/drawable/Animatable;
invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V
const/4 v4, 0x0
iput-boolean v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mShouldStartAnimationDrawable:Z
:try_end_69
.catchall {:try_start_3b .. :try_end_69} :catchall_70
:cond_69
monitor-exit p0
return-void
:catchall_6b
move-exception v4
const/4 v5, 0x0
:try_start_6d
iput-boolean v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInDrawing:Z
throw v4
:catchall_70
:try_end_70
.catchall {:try_start_6d .. :try_end_70} :catchall_70
move-exception v4
monitor-exit p0
throw v4
.end method
.method protected declared-synchronized onMeasure(II)V
.registers 9
monitor-enter p0
:try_start_1
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
const/4 v2, 0x0
const/4 v1, 0x0
if-eqz v0, :cond_27
iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinWidth:I
iget v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxWidth:I
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v5
invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
move-result v4
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v2
iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMinHeight:I
iget v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v5
invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
move-result v4
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v1
:cond_27
invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableState()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingRight()I
move-result v4
add-int/2addr v3, v4
add-int/2addr v2, v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingBottom()I
move-result v4
add-int/2addr v3, v4
add-int/2addr v1, v3
invoke-static {v2, p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->resolveSize(II)I
move-result v3
invoke-static {v1, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->resolveSize(II)I
move-result v4
invoke-virtual {p0, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMeasuredDimension(II)V
:try_end_49
.catchall {:try_start_1 .. :try_end_49} :catchall_4b
monitor-exit p0
return-void
:catchall_4b
move-exception v3
monitor-exit p0
throw v3
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ProgressBarICS; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, p1
check-cast v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v1
invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget v1, v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->progress:I
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
iget v1, v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->secondaryProgress:I
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V
const-string v1, " - Landroid/support/v7/internal/widget/ProgressBarICS; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ProgressBarICS; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;
invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;-><init>(Landroid/os/Parcelable;)V
iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
iput v2, v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->progress:I
iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
iput v2, v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->secondaryProgress:I
move-object v2, v0
const-string v1, " - Landroid/support/v7/internal/widget/ProgressBarICS; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method
.method protected onSizeChanged(IIII)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableBounds(II)V
return-void
.end method
.method protected onVisibilityChanged(Landroid/view/View;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-eqz v0, :cond_11
const/16 v0, 0x8
if-eq p2, v0, :cond_e
const/4 v0, 0x4
if-ne p2, v0, :cond_12
:cond_e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->stopAnimation()V
:goto_11
:cond_11
return-void
:cond_12
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->startAnimation()V
goto :goto_11
.end method
.method public postInvalidate()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mNoInvalidate:Z
if-nez v0, :cond_7
invoke-super {p0}, Landroid/view/View;->postInvalidate()V
:cond_7
return-void
.end method
.method public declared-synchronized setIndeterminate(Z)V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mOnlyIndeterminate:Z
if-eqz v0, :cond_9
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-nez v0, :cond_18
:cond_9
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-eq p1, v0, :cond_18
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-eqz p1, :cond_1a
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->startAnimation()V
:cond_18
:goto_18
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_22
monitor-exit p0
return-void
:try_start_1a
:cond_1a
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->stopAnimation()V
:try_end_21
.catchall {:try_start_1a .. :try_end_21} :catchall_22
goto :goto_18
:catchall_22
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
if-eqz p1, :cond_5
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_5
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-eqz v0, :cond_10
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
:cond_10
return-void
.end method
.method public setInterpolator(Landroid/content/Context;I)V
.registers 4
invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-void
.end method
.method public setInterpolator(Landroid/view/animation/Interpolator;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;
return-void
.end method
.method public declared-synchronized setMax(I)V
.registers 5
monitor-enter p0
if-gez p1, :cond_4
const/4 p1, 0x0
:try_start_4
:cond_4
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
if-eq p1, v0, :cond_1c
iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
if-le v0, p1, :cond_13
iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
:cond_13
const v0, 0x102000d
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->refreshProgress(IIZ)V
:try_end_1c
.catchall {:try_start_4 .. :try_end_1c} :catchall_1e
:cond_1c
monitor-exit p0
return-void
:catchall_1e
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized setProgress(I)V
.registers 3
monitor-enter p0
const/4 v0, 0x0
:try_start_2
invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(IZ)V
:try_end_5
.catchall {:try_start_2 .. :try_end_5} :catchall_7
monitor-exit p0
return-void
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized setProgress(IZ)V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_1f
if-eqz v0, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:cond_7
if-gez p1, :cond_a
const/4 p1, 0x0
:cond_a
:try_start_a
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
if-le p1, v0, :cond_10
iget p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
:cond_10
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
if-eq p1, v0, :cond_5
iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
const v0, 0x102000d
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
invoke-direct {p0, v0, v1, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->refreshProgress(IIZ)V
:try_end_1e
.catchall {:try_start_a .. :try_end_1e} :catchall_1f
goto :goto_5
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 7
const/4 v4, 0x0
iget-object v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_4e
iget-object v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
if-eq p1, v2, :cond_4e
iget-object v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
const/4 v1, 0x1
:goto_10
if-eqz p1, :cond_22
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I
move-result v0
iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I
if-ge v2, v0, :cond_22
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMaxHeight:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->requestLayout()V
:cond_22
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-nez v2, :cond_2d
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
:cond_2d
if-eqz v1, :cond_4d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getWidth()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getHeight()I
move-result v3
invoke-direct {p0, v2, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableBounds(II)V
invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->updateDrawableState()V
const v2, 0x102000d
iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgress:I
invoke-direct {p0, v2, v3, v4, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V
const v2, 0x102000f
iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
invoke-direct {p0, v2, v3, v4, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V
:cond_4d
return-void
:cond_4e
const/4 v1, 0x0
goto :goto_10
.end method
.method public declared-synchronized setSecondaryProgress(I)V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_20
if-eqz v0, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:cond_7
if-gez p1, :cond_a
const/4 p1, 0x0
:cond_a
:try_start_a
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
if-le p1, v0, :cond_10
iget p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mMax:I
:cond_10
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
if-eq p1, v0, :cond_5
iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
const v0, 0x102000f
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mSecondaryProgress:I
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->refreshProgress(IIZ)V
:try_end_1f
.catchall {:try_start_a .. :try_end_1f} :catchall_20
goto :goto_5
:catchall_20
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setVisibility(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
if-eq v0, p1, :cond_17
invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminate:Z
if-eqz v0, :cond_17
const/16 v0, 0x8
if-eq p1, v0, :cond_14
const/4 v0, 0x4
if-ne p1, v0, :cond_18
:cond_14
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->stopAnimation()V
:cond_17
:goto_17
return-void
:cond_18
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->startAnimation()V
goto :goto_17
.end method
.method  startAnimation()V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
instance-of v0, v0, Landroid/graphics/drawable/Animatable;
if-eqz v0, :cond_17
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mShouldStartAnimationDrawable:Z
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
:goto_13
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
goto :goto_6
:cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;
if-nez v0, :cond_22
new-instance v0, Landroid/view/animation/LinearInterpolator;
invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;
:cond_22
new-instance v0, Landroid/view/animation/Transformation;
invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mTransformation:Landroid/view/animation/Transformation;
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mBehavior:I
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mDuration:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mInterpolator:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
const-wide/16 v1, -0x1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V
goto :goto_13
.end method
.method  stopAnimation()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mAnimation:Landroid/view/animation/AlphaAnimation;
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mTransformation:Landroid/view/animation/Transformation;
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
instance-of v0, v0, Landroid/graphics/drawable/Animatable;
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
check-cast v0, Landroid/graphics/drawable/Animatable;
invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mShouldStartAnimationDrawable:Z
:cond_15
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
return-void
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
if-eq p1, v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
if-eq p1, v0, :cond_e
invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.class  Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"
.field private static final BALLISTIC:I = 0x2
.field private static final CUBIC:I = 0x1
.field private static DECELERATION_RATE:F = 0.0f
.field private static final END_TENSION:F = 1.0f
.field private static final GRAVITY:F = 2000.0f
.field private static final INFLEXION:F = 0.35f
.field private static final NB_SAMPLES:I = 0x64
.field private static final P1:F = 0.175f
.field private static final P2:F = 0.35000002f
.field private static PHYSICAL_COEF:F = 0.0f
.field private static final SPLINE:I = 0x0
.field private static final SPLINE_POSITION:[F = null
.field private static final SPLINE_TIME:[F = null
.field private static final START_TENSION:F = 0.5f
.field private mCurrVelocity:F
.field private mCurrentPosition:I
.field private mDeceleration:F
.field private mDuration:I
.field private mFinal:I
.field private mFinished:Z
.field private mFlingFriction:F
.field private mOver:I
.field private mSplineDistance:I
.field private mSplineDuration:I
.field private mStart:I
.field private mStartTime:J
.field private mState:I
.field private mVelocity:I
.method static constructor <clinit>()V
.registers 16
const-wide v11, 0x3fe8f5c28f5c28f6L
invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D
move-result-wide v11
const-wide v13, 0x3feccccccccccccdL
invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D
move-result-wide v13
div-double/2addr v11, v13
double-to-float v11, v11
sput v11, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->DECELERATION_RATE:F
const/16 v11, 0x65
new-array v11, v11, [F
sput-object v11, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F
const/16 v11, 0x65
new-array v11, v11, [F
sput-object v11, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_TIME:[F
const/4 v7, 0x0
const/4 v10, 0x0
const/4 v3, 0x0
:goto_25
const/16 v11, 0x64
if-lt v3, v11, :cond_38
sget-object v11, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F
const/16 v12, 0x64
sget-object v13, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_TIME:[F
const/16 v14, 0x64
const/high16 v15, 0x3f80
aput v15, v13, v14
aput v15, v11, v12
return-void
:cond_38
int-to-float v11, v3
const/high16 v12, 0x42c8
div-float v0, v11, v12
const/high16 v6, 0x3f80
:goto_3f
sub-float v11, v6, v7
const/high16 v12, 0x4000
div-float/2addr v11, v12
add-float v5, v7, v11
const/high16 v11, 0x4040
mul-float/2addr v11, v5
const/high16 v12, 0x3f80
sub-float/2addr v12, v5
mul-float v1, v11, v12
const/high16 v11, 0x3f80
sub-float/2addr v11, v5
const v12, 0x3e333333
mul-float/2addr v11, v12
const v12, 0x3eb33334
mul-float/2addr v12, v5
add-float/2addr v11, v12
mul-float/2addr v11, v1
mul-float v12, v5, v5
mul-float/2addr v12, v5
add-float v4, v11, v12
sub-float v11, v4, v0
invoke-static {v11}, Ljava/lang/Math;->abs(F)F
move-result v11
float-to-double v11, v11
const-wide v13, 0x3ee4f8b588e368f1L
cmpg-double v11, v11, v13
if-gez v11, :cond_c7
sget-object v11, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F
const/high16 v12, 0x3f80
sub-float/2addr v12, v5
const/high16 v13, 0x3f00
mul-float/2addr v12, v13
add-float/2addr v12, v5
mul-float/2addr v12, v1
mul-float v13, v5, v5
mul-float/2addr v13, v5
add-float/2addr v12, v13
aput v12, v11, v3
const/high16 v9, 0x3f80
:goto_82
sub-float v11, v9, v10
const/high16 v12, 0x4000
div-float/2addr v11, v12
add-float v8, v10, v11
const/high16 v11, 0x4040
mul-float/2addr v11, v8
const/high16 v12, 0x3f80
sub-float/2addr v12, v8
mul-float v1, v11, v12
const/high16 v11, 0x3f80
sub-float/2addr v11, v8
const/high16 v12, 0x3f00
mul-float/2addr v11, v12
add-float/2addr v11, v8
mul-float/2addr v11, v1
mul-float v12, v8, v8
mul-float/2addr v12, v8
add-float v2, v11, v12
sub-float v11, v2, v0
invoke-static {v11}, Ljava/lang/Math;->abs(F)F
move-result v11
float-to-double v11, v11
const-wide v13, 0x3ee4f8b588e368f1L
cmpg-double v11, v11, v13
if-gez v11, :cond_d1
sget-object v11, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_TIME:[F
const/high16 v12, 0x3f80
sub-float/2addr v12, v8
const v13, 0x3e333333
mul-float/2addr v12, v13
const v13, 0x3eb33334
mul-float/2addr v13, v8
add-float/2addr v12, v13
mul-float/2addr v12, v1
mul-float v13, v8, v8
mul-float/2addr v13, v8
add-float/2addr v12, v13
aput v12, v11, v3
add-int/lit8 v3, v3, 0x1
goto/16 :goto_25
:cond_c7
cmpl-float v11, v4, v0
if-lez v11, :cond_ce
move v6, v5
goto/16 :goto_3f
:cond_ce
move v7, v5
goto/16 :goto_3f
:cond_d1
cmpl-float v11, v2, v0
if-lez v11, :cond_d7
move v9, v8
goto :goto_82
:cond_d7
move v10, v8
goto :goto_82
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFlingFriction:F
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrentPosition:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
return v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
return v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
return-wide v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
return v0
.end method
.method private adjustDuration(III)V
.registers 16
const/high16 v11, 0x42c8
sub-int v2, p2, p1
sub-int v1, p3, p1
int-to-float v9, v1
int-to-float v10, v2
div-float/2addr v9, v10
invoke-static {v9}, Ljava/lang/Math;->abs(F)F
move-result v6
mul-float v9, v11, v6
float-to-int v0, v9
const/16 v9, 0x64
if-ge v0, v9, :cond_37
int-to-float v9, v0
div-float v7, v9, v11
add-int/lit8 v9, v0, 0x1
int-to-float v9, v9
div-float v8, v9, v11
sget-object v9, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_TIME:[F
aget v3, v9, v0
sget-object v9, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_TIME:[F
add-int/lit8 v10, v0, 0x1
aget v4, v9, v10
sub-float v9, v6, v7
sub-float v10, v8, v7
div-float/2addr v9, v10
sub-float v10, v4, v3
mul-float/2addr v9, v10
add-float v5, v3, v9
iget v9, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
int-to-float v9, v9
mul-float/2addr v9, v5
float-to-int v9, v9
iput v9, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
:cond_37
return-void
.end method
.method private fitOnBounceCurve(III)V
.registers 12
neg-int v4, p3
int-to-float v4, v4
iget v5, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
div-float v2, v4, v5
mul-int v4, p3, p3
int-to-float v4, v4
const/high16 v5, 0x4000
div-float/2addr v4, v5
iget v5, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
invoke-static {v5}, Ljava/lang/Math;->abs(F)F
move-result v5
div-float v0, v4, v5
sub-int v4, p2, p1
invoke-static {v4}, Ljava/lang/Math;->abs(I)I
move-result v4
int-to-float v1, v4
const-wide/high16 v4, 0x4000
add-float v6, v0, v1
float-to-double v6, v6
mul-double/2addr v4, v6
iget v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
invoke-static {v6}, Ljava/lang/Math;->abs(F)F
move-result v6
float-to-double v6, v6
div-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v4
double-to-float v3, v4
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
const/high16 v6, 0x447a
sub-float v7, v3, v2
mul-float/2addr v6, v7
float-to-int v6, v6
int-to-long v6, v6
sub-long/2addr v4, v6
iput-wide v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
iput p2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iget v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
neg-float v4, v4
mul-float/2addr v4, v3
float-to-int v4, v4
iput v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
return-void
.end method
.method private static getDeceleration(I)F
.registers 2
if-lez p0, :cond_5
const/high16 v0, -0x3b06
:goto_4
return v0
:cond_5
const/high16 v0, 0x44fa
goto :goto_4
.end method
.method private getSplineDeceleration(I)D
.registers 5
const v0, 0x3eb33333
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v1
int-to-float v1, v1
mul-float/2addr v0, v1
iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFlingFriction:F
sget v2, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F
mul-float/2addr v1, v2
div-float/2addr v0, v1
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D
move-result-wide v0
return-wide v0
.end method
.method private getSplineFlingDistance(I)D
.registers 10
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D
move-result-wide v2
sget v4, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->DECELERATION_RATE:F
float-to-double v4, v4
const-wide/high16 v6, 0x3ff0
sub-double v0, v4, v6
iget v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFlingFriction:F
sget v5, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F
mul-float/2addr v4, v5
float-to-double v4, v4
sget v6, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->DECELERATION_RATE:F
float-to-double v6, v6
div-double/2addr v6, v0
mul-double/2addr v6, v2
invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D
move-result-wide v6
mul-double/2addr v4, v6
return-wide v4
.end method
.method private getSplineFlingDuration(I)I
.registers 10
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D
move-result-wide v2
sget v4, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->DECELERATION_RATE:F
float-to-double v4, v4
const-wide/high16 v6, 0x3ff0
sub-double v0, v4, v6
const-wide v4, 0x408f400000000000L
div-double v6, v2, v0
invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D
move-result-wide v6
mul-double/2addr v4, v6
double-to-int v4, v4
return v4
.end method
.method static initFromContext(Landroid/content/Context;)V
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
const/high16 v2, 0x4320
mul-float v0, v1, v2
const v1, 0x43c10b3d
mul-float/2addr v1, v0
const v2, 0x3f570a3d
mul-float/2addr v1, v2
sput v1, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F
return-void
.end method
.method private onEdgeReached()V
.registers 6
const/high16 v4, 0x4000
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
mul-int/2addr v2, v3
int-to-float v2, v2
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
mul-float/2addr v3, v4
div-float v0, v2, v3
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
int-to-float v2, v2
invoke-static {v2}, Ljava/lang/Math;->signum(F)F
move-result v1
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
int-to-float v2, v2
cmpl-float v2, v0, v2
if-lez v2, :cond_32
neg-float v2, v1
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
int-to-float v3, v3
mul-float/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
int-to-float v3, v3
mul-float/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
int-to-float v3, v3
mul-float/2addr v3, v4
div-float/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
int-to-float v0, v2
:cond_32
float-to-int v2, v0
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
const/4 v2, 0x2
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
if-lez v3, :cond_50
:goto_3e
float-to-int v3, v0
add-int/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
const/high16 v2, 0x447a
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
int-to-float v3, v3
mul-float/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
div-float/2addr v2, v3
float-to-int v2, v2
neg-int v2, v2
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
return-void
:cond_50
neg-float v0, v0
goto :goto_3e
.end method
.method private startAfterEdge(IIII)V
.registers 18
if-le p1, p2, :cond_13
move/from16 v0, p3
if-ge p1, v0, :cond_13
const-string/jumbo v1, "OverScroller"
const-string/jumbo v2, "startAfterEdge called from a valid position"
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
:goto_12
return-void
:cond_13
move/from16 v0, p3
if-le p1, v0, :cond_2b
const/4 v10, 0x1
:goto_18
if-eqz v10, :cond_2d
move/from16 v7, p3
:goto_1c
sub-int v9, p1, v7
mul-int v1, v9, p4
if-ltz v1, :cond_2f
const/4 v8, 0x1
:goto_23
if-eqz v8, :cond_31
move/from16 v0, p4
invoke-direct {p0, p1, v7, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V
goto :goto_12
:cond_2b
const/4 v10, 0x0
goto :goto_18
:cond_2d
move v7, p2
goto :goto_1c
:cond_2f
const/4 v8, 0x0
goto :goto_23
:cond_31
move/from16 v0, p4
invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D
move-result-wide v11
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v1
int-to-double v1, v1
cmpl-double v1, v11, v1
if-lez v1, :cond_55
if-eqz v10, :cond_50
move v4, p2
:goto_43
if-eqz v10, :cond_52
move v5, p1
:goto_46
iget v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
move-object v1, p0
move v2, p1
move/from16 v3, p4
invoke-virtual/range {v1 .. v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->fling(IIIII)V
goto :goto_12
:cond_50
move v4, p1
goto :goto_43
:cond_52
move/from16 v5, p3
goto :goto_46
:cond_55
move/from16 v0, p4
invoke-direct {p0, p1, v7, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startSpringback(III)V
goto :goto_12
.end method
.method private startBounceAfterEdge(III)V
.registers 5
if-nez p3, :cond_11
sub-int v0, p1, p2
:goto_4
invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->getDeceleration(I)F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->onEdgeReached()V
return-void
:cond_11
move v0, p3
goto :goto_4
.end method
.method private startSpringback(III)V
.registers 11
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
const/4 v1, 0x1
iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
iput p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iput p2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
sub-int v0, p1, p2
invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->getDeceleration(I)F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
neg-int v1, v0
iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
const-wide v1, 0x408f400000000000L
const-wide/high16 v3, -0x4000
int-to-double v5, v0
mul-double/2addr v3, v5
iget v5, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
float-to-double v5, v5
div-double/2addr v3, v5
invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v3
mul-double/2addr v1, v3
double-to-int v1, v1
iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
return-void
.end method
.method  continueWhenFinished()Z
.registers 6
const/4 v0, 0x0
iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
packed-switch v1, :pswitch_data_3e
:goto_6
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->update()Z
const/4 v0, 0x1
:cond_a
:pswitch_a
return v0
:pswitch_b
iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDuration:I
if-ge v1, v2, :cond_a
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->getDeceleration(I)F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
int-to-long v2, v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->onEdgeReached()V
goto :goto_6
:pswitch_2e
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
int-to-long v3, v3
add-long/2addr v1, v3
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
invoke-direct {p0, v1, v2, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startSpringback(III)V
goto :goto_6
:pswitch_data_3e
.packed-switch 0x0
:pswitch_b
:pswitch_a
:pswitch_2e
.end packed-switch
.end method
.method  extendDuration(I)V
.registers 7
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v1
iget-wide v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
sub-long v3, v1, v3
long-to-int v0, v3
add-int v3, v0, p1
iput v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
const/4 v3, 0x0
iput-boolean v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
return-void
.end method
.method  finish()V
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrentPosition:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
return-void
.end method
.method  fling(IIIII)V
.registers 11
const/4 v4, 0x0
iput p5, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
iput p2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
int-to-float v2, p2
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
iput v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDuration:I
iput v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
iput p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iput p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrentPosition:I
if-gt p1, p4, :cond_1c
if-ge p1, p3, :cond_20
:cond_1c
invoke-direct {p0, p1, p3, p4, p2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V
:goto_1f
:cond_1f
return-void
:cond_20
iput v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
const-wide/16 v0, 0x0
if-eqz p2, :cond_32
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDuration:I
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D
move-result-wide v0
:cond_32
int-to-float v2, p2
invoke-static {v2}, Ljava/lang/Math;->signum(F)F
move-result v2
float-to-double v2, v2
mul-double/2addr v2, v0
double-to-int v2, v2
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDistance:I
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDistance:I
add-int/2addr v2, p1
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
if-ge v2, p3, :cond_4e
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
invoke-direct {p0, v2, v3, p3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->adjustDuration(III)V
iput p3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
:cond_4e
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
if-le v2, p4, :cond_1f
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
invoke-direct {p0, v2, v3, p4}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->adjustDuration(III)V
iput p4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
goto :goto_1f
.end method
.method  notifyEdgeReached(III)V
.registers 6
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
if-nez v0, :cond_12
iput p3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
float-to-int v0, v0
invoke-direct {p0, p1, p2, p2, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V
:cond_12
return-void
.end method
.method  setFinalPosition(I)V
.registers 3
iput p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
return-void
.end method
.method  setFriction(F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFlingFriction:F
return-void
.end method
.method  springback(III)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
iput p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
iput p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
if-ge p1, p2, :cond_1c
invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startSpringback(III)V
:cond_17
:goto_17
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
if-eqz v2, :cond_22
:goto_1b
return v0
:cond_1c
if-le p1, p3, :cond_17
invoke-direct {p0, p1, p3, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startSpringback(III)V
goto :goto_17
:cond_22
move v0, v1
goto :goto_1b
.end method
.method  startScroll(III)V
.registers 7
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
iput p1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
add-int v0, p1, p2
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
iput p3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
return-void
.end method
.method  update()Z
.registers 22
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v15
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
move-wide/from16 v18, v0
sub-long v2, v15, v18
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
move/from16 v18, v0
move/from16 v0, v18
int-to-long v0, v0
move-wide/from16 v18, v0
cmp-long v18, v2, v18
if-lez v18, :cond_1e
const/16 v18, 0x0
:goto_1d
return v18
:cond_1e
const-wide/16 v6, 0x0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
move/from16 v18, v0
packed-switch v18, :pswitch_data_166
:goto_29
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
move/from16 v18, v0
invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J
move-result-wide v19
move-wide/from16 v0, v19
long-to-int v0, v0
move/from16 v19, v0
add-int v18, v18, v19
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrentPosition:I
const/16 v18, 0x1
goto :goto_1d
:pswitch_43
long-to-float v0, v2
move/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDuration:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
div-float v11, v18, v19
const/high16 v18, 0x42c8
mul-float v18, v18, v11
move/from16 v0, v18
float-to-int v9, v0
const/high16 v8, 0x3f80
const/16 v17, 0x0
const/16 v18, 0x64
move/from16 v0, v18
if-ge v9, v0, :cond_8c
int-to-float v0, v9
move/from16 v18, v0
const/high16 v19, 0x42c8
div-float v13, v18, v19
add-int/lit8 v18, v9, 0x1
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
const/high16 v19, 0x42c8
div-float v14, v18, v19
sget-object v18, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F
aget v4, v18, v9
sget-object v18, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F
add-int/lit8 v19, v9, 0x1
aget v5, v18, v19
sub-float v18, v5, v4
sub-float v19, v14, v13
div-float v17, v18, v19
sub-float v18, v11, v13
mul-float v18, v18, v17
add-float v8, v4, v18
:cond_8c
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDistance:I
move/from16 v18, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
mul-float v18, v18, v8
move/from16 v0, v18
float-to-double v6, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDistance:I
move/from16 v18, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
mul-float v18, v18, v17
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mSplineDuration:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
div-float v18, v18, v19
const/high16 v19, 0x447a
mul-float v18, v18, v19
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
goto/16 :goto_29
:pswitch_c2
long-to-float v0, v2
move/from16 v18, v0
const/high16 v19, 0x447a
div-float v11, v18, v19
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
move/from16 v18, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
move/from16 v19, v0
mul-float v19, v19, v11
add-float v18, v18, v19
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
move/from16 v18, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
mul-float v18, v18, v11
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDeceleration:F
move/from16 v19, v0
mul-float v19, v19, v11
mul-float v19, v19, v11
const/high16 v20, 0x4000
div-float v19, v19, v20
add-float v18, v18, v19
move/from16 v0, v18
float-to-double v6, v0
goto/16 :goto_29
:pswitch_106
long-to-float v0, v2
move/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
div-float v11, v18, v19
mul-float v12, v11, v11
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mVelocity:I
move/from16 v18, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F
move-result v10
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
move/from16 v18, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
mul-float v18, v18, v10
const/high16 v19, 0x4040
mul-float v19, v19, v12
const/high16 v20, 0x4000
mul-float v20, v20, v11
mul-float v20, v20, v12
sub-float v19, v19, v20
mul-float v18, v18, v19
move/from16 v0, v18
float-to-double v6, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mOver:I
move/from16 v18, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
mul-float v18, v18, v10
const/high16 v19, 0x40c0
mul-float v18, v18, v19
neg-float v0, v11
move/from16 v19, v0
add-float v19, v19, v12
mul-float v18, v18, v19
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
goto/16 :goto_29
nop
:pswitch_data_166
.packed-switch 0x0
:pswitch_43
:pswitch_106
:pswitch_c2
.end packed-switch
.end method
.method  updateScroll(F)V
.registers 5
iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
sub-int/2addr v1, v2
int-to-float v1, v1
mul-float/2addr v1, p1
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrentPosition:I
return-void
.end method
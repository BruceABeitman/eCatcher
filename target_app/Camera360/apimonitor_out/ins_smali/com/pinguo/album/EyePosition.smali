.class public Lcom/pinguo/album/EyePosition;
.super Ljava/lang/Object;
.source "EyePosition.java"
.field private static final GYROSCOPE_LIMIT:F = 10.0f
.field private static final GYROSCOPE_RESTORE_FACTOR:F = 0.995f
.field private static final GYROSCOPE_SETTLE_DOWN:I = 0xf
.field private static final GYROSCOPE_THRESHOLD:F = 0.15f
.field private static final MAX_VIEW_RANGE:F = 0.5f
.field private static final NOT_STARTED:I = -0x1
.field private static final TAG:Ljava/lang/String; = "EyePosition"
.field private static final USER_ANGEL:F = 0.0f
.field private static final USER_ANGEL_COS:F = 0.0f
.field private static final USER_ANGEL_SIN:F = 0.0f
.field private static final USER_DISTANCE_METER:F = 0.3f
.field private mContext:Landroid/content/Context;
.field private mDisplay:Landroid/view/Display;
.field private mGyroscopeCountdown:I
.field private final mLimit:F
.field private mListener:Lcom/pinguo/album/EyePosition$EyePositionListener;
.field private mPositionListener:Lcom/pinguo/album/EyePosition$PositionListener;
.field private mSensor:Landroid/hardware/Sensor;
.field private mStartTime:J
.field private final mUserDistance:F
.field private mX:F
.field private mY:F
.field private mZ:F
.method static constructor <clinit>()V
.registers 2
const-wide/high16 v0, 0x4024
invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v0
double-to-float v0, v0
sput v0, Lcom/pinguo/album/EyePosition;->USER_ANGEL:F
sget v0, Lcom/pinguo/album/EyePosition;->USER_ANGEL:F
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D
move-result-wide v0
double-to-float v0, v0
sput v0, Lcom/pinguo/album/EyePosition;->USER_ANGEL_COS:F
sget v0, Lcom/pinguo/album/EyePosition;->USER_ANGEL:F
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D
move-result-wide v0
double-to-float v0, v0
sput v0, Lcom/pinguo/album/EyePosition;->USER_ANGEL_SIN:F
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/album/EyePosition$EyePositionListener;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v1, -0x1
iput-wide v1, p0, Lcom/pinguo/album/EyePosition;->mStartTime:J
new-instance v1, Lcom/pinguo/album/EyePosition$PositionListener;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/pinguo/album/EyePosition$PositionListener;-><init>(Lcom/pinguo/album/EyePosition;Lcom/pinguo/album/EyePosition$PositionListener;)V
iput-object v1, p0, Lcom/pinguo/album/EyePosition;->mPositionListener:Lcom/pinguo/album/EyePosition$PositionListener;
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/album/EyePosition;->mGyroscopeCountdown:I
iput-object p1, p0, Lcom/pinguo/album/EyePosition;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/album/EyePosition;->mListener:Lcom/pinguo/album/EyePosition$EyePositionListener;
const v1, 0x3e99999a
invoke-static {p1, v1}, Lcom/pinguo/album/utils/PGAlbumUtils;->meterToPixel(Landroid/content/Context;F)I
move-result v1
int-to-float v1, v1
iput v1, p0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
iget v1, p0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
const/high16 v2, 0x3f00
mul-float/2addr v1, v2
iput v1, p0, Lcom/pinguo/album/EyePosition;->mLimit:F
iget-object v1, p0, Lcom/pinguo/album/EyePosition;->mContext:Landroid/content/Context;
const-string/jumbo v2, "window"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/album/EyePosition;->mDisplay:Landroid/view/Display;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/EyePosition;FFF)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/EyePosition;->onGyroscopeChanged(FFF)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/album/EyePosition;FFF)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/EyePosition;->onAccelerometerChanged(FFF)V
return-void
.end method
.method private onAccelerometerChanged(FFF)V
.registers 19
move/from16 v8, p1
move/from16 v9, p2
move/from16 v10, p3
iget-object v11, p0, Lcom/pinguo/album/EyePosition;->mDisplay:Landroid/view/Display;
invoke-virtual {v11}, Landroid/view/Display;->getRotation()I
move-result v11
packed-switch v11, :pswitch_data_a4
:goto_f
mul-float v11, v8, v8
mul-float v12, v9, v9
add-float/2addr v11, v12
mul-float v12, v10, v10
add-float v4, v11, v12
neg-float v11, v9
div-float v3, v11, v4
mul-float v5, v3, v8
const/high16 v11, -0x4080
mul-float v12, v3, v9
add-float v6, v11, v12
mul-float v7, v3, v10
mul-float v11, v5, v5
mul-float v12, v6, v6
add-float/2addr v11, v12
mul-float v12, v7, v7
add-float/2addr v11, v12
float-to-double v11, v11
invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v11
double-to-float v2, v11
float-to-double v11, v4
invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v11
double-to-float v1, v11
sget v11, Lcom/pinguo/album/EyePosition;->USER_ANGEL_COS:F
mul-float/2addr v11, v8
div-float/2addr v11, v1
sget v12, Lcom/pinguo/album/EyePosition;->USER_ANGEL_SIN:F
mul-float/2addr v12, v5
div-float/2addr v12, v2
add-float/2addr v11, v12
iget v12, p0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
mul-float/2addr v11, v12
iget v12, p0, Lcom/pinguo/album/EyePosition;->mLimit:F
neg-float v12, v12
iget v13, p0, Lcom/pinguo/album/EyePosition;->mLimit:F
invoke-static {v11, v12, v13}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result v11
iput v11, p0, Lcom/pinguo/album/EyePosition;->mX:F
sget v11, Lcom/pinguo/album/EyePosition;->USER_ANGEL_COS:F
mul-float/2addr v11, v9
div-float/2addr v11, v1
sget v12, Lcom/pinguo/album/EyePosition;->USER_ANGEL_SIN:F
mul-float/2addr v12, v6
div-float/2addr v12, v2
add-float/2addr v11, v12
iget v12, p0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
mul-float/2addr v11, v12
iget v12, p0, Lcom/pinguo/album/EyePosition;->mLimit:F
neg-float v12, v12
iget v13, p0, Lcom/pinguo/album/EyePosition;->mLimit:F
invoke-static {v11, v12, v13}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result v11
neg-float v11, v11
iput v11, p0, Lcom/pinguo/album/EyePosition;->mY:F
iget v11, p0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
iget v12, p0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
mul-float/2addr v11, v12
iget v12, p0, Lcom/pinguo/album/EyePosition;->mX:F
iget v13, p0, Lcom/pinguo/album/EyePosition;->mX:F
mul-float/2addr v12, v13
sub-float/2addr v11, v12
iget v12, p0, Lcom/pinguo/album/EyePosition;->mY:F
iget v13, p0, Lcom/pinguo/album/EyePosition;->mY:F
mul-float/2addr v12, v13
sub-float/2addr v11, v12
float-to-double v11, v11
invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v11
double-to-float v11, v11
neg-float v11, v11
iput v11, p0, Lcom/pinguo/album/EyePosition;->mZ:F
iget-object v11, p0, Lcom/pinguo/album/EyePosition;->mListener:Lcom/pinguo/album/EyePosition$EyePositionListener;
iget v12, p0, Lcom/pinguo/album/EyePosition;->mX:F
iget v13, p0, Lcom/pinguo/album/EyePosition;->mY:F
iget v14, p0, Lcom/pinguo/album/EyePosition;->mZ:F
invoke-interface {v11, v12, v13, v14}, Lcom/pinguo/album/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V
return-void
:pswitch_8e
move/from16 v0, p2
neg-float v8, v0
move/from16 v9, p1
goto/16 :goto_f
:pswitch_95
move/from16 v0, p1
neg-float v8, v0
move/from16 v0, p2
neg-float v9, v0
goto/16 :goto_f
:pswitch_9d
move/from16 v8, p2
move/from16 v0, p1
neg-float v9, v0
goto/16 :goto_f
:pswitch_data_a4
.packed-switch 0x1
:pswitch_8e
:pswitch_95
:pswitch_9d
.end packed-switch
.end method
.method private onGyroscopeChanged(FFF)V
.registers 20
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
const/4 v8, 0x0
cmpl-float v8, p1, v8
if-lez v8, :cond_b3
move/from16 v9, p1
:goto_b
const/4 v8, 0x0
cmpl-float v8, p2, v8
if-lez v8, :cond_b9
move/from16 v8, p2
:goto_12
add-float v1, v9, v8
const v8, 0x3e19999a
cmpg-float v8, v1, v8
if-ltz v8, :cond_27
const/high16 v8, 0x4120
cmpl-float v8, v1, v8
if-gtz v8, :cond_27
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mGyroscopeCountdown:I
if-lez v8, :cond_be
:cond_27
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mGyroscopeCountdown:I
add-int/lit8 v8, v8, -0x1
move-object/from16 v0, p0
iput v8, v0, Lcom/pinguo/album/EyePosition;->mGyroscopeCountdown:I
move-object/from16 v0, p0
iput-wide v3, v0, Lcom/pinguo/album/EyePosition;->mStartTime:J
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
const/high16 v9, 0x41a0
div-float v2, v8, v9
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mX:F
cmpl-float v8, v8, v2
if-gtz v8, :cond_5f
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mX:F
neg-float v9, v2
cmpg-float v8, v8, v9
if-ltz v8, :cond_5f
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mY:F
cmpl-float v8, v8, v2
if-gtz v8, :cond_5f
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mY:F
neg-float v9, v2
cmpg-float v8, v8, v9
if-gez v8, :cond_b2
:cond_5f
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mX:F
const v9, 0x3f7eb852
mul-float/2addr v8, v9
move-object/from16 v0, p0
iput v8, v0, Lcom/pinguo/album/EyePosition;->mX:F
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mY:F
const v9, 0x3f7eb852
mul-float/2addr v8, v9
move-object/from16 v0, p0
iput v8, v0, Lcom/pinguo/album/EyePosition;->mY:F
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
mul-float/2addr v8, v9
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mX:F
move-object/from16 v0, p0
iget v10, v0, Lcom/pinguo/album/EyePosition;->mX:F
mul-float/2addr v9, v10
sub-float/2addr v8, v9
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mY:F
move-object/from16 v0, p0
iget v10, v0, Lcom/pinguo/album/EyePosition;->mY:F
mul-float/2addr v9, v10
sub-float/2addr v8, v9
float-to-double v8, v8
invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v8
neg-double v8, v8
double-to-float v8, v8
move-object/from16 v0, p0
iput v8, v0, Lcom/pinguo/album/EyePosition;->mZ:F
move-object/from16 v0, p0
iget-object v8, v0, Lcom/pinguo/album/EyePosition;->mListener:Lcom/pinguo/album/EyePosition$EyePositionListener;
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mX:F
move-object/from16 v0, p0
iget v10, v0, Lcom/pinguo/album/EyePosition;->mY:F
move-object/from16 v0, p0
iget v11, v0, Lcom/pinguo/album/EyePosition;->mZ:F
invoke-interface {v8, v9, v10, v11}, Lcom/pinguo/album/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V
:goto_b2
:cond_b2
return-void
:cond_b3
move/from16 v0, p1
neg-float v8, v0
move v9, v8
goto/16 :goto_b
:cond_b9
move/from16 v0, p2
neg-float v8, v0
goto/16 :goto_12
:cond_be
move-object/from16 v0, p0
iget-wide v8, v0, Lcom/pinguo/album/EyePosition;->mStartTime:J
sub-long v8, v3, v8
long-to-float v8, v8
const/high16 v9, 0x447a
div-float/2addr v8, v9
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
mul-float/2addr v8, v9
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mZ:F
neg-float v9, v9
mul-float v5, v8, v9
move-object/from16 v0, p0
iput-wide v3, v0, Lcom/pinguo/album/EyePosition;->mStartTime:J
move/from16 v0, p2
neg-float v6, v0
move/from16 v0, p1
neg-float v7, v0
move-object/from16 v0, p0
iget-object v8, v0, Lcom/pinguo/album/EyePosition;->mDisplay:Landroid/view/Display;
invoke-virtual {v8}, Landroid/view/Display;->getRotation()I
move-result v8
packed-switch v8, :pswitch_data_196
:goto_e9
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mX:F
float-to-double v8, v8
mul-float v10, v6, v5
float-to-double v10, v10
move-object/from16 v0, p0
iget v12, v0, Lcom/pinguo/album/EyePosition;->mZ:F
float-to-double v12, v12
move-object/from16 v0, p0
iget v14, v0, Lcom/pinguo/album/EyePosition;->mX:F
float-to-double v14, v14
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D
move-result-wide v12
div-double/2addr v10, v12
add-double/2addr v8, v10
double-to-float v8, v8
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mLimit:F
neg-float v9, v9
move-object/from16 v0, p0
iget v10, v0, Lcom/pinguo/album/EyePosition;->mLimit:F
invoke-static {v8, v9, v10}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result v8
const v9, 0x3f7eb852
mul-float/2addr v8, v9
move-object/from16 v0, p0
iput v8, v0, Lcom/pinguo/album/EyePosition;->mX:F
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mY:F
float-to-double v8, v8
mul-float v10, v7, v5
float-to-double v10, v10
move-object/from16 v0, p0
iget v12, v0, Lcom/pinguo/album/EyePosition;->mZ:F
float-to-double v12, v12
move-object/from16 v0, p0
iget v14, v0, Lcom/pinguo/album/EyePosition;->mY:F
float-to-double v14, v14
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D
move-result-wide v12
div-double/2addr v10, v12
add-double/2addr v8, v10
double-to-float v8, v8
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mLimit:F
neg-float v9, v9
move-object/from16 v0, p0
iget v10, v0, Lcom/pinguo/album/EyePosition;->mLimit:F
invoke-static {v8, v9, v10}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result v8
const v9, 0x3f7eb852
mul-float/2addr v8, v9
move-object/from16 v0, p0
iput v8, v0, Lcom/pinguo/album/EyePosition;->mY:F
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
mul-float/2addr v8, v9
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mX:F
move-object/from16 v0, p0
iget v10, v0, Lcom/pinguo/album/EyePosition;->mX:F
mul-float/2addr v9, v10
sub-float/2addr v8, v9
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mY:F
move-object/from16 v0, p0
iget v10, v0, Lcom/pinguo/album/EyePosition;->mY:F
mul-float/2addr v9, v10
sub-float/2addr v8, v9
float-to-double v8, v8
invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v8
double-to-float v8, v8
neg-float v8, v8
move-object/from16 v0, p0
iput v8, v0, Lcom/pinguo/album/EyePosition;->mZ:F
move-object/from16 v0, p0
iget-object v8, v0, Lcom/pinguo/album/EyePosition;->mListener:Lcom/pinguo/album/EyePosition$EyePositionListener;
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/album/EyePosition;->mX:F
move-object/from16 v0, p0
iget v10, v0, Lcom/pinguo/album/EyePosition;->mY:F
move-object/from16 v0, p0
iget v11, v0, Lcom/pinguo/album/EyePosition;->mZ:F
invoke-interface {v8, v9, v10, v11}, Lcom/pinguo/album/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V
goto/16 :goto_b2
:pswitch_182
move/from16 v0, p1
neg-float v6, v0
move/from16 v7, p2
goto/16 :goto_e9
:pswitch_189
move/from16 v6, p2
move/from16 v7, p1
goto/16 :goto_e9
:pswitch_18f
move/from16 v6, p1
move/from16 v0, p2
neg-float v7, v0
goto/16 :goto_e9
:pswitch_data_196
.packed-switch 0x1
:pswitch_182
:pswitch_189
:pswitch_18f
.end packed-switch
.end method
.method public pause()V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/EyePosition;->mSensor:Landroid/hardware/Sensor;
if-eqz v1, :cond_14
iget-object v1, p0, Lcom/pinguo/album/EyePosition;->mContext:Landroid/content/Context;
const-string/jumbo v2, "sensor"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/SensorManager;
iget-object v1, p0, Lcom/pinguo/album/EyePosition;->mPositionListener:Lcom/pinguo/album/EyePosition$PositionListener;
invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
:cond_14
return-void
.end method
.method public resetPosition()V
.registers 5
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/album/EyePosition;->mStartTime:J
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/EyePosition;->mY:F
iput v0, p0, Lcom/pinguo/album/EyePosition;->mX:F
iget v0, p0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
neg-float v0, v0
iput v0, p0, Lcom/pinguo/album/EyePosition;->mZ:F
iget-object v0, p0, Lcom/pinguo/album/EyePosition;->mListener:Lcom/pinguo/album/EyePosition$EyePositionListener;
iget v1, p0, Lcom/pinguo/album/EyePosition;->mX:F
iget v2, p0, Lcom/pinguo/album/EyePosition;->mY:F
iget v3, p0, Lcom/pinguo/album/EyePosition;->mZ:F
invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/album/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V
return-void
.end method
.method public resume()V
.registers 6
iget-object v1, p0, Lcom/pinguo/album/EyePosition;->mSensor:Landroid/hardware/Sensor;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/EyePosition;->mContext:Landroid/content/Context;
const-string/jumbo v2, "sensor"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/SensorManager;
iget-object v1, p0, Lcom/pinguo/album/EyePosition;->mPositionListener:Lcom/pinguo/album/EyePosition$PositionListener;
iget-object v2, p0, Lcom/pinguo/album/EyePosition;->mSensor:Landroid/hardware/Sensor;
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
:cond_17
const-wide/16 v1, -0x1
iput-wide v1, p0, Lcom/pinguo/album/EyePosition;->mStartTime:J
const/16 v1, 0xf
iput v1, p0, Lcom/pinguo/album/EyePosition;->mGyroscopeCountdown:I
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/album/EyePosition;->mY:F
iput v1, p0, Lcom/pinguo/album/EyePosition;->mX:F
iget v1, p0, Lcom/pinguo/album/EyePosition;->mUserDistance:F
neg-float v1, v1
iput v1, p0, Lcom/pinguo/album/EyePosition;->mZ:F
iget-object v1, p0, Lcom/pinguo/album/EyePosition;->mListener:Lcom/pinguo/album/EyePosition$EyePositionListener;
iget v2, p0, Lcom/pinguo/album/EyePosition;->mX:F
iget v3, p0, Lcom/pinguo/album/EyePosition;->mY:F
iget v4, p0, Lcom/pinguo/album/EyePosition;->mZ:F
invoke-interface {v1, v2, v3, v4}, Lcom/pinguo/album/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V
return-void
.end method
.class public Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
.super Ljava/lang/Object;
.source "PGAntiShake.java"
.implements Landroid/hardware/SensorEventListener;
.field private static final DATA_X:I = 0x0
.field private static final DATA_Y:I = 0x1
.field private static final DATA_Z:I = 0x2
.field private static final DETECT_TIME:I = 0x4b
.field private static final MSG_CAPTURE_DELAY:I = 0x2
.field private static final MSG_LOOP_SHAKE:I = 0x0
.field private static final MSG_TIME_OUT:I = 0x1
.field private static final SHAKE_STEP_VALUES:[F = null
.field private static final STEP:I = 0x5
.field private static final TAG:Ljava/lang/String; = null
.field private static final TIME_OUT:I = 0x2710
.field private attenuationValue:I
.field private curState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
.field private handler:Landroid/os/Handler;
.field private isCaptureStarted:Z
.field private mAccelerometerSensor:Landroid/hardware/Sensor;
.field private mAntiShakeStateChangeListener:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
.field private mFirstTimeMill:J
.field private mLastSensorX:F
.field private mLastSensorY:F
.field private mLastSensorZ:F
.field private mLastShakeContinueTime:J
.field private mSensorManager:Landroid/hardware/SensorManager;
.field private mShakeContinueTime:J
.field private minSensor:F
.field private oldLevel:I
.field private pauseState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
.field private runningState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->TAG:Ljava/lang/String;
const/4 v0, 0x7
new-array v0, v0, [F
fill-array-data v0, :array_12
sput-object v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->SHAKE_STEP_VALUES:[F
return-void
nop
:array_12
.array-data 0x4
0xcdt 0xcct 0xcct 0x3dt
0x1ft 0x85t 0x6bt 0x3et
0xcdt 0xcct 0xcct 0x3et
0x33t 0x33t 0x33t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0xcdt 0xcct 0xact 0x3ft
0x0t 0x0t 0xe0t 0x3ft
.end array-data
.end method
.method public constructor <init>()V
.registers 6
const/4 v4, 0x0
const-wide/16 v1, 0x0
const/4 v3, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorX:F
iput v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorY:F
iput v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorZ:F
sget-object v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->SHAKE_STEP_VALUES:[F
array-length v0, v0
mul-int/lit8 v0, v0, 0x5
add-int/lit8 v0, v0, 0x5
iput v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
const v0, 0x3e4ccccd
iput v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->minSensor:F
iput v4, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->oldLevel:I
iput-object v3, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAccelerometerSensor:Landroid/hardware/Sensor;
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mShakeContinueTime:J
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mFirstTimeMill:J
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastShakeContinueTime:J
iput-boolean v4, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isCaptureStarted:Z
new-instance v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;-><init>(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->handler:Landroid/os/Handler;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "sensor"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/SensorManager;
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mSensorManager:Landroid/hardware/SensorManager;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mSensorManager:Landroid/hardware/SensorManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAccelerometerSensor:Landroid/hardware/Sensor;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mSensorManager:Landroid/hardware/SensorManager;
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAccelerometerSensor:Landroid/hardware/Sensor;
const/4 v2, 0x3
invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
new-instance v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;
invoke-direct {v0, p0, v3}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;-><init>(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->runningState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
new-instance v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$PauseState;
invoke-direct {v0, v3}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$PauseState;-><init>(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$PauseState;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->pauseState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->pauseState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->setState(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getMinSensorValue()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->minSensor:F
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAntiShakeStateChangeListener:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isCaptureStarted:Z
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->oldLevel:I
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->pauseState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->setState(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;)V
return-void
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->reset()V
return-void
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorX:F
return v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorY:F
return v0
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorZ:F
return v0
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorX:F
return-void
.end method
.method static synthetic access$18(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorY:F
return-void
.end method
.method static synthetic access$19(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorZ:F
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mFirstTimeMill:J
return-wide v0
.end method
.method static synthetic access$20(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;FFF)F
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->max(FFF)F
move-result v0
return v0
.end method
.method static synthetic access$21(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;F)I
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->level(F)I
move-result v0
return v0
.end method
.method static synthetic access$22(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
return v0
.end method
.method static synthetic access$23(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mFirstTimeMill:J
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mShakeContinueTime:J
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mShakeContinueTime:J
return-wide v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastShakeContinueTime:J
return-wide v0
.end method
.method static synthetic access$7()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->oldLevel:I
return v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastShakeContinueTime:J
return-void
.end method
.method private level(F)I
.registers 5
const/4 v0, 0x0
:goto_1
sget-object v1, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->SHAKE_STEP_VALUES:[F
array-length v1, v1
if-lt v0, v1, :cond_7
:cond_6
return v0
:cond_7
sget-object v1, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->SHAKE_STEP_VALUES:[F
aget v1, v1, v0
iget v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->minSensor:F
add-float/2addr v1, v2
cmpg-float v1, p1, v1
if-lez v1, :cond_6
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method private max(FFF)F
.registers 6
cmpl-float v1, p1, p2
if-lez v1, :cond_a
move v0, p1
:goto_5
cmpg-float v1, v0, p3
if-gez v1, :cond_c
:goto_9
return p3
:cond_a
move v0, p2
goto :goto_5
:cond_c
move p3, v0
goto :goto_9
.end method
.method private reset()V
.registers 5
const-wide/16 v2, 0x0
const/4 v1, 0x0
sget-object v0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->SHAKE_STEP_VALUES:[F
array-length v0, v0
mul-int/lit8 v0, v0, 0x5
add-int/lit8 v0, v0, 0x5
iput v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
iput v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorX:F
iput v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorY:F
iput v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorZ:F
iput-wide v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mFirstTimeMill:J
iput-wide v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mShakeContinueTime:J
iput-wide v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastShakeContinueTime:J
return-void
.end method
.method private setState(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->curState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
return-void
.end method
.method public cancelCapture()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->handler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->pauseState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->setState(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;)V
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->reset()V
iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isCaptureStarted:Z
return-void
.end method
.method public getLevel(I)I
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-gt p1, v0, :cond_14
iget v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
add-int/lit8 v2, v2, -0x1
iput v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
:goto_a
iget v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
const/4 v3, 0x5
if-le v2, v3, :cond_1a
iget v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
div-int/lit8 v0, v0, 0x5
:cond_13
:goto_13
return v0
:cond_14
iget v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
sub-int/2addr v2, p1
iput v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
goto :goto_a
:cond_1a
iget v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
if-gtz v2, :cond_13
iput v1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
move v0, v1
goto :goto_13
.end method
.method public isAntiShakeRunning()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isCaptureStarted:Z
return v0
.end method
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
.registers 3
return-void
.end method
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->curState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;->onSensorChanged(Landroid/hardware/SensorEvent;)V
return-void
.end method
.method public setAntiShakeStateChangeListener(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAntiShakeStateChangeListener:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
return-void
.end method
.method public startAntiShakeFunction()V
.registers 3
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->reset()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isCaptureStarted:Z
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->runningState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->setState(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->handler:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method public stopAntiShakeFunction()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->handler:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->handler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->handler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mSensorManager:Landroid/hardware/SensorManager;
invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAccelerometerSensor:Landroid/hardware/Sensor;
iput-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isCaptureStarted:Z
return-void
.end method
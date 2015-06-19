.class public Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;
.super Lcom/pinguo/camera360/base/BaseRotateActivity;
.source "SensorCheckActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final DATA_X:I = 0x0

.field private static final DATA_Y:I = 0x1

.field private static final DATA_Z:I = 0x2

.field private static final MAX_SENSOR_VALUE:F = 2.0f

.field private static final SENSOR_CORRECTION_VALUE:F = 0.0050f

.field private static final START_SENSOR_MSG:I = 0x65

.field private static final STOP_SENSOR_MSG:I = 0x64


# instance fields
.field private handler:Landroid/os/Handler;

.field private mLastSensorX:F

.field private mLastSensorY:F

.field private mLastSensorZ:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private rotatableLayout:Lcom/pinguo/camera360/lib/ui/Rotatable;

.field private sensorIntArray:Landroid/util/SparseIntArray;

.field private start:Z

.field private success:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->rotatableLayout:Lcom/pinguo/camera360/lib/ui/Rotatable;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iput v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorX:F

    iput v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorY:F

    iput v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorZ:F

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->sensorIntArray:Landroid/util/SparseIntArray;

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->start:Z

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->success:Z

    iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->statistics()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->success:Z

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->start:Z

    return-void
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

.method private putIntArray(I)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->sensorIntArray:Landroid/util/SparseIntArray;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->sensorIntArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->sensorIntArray:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4
.end method

.method private statistics()V
    .registers 9

    iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->sensorIntArray:Landroid/util/SparseIntArray;

    if-nez v6, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->sensorIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_d
    if-lt v0, v2, :cond_20

    int-to-float v6, v3

    const/high16 v7, 0x42c8

    div-float v4, v6, v7

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setMinSensorValue(F)V

    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->setResult(I)V

    goto :goto_4

    :cond_20
    iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->sensorIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_2c

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2c
    iget-object v6, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->sensorIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    if-ge v3, v1, :cond_29

    move v3, v1

    goto :goto_29
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300d1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->setContentView(I)V

    const v0, 0x7f0a04ac

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/Rotatable;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->rotatableLayout:Lcom/pinguo/camera360/lib/ui/Rotatable;

    new-instance v0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;-><init>(Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .registers 3

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->handler:Landroid/os/Handler;

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->success:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->setResult(I)V

    :cond_1e
    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 6

    const-string/jumbo v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x65

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 15

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v10

    iget v9, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorX:F

    sub-float v4, v8, v9

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v11

    iget v9, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorY:F

    sub-float v5, v8, v9

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v12

    iget v9, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorZ:F

    sub-float v6, v8, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v10

    iput v8, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorX:F

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v11

    iput v8, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorY:F

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v12

    iput v8, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->mLastSensorZ:F

    iget-boolean v8, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->start:Z

    if-eqz v8, :cond_58

    invoke-direct {p0, v0, v1, v2}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->max(FFF)F

    move-result v3

    const/high16 v8, 0x4000

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_4d

    invoke-virtual {p0, v10}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->finish()V

    :cond_4d
    const v8, 0x3ba3d70a

    add-float/2addr v8, v3

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v7, v8

    invoke-direct {p0, v7}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->putIntArray(I)V

    :cond_58
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .registers 3

    return-void
.end method

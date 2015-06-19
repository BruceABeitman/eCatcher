.class public Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
.super Ljava/lang/Object;
.source "FocusDistanceChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
    }
.end annotation


# static fields
.field private static final MSG_FOR_SENSOR_FOCUS:I = 0xb

.field private static final STABILIZE_ANGLE:F = 3.0f

.field private static final STABILIZE_SUM_ANGLE:F = 5.0f

.field private static final STABLE_TIME:I = 0x190

.field private static final TAG:Ljava/lang/String; = "DistanceChecker"

.field private static final TRIGGER_FOCUS_ANGLE:F = 30.0f

.field private static final TRIGGER_FOCUS_SUM_ANGLE:F = 30.0f


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsBeyondSensorThreshold:Z

.field private mLastSensorValues:[F

.field private mListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mStabilizeSensorValue:[F

.field private mTempSensorValues:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;)V
    .registers 5

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;-><init>(Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mHandler:Landroid/os/Handler;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mTempSensorValues:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mLastSensorValues:[F

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;)Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mIsBeyondSensorThreshold:Z

    return-void
.end method

.method private checkRange([F[FFF)Z
    .registers 13

    const/4 v7, 0x3

    const/4 v2, 0x0

    array-length v5, p1

    if-lt v5, v7, :cond_8

    array-length v5, p2

    if-ge v5, v7, :cond_a

    :cond_8
    move v3, v2

    :goto_9
    return v3

    :cond_a
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_c
    if-lt v1, v7, :cond_10

    :goto_e
    move v3, v2

    goto :goto_9

    :cond_10
    aget v5, p1, v1

    aget v6, p2, v1

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x4334

    cmpl-float v5, v0, v5

    if-lez v5, :cond_23

    const/high16 v5, 0x43b4

    sub-float v0, v5, v0

    :cond_23
    cmpl-float v5, v0, p3

    if-lez v5, :cond_29

    const/4 v2, 0x1

    goto :goto_e

    :cond_29
    add-float/2addr v4, v0

    cmpl-float v5, v4, p4

    if-lez v5, :cond_30

    const/4 v2, 0x1

    goto :goto_e

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    const-wide/16 v6, 0x190

    const/high16 v3, 0x41f0

    const/16 v5, 0xb

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mTempSensorValues:[F

    iget-object v2, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mTempSensorValues:[F

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;->preCheck()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    goto :goto_2a

    :pswitch_35
    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mIsBeyondSensorThreshold:Z

    if-nez v0, :cond_60

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mLastSensorValues:[F

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->checkRange([F[FFF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mIsBeyondSensorThreshold:Z

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mIsBeyondSensorThreshold:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F

    if-nez v0, :cond_2a

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F

    iget-object v2, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    :cond_60
    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/high16 v2, 0x4040

    const/high16 v3, 0x40a0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->checkRange([F[FFF)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7b
    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F

    iget-object v2, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    nop

    :pswitch_data_8c
    .packed-switch 0x3
        :pswitch_35
    .end packed-switch
.end method

.method public register()V
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string/jumbo v0, "DistanceChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sensor type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mLastSensorValues:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mIsBeyondSensorThreshold:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F

    return-void
.end method

.method public unRegister()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mSensor:Landroid/hardware/Sensor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "DistanceChecker"

    const-string/jumbo v2, "un-register the focus sensor error, just ignore it !!!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public updateLastSensorValues()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mTempSensorValues:[F

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mLastSensorValues:[F

    iget-object v2, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mTempSensorValues:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

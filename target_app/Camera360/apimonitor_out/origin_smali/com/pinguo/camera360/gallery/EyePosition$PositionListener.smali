.class Lcom/pinguo/camera360/gallery/EyePosition$PositionListener;
.super Ljava/lang/Object;
.source "EyePosition.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/EyePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/EyePosition;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/EyePosition;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/EyePosition$PositionListener;->this$0:Lcom/pinguo/camera360/gallery/EyePosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/EyePosition;Lcom/pinguo/camera360/gallery/EyePosition$PositionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/EyePosition$PositionListener;-><init>(Lcom/pinguo/camera360/gallery/EyePosition;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    :goto_c
    :pswitch_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/EyePosition$PositionListener;->this$0:Lcom/pinguo/camera360/gallery/EyePosition;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    #calls: Lcom/pinguo/camera360/gallery/EyePosition;->onGyroscopeChanged(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/EyePosition;->access$0(Lcom/pinguo/camera360/gallery/EyePosition;FFF)V

    goto :goto_c

    :pswitch_1f
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/EyePosition$PositionListener;->this$0:Lcom/pinguo/camera360/gallery/EyePosition;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    #calls: Lcom/pinguo/camera360/gallery/EyePosition;->onAccelerometerChanged(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/EyePosition;->access$1(Lcom/pinguo/camera360/gallery/EyePosition;FFF)V

    goto :goto_c

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_c
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
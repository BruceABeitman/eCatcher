.class  Lcom/pinguo/album/EyePosition$PositionListener;
.super Ljava/lang/Object;
.source "EyePosition.java"
.implements Landroid/hardware/SensorEventListener;
.field final synthetic this$0:Lcom/pinguo/album/EyePosition;
.method private constructor <init>(Lcom/pinguo/album/EyePosition;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/EyePosition$PositionListener;->this$0:Lcom/pinguo/album/EyePosition;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/EyePosition;Lcom/pinguo/album/EyePosition$PositionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/EyePosition$PositionListener;-><init>(Lcom/pinguo/album/EyePosition;)V
return-void
.end method
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
iget-object v0, p0, Lcom/pinguo/album/EyePosition$PositionListener;->this$0:Lcom/pinguo/album/EyePosition;
iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F
aget v1, v1, v2
iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F
aget v2, v2, v3
iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F
aget v3, v3, v4
#calls: Lcom/pinguo/album/EyePosition;->onGyroscopeChanged(FFF)V
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/album/EyePosition;->access$0(Lcom/pinguo/album/EyePosition;FFF)V
goto :goto_c
:pswitch_1f
iget-object v0, p0, Lcom/pinguo/album/EyePosition$PositionListener;->this$0:Lcom/pinguo/album/EyePosition;
iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F
aget v1, v1, v2
iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F
aget v2, v2, v3
iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F
aget v3, v3, v4
#calls: Lcom/pinguo/album/EyePosition;->onAccelerometerChanged(FFF)V
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/album/EyePosition;->access$1(Lcom/pinguo/album/EyePosition;FFF)V
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
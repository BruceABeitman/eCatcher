.class  Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;
.super Ljava/lang/Object;
.source "PGAntiShake.java"
.implements Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
.method private constructor <init>(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;-><init>(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)V
return-void
.end method
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
.registers 16
const/4 v13, 0x2
const/4 v12, 0x1
const/4 v11, 0x0
iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F
aget v9, v9, v11
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorX:F
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$14(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)F
move-result v10
sub-float v4, v9, v10
iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F
aget v9, v9, v12
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorY:F
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$15(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)F
move-result v10
sub-float v5, v9, v10
iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F
aget v9, v9, v13
iget-object v10, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorZ:F
invoke-static {v10}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$16(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)F
move-result v10
sub-float v6, v9, v10
invoke-static {v4}, Ljava/lang/Math;->abs(F)F
move-result v0
invoke-static {v5}, Ljava/lang/Math;->abs(F)F
move-result v1
invoke-static {v6}, Ljava/lang/Math;->abs(F)F
move-result v2
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F
aget v10, v10, v11
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorX:F
invoke-static {v9, v10}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$17(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;F)V
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F
aget v10, v10, v12
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorY:F
invoke-static {v9, v10}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$18(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;F)V
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F
aget v10, v10, v13
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastSensorZ:F
invoke-static {v9, v10}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$19(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;F)V
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#calls: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->max(FFF)F
invoke-static {v9, v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$20(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;FFF)F
move-result v3
invoke-static {}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$7()Ljava/lang/String;
move-result-object v9
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "fMaxDelta = "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#calls: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->level(F)I
invoke-static {v9, v3}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$21(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;F)I
move-result v7
if-eqz v7, :cond_ac
mul-int/lit8 v9, v7, 0x5
add-int/lit8 v8, v9, 0x5
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
invoke-static {v9}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$22(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)I
move-result v9
if-le v8, v9, :cond_ac
invoke-static {}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$7()Ljava/lang/String;
move-result-object v9
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "temp = "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, " attenuationValue = "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
invoke-static {v11}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$22(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)I
move-result v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$RunningState;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->attenuationValue:I
invoke-static {v9, v8}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$23(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;I)V
:cond_ac
return-void
.end method
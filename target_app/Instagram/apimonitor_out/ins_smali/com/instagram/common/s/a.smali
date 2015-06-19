.class public abstract Lcom/instagram/common/s/a;
.super Ljava/lang/Object;
.source "RageSensorEventListener.java"
.implements Landroid/hardware/SensorEventListener;
.field private a:Lcom/instagram/common/s/c;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/common/s/c;
invoke-direct {v0}, Lcom/instagram/common/s/c;-><init>()V
iput-object v0, p0, Lcom/instagram/common/s/a;->a:Lcom/instagram/common/s/c;
return-void
.end method
.method protected abstract a()V
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/common/s/a;->a:Lcom/instagram/common/s/c;
invoke-virtual {v0}, Lcom/instagram/common/s/c;->a()V
return-void
.end method
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
.registers 3
return-void
.end method
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/s/a;->a:Lcom/instagram/common/s/c;
invoke-virtual {v0, p1}, Lcom/instagram/common/s/c;->a(Landroid/hardware/SensorEvent;)V
iget-object v0, p0, Lcom/instagram/common/s/a;->a:Lcom/instagram/common/s/c;
invoke-virtual {v0}, Lcom/instagram/common/s/c;->b()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/instagram/common/s/a;->a:Lcom/instagram/common/s/c;
invoke-virtual {v0}, Lcom/instagram/common/s/c;->a()V
invoke-virtual {p0}, Lcom/instagram/common/s/a;->a()V
:cond_15
return-void
.end method
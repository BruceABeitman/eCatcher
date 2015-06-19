.class public abstract Lcom/instagram/common/s/f;
.super Ljava/lang/Object;
.source "ShakeSensorHelper.java"
.implements Lcom/instagram/common/l/a/a;
.field protected a:Landroid/support/v4/app/k;
.field private b:Landroid/hardware/SensorManager;
.field private c:Z
.field private d:Z
.field private e:Lcom/instagram/common/s/a;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/common/s/f;->d:Z
new-instance v0, Lcom/instagram/common/s/g;
invoke-direct {v0, p0}, Lcom/instagram/common/s/g;-><init>(Lcom/instagram/common/s/f;)V
iput-object v0, p0, Lcom/instagram/common/s/f;->e:Lcom/instagram/common/s/a;
const-string v0, "sensor"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/SensorManager;
iput-object v0, p0, Lcom/instagram/common/s/f;->b:Landroid/hardware/SensorManager;
return-void
.end method
.method static synthetic a(Lcom/instagram/common/s/f;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/common/s/f;->c:Z
return v0
.end method
.method static synthetic a(Lcom/instagram/common/s/f;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/common/s/f;->c:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/common/s/f;)Lcom/instagram/common/s/a;
.registers 2
iget-object v0, p0, Lcom/instagram/common/s/f;->e:Lcom/instagram/common/s/a;
return-object v0
.end method
.method private d()V
.registers 6
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/instagram/common/s/f;->d:Z
if-nez v0, :cond_15
iget-object v0, p0, Lcom/instagram/common/s/f;->b:Landroid/hardware/SensorManager;
iget-object v1, p0, Lcom/instagram/common/s/f;->e:Lcom/instagram/common/s/a;
iget-object v2, p0, Lcom/instagram/common/s/f;->b:Landroid/hardware/SensorManager;
invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
move-result-object v2
const/4 v3, 0x2
invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
iput-boolean v4, p0, Lcom/instagram/common/s/f;->d:Z
:cond_15
return-void
.end method
.method protected abstract a()V
.end method
.method public a(Landroid/app/Activity;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/common/s/f;->a:Landroid/support/v4/app/k;
invoke-virtual {p0}, Lcom/instagram/common/s/f;->c()V
return-void
.end method
.method protected final b()Landroid/content/DialogInterface$OnDismissListener;
.registers 2
new-instance v0, Lcom/instagram/common/s/h;
invoke-direct {v0, p0}, Lcom/instagram/common/s/h;-><init>(Lcom/instagram/common/s/f;)V
return-object v0
.end method
.method public final b(Landroid/app/Activity;)V
.registers 3
instance-of v0, p1, Landroid/support/v4/app/k;
if-eqz v0, :cond_b
check-cast p1, Landroid/support/v4/app/k;
iput-object p1, p0, Lcom/instagram/common/s/f;->a:Landroid/support/v4/app/k;
invoke-direct {p0}, Lcom/instagram/common/s/f;->d()V
:cond_b
return-void
.end method
.method public final c()V
.registers 3
iget-boolean v0, p0, Lcom/instagram/common/s/f;->d:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/instagram/common/s/f;->b:Landroid/hardware/SensorManager;
iget-object v1, p0, Lcom/instagram/common/s/f;->e:Lcom/instagram/common/s/a;
invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/common/s/f;->d:Z
:cond_e
return-void
.end method
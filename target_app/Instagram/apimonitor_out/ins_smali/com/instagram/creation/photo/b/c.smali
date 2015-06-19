.class public abstract Lcom/instagram/creation/photo/b/c;
.super Ljava/lang/Object;
.source "PreciseOrientationEventListener.java"
.field private static a:F
.field private b:F
.field private c:Landroid/hardware/SensorManager;
.field private d:Z
.field private e:I
.field private f:Landroid/hardware/Sensor;
.field private g:Landroid/hardware/SensorEventListener;
.method static constructor <clinit>()V
.registers 1
const v0, 0x42652ee1
sput v0, Lcom/instagram/creation/photo/b/c;->a:F
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/b/c;-><init>(Landroid/content/Context;B)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;B)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, -0x4080
iput v0, p0, Lcom/instagram/creation/photo/b/c;->b:F
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/photo/b/c;->d:Z
const-string v0, "sensor"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/SensorManager;
iput-object v0, p0, Lcom/instagram/creation/photo/b/c;->c:Landroid/hardware/SensorManager;
const/4 v0, 0x3
iput v0, p0, Lcom/instagram/creation/photo/b/c;->e:I
iget-object v0, p0, Lcom/instagram/creation/photo/b/c;->c:Landroid/hardware/SensorManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/photo/b/c;->f:Landroid/hardware/Sensor;
iget-object v0, p0, Lcom/instagram/creation/photo/b/c;->f:Landroid/hardware/Sensor;
if-eqz v0, :cond_2b
new-instance v0, Lcom/instagram/creation/photo/b/d;
invoke-direct {v0, p0}, Lcom/instagram/creation/photo/b/d;-><init>(Lcom/instagram/creation/photo/b/c;)V
iput-object v0, p0, Lcom/instagram/creation/photo/b/c;->g:Landroid/hardware/SensorEventListener;
:cond_2b
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/photo/b/c;)F
.registers 2
iget v0, p0, Lcom/instagram/creation/photo/b/c;->b:F
return v0
.end method
.method static synthetic a(Lcom/instagram/creation/photo/b/c;F)F
.registers 2
iput p1, p0, Lcom/instagram/creation/photo/b/c;->b:F
return p1
.end method
.method static synthetic c()F
.registers 1
sget v0, Lcom/instagram/creation/photo/b/c;->a:F
return v0
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/photo/b/c;->f:Landroid/hardware/Sensor;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/instagram/creation/photo/b/c;->d:Z
if-nez v0, :cond_4
iget-object v0, p0, Lcom/instagram/creation/photo/b/c;->c:Landroid/hardware/SensorManager;
iget-object v1, p0, Lcom/instagram/creation/photo/b/c;->g:Landroid/hardware/SensorEventListener;
iget-object v2, p0, Lcom/instagram/creation/photo/b/c;->f:Landroid/hardware/Sensor;
iget v3, p0, Lcom/instagram/creation/photo/b/c;->e:I
invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/photo/b/c;->d:Z
goto :goto_4
.end method
.method public abstract a(F)V
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/photo/b/c;->f:Landroid/hardware/Sensor;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/instagram/creation/photo/b/c;->d:Z
const/4 v1, 0x1
if-ne v0, v1, :cond_4
iget-object v0, p0, Lcom/instagram/creation/photo/b/c;->c:Landroid/hardware/SensorManager;
iget-object v1, p0, Lcom/instagram/creation/photo/b/c;->g:Landroid/hardware/SensorEventListener;
invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/photo/b/c;->d:Z
goto :goto_4
.end method
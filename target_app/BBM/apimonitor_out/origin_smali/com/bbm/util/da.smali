.class public final Lcom/bbm/util/da;
.super Ljava/lang/Object;
.source "ProximitySensorUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/bbm/util/cy;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/hardware/SensorManager;

.field private final c:Landroid/hardware/Sensor;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/util/da;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbm/util/da;->b:Landroid/hardware/SensorManager;

    iput-object p3, p0, Lcom/bbm/util/da;->c:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-boolean v0, p0, Lcom/bbm/util/da;->d:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/bbm/util/da;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/bbm/util/da;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/util/da;->d:Z

    :cond_f
    return-void
.end method

.method public final b()V
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/util/da;->d:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/util/da;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/da;->d:Z

    :cond_c
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/bbm/util/da;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/util/da;->c:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2a

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_29
    return-void

    :cond_2a
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_29
.end method

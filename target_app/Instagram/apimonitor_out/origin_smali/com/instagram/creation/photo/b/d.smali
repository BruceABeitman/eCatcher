.class final Lcom/instagram/creation/photo/b/d;
.super Ljava/lang/Object;
.source "PreciseOrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/b/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/b/d;->a:Lcom/instagram/creation/photo/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    const/high16 v6, 0x43b4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/high16 v0, -0x4080

    const/4 v2, 0x0

    aget v2, v1, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    neg-float v3, v3

    const/4 v4, 0x2

    aget v1, v1, v4

    neg-float v1, v1

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    const/high16 v5, 0x4080

    mul-float/2addr v4, v5

    mul-float/2addr v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_3d

    neg-float v0, v3

    float-to-double v0, v0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {}, Lcom/instagram/creation/photo/b/c;->c()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42b4

    sub-float v0, v1, v0

    :goto_30
    cmpl-float v1, v0, v6

    if-ltz v1, :cond_36

    sub-float/2addr v0, v6

    goto :goto_30

    :cond_36
    :goto_36
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3d

    add-float/2addr v0, v6

    goto :goto_36

    :cond_3d
    iget-object v1, p0, Lcom/instagram/creation/photo/b/d;->a:Lcom/instagram/creation/photo/b/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/b/c;->a(Lcom/instagram/creation/photo/b/c;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5a

    iget-object v1, p0, Lcom/instagram/creation/photo/b/d;->a:Lcom/instagram/creation/photo/b/c;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/photo/b/c;->a(F)V

    iget-object v1, p0, Lcom/instagram/creation/photo/b/d;->a:Lcom/instagram/creation/photo/b/c;

    invoke-static {v1, v0}, Lcom/instagram/creation/photo/b/c;->a(Lcom/instagram/creation/photo/b/c;F)F

    :cond_5a
    return-void
.end method

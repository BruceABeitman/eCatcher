.class Lcom/admarvel/android/ads/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/n;
.end annotation


# instance fields
.field final a:F

.field final synthetic b:Lcom/admarvel/android/ads/n;

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:F

.field private h:[F

.field private i:[F

.field private j:[F

.field private final k:[F

.field private final l:[F

.field private final m:[F


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/n;)V
    .registers 5

    const/4 v2, 0x3

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/admarvel/android/ads/n$1;->b:Lcom/admarvel/android/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->d:J

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->e:J

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/n$1;->g:F

    new-array v0, v2, [F

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/admarvel/android/ads/n$1;->k:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/admarvel/android/ads/n$1;->l:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_42

    iput-object v0, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/admarvel/android/ads/n$1;->a:F

    return-void

    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13

    const v6, 0x3f4ccccd

    const v5, 0x3e4ccccc

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v9, :cond_21

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    :cond_21
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v10, :cond_33

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/admarvel/android/ads/n$1;->j:[F

    :cond_33
    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->j:[F

    if-eqz v0, :cond_74

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/16 v1, 0x9

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    iget-object v3, p0, Lcom/admarvel/android/ads/n$1;->j:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget v0, v1, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6f

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    :cond_6f
    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->b:Lcom/admarvel/android/ads/n;

    invoke-static {v1, v0}, Lcom/admarvel/android/ads/n;->a(Lcom/admarvel/android/ads/n;F)V

    :cond_74
    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    if-eqz v0, :cond_92

    iget-wide v0, p0, Lcom/admarvel/android/ads/n$1;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_93

    iget-wide v0, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->e:J

    iget-wide v0, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->f:J

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/admarvel/android/ads/n$1;->i:[F

    :cond_92
    :goto_92
    return-void

    :cond_93
    iget-wide v0, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iget-wide v2, p0, Lcom/admarvel/android/ads/n$1;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->d:J

    iget-wide v0, p0, Lcom/admarvel/android/ads/n$1;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_92

    iget-wide v0, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iget-wide v2, p0, Lcom/admarvel/android/ads/n$1;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->b:Lcom/admarvel/android/ads/n;

    invoke-static {v2}, Lcom/admarvel/android/ads/n;->a(Lcom/admarvel/android/ads/n;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f6

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v0, v0, v8

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v9

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v10

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->i:[F

    aget v1, v1, v8

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->i:[F

    aget v1, v1, v9

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->i:[F

    aget v1, v1, v10

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-wide v1, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iget-wide v3, p0, Lcom/admarvel/android/ads/n$1;->f:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/admarvel/android/ads/n$1;->g:F

    iget-wide v0, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->f:J

    iget v0, p0, Lcom/admarvel/android/ads/n$1;->g:F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->b:Lcom/admarvel/android/ads/n;

    invoke-static {v1}, Lcom/admarvel/android/ads/n;->b(Lcom/admarvel/android/ads/n;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f6

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->b:Lcom/admarvel/android/ads/n;

    iget v1, p0, Lcom/admarvel/android/ads/n$1;->g:F

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/n;->b(Lcom/admarvel/android/ads/n;F)V

    :cond_f6
    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    aget v1, v1, v8

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v2, v2, v8

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v8

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    aget v1, v1, v9

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v2, v2, v9

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v9

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    aget v1, v1, v10

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v2, v2, v10

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v10

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->k:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    aput v1, v0, v8

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->k:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    aget v2, v2, v9

    sub-float/2addr v1, v2

    aput v1, v0, v9

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->k:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->m:[F

    aget v2, v2, v10

    sub-float/2addr v1, v2

    aput v1, v0, v10

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->l:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->i:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    aput v1, v0, v8

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->l:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->i:[F

    aget v2, v2, v9

    sub-float/2addr v1, v2

    aput v1, v0, v9

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->l:[F

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->i:[F

    aget v2, v2, v10

    sub-float/2addr v1, v2

    aput v1, v0, v10

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->b:Lcom/admarvel/android/ads/n;

    iget-object v1, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v2, v2, v9

    iget-object v3, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/admarvel/android/ads/n$1;->k:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/admarvel/android/ads/n$1;->k:[F

    aget v5, v5, v9

    iget-object v6, p0, Lcom/admarvel/android/ads/n$1;->k:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/admarvel/android/ads/n$1;->l:[F

    aget v7, v7, v8

    iget-object v8, p0, Lcom/admarvel/android/ads/n$1;->l:[F

    aget v8, v8, v9

    iget-object v9, p0, Lcom/admarvel/android/ads/n$1;->l:[F

    aget v9, v9, v10

    invoke-static/range {v0 .. v9}, Lcom/admarvel/android/ads/n;->a(Lcom/admarvel/android/ads/n;FFFFFFFFF)V

    iget-object v0, p0, Lcom/admarvel/android/ads/n$1;->h:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/admarvel/android/ads/n$1;->i:[F

    iget-wide v0, p0, Lcom/admarvel/android/ads/n$1;->c:J

    iput-wide v0, p0, Lcom/admarvel/android/ads/n$1;->e:J

    goto/16 :goto_92
.end method

.class public final Lcom/mapquest/android/maps/ck;
.super Lcom/mapquest/android/maps/ci;
.source "TouchEventHandler.java"


# instance fields
.field b:J

.field final synthetic c:Lcom/mapquest/android/maps/ch;

.field private d:Lcom/mapquest/android/maps/MapView;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/ch;Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    iput-object p1, p0, Lcom/mapquest/android/maps/ck;->c:Lcom/mapquest/android/maps/ch;

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ci;-><init>(Lcom/mapquest/android/maps/ch;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ck;->e:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mapquest/android/maps/ck;->b:J

    iput-object p2, p0, Lcom/mapquest/android/maps/ck;->d:Lcom/mapquest/android/maps/MapView;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/cn;[Landroid/graphics/PointF;)Z
    .registers 10

    const-wide/16 v2, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Lcom/mapquest/android/maps/cn;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-ne v0, v5, :cond_12

    iput-wide v2, p0, Lcom/mapquest/android/maps/ck;->b:J

    :cond_11
    :goto_11
    return v4

    :cond_12
    iget v1, p2, Lcom/mapquest/android/maps/cn;->d:I

    if-ne v0, v1, :cond_11

    iget-wide v0, p0, Lcom/mapquest/android/maps/ck;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/ck;->b:J

    goto :goto_11

    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mapquest/android/maps/ck;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4e

    array-length v0, p3

    if-ne v0, v5, :cond_4e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p3}, Lcom/mapquest/android/maps/ck;->a(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V

    invoke-static {v0}, Lcom/mapquest/android/maps/ck;->a(Ljava/util/ArrayList;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/ck;->d:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/mapquest/android/maps/al;->c(II)Z

    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/ck;->b:J

    goto :goto_11
.end method

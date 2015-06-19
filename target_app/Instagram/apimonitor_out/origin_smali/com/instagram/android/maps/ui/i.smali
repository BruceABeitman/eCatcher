.class public final Lcom/instagram/android/maps/ui/i;
.super Lcom/google/android/maps/MapView;
.source "IgMapsView.java"


# instance fields
.field private a:I

.field private b:Lcom/google/android/maps/GeoPoint;

.field private c:Lcom/instagram/android/maps/ui/a/b;

.field private d:Lcom/instagram/android/maps/ui/l;

.field private e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/Hashtable;

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/maps/ui/i;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/maps/ui/i;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/i;->i:J

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/i;->d()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/i;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/i;->f:Landroid/os/Handler;

    return-void
.end method

.method private e()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/i;->getHashtable()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_13

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/i;->getHashtable()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v0, "IgMapsView"

    const-string v1, "clear cache failed"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private getHashtable()Ljava/util/Hashtable;
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->h:Ljava/util/Hashtable;

    if-nez v0, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mMap"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mapService"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mapCache"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/instagram/android/maps/ui/i;->h:Ljava/util/Hashtable;

    :cond_40
    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->h:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/i;->i:J

    return-void
.end method

.method public final declared-synchronized a(D)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    instance-of v2, v0, Lcom/instagram/android/maps/ui/ah;

    if-eqz v2, :cond_9

    check-cast v0, Lcom/instagram/android/maps/ui/ah;

    iget-wide v2, v0, Lcom/instagram/android/maps/ui/ah;->a:J

    long-to-double v2, v2

    cmpl-double v0, v2, p1

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_9

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_29
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/maps/ui/ah;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_5

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/instagram/android/maps/b/h;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getLatitudeSpan()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getLatitudeSpan()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getLongitudeSpan()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getLongitudeSpan()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->d()I

    move-result v4

    if-le v4, v0, :cond_56

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->d()I

    move-result v0

    if-ge v0, v1, :cond_56

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->e()I

    move-result v0

    if-le v0, v2, :cond_56

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->e()I

    move-result v0

    if-ge v0, v3, :cond_56

    const/4 v0, 0x1

    :goto_55
    return v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_55
.end method

.method public final b()V
    .registers 7

    iget v0, p0, Lcom/instagram/android/maps/ui/i;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/maps/ui/i;->e:I

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    new-instance v1, Lcom/instagram/android/maps/ui/j;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/j;-><init>(Lcom/instagram/android/maps/ui/i;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1f
    return-void
.end method

.method public final c()V
    .registers 2

    iget v0, p0, Lcom/instagram/android/maps/ui/i;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instagram/android/maps/ui/i;->e:I

    iget v0, p0, Lcom/instagram/android/maps/ui/i;->e:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    :cond_16
    return-void
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/maps/ui/i;->a:I

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->c:Lcom/instagram/android/maps/ui/a/b;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->c:Lcom/instagram/android/maps/ui/a/b;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/a/b;->b()V

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/i;->e()V

    :cond_17
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/maps/ui/i;->a:I

    :cond_1d
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/maps/ui/i;->g:Ljava/util/Timer;

    :cond_c
    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->d:Lcom/instagram/android/maps/ui/l;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->d:Lcom/instagram/android/maps/ui/l;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/l;->a()V

    :cond_15
    invoke-super {p0}, Lcom/google/android/maps/MapView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/android/maps/ui/i;->i:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2e

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapController;->zoomInFixing(II)Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/maps/ui/i;->i:J

    :cond_29
    :goto_29
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2e
    iput-wide v0, p0, Lcom/instagram/android/maps/ui/i;->i:J

    goto :goto_29
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/i;->c:Lcom/instagram/android/maps/ui/a/b;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/instagram/android/maps/ui/i;->b:Lcom/google/android/maps/GeoPoint;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/instagram/android/maps/ui/i;->b:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/instagram/android/maps/ui/i;->b:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    if-eq v1, v0, :cond_33

    :cond_2b
    iget-object v0, p0, Lcom/instagram/android/maps/ui/i;->c:Lcom/instagram/android/maps/ui/a/b;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/a/b;->a()V

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/i;->e()V

    :cond_33
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/ui/i;->b:Lcom/google/android/maps/GeoPoint;

    :cond_39
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setDetachWindowListener(Lcom/instagram/android/maps/ui/l;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/i;->d:Lcom/instagram/android/maps/ui/l;

    return-void
.end method

.method public final setOnPanListener(Lcom/instagram/android/maps/ui/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/i;->c:Lcom/instagram/android/maps/ui/a/b;

    return-void
.end method

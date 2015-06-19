.class public abstract Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "BalloonItemizedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

.field private clickRegion:Landroid/view/View;

.field private mapView:Lcom/google/android/maps/MapView;

.field final mc:Lcom/google/android/maps/MapController;

.field private viewOffset:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->viewOffset:I

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    return-void
.end method

.method private hideOtherBalloons(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    instance-of v2, v1, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    if-eqz v2, :cond_4

    if-eq v1, p0, :cond_4

    check-cast v1, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    invoke-virtual {v1}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->hideBalloon()V

    goto :goto_4

    :cond_1c
    return-void
.end method

.method private setBalloonTouchListener(I)V
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onBalloonTap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->clickRegion:Landroid/view/View;

    new-instance v3, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;

    invoke-direct {v3, p0, p1}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;-><init>(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_27

    :goto_1c
    return-void

    :catch_1d
    move-exception v2

    move-object v0, v2

    const-string v2, "BalloonItemizedOverlay"

    const-string v3, "setBalloonTouchListener reflection SecurityException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catch_27
    move-exception v2

    move-object v0, v2

    goto :goto_1c
.end method


# virtual methods
.method protected hideBalloon()V
    .registers 3

    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method protected onBalloonTap(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected final onTap(I)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    move v4, p1

    invoke-virtual {p0, p1}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    if-nez v5, :cond_62

    new-instance v5, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    iget-object v6, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->viewOffset:I

    invoke-direct {v5, v6, v7}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    const/high16 v6, 0x7f09

    invoke-virtual {v5, v6}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->clickRegion:Landroid/view/View;

    const/4 v0, 0x0

    :goto_2a
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setVisibility(I)V

    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_40

    invoke-direct {p0, v1}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->hideOtherBalloons(Ljava/util/List;)V

    :cond_40
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    invoke-virtual {p0, p1}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setData(Lcom/google/android/maps/OverlayItem;)V

    new-instance v2, Lcom/google/android/maps/MapView$LayoutParams;

    const/16 v5, 0x51

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    iput v9, v2, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    invoke-direct {p0, v4}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->setBalloonTouchListener(I)V

    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    invoke-virtual {v5, v9}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setVisibility(I)V

    if-eqz v0, :cond_64

    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    invoke-virtual {v5, v2}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_61
    return v10

    :cond_62
    const/4 v0, 0x1

    goto :goto_2a

    :cond_64
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    iget-object v6, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    invoke-virtual {v5, v6, v2}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_61
.end method

.method public setBalloonBottomOffset(I)V
    .registers 2

    iput p1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->viewOffset:I

    return-void
.end method

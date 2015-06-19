.class final Lcom/mapquest/android/maps/cu;
.super Lcom/mapquest/android/maps/f;
.source "TrafficManager.java"


# instance fields
.field a:I

.field final synthetic b:Lcom/mapquest/android/maps/cq;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/cq;)V
    .registers 3

    iput-object p1, p0, Lcom/mapquest/android/maps/cu;->b:Lcom/mapquest/android/maps/cq;

    invoke-direct {p0}, Lcom/mapquest/android/maps/f;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mapquest/android/maps/cu;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/cq;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/cu;-><init>(Lcom/mapquest/android/maps/cq;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 6

    iget v0, p0, Lcom/mapquest/android/maps/cu;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/mapquest/android/maps/cu;->a:I

    if-lt v0, v1, :cond_10

    invoke-super {p0, p1, p2, p3}, Lcom/mapquest/android/maps/f;->a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V

    :cond_10
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/b;)V
    .registers 4

    const/16 v0, 0xb4

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-super {p0, p1, p2}, Lcom/mapquest/android/maps/f;->a(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/b;)V

    return-void
.end method

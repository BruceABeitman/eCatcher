.class public Lcom/mapquest/android/maps/f;
.super Lcom/mapquest/android/maps/bh;
.source "DrawableOverlay.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Lcom/mapquest/android/maps/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mapquest/android/maps/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->b:Lcom/mapquest/android/maps/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    if-eqz p3, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_30

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_48

    :cond_30
    const/4 v6, 0x1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move v0, v6

    :cond_48
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v1

    iget-object v2, p2, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p2, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5e
    iget-object v0, p0, Lcom/mapquest/android/maps/f;->b:Lcom/mapquest/android/maps/b;

    invoke-static {v0, p2}, Lcom/mapquest/android/maps/cv;->a(Lcom/mapquest/android/maps/b;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/bs;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/bs;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_7d
    .catchall {:try_start_c .. :try_end_7d} :catchall_81

    :cond_7d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :catchall_81
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/b;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    :cond_19
    if-eqz p1, :cond_23

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iput-object p1, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    :cond_23
    iput-object p2, p0, Lcom/mapquest/android/maps/f;->b:Lcom/mapquest/android/maps/b;

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->i:Lcom/mapquest/android/maps/bj;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->b:Lcom/mapquest/android/maps/b;

    if-eqz v0, :cond_26

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/f;->b:Lcom/mapquest/android/maps/b;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/b;->a(Lcom/mapquest/android/maps/s;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->i:Lcom/mapquest/android/maps/bj;

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public final a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mapquest/android/maps/f;->b:Lcom/mapquest/android/maps/b;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/mapquest/android/maps/f;->b:Lcom/mapquest/android/maps/b;

    invoke-virtual {v2, p1}, Lcom/mapquest/android/maps/b;->a(Lcom/mapquest/android/maps/s;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/mapquest/android/maps/f;->h:Lcom/mapquest/android/maps/bi;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/mapquest/android/maps/f;->h:Lcom/mapquest/android/maps/bi;

    invoke-interface {v2}, Lcom/mapquest/android/maps/bi;->a()V

    move v2, v0

    :goto_18
    if-eqz v2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :cond_1d
    move v0, v1

    goto :goto_1a

    :cond_1f
    move v2, v1

    goto :goto_18
.end method

.method public final c()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    iput-object v1, p0, Lcom/mapquest/android/maps/f;->a:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/mapquest/android/maps/f;->b:Lcom/mapquest/android/maps/b;

    return-void
.end method

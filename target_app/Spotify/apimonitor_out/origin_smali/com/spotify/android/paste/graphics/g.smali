.class public final Lcom/spotify/android/paste/graphics/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:[I


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/spotify/android/paste/graphics/g;->d:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/spotify/android/paste/graphics/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spotify/android/paste/graphics/g;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/g;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/g;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput p1, p0, Lcom/spotify/android/paste/graphics/g;->b:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 16

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/16 v12, 0xff

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/g;->getLevel()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x461c4000

    div-float v4, v1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    mul-int/lit8 v0, v5, 0x2

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v6, v0, 0x40

    move v1, v2

    :goto_38
    const/16 v0, 0x8

    if-ge v1, v0, :cond_a0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int v0, v5, v6

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lcom/spotify/android/paste/graphics/g;->a:Landroid/graphics/Paint;

    const/high16 v0, 0x4140

    mul-float/2addr v0, v4

    sget-object v8, Lcom/spotify/android/paste/graphics/g;->d:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    int-to-float v9, v1

    sub-float/2addr v0, v9

    sub-float v0, v8, v0

    cmpg-float v8, v13, v0

    if-gez v8, :cond_97

    sget-object v8, Lcom/spotify/android/paste/graphics/g;->d:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_97

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float v8, v0, v8

    sget-object v9, Lcom/spotify/android/paste/graphics/g;->d:[I

    float-to-int v10, v0

    aget v9, v9, v10

    sget-object v10, Lcom/spotify/android/paste/graphics/g;->d:[I

    const/high16 v11, 0x3f80

    add-float/2addr v0, v11

    float-to-int v0, v0

    aget v0, v10, v0

    int-to-float v10, v9

    sub-int/2addr v0, v9

    int-to-float v0, v0

    mul-float/2addr v0, v8

    add-float/2addr v0, v10

    float-to-int v0, v0

    invoke-static {v0, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :goto_82
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v6

    iget-object v7, p0, Lcom/spotify/android/paste/graphics/g;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v13, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v0, 0x4234

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    :cond_97
    sget-object v0, Lcom/spotify/android/paste/graphics/g;->d:[I

    aget v0, v0, v2

    invoke-static {v0, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_82

    :cond_a0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lcom/spotify/android/paste/graphics/g;->b:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lcom/spotify/android/paste/graphics/g;->b:I

    return v0
.end method

.method public final getOpacity()I
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, -0x2

    :goto_f
    return v0

    :cond_10
    const/16 v1, 0xff

    if-ne v0, v1, :cond_16

    const/4 v0, -0x1

    goto :goto_f

    :cond_16
    const/4 v0, -0x3

    goto :goto_f
.end method

.method public final isRunning()Z
    .registers 5

    iget-wide v0, p0, Lcom/spotify/android/paste/graphics/g;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final onLevelChange(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public final run()V
    .registers 9

    const-wide/16 v6, 0x5dc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/spotify/android/paste/graphics/g;->c:J

    sub-long v2, v0, v2

    rem-long/2addr v2, v6

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/spotify/android/paste/graphics/g;->setLevel(I)Z

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/g;->invalidateSelf()V

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/spotify/android/paste/graphics/g;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/g;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/g;->invalidateSelf()V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz p1, :cond_16

    if-nez v0, :cond_a

    if-eqz p2, :cond_15

    :cond_a
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/spotify/android/paste/graphics/g;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p0, v1, v2}, Lcom/spotify/android/paste/graphics/g;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0, p0}, Lcom/spotify/android/paste/graphics/g;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method public final start()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/g;->isRunning()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/android/paste/graphics/g;->c:J

    iget-wide v0, p0, Lcom/spotify/android/paste/graphics/g;->c:J

    invoke-virtual {p0, p0, v0, v1}, Lcom/spotify/android/paste/graphics/g;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method public final stop()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/g;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spotify/android/paste/graphics/g;->c:J

    invoke-virtual {p0, p0}, Lcom/spotify/android/paste/graphics/g;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

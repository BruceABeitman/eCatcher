.class public abstract Lcom/mapquest/android/maps/y;
.super Lcom/mapquest/android/maps/bh;
.source "ItemizedOverlay.java"

# interfaces
.implements Lcom/mapquest/android/maps/bl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/mapquest/android/maps/bp;",
        ">",
        "Lcom/mapquest/android/maps/bh;",
        "Lcom/mapquest/android/maps/bl;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TItem;>;"
        }
    .end annotation
.end field

.field public b:I

.field c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private m:Lcom/mapquest/android/maps/b;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/view/GestureDetector;

.field private r:Lcom/mapquest/android/maps/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapquest/android/maps/y",
            "<TItem;>.com/mapquest/android/maps/aa;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Lcom/mapquest/android/maps/ab;

.field private u:Lcom/mapquest/android/maps/co;

.field private v:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/mapquest/android/maps/bh;-><init>()V

    const/16 v0, 0x21

    iput v0, p0, Lcom/mapquest/android/maps/y;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/mapquest/android/maps/b;

    invoke-direct {v0}, Lcom/mapquest/android/maps/b;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/y;->m:Lcom/mapquest/android/maps/b;

    iput v1, p0, Lcom/mapquest/android/maps/y;->b:I

    iput v1, p0, Lcom/mapquest/android/maps/y;->n:I

    iput v1, p0, Lcom/mapquest/android/maps/y;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/y;->p:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/y;->s:I

    new-instance v0, Lcom/mapquest/android/maps/co;

    invoke-direct {v0}, Lcom/mapquest/android/maps/co;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/y;->u:Lcom/mapquest/android/maps/co;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/y;->v:[Ljava/lang/Integer;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/y;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/mapquest/android/maps/y;->d:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/mapquest/android/maps/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/aa;-><init>(Lcom/mapquest/android/maps/y;B)V

    iput-object v0, p0, Lcom/mapquest/android/maps/y;->r:Lcom/mapquest/android/maps/aa;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/mapquest/android/maps/y;->r:Lcom/mapquest/android/maps/aa;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/y;->q:Landroid/view/GestureDetector;

    return-void
.end method

.method private a(III)I
    .registers 7

    if-eq p1, p2, :cond_2d

    if-ltz p2, :cond_2d

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2d

    if-ltz p1, :cond_23

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/y;->c(I)Lcom/mapquest/android/maps/bp;

    move-result-object v0

    iget v1, v0, Lcom/mapquest/android/maps/bp;->f:I

    const v2, 0xffffff

    xor-int/2addr v2, p3

    and-int/2addr v1, v2

    iput v1, v0, Lcom/mapquest/android/maps/bp;->f:I

    :cond_23
    invoke-virtual {p0, p2}, Lcom/mapquest/android/maps/y;->c(I)Lcom/mapquest/android/maps/bp;

    move-result-object v0

    iget v1, v0, Lcom/mapquest/android/maps/bp;->f:I

    or-int/2addr v1, p3

    iput v1, v0, Lcom/mapquest/android/maps/bp;->f:I

    move p1, p2

    :cond_2d
    return p1
.end method

.method private a(Lcom/mapquest/android/maps/MapView;II)I
    .registers 13

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;

    move-result-object v3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget v2, p0, Lcom/mapquest/android/maps/y;->b:I

    if-eq v2, v1, :cond_31

    iget v2, p0, Lcom/mapquest/android/maps/y;->b:I

    invoke-virtual {p0, v2}, Lcom/mapquest/android/maps/y;->c(I)Lcom/mapquest/android/maps/bp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/mapquest/android/maps/y;->a(Lcom/mapquest/android/maps/bp;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int v4, p2, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int v5, p3, v5

    invoke-direct {p0, v2, v4, v5}, Lcom/mapquest/android/maps/y;->a(Landroid/graphics/drawable/Drawable;II)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    :cond_30
    :goto_30
    return v0

    :cond_31
    iget-object v2, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    move v8, v2

    move-object v2, v0

    move v0, v8

    :goto_3b
    if-ge v0, v4, :cond_5e

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/y;->c(I)Lcom/mapquest/android/maps/bp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    invoke-direct {p0, v5}, Lcom/mapquest/android/maps/y;->a(Lcom/mapquest/android/maps/bp;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    sub-int v6, p2, v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    sub-int v7, p3, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/mapquest/android/maps/y;->a(Landroid/graphics/drawable/Drawable;II)Z

    move-result v5

    if-nez v5, :cond_30

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_5e
    move v0, v1

    goto :goto_30
.end method

.method static synthetic a(Lcom/mapquest/android/maps/y;Lcom/mapquest/android/maps/MapView;II)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/mapquest/android/maps/y;->a(Lcom/mapquest/android/maps/MapView;II)I

    move-result v0

    return v0
.end method

.method private a(Lcom/mapquest/android/maps/bp;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    iget v0, p1, Lcom/mapquest/android/maps/bp;->f:I

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/bp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->d:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Lcom/mapquest/android/maps/bp;->f:I

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/bp;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_f
    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/drawable/Drawable;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->c:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->c:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    :try_start_20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p4, :cond_3f

    const/high16 v0, 0x7f00

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, -0x4099999a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->skew(FF)V

    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f00

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3f
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p4, :cond_47

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_4b

    :cond_47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4a
    return-void

    :catchall_4b
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method static synthetic a(Lcom/mapquest/android/maps/y;I)V
    .registers 4

    iget v0, p0, Lcom/mapquest/android/maps/y;->o:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/mapquest/android/maps/y;->a(III)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/y;->o:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/mapquest/android/maps/y;->s:I

    shr-int/lit8 v1, v1, 0x1

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private d(I)V
    .registers 5

    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    iget v1, p0, Lcom/mapquest/android/maps/y;->b:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/mapquest/android/maps/y;->a(III)I

    move-result v1

    iput v1, p0, Lcom/mapquest/android/maps/y;->b:I

    iget-object v1, p0, Lcom/mapquest/android/maps/y;->t:Lcom/mapquest/android/maps/ab;

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/mapquest/android/maps/y;->b:I

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->t:Lcom/mapquest/android/maps/ab;

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mapquest/android/maps/y;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    :cond_1c
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected abstract a(I)Lcom/mapquest/android/maps/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 10

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/mapquest/android/maps/y;->m:Lcom/mapquest/android/maps/b;

    invoke-static {v0, p2}, Lcom/mapquest/android/maps/cv;->a(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/b;

    move-result-object v0

    iget-object v3, v0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;

    iget v3, v3, Lcom/mapquest/android/maps/s;->a:I

    iget-object v4, v2, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;

    iget v4, v4, Lcom/mapquest/android/maps/s;->a:I

    if-lt v3, v4, :cond_6e

    iget-object v3, v0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;

    iget v3, v3, Lcom/mapquest/android/maps/s;->a:I

    iget-object v4, v2, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;

    iget v4, v4, Lcom/mapquest/android/maps/s;->a:I

    if-gt v3, v4, :cond_6e

    iget-object v3, v0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;

    iget v3, v3, Lcom/mapquest/android/maps/s;->b:I

    iget-object v4, v2, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;

    iget v4, v4, Lcom/mapquest/android/maps/s;->b:I

    if-gt v3, v4, :cond_6e

    iget-object v0, v0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;

    iget v0, v0, Lcom/mapquest/android/maps/s;->b:I

    iget-object v2, v2, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;

    iget v2, v2, Lcom/mapquest/android/maps/s;->b:I

    if-lt v0, v2, :cond_6e

    const/4 v0, 0x1

    :goto_37
    if-eqz v0, :cond_92

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_46
    if-ltz v0, :cond_70

    iget v3, p0, Lcom/mapquest/android/maps/y;->b:I

    if-eq v3, v0, :cond_6b

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/y;->c(I)Lcom/mapquest/android/maps/bp;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mapquest/android/maps/y;->a(Lcom/mapquest/android/maps/bp;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mapquest/android/maps/bp;->d()I

    move-result v5

    if-eqz v5, :cond_61

    invoke-virtual {v3}, Lcom/mapquest/android/maps/bp;->d()I

    move-result v5

    invoke-static {v4, v5}, Lcom/mapquest/android/maps/bh;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    :cond_61
    invoke-virtual {v3}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-direct {p0, p1, v2, v4, p3}, Lcom/mapquest/android/maps/y;->a(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/drawable/Drawable;Z)V

    :cond_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    :cond_6e
    const/4 v0, 0x0

    goto :goto_37

    :cond_70
    iget-boolean v0, p0, Lcom/mapquest/android/maps/y;->p:Z

    if-eqz v0, :cond_92

    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_92

    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/y;->c(I)Lcom/mapquest/android/maps/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v1, p0, Lcom/mapquest/android/maps/y;->b:I

    invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/y;->c(I)Lcom/mapquest/android/maps/bp;

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/y;->a(Lcom/mapquest/android/maps/bp;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/mapquest/android/maps/y;->a(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/drawable/Drawable;Z)V

    :cond_92
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_8

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1d

    :cond_8
    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    if-ltz v0, :cond_1d

    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    iget-object v1, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    invoke-virtual {p0}, Lcom/mapquest/android/maps/y;->d()Z

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    invoke-super {p0, p1, p2, p3}, Lcom/mapquest/android/maps/bh;->a(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    goto :goto_1c
.end method

.method public final a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->r:Lcom/mapquest/android/maps/aa;

    iput-object p2, v0, Lcom/mapquest/android/maps/aa;->a:Lcom/mapquest/android/maps/MapView;

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, v1, v0}, Lcom/mapquest/android/maps/y;->a(Lcom/mapquest/android/maps/MapView;II)I

    move-result v0

    if-ltz v0, :cond_24

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/y;->d(I)V

    iget v1, p0, Lcom/mapquest/android/maps/y;->n:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/mapquest/android/maps/y;->a(III)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/y;->n:I

    invoke-virtual {p0}, Lcom/mapquest/android/maps/y;->d()Z

    move-result v0

    :goto_23
    return v0

    :cond_24
    invoke-super {p0, p1, p2}, Lcom/mapquest/android/maps/bh;->a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    goto :goto_23
.end method

.method protected b(I)I
    .registers 3

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->v:[Ljava/lang/Integer;

    if-nez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    iget-object v0, p0, Lcom/mapquest/android/maps/y;->v:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4
.end method

.method public b()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/mapquest/android/maps/y;->b:I

    iput v0, p0, Lcom/mapquest/android/maps/y;->n:I

    iput v0, p0, Lcom/mapquest/android/maps/y;->o:I

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 14

    const/4 v10, 0x2

    const/high16 v4, 0x42c8

    const/high16 v5, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->u:Lcom/mapquest/android/maps/co;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    iget-object v4, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    invoke-virtual {v4, v10}, Lcom/mapquest/android/maps/cp;->removeMessages(I)V

    packed-switch v1, :pswitch_data_12a

    :cond_1f
    :goto_1f
    iget-object v0, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    sget v1, Lcom/mapquest/android/maps/co;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v10, v1, v2}, Lcom/mapquest/android/maps/cp;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->u:Lcom/mapquest/android/maps/co;

    iget-boolean v0, v0, Lcom/mapquest/android/maps/co;->o:Z

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->u:Lcom/mapquest/android/maps/co;

    iget v0, v0, Lcom/mapquest/android/maps/co;->e:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_112

    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/y;->d(I)V

    :cond_3d
    :goto_3d
    invoke-super {p0, p1, p2}, Lcom/mapquest/android/maps/bh;->b(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    :goto_41
    return v0

    :pswitch_42
    iput v2, v0, Lcom/mapquest/android/maps/co;->g:F

    iput v3, v0, Lcom/mapquest/android/maps/co;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/mapquest/android/maps/co;->p:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/mapquest/android/maps/co;->q:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget v1, Lcom/mapquest/android/maps/co;->b:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_71

    iget-object v1, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    invoke-virtual {v1, v8}, Lcom/mapquest/android/maps/cp;->removeMessages(I)V

    iget-object v1, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    invoke-virtual {v1, v9}, Lcom/mapquest/android/maps/cp;->removeMessages(I)V

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->m:Z

    iput-boolean v9, v0, Lcom/mapquest/android/maps/co;->n:Z

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->o:Z

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->l:Z

    goto :goto_1f

    :cond_71
    iget-object v1, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    invoke-virtual {v1, v8}, Lcom/mapquest/android/maps/cp;->removeMessages(I)V

    iget-object v1, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v6, Lcom/mapquest/android/maps/co;->c:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sget v6, Lcom/mapquest/android/maps/co;->a:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5}, Lcom/mapquest/android/maps/cp;->sendEmptyMessageAtTime(IJ)Z

    iput v2, v0, Lcom/mapquest/android/maps/co;->i:F

    iput v3, v0, Lcom/mapquest/android/maps/co;->j:F

    goto :goto_1f

    :pswitch_8c
    iget-boolean v1, v0, Lcom/mapquest/android/maps/co;->n:Z

    if-nez v1, :cond_98

    iget-boolean v1, v0, Lcom/mapquest/android/maps/co;->m:Z

    if-nez v1, :cond_98

    iget-boolean v1, v0, Lcom/mapquest/android/maps/co;->l:Z

    if-eqz v1, :cond_9d

    :cond_98
    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->n:Z

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->m:Z

    goto :goto_1f

    :cond_9d
    iput v2, v0, Lcom/mapquest/android/maps/co;->e:F

    iput v3, v0, Lcom/mapquest/android/maps/co;->f:F

    iget v1, v0, Lcom/mapquest/android/maps/co;->e:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-gez v1, :cond_b5

    iget v1, v0, Lcom/mapquest/android/maps/co;->f:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_1f

    :cond_b5
    iget-object v1, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    invoke-virtual {v1, v8}, Lcom/mapquest/android/maps/cp;->removeMessages(I)V

    iput-boolean v9, v0, Lcom/mapquest/android/maps/co;->o:Z

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->m:Z

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->l:Z

    goto/16 :goto_1f

    :pswitch_c2
    iget-wide v1, v0, Lcom/mapquest/android/maps/co;->q:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_da

    iget-wide v1, v0, Lcom/mapquest/android/maps/co;->p:J

    iget-wide v3, v0, Lcom/mapquest/android/maps/co;->q:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget v3, Lcom/mapquest/android/maps/co;->b:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_fb

    :cond_da
    iget-wide v1, v0, Lcom/mapquest/android/maps/co;->p:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget v3, Lcom/mapquest/android/maps/co;->c:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_fb

    iget-object v1, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    invoke-virtual {v1, v8}, Lcom/mapquest/android/maps/cp;->removeMessages(I)V

    iget-object v1, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    sget v2, Lcom/mapquest/android/maps/co;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/mapquest/android/maps/cp;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v9, v0, Lcom/mapquest/android/maps/co;->m:Z

    :cond_fb
    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->n:Z

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->o:Z

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->l:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mapquest/android/maps/co;->q:J

    goto/16 :goto_1f

    :pswitch_109
    iget-object v1, v0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    invoke-virtual {v1, v8}, Lcom/mapquest/android/maps/cp;->removeMessages(I)V

    iput-boolean v8, v0, Lcom/mapquest/android/maps/co;->m:Z

    goto/16 :goto_1f

    :cond_112
    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/y;->d(I)V

    goto/16 :goto_3d

    :cond_11b
    iget-object v0, p0, Lcom/mapquest/android/maps/y;->u:Lcom/mapquest/android/maps/co;

    iget-boolean v0, v0, Lcom/mapquest/android/maps/co;->m:Z

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/mapquest/android/maps/y;->b:I

    invoke-virtual {p0}, Lcom/mapquest/android/maps/y;->d()Z

    move-result v0

    goto/16 :goto_41

    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_42
        :pswitch_c2
        :pswitch_8c
        :pswitch_109
    .end packed-switch
.end method

.method public final c(I)Lcom/mapquest/android/maps/bp;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/y;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/bp;

    return-object v0
.end method

.method public c()V
    .registers 1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/y;->b()V

    return-void
.end method

.method protected d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()V
    .registers 12

    const/4 v10, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/y;->a()I

    move-result v6

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const v0, -0x55d4a80

    const v1, 0x55d4a80

    const v2, -0xaba9500

    const v3, 0xaba9500

    move v5, v4

    :goto_1d
    if-ge v5, v6, :cond_4c

    invoke-virtual {p0, v5}, Lcom/mapquest/android/maps/y;->a(I)Lcom/mapquest/android/maps/bp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;

    move-result-object v8

    iget v9, v8, Lcom/mapquest/android/maps/s;->a:I

    if-le v9, v0, :cond_2d

    iget v0, v8, Lcom/mapquest/android/maps/s;->a:I

    :cond_2d
    iget v9, v8, Lcom/mapquest/android/maps/s;->a:I

    if-ge v9, v1, :cond_33

    iget v1, v8, Lcom/mapquest/android/maps/s;->a:I

    :cond_33
    iget v9, v8, Lcom/mapquest/android/maps/s;->b:I

    if-le v9, v2, :cond_39

    iget v2, v8, Lcom/mapquest/android/maps/s;->b:I

    :cond_39
    iget v9, v8, Lcom/mapquest/android/maps/s;->b:I

    if-ge v9, v3, :cond_3f

    iget v3, v8, Lcom/mapquest/android/maps/s;->b:I

    :cond_3f
    invoke-virtual {v7, v4}, Lcom/mapquest/android/maps/bp;->a(I)Landroid/graphics/drawable/Drawable;

    iput v4, v7, Lcom/mapquest/android/maps/bp;->f:I

    iget-object v8, p0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_4c
    iget-object v5, p0, Lcom/mapquest/android/maps/y;->m:Lcom/mapquest/android/maps/b;

    new-instance v7, Lcom/mapquest/android/maps/s;

    invoke-direct {v7, v0, v3}, Lcom/mapquest/android/maps/s;-><init>(II)V

    iput-object v7, v5, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;

    iget-object v5, p0, Lcom/mapquest/android/maps/y;->m:Lcom/mapquest/android/maps/b;

    new-instance v7, Lcom/mapquest/android/maps/s;

    invoke-direct {v7, v1, v2}, Lcom/mapquest/android/maps/s;-><init>(II)V

    iput-object v7, v5, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mapquest/android/maps/y;->f:I

    sub-int v0, v2, v3

    iput v0, p0, Lcom/mapquest/android/maps/y;->g:I

    iput v10, p0, Lcom/mapquest/android/maps/y;->b:I

    iput v10, p0, Lcom/mapquest/android/maps/y;->n:I

    iput v10, p0, Lcom/mapquest/android/maps/y;->o:I

    new-array v0, v6, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mapquest/android/maps/y;->v:[Ljava/lang/Integer;

    move v0, v4

    :goto_70
    if-ge v0, v6, :cond_7d

    iget-object v1, p0, Lcom/mapquest/android/maps/y;->v:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_7d
    iget-object v0, p0, Lcom/mapquest/android/maps/y;->v:[Ljava/lang/Integer;

    new-instance v1, Lcom/mapquest/android/maps/z;

    invoke-direct {v1, p0}, Lcom/mapquest/android/maps/z;-><init>(Lcom/mapquest/android/maps/y;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

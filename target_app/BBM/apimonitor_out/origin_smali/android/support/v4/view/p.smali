.class final Landroid/support/v4/view/p;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Landroid/support/v4/view/o;


# static fields
.field private static final e:I

.field private static final f:I

.field private static final g:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private final h:Landroid/os/Handler;

.field private final i:Landroid/view/GestureDetector$OnGestureListener;

.field private j:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/view/MotionEvent;

.field private q:Landroid/view/MotionEvent;

.field private r:Z

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Z

.field private x:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/p;->e:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/p;->f:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/p;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/view/q;

    invoke-direct {v0, p0}, Landroid/support/v4/view/q;-><init>(Landroid/support/v4/view/p;)V

    iput-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    iput-object p2, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_14

    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    iput-object p2, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    :cond_14
    if-nez p1, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/p;->w:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/p;->c:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/p;->d:I

    mul-int v0, v1, v1

    iput v0, p0, Landroid/support/v4/view/p;->a:I

    mul-int v0, v2, v2

    iput v0, p0, Landroid/support/v4/view/p;->b:I

    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/p;)Landroid/view/MotionEvent;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v4/view/p;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v4/view/p;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/p;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/p;->m:Z

    iget-object v0, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic d(Landroid/support/v4/view/p;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v4/view/p;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/view/p;->k:Z

    return v0
.end method

.method static synthetic f(Landroid/support/v4/view/p;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/p;->l:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    iget-object v0, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    if-nez v0, :cond_13

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    :cond_13
    iget-object v0, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v9, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3c

    move v8, v4

    :goto_1e
    if-eqz v8, :cond_3e

    invoke-static {p1}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_24
    invoke-static {p1}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;)I

    move-result v5

    move v6, v3

    move v1, v7

    move v2, v7

    :goto_2b
    if-ge v6, v5, :cond_40

    if-eq v0, v6, :cond_39

    invoke-static {p1, v6}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;I)F

    move-result v10

    add-float/2addr v2, v10

    invoke-static {p1, v6}, Landroid/support/v4/view/ab;->d(Landroid/view/MotionEvent;I)F

    move-result v10

    add-float/2addr v1, v10

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_3c
    move v8, v3

    goto :goto_1e

    :cond_3e
    const/4 v0, -0x1

    goto :goto_24

    :cond_40
    if-eqz v8, :cond_4e

    add-int/lit8 v0, v5, -0x1

    :goto_44
    int-to-float v6, v0

    div-float/2addr v2, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    and-int/lit16 v0, v9, 0xff

    packed-switch v0, :pswitch_data_2c4

    :cond_4d
    :goto_4d
    :pswitch_4d
    return v3

    :cond_4e
    move v0, v5

    goto :goto_44

    :pswitch_50
    iput v2, p0, Landroid/support/v4/view/p;->s:F

    iput v2, p0, Landroid/support/v4/view/p;->u:F

    iput v1, p0, Landroid/support/v4/view/p;->t:F

    iput v1, p0, Landroid/support/v4/view/p;->v:F

    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Landroid/support/v4/view/p;->r:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->n:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->o:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->l:Z

    iget-boolean v0, p0, Landroid/support/v4/view/p;->m:Z

    if-eqz v0, :cond_4d

    iput-boolean v3, p0, Landroid/support/v4/view/p;->m:Z

    goto :goto_4d

    :pswitch_76
    iput v2, p0, Landroid/support/v4/view/p;->s:F

    iput v2, p0, Landroid/support/v4/view/p;->u:F

    iput v1, p0, Landroid/support/v4/view/p;->t:F

    iput v1, p0, Landroid/support/v4/view/p;->v:F

    iget-object v0, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/p;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-static {p1}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-static {v2, v0}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget-object v4, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-static {v4, v0}, Landroid/support/v4/view/ao;->b(Landroid/view/VelocityTracker;I)F

    move-result v4

    move v0, v3

    :goto_9d
    if-ge v0, v5, :cond_4d

    if-eq v0, v1, :cond_be

    invoke-static {p1, v0}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I

    move-result v6

    iget-object v8, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-static {v8, v6}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F

    move-result v8

    mul-float/2addr v8, v2

    iget-object v9, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-static {v9, v6}, Landroid/support/v4/view/ao;->b(Landroid/view/VelocityTracker;I)F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_be

    iget-object v0, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4d

    :cond_be
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :pswitch_c1
    iget-object v0, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_188

    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v5, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d2
    iget-object v5, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    if-eqz v5, :cond_180

    iget-object v5, p0, Landroid/support/v4/view/p;->q:Landroid/view/MotionEvent;

    if-eqz v5, :cond_180

    if-eqz v0, :cond_180

    iget-object v0, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    iget-object v5, p0, Landroid/support/v4/view/p;->q:Landroid/view/MotionEvent;

    iget-boolean v6, p0, Landroid/support/v4/view/p;->o:Z

    if-eqz v6, :cond_17e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v5, v6, v8

    sget v7, Landroid/support/v4/view/p;->g:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_17e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v0, v6

    mul-int/2addr v5, v5

    mul-int/2addr v0, v0

    add-int/2addr v0, v5

    iget v5, p0, Landroid/support/v4/view/p;->b:I

    if-ge v0, v5, :cond_17e

    move v0, v4

    :goto_113
    if-eqz v0, :cond_180

    iput-boolean v4, p0, Landroid/support/v4/view/p;->r:Z

    iget-object v0, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v5, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    invoke-interface {v0, v5}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    iget-object v5, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    or-int/2addr v0, v5

    :goto_128
    iput v2, p0, Landroid/support/v4/view/p;->s:F

    iput v2, p0, Landroid/support/v4/view/p;->u:F

    iput v1, p0, Landroid/support/v4/view/p;->t:F

    iput v1, p0, Landroid/support/v4/view/p;->v:F

    iget-object v1, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    if-eqz v1, :cond_139

    iget-object v1, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_139
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    iput-boolean v4, p0, Landroid/support/v4/view/p;->n:Z

    iput-boolean v4, p0, Landroid/support/v4/view/p;->o:Z

    iput-boolean v4, p0, Landroid/support/v4/view/p;->k:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->m:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->l:Z

    iget-boolean v1, p0, Landroid/support/v4/view/p;->w:Z

    if-eqz v1, :cond_165

    iget-object v1, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v5, Landroid/support/v4/view/p;->f:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    sget v5, Landroid/support/v4/view/p;->e:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    invoke-virtual {v1, v12, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_165
    iget-object v1, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v5, Landroid/support/v4/view/p;->f:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v1, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int v3, v0, v1

    goto/16 :goto_4d

    :cond_17e
    move v0, v3

    goto :goto_113

    :cond_180
    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    sget v5, Landroid/support/v4/view/p;->g:I

    int-to-long v5, v5

    invoke-virtual {v0, v11, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_188
    move v0, v3

    goto :goto_128

    :pswitch_18a
    iget-boolean v0, p0, Landroid/support/v4/view/p;->m:Z

    if-nez v0, :cond_4d

    iget v0, p0, Landroid/support/v4/view/p;->s:F

    sub-float/2addr v0, v2

    iget v5, p0, Landroid/support/v4/view/p;->t:F

    sub-float/2addr v5, v1

    iget-boolean v6, p0, Landroid/support/v4/view/p;->r:Z

    if-eqz v6, :cond_1a2

    iget-object v0, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v3, v0, 0x0

    goto/16 :goto_4d

    :cond_1a2
    iget-boolean v6, p0, Landroid/support/v4/view/p;->n:Z

    if-eqz v6, :cond_1dd

    iget v6, p0, Landroid/support/v4/view/p;->u:F

    sub-float v6, v2, v6

    float-to-int v6, v6

    iget v7, p0, Landroid/support/v4/view/p;->v:F

    sub-float v7, v1, v7

    float-to-int v7, v7

    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Landroid/support/v4/view/p;->a:I

    if-le v6, v7, :cond_2c0

    iget-object v7, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v8, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v0, v5}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput v2, p0, Landroid/support/v4/view/p;->s:F

    iput v1, p0, Landroid/support/v4/view/p;->t:F

    iput-boolean v3, p0, Landroid/support/v4/view/p;->n:Z

    iget-object v1, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    :goto_1d4
    iget v1, p0, Landroid/support/v4/view/p;->a:I

    if-le v6, v1, :cond_1da

    iput-boolean v3, p0, Landroid/support/v4/view/p;->o:Z

    :cond_1da
    move v3, v0

    goto/16 :goto_4d

    :cond_1dd
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f80

    cmpl-float v4, v4, v6

    if-gez v4, :cond_1f1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f80

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_4d

    :cond_1f1
    iget-object v3, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, p1, v0, v5}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    iput v2, p0, Landroid/support/v4/view/p;->s:F

    iput v1, p0, Landroid/support/v4/view/p;->t:F

    goto/16 :goto_4d

    :pswitch_1ff
    iput-boolean v3, p0, Landroid/support/v4/view/p;->k:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-boolean v0, p0, Landroid/support/v4/view/p;->r:Z

    if-eqz v0, :cond_239

    iget-object v0, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_211
    :goto_211
    iget-object v2, p0, Landroid/support/v4/view/p;->q:Landroid/view/MotionEvent;

    if-eqz v2, :cond_21a

    iget-object v2, p0, Landroid/support/v4/view/p;->q:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_21a
    iput-object v1, p0, Landroid/support/v4/view/p;->q:Landroid/view/MotionEvent;

    iget-object v1, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_228

    iget-object v1, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    :cond_228
    iput-boolean v3, p0, Landroid/support/v4/view/p;->r:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->l:Z

    iget-object v1, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    move v3, v0

    goto/16 :goto_4d

    :cond_239
    iget-boolean v0, p0, Landroid/support/v4/view/p;->m:Z

    if-eqz v0, :cond_246

    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Landroid/support/v4/view/p;->m:Z

    move v0, v3

    goto :goto_211

    :cond_246
    iget-boolean v0, p0, Landroid/support/v4/view/p;->n:Z

    if-eqz v0, :cond_25e

    iget-object v0, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/v4/view/p;->l:Z

    if-eqz v2, :cond_211

    iget-object v2, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_211

    iget-object v2, p0, Landroid/support/v4/view/p;->j:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_211

    :cond_25e
    iget-object v0, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-static {p1, v3}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    const/16 v5, 0x3e8

    iget v6, p0, Landroid/support/v4/view/p;->d:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-static {v0, v2}, Landroid/support/v4/view/ao;->b(Landroid/view/VelocityTracker;I)F

    move-result v5

    invoke-static {v0, v2}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Landroid/support/v4/view/p;->c:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_28a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Landroid/support/v4/view/p;->c:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2bd

    :cond_28a
    iget-object v2, p0, Landroid/support/v4/view/p;->i:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v6, p0, Landroid/support/v4/view/p;->p:Landroid/view/MotionEvent;

    invoke-interface {v2, v6, p1, v0, v5}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto/16 :goto_211

    :pswitch_294
    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/p;->h:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/p;->x:Landroid/view/VelocityTracker;

    iput-boolean v3, p0, Landroid/support/v4/view/p;->r:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->k:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->n:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->o:Z

    iput-boolean v3, p0, Landroid/support/v4/view/p;->l:Z

    iget-boolean v0, p0, Landroid/support/v4/view/p;->m:Z

    if-eqz v0, :cond_4d

    iput-boolean v3, p0, Landroid/support/v4/view/p;->m:Z

    goto/16 :goto_4d

    :cond_2bd
    move v0, v3

    goto/16 :goto_211

    :cond_2c0
    move v0, v3

    goto/16 :goto_1d4

    nop

    :pswitch_data_2c4
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_1ff
        :pswitch_18a
        :pswitch_294
        :pswitch_4d
        :pswitch_50
        :pswitch_76
    .end packed-switch
.end method

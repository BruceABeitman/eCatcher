.class public final Lcom/spotify/mobile/android/util/TouchLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/util/dq;

.field private b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

.field private c:F

.field private d:F

.field private e:Landroid/view/MotionEvent;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/util/dq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    sget-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->a:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/dq;->a()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/TouchLifecycle;Lcom/spotify/mobile/android/util/TouchLifecycle$State;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/dq;->b()V

    return-void
.end method

.method static synthetic c(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->e:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/util/dq;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->e:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v0, :cond_c

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static synthetic e(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->e:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic f(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/dq;->c()V

    return-void
.end method

.method static synthetic g(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/dq;->d()V

    return-void
.end method

.method static synthetic h(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->e:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/util/dq;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->e:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->e:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_28

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->f:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->d:F

    sget-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->a:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->a(Lcom/spotify/mobile/android/util/TouchLifecycle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z

    move-result v0

    :cond_27
    :goto_27
    return v0

    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_73

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_37

    iput-boolean v3, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->f:Z

    :cond_37
    iget v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    invoke-interface {v2, v0, v1}, Lcom/spotify/mobile/android/util/dq;->a(FF)Z

    move-result v2

    if-nez v2, :cond_59

    iget-boolean v2, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->f:Z

    if-eqz v2, :cond_65

    :cond_59
    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->b(Lcom/spotify/mobile/android/util/TouchLifecycle;)V

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z

    move-result v0

    goto :goto_27

    :cond_65
    iget-object v2, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->a:Lcom/spotify/mobile/android/util/dq;

    invoke-interface {v2, v0, v1}, Lcom/spotify/mobile/android/util/dq;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->c(Lcom/spotify/mobile/android/util/TouchLifecycle;)V

    goto :goto_5e

    :cond_73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_81

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_88

    :cond_81
    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z

    move-result v0

    goto :goto_27

    :cond_88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_95

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_27

    :cond_95
    iget-object v0, p0, Lcom/spotify/mobile/android/util/TouchLifecycle;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z

    move-result v0

    goto :goto_27
.end method

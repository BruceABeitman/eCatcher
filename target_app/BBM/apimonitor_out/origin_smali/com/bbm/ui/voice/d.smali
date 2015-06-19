.class final Lcom/bbm/ui/voice/d;
.super Ljava/lang/Object;
.source "IncomingCallAnswerBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/voice/IncomingCallAnswerBar;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/voice/d;-><init>(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 11

    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_50

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_9
    iget-object v6, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v6}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->g(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v4}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->h(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v3}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->i(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v2}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->j(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->l(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v0

    if-le p2, v0, :cond_89

    move v0, v5

    :goto_44
    iget-object v3, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v3}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->m(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v3

    if-ge p2, v3, :cond_8b

    :goto_4c
    invoke-interface {v2, p2, v0, v5}, Lcom/bbm/ui/voice/g;->a(IZZ)V

    :cond_4f
    return-void

    :cond_50
    iget-object v2, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v2}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->e(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v2

    if-ge p2, v2, :cond_5f

    rsub-int v0, p2, 0xff

    move v2, v0

    move v3, v1

    move v4, v1

    move v0, v1

    goto :goto_9

    :cond_5f
    iget-object v2, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v2}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->e(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v2

    if-eq p2, v2, :cond_8d

    iget-object v2, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v2}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->f(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v2

    if-ne p2, v2, :cond_74

    move v2, v1

    move v3, v0

    move v4, v1

    move v0, v1

    goto :goto_9

    :cond_74
    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->e(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v0

    if-le p2, v0, :cond_8d

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->e(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v0

    sub-int v0, p2, v0

    move v2, v1

    move v3, v1

    move v4, v0

    move v0, v1

    goto :goto_9

    :cond_89
    move v0, v1

    goto :goto_44

    :cond_8b
    move v5, v1

    goto :goto_4c

    :cond_8d
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_9
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->d(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->n(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->o(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/ui/voice/g;->c()V

    :cond_2c
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-virtual {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->getProgress()I

    move-result v2

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->m(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v0

    if-ge v2, v0, :cond_79

    const-string v0, "onRejectCallThreshold"

    const-class v3, Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->p(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    move v0, v1

    :goto_1c
    iget-object v3, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v3}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;

    move-result-object v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v3}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/ui/voice/g;->d()V

    :cond_2d
    const/16 v3, 0x32

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    const-string v4, "progress"

    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v0, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/bbm/ui/voice/e;

    invoke-direct {v1, p0}, Lcom/bbm/ui/voice/e;-><init>(Lcom/bbm/ui/voice/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->b(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->c(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_6d
    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    new-instance v1, Lcom/bbm/ui/voice/f;

    invoke-direct {v1, p0}, Lcom/bbm/ui/voice/f;-><init>(Lcom/bbm/ui/voice/d;)V

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_78
    return-void

    :cond_79
    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->l(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v0

    if-le v2, v0, :cond_94

    const-string v0, "onAcceptCallThreshold"

    const-class v3, Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->f(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v0

    iget-object v3, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v3}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->q(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    goto :goto_1c

    :cond_94
    const-string v0, "onNoResponse"

    const-class v3, Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->e(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)I

    move-result v0

    goto/16 :goto_1c
.end method

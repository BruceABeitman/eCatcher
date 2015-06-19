.class final Lcom/bbm/ui/voice/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IncomingCallAnswerBar.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/voice/c;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/voice/c;->b:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/ui/voice/c;->b:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/voice/c;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->b(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/voice/c;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->c(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/voice/c;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->d(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1d
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/voice/c;->b:Z

    return-void
.end method

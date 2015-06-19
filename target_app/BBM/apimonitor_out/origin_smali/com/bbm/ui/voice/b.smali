.class final Lcom/bbm/ui/voice/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IncomingCallAnswerBar.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/voice/b;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/voice/b;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->a(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/voice/b;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->b(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/voice/b;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->c(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/voice/b;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->d(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_21
    return-void
.end method

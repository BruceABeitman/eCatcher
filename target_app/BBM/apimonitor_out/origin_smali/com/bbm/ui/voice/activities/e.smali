.class final Lcom/bbm/ui/voice/activities/e;
.super Ljava/lang/Object;
.source "IncomingCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/voice/activities/e;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/voice/activities/e;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->h(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/voice/IncomingCallAnswerBar;

    move-result-object v0

    iget-boolean v1, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->a:Z

    if-nez v1, :cond_21

    iget-boolean v1, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->b:Z

    if-nez v1, :cond_21

    iget-boolean v1, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->c:Z

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v1, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_21
    return-void
.end method

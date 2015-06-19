.class final Lcom/bbm/ui/voice/activities/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IncomingCallActivity.java"
.field final synthetic a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
.method constructor <init>(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/voice/activities/g;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/animation/Animator;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/voice/activities/g;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->h(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/voice/IncomingCallAnswerBar;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->b:Z
if-nez v0, :cond_17
iget-object v0, p0, Lcom/bbm/ui/voice/activities/g;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->h(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/voice/IncomingCallAnswerBar;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->c:Z
if-nez v0, :cond_17
invoke-virtual {p1}, Landroid/animation/Animator;->start()V
:cond_17
return-void
.end method
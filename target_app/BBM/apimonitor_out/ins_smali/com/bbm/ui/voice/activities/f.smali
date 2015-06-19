.class final Lcom/bbm/ui/voice/activities/f;
.super Ljava/lang/Object;
.source "IncomingCallActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
.method constructor <init>(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/voice/activities/f;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/voice/activities/f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/f;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
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
iget-object v1, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->e:Landroid/animation/AnimatorSet;
invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V
iget-object v0, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->f:Landroid/animation/AnimatorSet;
invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
:cond_21
const-string v1, " - Lcom/bbm/ui/voice/activities/f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
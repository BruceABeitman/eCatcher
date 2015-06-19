.class final Lcom/userzoom/bx;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/userzoom/bw;
.method constructor <init>(Lcom/userzoom/bw;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/bx;->a:Lcom/userzoom/bw;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/userzoom/bx; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/bx;->a:Lcom/userzoom/bw;
iget-object v0, v0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;
invoke-static {v0}, Luserzoom/com/UzSurveyActivity;->e(Luserzoom/com/UzSurveyActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/userzoom/ah;
invoke-direct {v1, p0}, Lcom/userzoom/ah;-><init>(Lcom/userzoom/bx;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
const-string v1, " - Lcom/userzoom/bx; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
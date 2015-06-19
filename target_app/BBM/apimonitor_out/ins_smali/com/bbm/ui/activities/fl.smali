.class final Lcom/bbm/ui/activities/fl;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/ui/voice/n;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
const v1, 0x7f020038
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
:cond_14
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
const-string v1, "keyguard"
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/KeyguardManager;
if-eqz v0, :cond_2b
invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->finish()V
:cond_2b
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z
move-result v0
if-nez v0, :cond_24
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;)Z
move-result v0
if-eqz v0, :cond_3f
:cond_24
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
const v1, 0x7f020039
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
:cond_38
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
:cond_3f
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
const v1, 0x7f020038
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
:cond_14
return-void
.end method
.method public final d()V
.registers 4
new-instance v0, Lcom/rim/bbm/BbmMediaCallService$CallResultDetails;
invoke-direct {v0}, Lcom/rim/bbm/BbmMediaCallService$CallResultDetails;-><init>()V
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->getInstance()Lcom/rim/bbm/BbmMediaCallService;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/rim/bbm/BbmMediaCallService;->getLastCallInfo(Lcom/rim/bbm/BbmMediaCallService$CallResultDetails;)V
iget-object v1, p0, Lcom/bbm/ui/activities/fl;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v2, v0, Lcom/rim/bbm/BbmMediaCallService$CallResultDetails;->callID:Ljava/lang/String;
iget v0, v0, Lcom/rim/bbm/BbmMediaCallService$CallResultDetails;->callResult:I
invoke-static {v1, v2, v0}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Ljava/lang/String;I)V
return-void
.end method
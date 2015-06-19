.class final Lcom/bbm/ui/bj;
.super Lcom/bbm/ui/views/EphemeralPickerPagerV2;
.source "EmoticonInputPanel.java"
.field final synthetic a:Lcom/bbm/ui/EmoticonInputPanel;
.method constructor <init>(Lcom/bbm/ui/EmoticonInputPanel;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/bj;->a:Lcom/bbm/ui/EmoticonInputPanel;
invoke-direct {p0, p2}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/bj;->a:Lcom/bbm/ui/EmoticonInputPanel;
sget-object v1, Lcom/bbm/ui/bl;->e:Lcom/bbm/ui/bl;
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
iget-object v0, p0, Lcom/bbm/ui/bj;->a:Lcom/bbm/ui/EmoticonInputPanel;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setTimebombValue(I)V
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/bj;->a:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0, p1}, Lcom/bbm/ui/EmoticonInputPanel;->setTimebombValue(I)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/bj;->a:Lcom/bbm/ui/EmoticonInputPanel;
sget-object v1, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
iget-object v0, p0, Lcom/bbm/ui/bj;->a:Lcom/bbm/ui/EmoticonInputPanel;
invoke-static {v0}, Lcom/bbm/ui/EmoticonInputPanel;->e(Lcom/bbm/ui/EmoticonInputPanel;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lcom/bbm/ui/bj;->getContext()Landroid/content/Context;
move-result-object v0
instance-of v1, v0, Lcom/bbm/ui/activities/ConversationActivity;
if-eqz v1, :cond_26
check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->b()V
:cond_26
return-void
.end method
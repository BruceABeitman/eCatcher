.class final Lcom/bbm/ui/activities/ip;
.super Lcom/bbm/j/k;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ip;->a:Lcom/bbm/ui/activities/ConversationActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/ip;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aI(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_2a
iget-object v0, p0, Lcom/bbm/ui/activities/ip;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->getTimebombCount()I
move-result v0
if-lez v0, :cond_2a
iget-object v0, p0, Lcom/bbm/ui/activities/ip;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/ip;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v2, 0x7f0e031c
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
:cond_2a
return-void
.end method
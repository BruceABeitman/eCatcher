.class final Lcom/bbm/ui/activities/iq;
.super Lcom/bbm/j/k;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
const/4 v3, 0x0
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->u()Z
move-result v0
if-eqz v0, :cond_85
iget-object v0, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-object v0, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_85
iget-object v0, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-boolean v0, v0, Lcom/bbm/d/es;->k:Z
if-nez v0, :cond_85
iget-object v0, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-boolean v0, v0, Lcom/bbm/d/es;->i:Z
if-nez v0, :cond_85
iget-object v0, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
iget-object v0, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aI(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/EmoticonInputPanel;->a(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;
if-eqz v0, :cond_84
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_84
iget-object v1, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v1
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
iget-boolean v0, v0, Lcom/bbm/d/gp;->g:Z
invoke-virtual {v1, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setTimebombEnabled(Z)V
:cond_84
:goto_84
return-void
:cond_85
iget-object v0, p0, Lcom/bbm/ui/activities/iq;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0, v3}, Lcom/bbm/ui/EmoticonInputPanel;->a(Z)V
goto :goto_84
.end method
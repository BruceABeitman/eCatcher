.class final Lcom/bbm/ui/activities/hg;
.super Lcom/bbm/j/a;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/hg;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/hg;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->f:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/bbm/ui/activities/hg;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->g:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/bbm/ui/activities/hg;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;
if-eqz v0, :cond_3d
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ne v0, v1, :cond_3d
move v0, v1
:goto_38
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
:cond_3d
const/4 v0, 0x0
goto :goto_38
.end method
.class final Lcom/bbm/setup/j;
.super Lcom/bbm/j/k;
.source "LoadingActivity.java"
.field final synthetic a:Lcom/bbm/setup/LoadingActivity;
.method constructor <init>(Lcom/bbm/setup/LoadingActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/setup/j;->a:Lcom/bbm/setup/LoadingActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->u()Lcom/bbm/setup/ag;
move-result-object v0
iget-object v1, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
iget-object v0, p0, Lcom/bbm/setup/j;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->g(Lcom/bbm/setup/LoadingActivity;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_2e
iget-object v0, v1, Lcom/bbm/setup/ah;->n:Ljava/lang/String;
const-class v1, Lcom/bbm/setup/ContactListAccessPromptActivity;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/bbm/setup/j;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->h(Lcom/bbm/setup/LoadingActivity;)V
:cond_2e
return-void
.end method
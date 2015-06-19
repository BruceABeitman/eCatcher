.class final Lcom/bbm/ui/activities/fu;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/fu;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/fu;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->C(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/bbm/ui/activities/fu;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->D(Lcom/bbm/ui/activities/ConversationActivity;)I
move-result v0
const/4 v1, 0x3
if-lt v0, v1, :cond_3a
iget-object v0, p0, Lcom/bbm/ui/activities/fu;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->E(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/bbm/ui/activities/fu;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->E(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/slidingmenu/a;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
:cond_2e
iget-object v0, p0, Lcom/bbm/ui/activities/fu;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->F(Lcom/bbm/ui/activities/ConversationActivity;)I
iget-object v0, p0, Lcom/bbm/ui/activities/fu;->a:Lcom/bbm/ui/activities/ConversationActivity;
const-wide/16 v1, 0x0
invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;J)J
:cond_3a
return-void
.end method
.class final Lcom/bbm/ui/activities/mo;
.super Ljava/util/TimerTask;
.source "GroupConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/mo;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/mo;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->v(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/mp;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/mp;-><init>(Lcom/bbm/ui/activities/mo;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
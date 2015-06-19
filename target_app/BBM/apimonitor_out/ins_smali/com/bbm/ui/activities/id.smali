.class final Lcom/bbm/ui/activities/id;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ic;
.method constructor <init>(Lcom/bbm/ui/activities/ic;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
iget-object v0, v0, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;
iget-object v0, v0, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aB(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_18
const/4 v0, 0x0
:goto_17
return v0
:cond_18
iget-object v1, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
iget-object v1, v1, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;
iget-object v1, v1, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->aC(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;
move-result-object v1
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const-string v3, "invokeUrl"
iget-object v4, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
iget-object v4, v4, Lcom/bbm/ui/activities/ic;->a:Lcom/bbm/d/fl;
iget-object v4, v4, Lcom/bbm/d/fl;->f:Ljava/lang/String;
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "senderId"
iget-object v4, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
iget-object v4, v4, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;
iget-object v4, v4, Lcom/bbm/ui/activities/ib;->c:Lcom/bbm/d/gp;
iget-wide v4, v4, Lcom/bbm/d/gp;->v:J
invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "receiverId"
iget-object v4, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
iget-object v4, v4, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;
iget-object v4, v4, Lcom/bbm/ui/activities/ib;->b:Lcom/bbm/d/gp;
iget-wide v4, v4, Lcom/bbm/d/gp;->v:J
invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "token"
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "displayName"
iget-object v3, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
iget-object v3, v3, Lcom/bbm/ui/activities/ic;->a:Lcom/bbm/d/fl;
iget-object v3, v3, Lcom/bbm/d/fl;->c:Ljava/lang/String;
invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "installUrl"
iget-object v3, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
iget-object v3, v3, Lcom/bbm/ui/activities/ic;->a:Lcom/bbm/d/fl;
iget-object v3, v3, Lcom/bbm/d/fl;->e:Ljava/lang/String;
invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/ui/activities/id;->a:Lcom/bbm/ui/activities/ic;
iget-object v0, v0, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;
iget-object v0, v0, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aC(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
const/4 v0, 0x1
goto :goto_17
.end method
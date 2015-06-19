.class  Lcom/umeng/fb/model/Conversation$SyncHandler;
.super Landroid/os/Handler;
.source "Conversation.java"
.field static final b:I = 0x1
.field static final c:I = 0x2
.field  a:Lcom/umeng/fb/model/Conversation$SyncListener;
.field final synthetic d:Lcom/umeng/fb/model/Conversation;
.method public constructor <init>(Lcom/umeng/fb/model/Conversation;Lcom/umeng/fb/model/Conversation$SyncListener;)V
.registers 3
iput-object p1, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->d:Lcom/umeng/fb/model/Conversation;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
iput-object p2, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->a:Lcom/umeng/fb/model/Conversation$SyncListener;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 8
const/4 v1, 0x1
iget v0, p1, Landroid/os/Message;->what:I
const/4 v2, 0x2
if-ne v0, v2, :cond_17
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/umeng/fb/model/Reply;
iget v2, p1, Landroid/os/Message;->arg1:I
if-ne v2, v1, :cond_15
:goto_e
if-eqz v1, :cond_14
sget-object v1, Lcom/umeng/fb/model/Reply$STATUS;->SENT:Lcom/umeng/fb/model/Reply$STATUS;
iput-object v1, v0, Lcom/umeng/fb/model/Reply;->i:Lcom/umeng/fb/model/Reply$STATUS;
:cond_14
:goto_14
return-void
:cond_15
const/4 v1, 0x0
goto :goto_e
:cond_17
iget v0, p1, Landroid/os/Message;->what:I
if-ne v0, v1, :cond_14
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/umeng/fb/model/Conversation$MessageWrapper;
iget-object v1, v0, Lcom/umeng/fb/model/Conversation$MessageWrapper;->b:Ljava/util/List;
iget-object v2, v0, Lcom/umeng/fb/model/Conversation$MessageWrapper;->a:Ljava/util/List;
if-eqz v1, :cond_2f
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_29
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_43
:cond_2f
iget-object v0, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->d:Lcom/umeng/fb/model/Conversation;
invoke-static {v0}, Lcom/umeng/fb/model/Conversation;->b(Lcom/umeng/fb/model/Conversation;)V
iget-object v0, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->a:Lcom/umeng/fb/model/Conversation$SyncListener;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->a:Lcom/umeng/fb/model/Conversation$SyncListener;
invoke-interface {v0, v1}, Lcom/umeng/fb/model/Conversation$SyncListener;->onReceiveDevReply(Ljava/util/List;)V
iget-object v0, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->a:Lcom/umeng/fb/model/Conversation$SyncListener;
invoke-interface {v0, v2}, Lcom/umeng/fb/model/Conversation$SyncListener;->onSendUserReply(Ljava/util/List;)V
goto :goto_14
:cond_43
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/fb/model/Reply;
iget-object v4, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->d:Lcom/umeng/fb/model/Conversation;
invoke-static {v4}, Lcom/umeng/fb/model/Conversation;->a(Lcom/umeng/fb/model/Conversation;)Ljava/util/Map;
move-result-object v4
iget-object v5, v0, Lcom/umeng/fb/model/Reply;->c:Ljava/lang/String;
invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_5b
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
goto :goto_29
:cond_5b
iget-object v4, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->d:Lcom/umeng/fb/model/Conversation;
invoke-static {v4}, Lcom/umeng/fb/model/Conversation;->a(Lcom/umeng/fb/model/Conversation;)Ljava/util/Map;
move-result-object v4
iget-object v5, v0, Lcom/umeng/fb/model/Reply;->c:Ljava/lang/String;
invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_29
.end method
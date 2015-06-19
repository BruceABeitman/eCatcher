.class  Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;
.super Lcom/facebook/katana/service/api/methods/BaseApiMethodListener;
.source "MailboxSync.java"
.field final synthetic this$1:Lcom/facebook/katana/service/api/methods/MailboxSync$1;
.method constructor <init>(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;->this$1:Lcom/facebook/katana/service/api/methods/MailboxSync$1;
invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/BaseApiMethodListener;-><init>()V
return-void
.end method
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 7
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;->this$1:Lcom/facebook/katana/service/api/methods/MailboxSync$1;
#getter for: Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->access$2(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Lcom/facebook/katana/service/api/methods/MailboxSync;
move-result-object v0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;->this$1:Lcom/facebook/katana/service/api/methods/MailboxSync$1;
#getter for: Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->access$2(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Lcom/facebook/katana/service/api/methods/MailboxSync;
move-result-object v1
invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 10
check-cast p1, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;
invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;->getUsers()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_2a
if-nez p4, :cond_2a
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;->this$1:Lcom/facebook/katana/service/api/methods/MailboxSync$1;
#getter for: Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mCachedUsers:Ljava/util/Map;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->access$0(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Ljava/util/Map;
move-result-object v1
invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;->this$1:Lcom/facebook/katana/service/api/methods/MailboxSync$1;
#getter for: Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->access$2(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Lcom/facebook/katana/service/api/methods/MailboxSync;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;->this$1:Lcom/facebook/katana/service/api/methods/MailboxSync$1;
#getter for: Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mThreads:Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->access$1(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Ljava/util/List;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;->this$1:Lcom/facebook/katana/service/api/methods/MailboxSync$1;
#getter for: Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mCachedUsers:Ljava/util/Map;
invoke-static {v3}, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->access$0(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Ljava/util/Map;
move-result-object v3
const/4 v4, 0x0
#calls: Lcom/facebook/katana/service/api/methods/MailboxSync;->handleFetchResults(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;
invoke-static {v1, v2, v0, v3, v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->access$0(Lcom/facebook/katana/service/api/methods/MailboxSync;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;
:goto_29
return-void
:cond_2a
const-string v1, "MailboxSync"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "failed to download thread participants: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_29
.end method
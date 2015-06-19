.class  Lcom/facebook/katana/service/api/methods/MailboxSync$1;
.super Lcom/facebook/katana/service/api/methods/BaseApiMethodListener;
.source "MailboxSync.java"
.field private final mCachedUsers:Ljava/util/Map;
.field private mMissingUserIds:Ljava/util/Collection;
.field private mThreads:Ljava/util/List;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
.method constructor <init>(Lcom/facebook/katana/service/api/methods/MailboxSync;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/BaseApiMethodListener;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mCachedUsers:Ljava/util/Map;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mCachedUsers:Ljava/util/Map;
return-object v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mThreads:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)Lcom/facebook/katana/service/api/methods/MailboxSync;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
return-object v0
.end method
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 10
const-string v4, "ApiMethod.secret"
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mMissingUserIds:Ljava/util/Collection;
if-eqz v2, :cond_3a
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mMissingUserIds:Ljava/util/Collection;
invoke-interface {v2}, Ljava/util/Collection;->size()I
move-result v2
if-lez v2, :cond_3a
new-instance v1, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;
invoke-direct {v1, p0}, Lcom/facebook/katana/service/api/methods/MailboxSync$1$1;-><init>(Lcom/facebook/katana/service/api/methods/MailboxSync$1;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v2, "ApiMethod.secret"
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/MailboxSync;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "ApiMethod.secret"
invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new-instance v2, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
#getter for: Lcom/facebook/katana/service/api/methods/MailboxSync;->mSessionKey:Ljava/lang/String;
invoke-static {v3}, Lcom/facebook/katana/service/api/methods/MailboxSync;->access$1(Lcom/facebook/katana/service/api/methods/MailboxSync;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mMissingUserIds:Ljava/util/Collection;
invoke-direct {v2, v0, v3, v4, v1}, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Collection;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;->start()V
:goto_39
return-void
:cond_3a
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
iget-object v2, v2, Lcom/facebook/katana/service/api/methods/MailboxSync;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
invoke-interface {v2, v3, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_39
.end method
.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 10
check-cast p1, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;
invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;->getMailboxThreads()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mThreads:Ljava/util/List;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mThreads:Ljava/util/List;
if-eqz v0, :cond_1d
if-nez p4, :cond_1d
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->this$0:Lcom/facebook/katana/service/api/methods/MailboxSync;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mThreads:Ljava/util/List;
const/4 v2, 0x0
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mCachedUsers:Ljava/util/Map;
const/4 v4, 0x1
#calls: Lcom/facebook/katana/service/api/methods/MailboxSync;->handleFetchResults(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;
invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->access$0(Lcom/facebook/katana/service/api/methods/MailboxSync;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync$1;->mMissingUserIds:Ljava/util/Collection;
:goto_1c
return-void
:cond_1d
const-string v0, "MailboxSync"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "failed to download mailbox threads: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_1c
.end method
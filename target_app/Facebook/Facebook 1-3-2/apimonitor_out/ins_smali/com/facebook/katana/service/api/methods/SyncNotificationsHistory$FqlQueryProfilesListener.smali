.class  Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;
.super Ljava/lang/Object;
.source "SyncNotificationsHistory.java"
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
return-void
.end method
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 7
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
.registers 6
return-void
.end method
.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 7
const/16 v0, 0xc8
if-ne p2, v0, :cond_18
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mAllUsers:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$9(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$5(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#calls: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->updateContentProviders()V
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$6(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
:cond_18
return-void
.end method
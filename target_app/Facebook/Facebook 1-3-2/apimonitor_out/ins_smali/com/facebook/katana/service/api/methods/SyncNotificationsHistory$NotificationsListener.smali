.class  Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;
.super Ljava/lang/Object;
.source "SyncNotificationsHistory.java"
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
return-void
.end method
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 13
const/4 v7, 0x0
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededApps:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$4(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_35
new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetAppsProfile;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$7(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->getIntent()Landroid/content/Intent;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mSessionKey:Ljava/lang/String;
invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$8(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededApps:Ljava/util/Map;
invoke-static {v4}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$4(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
move-result-object v4
new-instance v5, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;
iget-object v6, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
invoke-direct {v5, v6, v7}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;)V
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/FqlGetAppsProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/FqlGetAppsProfile;->start()V
:goto_34
return-void
:cond_35
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$5(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_6a
new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$7(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->getIntent()Landroid/content/Intent;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mSessionKey:Ljava/lang/String;
invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$8(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;
invoke-static {v4}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$5(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
move-result-object v5
new-instance v6, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
invoke-direct {v6, v4, v7}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;)V
move-object v4, v7
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Object;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->start()V
goto :goto_34
:cond_6a
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_34
.end method
.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
.registers 6
return-void
.end method
.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 7
const/16 v0, 0xc8
if-ne p2, v0, :cond_3e
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
check-cast p1, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;
invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;->getNotifications()Ljava/util/List;
move-result-object v1
#setter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNotifications:Ljava/util/List;
invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$0(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Ljava/util/List;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#calls: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->detectSyncChanges()Z
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$1(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#calls: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->checkNeededApps()V
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$2(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#calls: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->checkNeededUsers()V
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$3(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededApps:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$4(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_3e
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$5(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_3e
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
#calls: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->updateContentProviders()V
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$6(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
:cond_3e
return-void
.end method
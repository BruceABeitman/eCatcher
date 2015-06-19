.class Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;
.super Ljava/lang/Object;
.source "SyncNotificationsHistory.java"

# interfaces
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FqlQueryAppsProfilesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V

    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
    .registers 6

    return-void
.end method

.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 12

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$5(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3b

    new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$7(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mSessionKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$8(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;)V

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;
    invoke-static {v5}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$5(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;

    move-result-object v5

    const-class v6, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->start()V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    #calls: Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->updateContentProviders()V
    invoke-static {v0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->access$6(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V

    goto :goto_3a
.end method

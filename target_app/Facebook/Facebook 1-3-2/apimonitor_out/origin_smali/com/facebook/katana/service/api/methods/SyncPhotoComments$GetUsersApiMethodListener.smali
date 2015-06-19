.class Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;
.super Ljava/lang/Object;
.source "SyncPhotoComments.java"

# interfaces
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/SyncPhotoComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUsersApiMethodListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)V

    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
    .registers 6

    return-void
.end method

.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 12

    const/16 v3, 0xc8

    if-ne p2, v3, :cond_23

    check-cast p1, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mAllUsers:Ljava/util/Map;
    invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->access$4(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mComments:Ljava/util/List;
    invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->access$5(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_24

    :cond_23
    return-void

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPhotoComment;

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mAllUsers:Ljava/util/Map;
    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->access$4(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->getFromUserId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->setFromUser(Lcom/facebook/katana/service/api/FacebookUser;)V

    goto :goto_1d
.end method

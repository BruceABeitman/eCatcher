.class Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;
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
    name = "BatchListener"
.end annotation


# instance fields
.field private mNeedUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)V

    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 13

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->mNeedUsers:Ljava/util/Map;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->mNeedUsers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_31

    new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->access$2(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mSessionKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->access$3(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->mNeedUsers:Ljava/util/Map;

    new-instance v6, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;

    iget-object v7, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-direct {v6, v7, v4}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;Lcom/facebook/katana/service/api/methods/SyncPhotoComments$GetUsersApiMethodListener;)V

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->start()V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_30
.end method

.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
    .registers 6

    return-void
.end method

.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 11

    const/16 v3, 0xc8

    if-ne p2, v3, :cond_38

    move-object v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/BatchRun;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/BatchRun;->getMethods()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/methods/PhotosGetComments;

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/PhotosGetComments;->getComments()Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mComments:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->access$0(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;Ljava/util/List;)V

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->requestUsers()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->mNeedUsers:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/BatchRun;->getMethods()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/service/api/methods/PhotosCanComment;

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/PhotosCanComment;->getCanComment()Z

    move-result v4

    #setter for: Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mCanComment:Z
    invoke-static {v3, v4}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->access$1(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;Z)V

    :cond_38
    return-void
.end method

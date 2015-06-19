.class Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;
.super Ljava/lang/Object;
.source "SyncAlbums.java"

# interfaces
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/SyncAlbums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCoversListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;)V

    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 8

    move v0, p2

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    iget-object v1, v1, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    invoke-interface {v1, v2, v0, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
    .registers 6

    return-void
.end method

.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 17

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_42

    move-object v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->getPhotos()Ljava/util/List;

    move-result-object v10

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbums:Ljava/util/List;
    invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$2(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Ljava/util/List;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->assignCoversToAlbums(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$1(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbums:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$2(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    #calls: Lcom/facebook/katana/service/api/methods/SyncAlbums;->localAlbumsCursorFactory()Lcom/facebook/katana/util/Factory;
    invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$3(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Lcom/facebook/katana/util/Factory;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    #calls: Lcom/facebook/katana/service/api/methods/SyncAlbums;->performAdds()Z
    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$4(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Z

    move-result v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    #calls: Lcom/facebook/katana/service/api/methods/SyncAlbums;->performDeletes()Z
    invoke-static {v6}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$5(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Z

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;

    #getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mUserId:J
    invoke-static {v8}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$6(Lcom/facebook/katana/service/api/methods/SyncAlbums;)J

    move-result-wide v8

    invoke-static/range {v1 .. v9}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->doSync(Landroid/content/ContentResolver;Ljava/util/List;Lcom/facebook/katana/util/Factory;ZZZZJ)Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;

    :cond_42
    return-void
.end method

.class  Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;
.super Ljava/lang/Object;
.source "StreamSync.java"
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/StreamSync;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/StreamSync;Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;-><init>(Lcom/facebook/katana/service/api/methods/StreamSync;)V
return-void
.end method
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 7
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
invoke-virtual {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/StreamSync;->dispatchOnOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
.registers 6
return-void
.end method
.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 17
const/4 v4, 0x1
const/4 v6, 0x0
const/16 v1, 0xc8
if-ne p2, v1, :cond_34
move-object v0, p1
check-cast v0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;
move-object v11, v0
invoke-virtual {v11}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->getPhotos()Ljava/util/List;
move-result-object v10
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mAlbums:Ljava/util/List;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$7(Lcom/facebook/katana/service/api/methods/StreamSync;)Ljava/util/List;
move-result-object v1
invoke-static {v10, v1}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->assignCoversToAlbums(Ljava/util/Collection;Ljava/util/Collection;)V
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$0(Lcom/facebook/katana/service/api/methods/StreamSync;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mAlbums:Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$7(Lcom/facebook/katana/service/api/methods/StreamSync;)Ljava/util/List;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#calls: Lcom/facebook/katana/service/api/methods/StreamSync;->localAlbumsCursorFactory()Lcom/facebook/katana/util/Factory;
invoke-static {v3}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$8(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/util/Factory;
move-result-object v3
const-wide/16 v8, -0x1
move v5, v4
move v7, v6
invoke-static/range {v1 .. v9}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->doSync(Landroid/content/ContentResolver;Ljava/util/List;Lcom/facebook/katana/util/Factory;ZZZZJ)Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
:cond_34
return-void
.end method
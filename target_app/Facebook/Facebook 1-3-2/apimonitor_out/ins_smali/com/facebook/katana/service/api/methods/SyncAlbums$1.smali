.class  Lcom/facebook/katana/service/api/methods/SyncAlbums$1;
.super Ljava/lang/Object;
.source "SyncAlbums.java"
.implements Lcom/facebook/katana/util/Factory;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
.method constructor <init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public make()Landroid/database/Cursor;
.registers 5
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#calls: Lcom/facebook/katana/service/api/methods/SyncAlbums;->updatingSpecificAlbums()Z
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$8(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Z
move-result v1
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$1(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbums:Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$2(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Ljava/util/List;
move-result-object v2
invoke-static {v1, v2}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->cursorForAlbums(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/database/Cursor;
move-result-object v0
:goto_1c
return-object v0
:cond_1d
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$1(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mUserId:J
invoke-static {v2}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$6(Lcom/facebook/katana/service/api/methods/SyncAlbums;)J
move-result-wide v2
invoke-static {v1, v2, v3}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->cursorForAlbumsForUser(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
move-result-object v0
goto :goto_1c
.end method
.method public bridge synthetic make()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;->make()Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
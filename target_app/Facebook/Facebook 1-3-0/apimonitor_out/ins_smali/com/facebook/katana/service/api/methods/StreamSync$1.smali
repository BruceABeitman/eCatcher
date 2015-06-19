.class  Lcom/facebook/katana/service/api/methods/StreamSync$1;
.super Ljava/lang/Object;
.source "StreamSync.java"
.implements Lcom/facebook/katana/util/Factory;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
.method constructor <init>(Lcom/facebook/katana/service/api/methods/StreamSync;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$1;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public make()Landroid/database/Cursor;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync$1;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$0(Lcom/facebook/katana/service/api/methods/StreamSync;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$1;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mAlbums:Ljava/util/List;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$7(Lcom/facebook/katana/service/api/methods/StreamSync;)Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->cursorForAlbums(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic make()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/StreamSync$1;->make()Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
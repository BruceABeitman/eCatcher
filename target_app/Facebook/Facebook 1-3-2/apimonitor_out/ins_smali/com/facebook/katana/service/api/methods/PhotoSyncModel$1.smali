.class  Lcom/facebook/katana/service/api/methods/PhotoSyncModel$1;
.super Ljava/lang/Object;
.source "PhotoSyncModel.java"
.implements Lcom/facebook/katana/util/Factory;
.field private final synthetic val$finalAlbumId:Ljava/lang/String;
.field private final synthetic val$finalContext:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$1;->val$finalContext:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$1;->val$finalAlbumId:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public make()Landroid/database/Cursor;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$1;->val$finalContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$1;->val$finalAlbumId:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->cursorForPhotosForAlbum(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic make()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$1;->make()Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.class  Lcom/facebook/katana/PhotosActivity$2;
.super Ljava/lang/Object;
.source "PhotosActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/PhotosActivity;
.method constructor <init>(Lcom/facebook/katana/PhotosActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PhotosActivity$2;->this$0:Lcom/facebook/katana/PhotosActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PhotosActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$2;->this$0:Lcom/facebook/katana/PhotosActivity;
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$2;->this$0:Lcom/facebook/katana/PhotosActivity;
#getter for: Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$22(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity$2;->this$0:Lcom/facebook/katana/PhotosActivity;
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity$2;->this$0:Lcom/facebook/katana/PhotosActivity;
#getter for: Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
invoke-static {v3}, Lcom/facebook/katana/PhotosActivity;->access$9(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->photoDeleteAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
#setter for: Lcom/facebook/katana/PhotosActivity;->mDeleteAlbumReqId:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/facebook/katana/PhotosActivity;->access$17(Lcom/facebook/katana/PhotosActivity;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$2;->this$0:Lcom/facebook/katana/PhotosActivity;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/facebook/katana/PhotosActivity;->removeDialog(I)V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$2;->this$0:Lcom/facebook/katana/PhotosActivity;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Lcom/facebook/katana/PhotosActivity;->showDialog(I)V
const-string v1, " - Lcom/facebook/katana/PhotosActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
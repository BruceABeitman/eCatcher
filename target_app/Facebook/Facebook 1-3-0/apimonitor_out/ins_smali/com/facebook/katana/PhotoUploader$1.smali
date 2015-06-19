.class  Lcom/facebook/katana/PhotoUploader$1;
.super Ljava/lang/Object;
.source "PhotoUploader.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/PhotoUploader;
.method constructor <init>(Lcom/facebook/katana/PhotoUploader;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PhotoUploader$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
packed-switch p2, :pswitch_data_30
:goto_3
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lcom/facebook/katana/PhotoUploader$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_7
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.PICK"
sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v1, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;
#getter for: Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/facebook/katana/PhotoUploader;->access$0(Lcom/facebook/katana/PhotoUploader;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;
#getter for: Lcom/facebook/katana/PhotoUploader;->mPickExistingPhotoRequestCode:I
invoke-static {v2}, Lcom/facebook/katana/PhotoUploader;->access$1(Lcom/facebook/katana/PhotoUploader;)I
move-result v2
invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_3
:pswitch_20
iget-object v1, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;
#getter for: Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/facebook/katana/PhotoUploader;->access$0(Lcom/facebook/katana/PhotoUploader;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;
#getter for: Lcom/facebook/katana/PhotoUploader;->mTakeCameraPhotoRequestCode:I
invoke-static {v2}, Lcom/facebook/katana/PhotoUploader;->access$2(Lcom/facebook/katana/PhotoUploader;)I
move-result v2
invoke-static {v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->takePicture(Landroid/app/Activity;I)V
goto :goto_3
:pswitch_data_30
.packed-switch 0x0
:pswitch_7
:pswitch_20
.end packed-switch
.end method
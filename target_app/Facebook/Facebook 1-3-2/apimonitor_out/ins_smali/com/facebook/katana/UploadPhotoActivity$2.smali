.class  Lcom/facebook/katana/UploadPhotoActivity$2;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/facebook/katana/UploadPhotoActivity;
.method constructor <init>(Lcom/facebook/katana/UploadPhotoActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$2;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$2;->this$0:Lcom/facebook/katana/UploadPhotoActivity;
invoke-virtual {v0}, Lcom/facebook/katana/UploadPhotoActivity;->finish()V
return-void
.end method
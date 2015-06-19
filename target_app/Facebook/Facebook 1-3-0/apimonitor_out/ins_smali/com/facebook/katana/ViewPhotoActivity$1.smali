.class  Lcom/facebook/katana/ViewPhotoActivity$1;
.super Ljava/lang/Object;
.source "ViewPhotoActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;
.method constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$1;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$1;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->hideOnScreenControls()V
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$9(Lcom/facebook/katana/ViewPhotoActivity;)V
return-void
.end method
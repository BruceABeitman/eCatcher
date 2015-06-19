.class  Lcom/pinguo/camera360/gallery/mvc/PhotoPageView$1;
.super Ljava/lang/Object;
.source "PhotoPageView.java"
.implements Landroid/content/DialogInterface$OnShowListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;
.method constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView$1;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onShow(Landroid/content/DialogInterface;)V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "showShareList"
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView$1;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;
#getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mPhotoPageHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->access$1(Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
return-void
.end method
.class  Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView$1;
.super Ljava/lang/Object;
.source "ImageLoaderView.java"
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
.field final synthetic this$0:Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;
.field private final synthetic val$backupUrl:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView$1;->this$0:Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;
iput-object p2, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView$1;->val$backupUrl:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
.registers 3
return-void
.end method
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.registers 4
return-void
.end method
.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView$1;->this$0:Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;
iget-object v1, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView$1;->val$backupUrl:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V
return-void
.end method
.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
.registers 3
return-void
.end method
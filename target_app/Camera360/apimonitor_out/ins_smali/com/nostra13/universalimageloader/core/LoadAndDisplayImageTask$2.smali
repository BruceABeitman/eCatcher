.class  Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
.method constructor <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
.registers 2
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
iget-object v1, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
iget-object v2, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
iget-object v0, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageViewRef:Ljava/lang/ref/Reference;
invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-interface {v1, v2, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
return-void
.end method
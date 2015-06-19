.class  Lcom/pinguo/camera360/shop/view/ScrollGallery$2;
.super Ljava/lang/Object;
.source "ScrollGallery.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
.method constructor <init>(Lcom/pinguo/camera360/shop/view/ScrollGallery;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
#getter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->mCounter:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$1(Lcom/pinguo/camera360/shop/view/ScrollGallery;)I
move-result v1
add-int/lit8 v1, v1, -0x1
#setter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->mCounter:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$2(Lcom/pinguo/camera360/shop/view/ScrollGallery;I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
#getter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->mCounter:I
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$1(Lcom/pinguo/camera360/shop/view/ScrollGallery;)I
move-result v0
if-gtz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
#getter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->isReleased:Z
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$3(Lcom/pinguo/camera360/shop/view/ScrollGallery;)Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
#getter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->isMoved:Z
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$4(Lcom/pinguo/camera360/shop/view/ScrollGallery;)Z
move-result v0
if-eqz v0, :cond_24
:cond_23
:goto_23
return-void
:cond_24
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
#getter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$5(Lcom/pinguo/camera360/shop/view/ScrollGallery;)Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;
move-result-object v0
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
#getter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$5(Lcom/pinguo/camera360/shop/view/ScrollGallery;)Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;->onLongPress()V
:cond_35
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;
const/4 v1, 0x1
#setter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->mIsInLongPress:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$6(Lcom/pinguo/camera360/shop/view/ScrollGallery;Z)V
goto :goto_23
.end method
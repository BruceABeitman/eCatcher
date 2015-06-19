.class  Lcom/facebook/katana/ViewPhotoActivity$6;
.super Ljava/lang/Object;
.source "ViewPhotoActivity.java"
.implements Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;
.field private final synthetic val$otListener:Landroid/view/View$OnTouchListener;
.field private final synthetic val$rootView:Landroid/view/View;
.method constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;Landroid/view/View;Landroid/view/View$OnTouchListener;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
iput-object p2, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->val$rootView:Landroid/view/View;
iput-object p3, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->val$otListener:Landroid/view/View$OnTouchListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onVisibilityChanged(Z)V
.registers 4
if-eqz p1, :cond_8
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->updateZoomButtonsEnabled()V
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$35(Lcom/facebook/katana/ViewPhotoActivity;)V
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->val$rootView:Landroid/view/View;
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->val$otListener:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
goto :goto_7
.end method
.method public onZoom(Z)V
.registers 3
if-eqz p1, :cond_11
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/ImageViewTouchBase;->zoomIn()V
:goto_b
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->updateZoomButtonsEnabled()V
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$35(Lcom/facebook/katana/ViewPhotoActivity;)V
return-void
:cond_11
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$6;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/ImageViewTouchBase;->zoomOut()V
goto :goto_b
.end method
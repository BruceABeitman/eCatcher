.class  Lcom/facebook/katana/ViewPhotoActivity$4;
.super Ljava/lang/Object;
.source "ViewPhotoActivity.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;
.method constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$4;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$4;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->scheduleDismissOnScreenControls()V
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$33(Lcom/facebook/katana/ViewPhotoActivity;)V
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$4;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->showOnScreenControls()V
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$34(Lcom/facebook/katana/ViewPhotoActivity;)V
:cond_10
const/4 v0, 0x0
return v0
.end method
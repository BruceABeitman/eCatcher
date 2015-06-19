.class  Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"
.implements Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
.method constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;)Lcom/pinguo/camera360/puzzle/PuzzleActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
return-object v0
.end method
.method public onLeftClick()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
#calls: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z
invoke-static {v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$0(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Z
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v1, "intent_key_current_photo_path_list"
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
#getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoList:Ljava/util/ArrayList;
invoke-static {v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$7(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
const/16 v2, 0x7d0
invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->setResult(ILandroid/content/Intent;)V
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->finish()V
return-void
.end method
.method public onRightClick()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
#getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayer:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$6(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
#getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayer:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$6(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
#getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayerWithBackground:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$5(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2$1;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2$1;->start()V
:cond_27
return-void
.end method
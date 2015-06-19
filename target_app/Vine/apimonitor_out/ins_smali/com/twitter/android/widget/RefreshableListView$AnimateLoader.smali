.class  Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;
.super Ljava/lang/Object;
.source "RefreshableListView.java"
.implements Ljava/lang/Runnable;
.field  mRotate:I
.field private mView:Landroid/widget/ImageView;
.field final synthetic this$0:Lcom/twitter/android/widget/RefreshableListView;
.method public constructor <init>(Lcom/twitter/android/widget/RefreshableListView;Landroid/widget/ImageView;)V
.registers 3
iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mView:Landroid/widget/ImageView;
return-void
.end method
.method public cancel()V
.registers 3
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->getHandler()Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_b
return-void
.end method
.method public run()V
.registers 4
iget v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I
add-int/lit16 v0, v0, 0x1f4
iput v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I
iget v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I
const/16 v1, 0x2710
if-le v0, v1, :cond_f
const/4 v0, 0x0
iput v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I
:cond_f
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mView:Landroid/widget/ImageView;
iget v1, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const-wide/16 v1, 0x20
invoke-virtual {v0, p0, v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
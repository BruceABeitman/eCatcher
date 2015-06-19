.class  Lcom/pinguo/camera360/gallery/RootActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RootActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/RootActivity;
.method constructor <init>(Lcom/pinguo/camera360/gallery/RootActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/RootActivity$1;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/gallery/GalleryActivity;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity$1;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivity(Landroid/content/Intent;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity$1;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->finish()V
:cond_1e
:goto_1e
return-void
:cond_1f
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_60
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTABLE"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_60
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "android.intent.action.MEDIA_REMOVED"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_60
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "android.intent.action.MEDIA_SHARED"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_60
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "android.intent.action.MEDIA_BAD_REMOVAL"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
:cond_60
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity$1;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;
#getter for: Lcom/pinguo/camera360/gallery/RootActivity;->mGLCoverView:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->access$0(Lcom/pinguo/camera360/gallery/RootActivity;)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity$1;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;
#getter for: Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->access$1(Lcom/pinguo/camera360/gallery/RootActivity;)Lcom/pinguo/camera360/gallery/ui/GLRootView;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity$1;->this$0:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->finish()V
goto :goto_1e
.end method
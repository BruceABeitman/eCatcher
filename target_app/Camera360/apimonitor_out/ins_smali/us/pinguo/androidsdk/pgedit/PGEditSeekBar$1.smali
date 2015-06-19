.class  Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;
.super Landroid/os/Handler;
.source "PGEditSeekBar.java"
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x1
if-ne v0, v1, :cond_27
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->isOperationStart:Z
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->canAniamtion:Z
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->hideAnimation:Landroid/view/animation/AlphaAnimation;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)Landroid/view/animation/AlphaAnimation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:goto_26
:cond_26
return-void
:cond_27
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x2
if-ne v0, v1, :cond_26
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->canAniamtion:Z
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->hideAnimation:Landroid/view/animation/AlphaAnimation;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)Landroid/view/animation/AlphaAnimation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_26
.end method
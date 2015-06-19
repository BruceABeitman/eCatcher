.class  Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;
.super Ljava/lang/Object;
.source "RefreshableListView.java"
.implements Ljava/lang/Runnable;
.field private static final AUTO_SCROLL_DURATION:I = 0x1c2
.field private mLastY:I
.field final synthetic this$0:Lcom/twitter/android/widget/RefreshableListView;
.method constructor <init>(Lcom/twitter/android/widget/RefreshableListView;)V
.registers 2
iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 8
const/4 v4, 0x0
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v6, 0xa
invoke-virtual {v5, v6}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z
move-result v5
if-nez v5, :cond_c
:goto_b
return-void
:cond_c
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
iget-object v2, v5, Lcom/twitter/android/widget/RefreshableListView;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I
move-result v5
const/16 v6, 0x1c2
if-ge v5, v6, :cond_42
invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v5
if-eqz v5, :cond_42
const/4 v1, 0x1
:goto_1f
if-eqz v1, :cond_44
invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I
move-result v3
:goto_25
iget v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->mLastY:I
sub-int v0, v5, v3
iput v3, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->mLastY:I
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v5, v0}, Lcom/twitter/android/widget/RefreshableListView;->offsetChildrenTopAndBottom(I)V
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v5}, Lcom/twitter/android/widget/RefreshableListView;->invalidate()V
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v5}, Lcom/twitter/android/widget/RefreshableListView;->requestLastChildLayout()V
if-eqz v1, :cond_49
iget-object v4, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v4, p0}, Lcom/twitter/android/widget/RefreshableListView;->post(Ljava/lang/Runnable;)Z
goto :goto_b
:cond_42
move v1, v4
goto :goto_1f
:cond_44
invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I
move-result v3
goto :goto_25
:cond_49
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v6, 0x8
invoke-virtual {v5, v6}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v6, 0x20
invoke-virtual {v5, v6}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z
move-result v5
if-eqz v5, :cond_60
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v5, v4, v3}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V
goto :goto_b
:cond_60
iget-object v4, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v4}, Lcom/twitter/android/widget/RefreshableListView;->detach()V
goto :goto_b
.end method
.method  scroll(I)V
.registers 8
const/4 v1, 0x0
iput v1, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->mLastY:I
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v2, 0x8
invoke-virtual {v0, v2}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->mScroller:Landroid/widget/Scroller;
const/16 v5, 0x1c2
move v2, v1
move v3, v1
move v4, p1
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v0, p0}, Lcom/twitter/android/widget/RefreshableListView;->post(Ljava/lang/Runnable;)Z
return-void
.end method
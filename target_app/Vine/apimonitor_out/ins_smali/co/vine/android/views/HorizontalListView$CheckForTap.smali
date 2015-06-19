.class final Lco/vine/android/views/HorizontalListView$CheckForTap;
.super Ljava/lang/Object;
.source "HorizontalListView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/views/HorizontalListView;
.method constructor <init>(Lco/vine/android/views/HorizontalListView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 9
const/4 v7, 0x2
const/4 v6, 0x1
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$000(Lco/vine/android/views/HorizontalListView;)I
move-result v3
if-nez v3, :cond_c3
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#setter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
invoke-static {v3, v6}, Lco/vine/android/views/HorizontalListView;->access$002(Lco/vine/android/views/HorizontalListView;I)I
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
iget-object v4, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mMotionPosition:I
invoke-static {v4}, Lco/vine/android/views/HorizontalListView;->access$200(Lco/vine/android/views/HorizontalListView;)I
move-result v4
iget-object v5, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
invoke-static {v5}, Lco/vine/android/views/HorizontalListView;->access$800(Lco/vine/android/views/HorizontalListView;)I
move-result v5
sub-int/2addr v4, v5
invoke-virtual {v3, v4}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_c3
invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z
move-result v3
if-nez v3, :cond_c3
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$100(Lco/vine/android/views/HorizontalListView;)Z
move-result v3
if-nez v3, :cond_be
invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3, v6}, Lco/vine/android/views/HorizontalListView;->setPressed(Z)V
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->layoutChildren()V
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->refreshDrawableState()V
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->isLongClickable()Z
move-result v2
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$900(Lco/vine/android/views/HorizontalListView;)Landroid/graphics/drawable/Drawable;
move-result-object v3
if-eqz v3, :cond_6f
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$900(Lco/vine/android/views/HorizontalListView;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_6f
instance-of v3, v1, Landroid/graphics/drawable/TransitionDrawable;
if-eqz v3, :cond_6f
if-eqz v2, :cond_c4
check-cast v1, Landroid/graphics/drawable/TransitionDrawable;
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mLongPressMillis:I
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$1000(Lco/vine/android/views/HorizontalListView;)I
move-result v3
invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V
:goto_6f
:cond_6f
if-eqz v2, :cond_ca
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$1100(Lco/vine/android/views/HorizontalListView;)Lco/vine/android/views/HorizontalListView$CheckForLongPress;
move-result-object v3
if-nez v3, :cond_86
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
new-instance v4, Lco/vine/android/views/HorizontalListView$CheckForLongPress;
iget-object v5, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
const/4 v6, 0x0
invoke-direct {v4, v5, v6}, Lco/vine/android/views/HorizontalListView$CheckForLongPress;-><init>(Lco/vine/android/views/HorizontalListView;Lco/vine/android/views/HorizontalListView$1;)V
#setter for: Lco/vine/android/views/HorizontalListView;->mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
invoke-static {v3, v4}, Lco/vine/android/views/HorizontalListView;->access$1102(Lco/vine/android/views/HorizontalListView;Lco/vine/android/views/HorizontalListView$CheckForLongPress;)Lco/vine/android/views/HorizontalListView$CheckForLongPress;
:cond_86
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$1100(Lco/vine/android/views/HorizontalListView;)Lco/vine/android/views/HorizontalListView$CheckForLongPress;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->rememberWindowAttachCount()V
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
iget-object v4, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
invoke-static {v4}, Lco/vine/android/views/HorizontalListView;->access$1100(Lco/vine/android/views/HorizontalListView;)Lco/vine/android/views/HorizontalListView$CheckForLongPress;
move-result-object v4
iget-object v5, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mLongPressMillis:I
invoke-static {v5}, Lco/vine/android/views/HorizontalListView;->access$1000(Lco/vine/android/views/HorizontalListView;)I
move-result v5
int-to-long v5, v5
invoke-virtual {v3, v4, v5, v6}, Lco/vine/android/views/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_a1
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$900(Lco/vine/android/views/HorizontalListView;)Landroid/graphics/drawable/Drawable;
move-result-object v3
if-eqz v3, :cond_be
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#getter for: Lco/vine/android/views/HorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
invoke-static {v3}, Lco/vine/android/views/HorizontalListView;->access$900(Lco/vine/android/views/HorizontalListView;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_be
instance-of v3, v1, Landroid/graphics/drawable/TransitionDrawable;
if-eqz v3, :cond_be
check-cast v1, Landroid/graphics/drawable/TransitionDrawable;
invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V
:cond_be
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#setter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
invoke-static {v3, v7}, Lco/vine/android/views/HorizontalListView;->access$002(Lco/vine/android/views/HorizontalListView;I)I
:cond_c3
return-void
:cond_c4
check-cast v1, Landroid/graphics/drawable/TransitionDrawable;
invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V
goto :goto_6f
:cond_ca
iget-object v3, p0, Lco/vine/android/views/HorizontalListView$CheckForTap;->this$0:Lco/vine/android/views/HorizontalListView;
#setter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
invoke-static {v3, v7}, Lco/vine/android/views/HorizontalListView;->access$002(Lco/vine/android/views/HorizontalListView;I)I
goto :goto_a1
.end method
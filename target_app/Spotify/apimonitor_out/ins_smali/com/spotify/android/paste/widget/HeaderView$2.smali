.class final Lcom/spotify/android/paste/widget/HeaderView$2;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/android/paste/widget/HeaderView;
.method constructor <init>(Lcom/spotify/android/paste/widget/HeaderView;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/spotify/android/paste/widget/HeaderView$2;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V
return-void
.end method
.method protected final onAttachedToWindow()V
.registers 7
invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onAttachedToWindow()V
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/HeaderView$2;->getLeft()I
move-result v2
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/HeaderView$2;->getTop()I
move-result v3
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/HeaderView$2;->getRight()I
move-result v4
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/HeaderView$2;->getBottom()I
move-result v5
move-object v0, p0
invoke-super/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V
return-void
.end method
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView$2;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->c(Lcom/spotify/android/paste/widget/HeaderView;)Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView$2;->a:Lcom/spotify/android/paste/widget/HeaderView;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView$2;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v1}, Lcom/spotify/android/paste/widget/HeaderView;->d(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/view/GestureDetector;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Lcom/spotify/android/paste/widget/HeaderView;Z)Z
:cond_17
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v1, 0x1
if-eq v0, v1, :cond_25
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_2b
:cond_25
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView$2;->a:Lcom/spotify/android/paste/widget/HeaderView;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Lcom/spotify/android/paste/widget/HeaderView;Z)Z
:cond_2b
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView$2;->a:Lcom/spotify/android/paste/widget/HeaderView;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView$2;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v1}, Lcom/spotify/android/paste/widget/HeaderView;->c(Lcom/spotify/android/paste/widget/HeaderView;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->requestDisallowInterceptTouchEvent(Z)V
invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
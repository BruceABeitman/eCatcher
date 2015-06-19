.class public Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ScrollingOptionalViewPager.java"
.field private a:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->a:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->a:Z
return-void
.end method
.method public getScrollingEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->a:Z
return v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-boolean v0, p0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->a:Z
if-eqz v0, :cond_9
invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-boolean v0, p0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->a:Z
if-eqz v0, :cond_9
invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public setCurrentItem(I)V
.registers 3
iget-boolean v0, p0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->a:Z
if-eqz v0, :cond_8
invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
:goto_7
return-void
:cond_8
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->a(IZ)V
goto :goto_7
.end method
.method public setScrollingEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->a:Z
return-void
.end method
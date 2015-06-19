.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"
.field private mActivity:Landroid/app/Activity;
.field private mBroadcasting:Z
.field private mEnableSlide:Z
.field private mOnPostCreateCalled:Z
.field private mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.field private mViewAbove:Landroid/view/View;
.field private mViewBehind:Landroid/view/View;
.method public constructor <init>(Landroid/app/Activity;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mBroadcasting:Z
iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mOnPostCreateCalled:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mEnableSlide:Z
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mActivity:Landroid/app/Activity;
return-void
.end method
.method static synthetic access$000(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
return-object v0
.end method
.method public findViewById(I)Landroid/view/View;
.registers 4
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
if-eqz v1, :cond_d
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_d
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mActivity:Landroid/app/Activity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/jeremyfeinstein/slidingmenu/lib/R$layout;->slidingmenumain:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
const-string v1, " - Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_10
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->showContent()V
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public onPostCreate(Landroid/os/Bundle;)V
.registers 8
const/4 v2, 0x1
iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mViewBehind:Landroid/view/View;
if-eqz v3, :cond_9
iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mViewAbove:Landroid/view/View;
if-nez v3, :cond_11
:cond_9
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "Both setBehindContentView must be called in onCreate in addition to setContentView."
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:cond_11
iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mOnPostCreateCalled:Z
iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mActivity:Landroid/app/Activity;
iget-boolean v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mEnableSlide:Z
if-eqz v5, :cond_1c
const/4 v2, 0x0
:cond_1c
invoke-virtual {v3, v4, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V
if-eqz p1, :cond_3b
const-string v2, "SlidingActivityHelper.open"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
const-string v2, "SlidingActivityHelper.secondary"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
:goto_2d
new-instance v2, Landroid/os/Handler;
invoke-direct {v2}, Landroid/os/Handler;-><init>()V
new-instance v3, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;
invoke-direct {v3, p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;ZZ)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:cond_3b
const/4 v0, 0x0
const/4 v1, 0x0
goto :goto_2d
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "SlidingActivityHelper.open"
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "SlidingActivityHelper.secondary"
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isSecondaryMenuShowing()Z
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, " - Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 4
iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mBroadcasting:Z
if-nez v0, :cond_6
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mViewAbove:Landroid/view/View;
:cond_6
return-void
.end method
.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 5
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mViewBehind:Landroid/view/View;
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mViewBehind:Landroid/view/View;
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V
return-void
.end method
.method public setContentView(Landroid/view/View;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mBroadcasting:Z
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mActivity:Landroid/app/Activity;
invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
return-void
.end method
.method public setMenuStateListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;)V
.registers 4
new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;
invoke-direct {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnDragListener(Landroid/view/View$OnDragListener;)V
return-void
.end method
.method public setSlidingActionBarEnabled(Z)V
.registers 4
iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mOnPostCreateCalled:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "enableSlidingActionBar must be called in onCreate."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mEnableSlide:Z
return-void
.end method
.method public showContent()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V
return-void
.end method
.method public showMenu()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu()V
return-void
.end method
.method public showSecondaryMenu()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showSecondaryMenu()V
return-void
.end method
.method public toggle()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle()V
return-void
.end method
.class public Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;
.super Ljava/lang/Object;
.source "DevModeWindowView.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.field private mIndicator:Landroid/widget/CheckBox;
.field private mPageAdapter:Landroid/support/v4/view/PagerAdapter;
.field private mPannelRootView:Landroid/widget/LinearLayout;
.field private mViewPager:Landroid/support/v4/view/ViewPager;
.field private mWindowManager:Landroid/view/WindowManager;
.field private mWindowRoot:Landroid/view/View;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private obtainWindowParams()Landroid/view/WindowManager$LayoutParams;
.registers 5
const/4 v3, 0x0
new-instance v0, Landroid/view/WindowManager$LayoutParams;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V
const/16 v1, 0x7d2
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I
const/4 v1, 0x1
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I
const/16 v1, 0x28
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
const/16 v1, 0x33
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I
iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I
return-object v0
.end method
.method private switchState()V
.registers 5
invoke-direct {p0}, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->obtainWindowParams()Landroid/view/WindowManager$LayoutParams;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mIndicator:Landroid/widget/CheckBox;
invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z
move-result v2
if-eqz v2, :cond_41
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v2
if-nez v2, :cond_30
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;
if-nez v2, :cond_29
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/devmode/lib/DmAppManager;->getInfo(Landroid/content/Context;)Ljava/util/ArrayList;
move-result-object v0
new-instance v2, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;
invoke-direct {v2, v0}, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;-><init>(Ljava/util/ArrayList;)V
iput-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;
:cond_29
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;
invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
:cond_30
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mPannelRootView:Landroid/widget/LinearLayout;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
const/4 v2, -0x1
iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I
:goto_39
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowManager:Landroid/view/WindowManager;
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
:cond_41
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mPannelRootView:Landroid/widget/LinearLayout;
const/4 v3, 0x4
invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getHeight()I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mPannelRootView:Landroid/widget/LinearLayout;
invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I
const/4 v2, -0x2
iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I
goto :goto_39
.end method
.method public bringToFront()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
return-void
.end method
.method public hide()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowManager:Landroid/view/WindowManager;
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
:cond_f
return-void
.end method
.method public init(Landroid/content/Context;)V
.registers 5
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "window"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/WindowManager;
iput-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowManager:Landroid/view/WindowManager;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03004f
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
const v2, 0x7f0a0197
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/CheckBox;
iput-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mIndicator:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
const v2, 0x7f0a0198
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
iput-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mPannelRootView:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
const v2, 0x7f0a019b
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v4/view/ViewPager;
iput-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
const v2, 0x7f0a019a
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
const v2, 0x7f0a0199
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mIndicator:Landroid/widget/CheckBox;
invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mIndicator:Landroid/widget/CheckBox;
invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return-void
.end method
.method public jumpMore(Landroid/view/View;)V
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mIndicator:Landroid/widget/CheckBox;
invoke-virtual {v2}, Landroid/widget/CheckBox;->performClick()Z
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity;
invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
const v0, 0x7f0a0197
invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I
move-result v1
if-ne v0, v1, :cond_c
invoke-direct {p0}, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->switchState()V
:cond_c
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_c
:goto_7
const-string v1, " - Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->jumpMore(Landroid/view/View;)V
goto :goto_7
:pswitch_data_c
.packed-switch 0x7f0a019a
:pswitch_8
.end packed-switch
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->hide()V
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "\u9000\u51fa\u5f00\u53d1\u8005\u6a21\u5f0f"
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const-string v1, " - Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
.end method
.method public show()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowManager:Landroid/view/WindowManager;
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->mWindowRoot:Landroid/view/View;
invoke-direct {p0}, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView;->obtainWindowParams()Landroid/view/WindowManager$LayoutParams;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_13
return-void
.end method
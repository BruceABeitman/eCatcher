.class public Lcom/instagram/base/activity/tabactivity/IgTabHost;
.super Landroid/widget/FrameLayout;
.source "IgTabHost.java"
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.field protected a:I
.field protected b:Landroid/app/LocalActivityManager;
.field private c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
.field private d:Landroid/widget/FrameLayout;
.field private e:Ljava/util/List;
.field private f:Landroid/view/View;
.field private g:Lcom/instagram/base/activity/tabactivity/g;
.field private h:Landroid/view/View$OnKeyListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x2
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
iput-object v2, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
iput-object v2, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->b:Landroid/app/LocalActivityManager;
invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x2
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
iput-object v2, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
iput-object v2, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->b:Landroid/app/LocalActivityManager;
invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a()V
return-void
.end method
.method static synthetic a(Lcom/instagram/base/activity/tabactivity/IgTabHost;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d:Landroid/widget/FrameLayout;
return-object v0
.end method
.method private a()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setFocusableInTouchMode(Z)V
const/high16 v0, 0x4
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setDescendantFocusability(I)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
return-void
.end method
.method static synthetic a(Landroid/view/View;)V
.registers 1
invoke-static {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d(Landroid/view/View;)V
return-void
.end method
.method private b()V
.registers 3
const v0, 0x1020013
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
if-nez v0, :cond_17
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
new-instance v0, Lcom/instagram/base/activity/tabactivity/b;
invoke-direct {v0, p0}, Lcom/instagram/base/activity/tabactivity/b;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;)V
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->h:Landroid/view/View$OnKeyListener;
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
new-instance v1, Lcom/instagram/base/activity/tabactivity/c;
invoke-direct {v1, p0}, Lcom/instagram/base/activity/tabactivity/c;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;)V
invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setTabSelectionListener(Lcom/instagram/base/activity/tabactivity/j;)V
const v0, 0x1020011
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d:Landroid/widget/FrameLayout;
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d:Landroid/widget/FrameLayout;
if-nez v0, :cond_3f
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3f
return-void
.end method
.method static synthetic b(Landroid/view/View;)V
.registers 1
invoke-static {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c(Landroid/view/View;)V
return-void
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->g:Lcom/instagram/base/activity/tabactivity/g;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->g:Lcom/instagram/base/activity/tabactivity/g;
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/base/activity/tabactivity/g;->a(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method private static c(Landroid/view/View;)V
.registers 4
invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V
instance-of v0, p0, Landroid/view/ViewGroup;
if-eqz v0, :cond_1a
check-cast p0, Landroid/view/ViewGroup;
invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
const/4 v0, 0x0
:goto_e
if-ge v0, v1, :cond_1a
invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-static {v2}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c(Landroid/view/View;)V
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_1a
return-void
.end method
.method private static d(Landroid/view/View;)V
.registers 4
invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V
instance-of v0, p0, Landroid/view/ViewGroup;
if-eqz v0, :cond_1a
check-cast p0, Landroid/view/ViewGroup;
invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
const/4 v0, 0x0
:goto_e
if-ge v0, v1, :cond_1a
invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-static {v2}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d(Landroid/view/View;)V
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_1a
return-void
.end method
.method private getTabWidgetLocation()I
.registers 3
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getOrientation()I
move-result v0
packed-switch v0, :pswitch_data_2e
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I
move-result v0
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-virtual {v1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTop()I
move-result v1
if-ge v0, v1, :cond_2b
const/4 v0, 0x3
:goto_18
return v0
:pswitch_19
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I
move-result v0
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-virtual {v1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getLeft()I
move-result v1
if-ge v0, v1, :cond_29
const/4 v0, 0x2
goto :goto_18
:cond_29
const/4 v0, 0x0
goto :goto_18
:cond_2b
const/4 v0, 0x1
goto :goto_18
nop
:pswitch_data_2e
.packed-switch 0x1
:pswitch_19
.end packed-switch
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/base/activity/tabactivity/h;
.registers 4
new-instance v0, Lcom/instagram/base/activity/tabactivity/h;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/instagram/base/activity/tabactivity/h;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Ljava/lang/String;B)V
return-object v0
.end method
.method public final a(Lcom/instagram/base/activity/tabactivity/h;)V
.registers 4
invoke-static {p1}, Lcom/instagram/base/activity/tabactivity/h;->a(Lcom/instagram/base/activity/tabactivity/h;)Lcom/instagram/base/activity/tabactivity/e;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "you must specify a way to create the tab indicator."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-static {p1}, Lcom/instagram/base/activity/tabactivity/h;->b(Lcom/instagram/base/activity/tabactivity/h;)Lcom/instagram/base/activity/tabactivity/d;
move-result-object v0
if-nez v0, :cond_1c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "you must specify a way to create the tab content"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
invoke-static {p1}, Lcom/instagram/base/activity/tabactivity/h;->a(Lcom/instagram/base/activity/tabactivity/h;)Lcom/instagram/base/activity/tabactivity/e;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/base/activity/tabactivity/e;->a()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->h:Landroid/view/View$OnKeyListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-virtual {v1, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
const/4 v1, -0x1
if-ne v0, v1, :cond_3c
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTab(I)V
:cond_3c
return-void
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 8
const/4 v1, 0x1
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v4
if-nez v4, :cond_5a
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v0
if-nez v0, :cond_5a
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
if-eqz v0, :cond_5a
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z
move-result v0
if-eqz v0, :cond_5a
invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getTabWidgetLocation()I
move-result v0
packed-switch v0, :pswitch_data_5c
:pswitch_20
const/16 v3, 0x13
const/16 v2, 0x21
const/4 v0, 0x2
:goto_25
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v5
if-ne v5, v3, :cond_5a
iget-object v3, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;
move-result-object v2
if-nez v2, :cond_5a
iget-object v2, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
iget v3, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
invoke-virtual {v2, v3}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->playSoundEffect(I)V
:goto_45
return v1
:pswitch_46
const/16 v2, 0x15
const/16 v0, 0x11
move v3, v2
move v2, v0
move v0, v1
goto :goto_25
:pswitch_4e
const/16 v3, 0x16
const/16 v2, 0x42
const/4 v0, 0x3
goto :goto_25
:pswitch_54
const/16 v3, 0x14
const/16 v2, 0x82
const/4 v0, 0x4
goto :goto_25
:cond_5a
move v1, v4
goto :goto_45
:pswitch_data_5c
.packed-switch 0x0
:pswitch_46
:pswitch_20
:pswitch_4e
:pswitch_54
.end packed-switch
.end method
.method public dispatchWindowFocusChanged(Z)V
.registers 3
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V
:cond_9
return-void
.end method
.method public getCurrentTab()I
.registers 2
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
return v0
.end method
.method public getCurrentTabTag()Ljava/lang/String;
.registers 3
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
if-ltz v0, :cond_1d
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_1d
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
iget v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/base/activity/tabactivity/h;
invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/h;->a()Ljava/lang/String;
move-result-object v0
:goto_1c
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method public getCurrentTabView()Landroid/view/View;
.registers 3
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
if-ltz v0, :cond_17
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_17
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
iget v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v0
:goto_16
return-object v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public getCurrentView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
return-object v0
.end method
.method public getTabContentView()Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d:Landroid/widget/FrameLayout;
return-object v0
.end method
.method public getTabWidget()Lcom/instagram/base/activity/tabactivity/IgTabWidget;
.registers 2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
return-object v0
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
return-void
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const-class v0, Lcom/instagram/base/activity/tabactivity/IgTabHost;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
const-class v0, Lcom/instagram/base/activity/tabactivity/IgTabHost;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onTouchModeChanged(Z)V
.registers 4
if-nez p1, :cond_21
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->isFocused()Z
move-result v0
if-eqz v0, :cond_21
:cond_16
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
iget v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
:cond_21
return-void
.end method
.method public sendAccessibilityEvent(I)V
.registers 2
return-void
.end method
.method public setCurrentTab(I)V
.registers 6
const/4 v3, -0x1
if-ltz p1, :cond_b
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lt p1, v0, :cond_c
:cond_b
:goto_b
return-void
:cond_c
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
if-eq p1, v0, :cond_b
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
if-eq v0, v3, :cond_25
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
iget v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/base/activity/tabactivity/h;
invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/h;->b(Lcom/instagram/base/activity/tabactivity/h;)Lcom/instagram/base/activity/tabactivity/d;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/base/activity/tabactivity/d;->b()V
:cond_25
iput p1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/base/activity/tabactivity/h;
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
iget v2, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a:I
invoke-virtual {v1, v2}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b(I)V
invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/h;->b(Lcom/instagram/base/activity/tabactivity/h;)Lcom/instagram/base/activity/tabactivity/d;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/base/activity/tabactivity/d;->a()Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-nez v0, :cond_54
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->d:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_54
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->hasFocus()Z
move-result v0
if-nez v0, :cond_61
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
:cond_61
invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->c()V
goto :goto_b
.end method
.method public setCurrentTabByTag(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_1f
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->e:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/base/activity/tabactivity/h;
invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/h;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTab(I)V
:cond_1f
return-void
:cond_20
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
.end method
.method public setOnTabChangedListener(Lcom/instagram/base/activity/tabactivity/g;)V
.registers 2
iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->g:Lcom/instagram/base/activity/tabactivity/g;
return-void
.end method
.method public setup(Landroid/app/LocalActivityManager;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->b()V
iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->b:Landroid/app/LocalActivityManager;
return-void
.end method
.class public Lcom/instagram/base/activity/tabactivity/IgTabWidget;
.super Landroid/widget/LinearLayout;
.source "IgTabWidget.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field private a:Lcom/instagram/base/activity/tabactivity/j;
.field private b:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a()V
return-void
.end method
.method static synthetic a(Lcom/instagram/base/activity/tabactivity/IgTabWidget;)Lcom/instagram/base/activity/tabactivity/j;
.registers 2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a:Lcom/instagram/base/activity/tabactivity/j;
return-object v0
.end method
.method private a()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setChildrenDrawingOrderEnabled(Z)V
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setFocusable(Z)V
invoke-virtual {p0, p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
return-void
.end method
.method private a(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public final a(I)Landroid/view/View;
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getChildAt(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public addView(Landroid/view/View;)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-nez v0, :cond_16
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
const/4 v1, -0x1
const/high16 v2, 0x3f80
invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_16
invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V
invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Lcom/instagram/base/activity/tabactivity/k;
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-direct {v0, p0, v1, v3}, Lcom/instagram/base/activity/tabactivity/k;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabWidget;IB)V
invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
return-void
.end method
.method public final b(I)V
.registers 3
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-virtual {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setCurrentTab(I)V
if-eq v0, p1, :cond_e
invoke-virtual {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
:cond_e
return-void
.end method
.method public childDrawableStateChanged(Landroid/view/View;)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I
move-result v0
if-lez v0, :cond_11
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v0
if-ne p1, v0, :cond_11
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->invalidate()V
:cond_11
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V
return-void
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_9
invoke-direct {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(Landroid/view/accessibility/AccessibilityEvent;)V
:cond_9
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
const/4 v1, -0x1
if-eq v0, v1, :cond_21
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_21
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v1
if-nez v1, :cond_21
invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
:goto_20
return v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method protected getChildDrawingOrder(II)I
.registers 5
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
const/4 v1, -0x1
if-ne v0, v1, :cond_6
:goto_5
:cond_5
return p2
:cond_6
add-int/lit8 v0, p1, -0x1
if-ne p2, v0, :cond_d
iget p2, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
goto :goto_5
:cond_d
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
if-lt p2, v0, :cond_5
add-int/lit8 p2, p2, 0x1
goto :goto_5
.end method
.method public getTabCount()I
.registers 2
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getChildCount()I
move-result v0
return v0
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/base/activity/tabactivity/IgTabWidget; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
if-ne p1, p0, :cond_15
if-eqz p2, :cond_15
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I
move-result v0
if-lez v0, :cond_15
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
:goto_14
:cond_14
const-string v1, " - Lcom/instagram/base/activity/tabactivity/IgTabWidget; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_15
if-eqz p2, :cond_14
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I
move-result v2
move v0, v1
:goto_1c
if-ge v0, v2, :cond_14
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v3
if-ne v3, p1, :cond_38
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setCurrentTab(I)V
iget-object v2, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a:Lcom/instagram/base/activity/tabactivity/j;
invoke-interface {v2, v0, v1}, Lcom/instagram/base/activity/tabactivity/j;->a(IZ)V
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->isShown()Z
move-result v0
if-eqz v0, :cond_14
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->sendAccessibilityEvent(I)V
goto :goto_14
:cond_38
add-int/lit8 v0, v0, 0x1
goto :goto_1c
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const-class v0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
const-class v0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public removeAllViews()V
.registers 2
invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
return-void
.end method
.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_12
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->isFocused()Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
:goto_11
return-void
:cond_12
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
goto :goto_11
.end method
.method public setCurrentTab(I)V
.registers 4
if-ltz p1, :cond_c
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I
move-result v0
if-ge p1, v0, :cond_c
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
if-ne p1, v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
const/4 v1, -0x1
if-eq v0, v1, :cond_1c
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V
:cond_1c
iput p1, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->isShown()Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->sendAccessibilityEvent(I)V
goto :goto_c
.end method
.method public setEnabled(Z)V
.registers 5
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V
invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I
move-result v1
const/4 v0, 0x0
:goto_8
if-ge v0, v1, :cond_14
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_14
return-void
.end method
.method  setTabSelectionListener(Lcom/instagram/base/activity/tabactivity/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a:Lcom/instagram/base/activity/tabactivity/j;
return-void
.end method
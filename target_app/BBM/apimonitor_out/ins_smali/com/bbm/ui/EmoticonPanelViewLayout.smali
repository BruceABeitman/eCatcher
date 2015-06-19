.class public Lcom/bbm/ui/EmoticonPanelViewLayout;
.super Landroid/view/ViewGroup;
.source "EmoticonPanelViewLayout.java"
.field private a:Lcom/bbm/ui/EmoticonInputPanel;
.field private b:Lcom/bbm/ui/bo;
.field private c:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/EmoticonPanelViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/EmoticonPanelViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->c:Z
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 15
const/high16 v8, 0x4000
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPanelViewLayout;->isInEditMode()Z
move-result v0
if-nez v0, :cond_2d
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iget-object v0, v0, Lcom/bbm/Alaska;->d:Lcom/bbm/t;
iget-wide v3, v0, Lcom/bbm/t;->b:J
const-wide/16 v5, 0x0
cmp-long v3, v3, v5
if-eqz v3, :cond_2d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iput-wide v3, v0, Lcom/bbm/t;->c:J
iget-boolean v3, v0, Lcom/bbm/t;->f:Z
if-nez v3, :cond_2d
iput-boolean v1, v0, Lcom/bbm/t;->f:Z
iget-object v3, v0, Lcom/bbm/t;->a:Landroid/os/Handler;
iget-object v4, v0, Lcom/bbm/t;->g:Ljava/lang/Runnable;
iget-wide v5, v0, Lcom/bbm/t;->d:J
invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_2d
iget-object v0, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->a:Lcom/bbm/ui/EmoticonInputPanel;
if-eqz v0, :cond_9a
new-instance v3, Landroid/graphics/Rect;
invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p0, v3}, Lcom/bbm/ui/EmoticonPanelViewLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPanelViewLayout;->getRootView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v0
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPanelViewLayout;->getResources()Landroid/content/res/Resources;
move-result-object v4
const-string v5, "status_bar_height"
const-string v6, "dimen"
const-string v7, "android"
invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v4
if-lez v4, :cond_5a
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPanelViewLayout;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v4
sub-int/2addr v0, v4
:cond_5a
iget v4, v3, Landroid/graphics/Rect;->bottom:I
iget v3, v3, Landroid/graphics/Rect;->top:I
sub-int v3, v4, v3
sub-int/2addr v0, v3
const/16 v3, 0x64
if-le v0, v3, :cond_b1
iget-object v3, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->a:Lcom/bbm/ui/EmoticonInputPanel;
sget v4, Lcom/bbm/ui/EmoticonInputPanel;->a:I
if-eq v4, v0, :cond_75
sput v0, Lcom/bbm/ui/EmoticonInputPanel;->a:I
iget-object v4, v3, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_75
sget-object v0, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
iput-object v0, v3, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
iget-object v0, v3, Lcom/bbm/ui/EmoticonInputPanel;->e:Landroid/widget/FrameLayout;
const/16 v3, 0x8
invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V
:cond_80
:goto_80
iget-object v0, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->b:Lcom/bbm/ui/bo;
if-eqz v0, :cond_9a
iget-object v0, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->a:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->getLowerPanelMode()Lcom/bbm/ui/bl;
move-result-object v0
sget-object v3, Lcom/bbm/ui/bl;->e:Lcom/bbm/ui/bl;
if-eq v0, v3, :cond_bf
move v0, v1
:goto_8f
iget-boolean v1, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->c:Z
if-eq v0, v1, :cond_9a
iget-object v1, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->b:Lcom/bbm/ui/bo;
invoke-interface {v1, v0}, Lcom/bbm/ui/bo;->a(Z)V
iput-boolean v0, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->c:Z
:cond_9a
invoke-virtual {p0, v2}, Lcom/bbm/ui/EmoticonPanelViewLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
sub-int v1, p5, p3
sub-int v3, p4, p2
invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V
invoke-virtual {v0, v2, v2, v3, v1}, Landroid/view/View;->layout(IIII)V
return-void
:cond_b1
iget-object v0, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->a:Lcom/bbm/ui/EmoticonInputPanel;
iget-object v3, v0, Lcom/bbm/ui/EmoticonInputPanel;->b:Lcom/bbm/ui/bl;
sget-object v4, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
if-ne v3, v4, :cond_80
sget-object v3, Lcom/bbm/ui/bl;->e:Lcom/bbm/ui/bl;
invoke-virtual {v0, v3}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
goto :goto_80
:cond_bf
move v0, v2
goto :goto_8f
.end method
.method public setEmoticonInputPanel(Lcom/bbm/ui/EmoticonInputPanel;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->a:Lcom/bbm/ui/EmoticonInputPanel;
return-void
.end method
.method public setLowerPanelVisibilityListener(Lcom/bbm/ui/bo;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonPanelViewLayout;->b:Lcom/bbm/ui/bo;
return-void
.end method
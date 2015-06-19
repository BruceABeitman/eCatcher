.class public Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;
.super Landroid/widget/LinearLayout;
.source "PuzzlePopupItem.java"
.implements Landroid/view/View$OnClickListener;
.field private mInflater:Landroid/view/LayoutInflater;
.field private mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;
.field private mRootView:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/puzzle/PuzzlePopupItem; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;
if-nez v0, :cond_5
:goto_4
const-string v1, " - Lcom/pinguo/camera360/puzzle/PuzzlePopupItem; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_26
goto :goto_4
:pswitch_d
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;
sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->REPLACE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;->onItemClick(Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;)V
goto :goto_4
:pswitch_15
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;
sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->MIRROR:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;->onItemClick(Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;)V
goto :goto_4
:pswitch_1d
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;
sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ROTATE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;->onItemClick(Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;)V
goto :goto_4
nop
:pswitch_data_26
.packed-switch 0x7f0a0569
:pswitch_d
:pswitch_15
:pswitch_1d
.end packed-switch
.end method
.method protected onFinishInflate()V
.registers 4
invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_a
:goto_9
return-void
:cond_a
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300f3
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->mRootView:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->mRootView:Landroid/view/View;
const v1, 0x7f0a0569
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->mRootView:Landroid/view/View;
const v1, 0x7f0a056a
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupItem;->mRootView:Landroid/view/View;
const v1, 0x7f0a056b
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_9
.end method
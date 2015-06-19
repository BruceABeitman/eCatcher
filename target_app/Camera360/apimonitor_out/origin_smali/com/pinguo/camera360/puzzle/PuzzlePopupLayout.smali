.class public Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;
.super Ljava/lang/Object;
.source "PuzzlePopupLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;,
        Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->initLayout()V

    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public initLayout()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mRootView:Landroid/view/View;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0569

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mRootView:Landroid/view/View;

    const v1, 0x7f0a056a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mRootView:Landroid/view/View;

    const v1, 0x7f0a056b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_34
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    goto :goto_4

    :pswitch_d
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;

    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->REPLACE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;->onItemClick(Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;)V

    goto :goto_4

    :pswitch_15
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;

    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->MIRROR:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;->onItemClick(Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;)V

    goto :goto_4

    :pswitch_1d
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;

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

.method public setOnItemClickListener(Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->mListener:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;

    return-void
.end method

.class public Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
.super Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;
.source "EffectHoriScrollItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter",
        "<",
        "Lcom/pinguo/camera360/effect/model/entity/Effect;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;

.field private mSelectedEffect:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->mSelectedEffect:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;)Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->mListener:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_9

    const/4 v1, 0x0

    :cond_8
    return v1

    :cond_9
    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->mSelectedEffect:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public initView(Landroid/content/Context;I)Landroid/view/View;
    .registers 7

    const v2, 0x7f0300ae

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/view/TryEffectItemView;

    invoke-virtual {p0, p2}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->mSelectedEffect:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->setSelected(Z)V

    :cond_1e
    iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->setEffectName(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->setEffectIcon(Ljava/lang/String;)V

    new-instance v2, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$1;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public setOnEffectItemClickListener(Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->mListener:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;

    return-void
.end method

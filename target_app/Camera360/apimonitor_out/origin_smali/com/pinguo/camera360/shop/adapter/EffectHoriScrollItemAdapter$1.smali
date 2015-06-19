.class Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$1;
.super Ljava/lang/Object;
.source "EffectHoriScrollItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->initView(Landroid/content/Context;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    iput p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    #getter for: Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->mListener:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->access$0(Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;)Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    #getter for: Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->mListener:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->access$0(Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;)Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$1;->val$position:I

    invoke-interface {v0, v1, p1}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;->onEffectItemClick(ILandroid/view/View;)V

    :cond_13
    return-void
.end method

.class Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;
.super Ljava/lang/Object;
.source "ClothesHoriScrollItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->initView(Landroid/content/Context;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;

    iput p2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;

    #getter for: Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mListener:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;

    #getter for: Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mListener:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;->val$position:I

    invoke-interface {v0, v1, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;->onClothesItemClick(ILandroid/view/View;)V

    :cond_13
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;->val$position:I

    #setter for: Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mSelectedIndex:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->access$1(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;I)V

    return-void
.end method

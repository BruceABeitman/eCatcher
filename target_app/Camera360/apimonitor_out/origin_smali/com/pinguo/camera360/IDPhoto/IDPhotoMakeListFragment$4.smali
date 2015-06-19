.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;
.super Ljava/lang/Object;
.source "IDPhotoMakeListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->adapterItemDeletedEvent(ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

.field private final synthetic val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;I)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iput p3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const v3, 0x7f080356

    const/16 v8, 0x8

    const/4 v7, 0x1

    const v6, 0x7f080359

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v0

    if-le v0, v7, :cond_117

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    sub-int/2addr v1, v2

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddPrice:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$10(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd x num"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget-object v5, v5, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v5, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I
    invoke-static {v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddMoney:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v1, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd"

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget-object v4, v4, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v4, v4, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I
    invoke-static {v5}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_92
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$17(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentTotalMoneyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$18(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v1, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd"

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I
    invoke-static {v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartNum:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$19(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    const v2, 0x7f080354

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd"

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I
    invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$20(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$position:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->remove(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mDeletedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$21(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v0

    if-ne v0, v7, :cond_116

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddLay:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$22(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_116
    return-void

    :cond_117
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v1, v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->price:I

    if-le v0, v1, :cond_18f

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->price:I

    sub-int/2addr v1, v2

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V

    :goto_135
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartFirstPrice:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$15(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd x num"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->val$item:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget-object v5, v5, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v5, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->price:I

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " x 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartFirstMoney:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$16(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v1, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd"

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I
    invoke-static {v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_92

    :cond_18f
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartShareTipsLay:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$14(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_135
.end method

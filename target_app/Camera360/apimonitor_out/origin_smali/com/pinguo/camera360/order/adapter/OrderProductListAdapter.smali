.class public Lcom/pinguo/camera360/order/adapter/OrderProductListAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "OrderProductListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseArrayAdapter",
        "<",
        "Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/order/adapter/OrderProductListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    if-nez p2, :cond_c

    iget-object v4, p0, Lcom/pinguo/camera360/order/adapter/OrderProductListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f030097

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_c
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/adapter/OrderProductListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    const v4, 0x7f0a039b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a039d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0a039e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    invoke-direct {v4, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;-><init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;)V

    invoke-virtual {v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->itemCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

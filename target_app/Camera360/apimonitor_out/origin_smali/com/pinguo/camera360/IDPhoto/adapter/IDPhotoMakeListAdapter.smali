.class public Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "IDPhotoMakeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;,
        Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;,
        Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseArrayAdapter",
        "<",
        "Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindView(Landroid/view/View;I)V
    .registers 12

    invoke-virtual {p0, p2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;

    invoke-interface {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->getMakeNum()I

    move-result v0

    iget-object v3, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->makeNum:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->getMakeNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->getFrag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->format:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->price:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f08039e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->getPrice()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->btnMinus:Landroid/widget/ImageView;

    new-instance v4, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;

    invoke-direct {v4, p0, v2, p2, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;ILcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->btnAdd:Landroid/widget/ImageView;

    new-instance v4, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;

    invoke-direct {v4, p0, v2, v1, p2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_18

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f030085

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_14
    invoke-direct {p0, v1, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->bindView(Landroid/view/View;I)V

    return-object v1

    :cond_18
    move-object v1, p2

    goto :goto_14
.end method

.method public setAdapterDataChangeListener(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;

    return-void
.end method

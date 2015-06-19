.class Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "PicturePreviewView.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/view/PicturePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubEffectGridAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;

.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mSelected:I

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mList:Ljava/util/List;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectEffectIndex()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    if-eqz p2, :cond_6

    sget-boolean v3, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB_MR2:Z

    if-nez v3, :cond_10

    :cond_6
    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030075

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_10
    const v3, 0x7f0a0292

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v3, 0x7f0a0295

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setOrientation(IZ)V
    .registers 3

    return-void
.end method

.method public setSelectEffect(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->mSelected:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$SubEffectGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

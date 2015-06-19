.class public Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "PersonInfoSnsBindGVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseArrayAdapter",
        "<",
        "Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mTextInVisible:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->mTextInVisible:I

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x0

    if-nez p2, :cond_11

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300da

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_11
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    if-nez v1, :cond_1a

    :goto_19
    return-object p2

    :cond_1a
    const v3, 0x7f0a04e9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v3, v1, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x7f0a04ea

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "title = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->getIsBind()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19

    :cond_5a
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget v3, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->mTextInVisible:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method

.method public setTextViewInVisible(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->mTextInVisible:I

    return-void
.end method

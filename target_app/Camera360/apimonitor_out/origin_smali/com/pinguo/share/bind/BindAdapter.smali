.class public Lcom/pinguo/share/bind/BindAdapter;
.super Landroid/widget/BaseAdapter;
.source "BindAdapter.java"


# static fields
.field public static final BIND_ACTIVITY:I = 0x1

.field public static final SHARE_ACTIVITY:I = 0x2


# instance fields
.field private mArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;FLandroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View$OnClickListener;",
            "F",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/pinguo/share/bind/BindAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/share/bind/BindAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/pinguo/share/bind/BindAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p6, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    iget-object v0, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/pinguo/share/bind/BindAdapter;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/share/bind/BindAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 v8, 0x0

    if-nez p2, :cond_11

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_11
    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f0a007b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a007a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v5, 0x7f0a007d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a007f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const-string/jumbo v6, "Tencent"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v5, v5, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->isActivate()Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a007e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v5, v5, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z

    move-result v5

    if-eqz v5, :cond_f0

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->getOnBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_ef
    return-object p2

    :cond_f0
    iget-object v5, p0, Lcom/pinguo/share/bind/BindAdapter;->mArray:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->getOffBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v5, 0x7f08007c

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ef
.end method

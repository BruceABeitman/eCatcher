.class public Lcom/pinguo/share/theme/ShareThemeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareThemeAdapter.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/theme/ThemeXMLStruct;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mOnClick:Landroid/view/View$OnClickListener;

.field private mSelectedId:I

.field public mThemeLoadingBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILandroid/view/View$OnClickListener;Landroid/graphics/Bitmap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/theme/ThemeXMLStruct;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mSelectedId:I

    iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->list:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->inflater:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mHeight:I

    iput-object p4, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mThemeLoadingBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedId()I
    .registers 2

    iget v0, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mSelectedId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const v8, 0x7f0a00bb

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->list:Ljava/util/List;

    if-nez v6, :cond_9

    :cond_8
    :goto_8
    return-object v5

    :cond_9
    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/share/theme/ThemeXMLStruct;

    if-eqz v2, :cond_8

    if-nez p2, :cond_1e

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030026

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1e
    const v5, 0x7f0a00bc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setImageView(Landroid/widget/ImageView;)V

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3f

    iget v5, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mHeight:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3f
    const v5, 0x7f0a00bd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTextView(Landroid/widget/TextView;)V

    const v5, 0x7f0a00be

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/theme/ThemeButton;

    invoke-virtual {v2, v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setThemeButton(Lcom/pinguo/share/theme/ThemeButton;)V

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getLocalInfo()Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getNeedUpdate()Z

    move-result v5

    if-nez v5, :cond_91

    :cond_8e
    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDownloaded()V

    :cond_91
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mThemeLoadingBitmap:Landroid/graphics/Bitmap;

    :cond_bb
    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v5, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mSelectedId:I

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I

    move-result v6

    if-ne v5, v6, :cond_109

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f02004e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_e8
    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getThemeButton()Lcom/pinguo/share/theme/ThemeButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/pinguo/share/theme/ThemeButton;->setSelect(Lcom/pinguo/share/theme/ThemeXMLStruct;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/pinguo/share/theme/ThemeButton;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/pinguo/share/theme/ThemeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v5, p2

    goto/16 :goto_8

    :cond_109
    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f02001d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_e8
.end method

.method public setSelectedId(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/share/theme/ShareThemeAdapter;->mSelectedId:I

    return-void
.end method

.class public Lcom/facebook/katana/UserInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/UserInfoAdapter$Item;
    }
.end annotation


# static fields
.field static affiliationStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static relationship_i18n_decoder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/UserInfoAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mLimitedInfo:Z

.field private final mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private final mShowProfilePhoto:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/UserInfoAdapter;->affiliationStringMap:Ljava/util/Map;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->affiliationStringMap:Ljava/util/Map;

    const-string v1, "college"

    const/high16 v2, 0x7f08

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->affiliationStringMap:Ljava/util/Map;

    const-string v1, "high school"

    const v2, 0x7f080001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->affiliationStringMap:Ljava/util/Map;

    const-string v1, "regional"

    const v2, 0x7f080003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->affiliationStringMap:Ljava/util/Map;

    const-string v1, "test"

    const v2, 0x7f080004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->affiliationStringMap:Ljava/util/Map;

    const-string v1, "work"

    const v2, 0x7f080002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/UserInfoAdapter;->relationship_i18n_decoder:Ljava/util/Map;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->relationship_i18n_decoder:Ljava/util/Map;

    const-string v1, "Single"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0800f8

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->relationship_i18n_decoder:Ljava/util/Map;

    const-string v1, "In a Relationship"

    new-array v2, v5, [I

    fill-array-data v2, :array_a2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->relationship_i18n_decoder:Ljava/util/Map;

    const-string v1, "Married"

    new-array v2, v5, [I

    fill-array-data v2, :array_aa

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->relationship_i18n_decoder:Ljava/util/Map;

    const-string v1, "Engaged"

    new-array v2, v5, [I

    fill-array-data v2, :array_b2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->relationship_i18n_decoder:Ljava/util/Map;

    const-string v1, "It\'s Complicated"

    new-array v2, v5, [I

    fill-array-data v2, :array_ba

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->relationship_i18n_decoder:Ljava/util/Map;

    const-string v1, "In an Open Relationship"

    new-array v2, v5, [I

    fill-array-data v2, :array_c2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_a2
    .array-data 0x4
        0xf0t 0x0t 0x8t 0x7ft
        0xf5t 0x0t 0x8t 0x7ft
    .end array-data

    :array_aa
    .array-data 0x4
        0xf6t 0x0t 0x8t 0x7ft
        0xf7t 0x0t 0x8t 0x7ft
    .end array-data

    :array_b2
    .array-data 0x4
        0xeet 0x0t 0x8t 0x7ft
        0xeft 0x0t 0x8t 0x7ft
    .end array-data

    :array_ba
    .array-data 0x4
        0xf1t 0x0t 0x8t 0x7ft
        0xf2t 0x0t 0x8t 0x7ft
    .end array-data

    :array_c2
    .array-data 0x4
        0xf3t 0x0t 0x8t 0x7ft
        0xf4t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;ZZ)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/katana/UserInfoAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    iput-boolean p3, p0, Lcom/facebook/katana/UserInfoAdapter;->mShowProfilePhoto:Z

    iput-boolean p4, p0, Lcom/facebook/katana/UserInfoAdapter;->mLimitedInfo:Z

    return-void
.end method

.method protected static formatRelationshipStatusString(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookUserFull;)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getRelationshipStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    sget-object v3, Lcom/facebook/katana/UserInfoAdapter;->relationship_i18n_decoder:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_14

    move-object v3, v0

    :goto_13
    return-object v3

    :cond_14
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getSignificantOther()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v1

    if-nez v1, :cond_21

    aget v3, v2, v6

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_21
    aget v3, v2, v4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_30
    const/4 v3, 0x0

    goto :goto_13
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemByPosition(I)Lcom/facebook/katana/UserInfoAdapter$Item;
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/UserInfoAdapter$Item;

    return-object p0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    iget-object v1, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/UserInfoAdapter$Item;

    #getter for: Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I
    invoke-static {v0}, Lcom/facebook/katana/UserInfoAdapter$Item;->access$0(Lcom/facebook/katana/UserInfoAdapter$Item;)I

    move-result v1

    packed-switch v1, :pswitch_data_18

    :pswitch_f
    const/4 v1, 0x3

    :goto_10
    return v1

    :pswitch_11
    const/4 v1, 0x0

    goto :goto_10

    :pswitch_13
    const/4 v1, 0x1

    goto :goto_10

    :pswitch_15
    const/4 v1, 0x2

    goto :goto_10

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_13
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    if-nez p2, :cond_3e

    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    #getter for: Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I
    invoke-static {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->access$0(Lcom/facebook/katana/UserInfoAdapter$Item;)I

    move-result v7

    packed-switch v7, :pswitch_data_1bc

    :pswitch_1c
    const v7, 0x7f03001c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_24
    #getter for: Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I
    invoke-static {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->access$0(Lcom/facebook/katana/UserInfoAdapter$Item;)I

    move-result v7

    packed-switch v7, :pswitch_data_1ca

    :cond_2b
    :goto_2b
    return-object v3

    :pswitch_2c
    const v7, 0x7f030038

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_24

    :pswitch_35
    const v7, 0x7f03001b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_24

    :cond_3e
    move-object v3, p2

    goto :goto_24

    :pswitch_40
    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a5

    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v8, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_8b

    const v7, 0x7f0b0092

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_60
    const v7, 0x7f0b0093

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0b0094

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_bf

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    :cond_8b
    const v7, 0x7f0b0092

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_60

    :cond_a5
    const v7, 0x7f0b0092

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_60

    :cond_bf
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2b

    :pswitch_c6
    const v7, 0x7f0b0045

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0b0046

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v7, 0x7f0b0044

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0200d7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2b

    :pswitch_101
    const v7, 0x7f0b0045

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0b0046

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v7, 0x7f0b0044

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0200d6

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2b

    :pswitch_13c
    const v7, 0x7f0b0045

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0b0044

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2b

    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v8, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    const v7, 0x7f0b0046

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_188

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_17c
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2b

    :cond_188
    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17c

    :pswitch_199
    const v7, 0x7f0b0044

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0b0045

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    nop

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_1c
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_40
        :pswitch_199
        :pswitch_101
        :pswitch_c6
        :pswitch_13c
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public setUserInfo(Lcom/facebook/katana/service/api/FacebookUserFull;Z)V
    .registers 17

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mShowProfilePhoto:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getBlurb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getLargePic()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-boolean v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mLimitedInfo:Z

    if-eqz v0, :cond_55

    if-nez p2, :cond_55

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_32

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3b

    :cond_32
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_3b
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800e3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v9, v3}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getCellPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getOtherPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getOtherPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getContactEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getContactEmail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b7
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getAffiliations()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_117

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_117

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2a5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f9

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_117

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_117
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getBirthday()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getBirthday()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_135
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/katana/UserInfoAdapter;->formatRelationshipStatusString(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookUserFull;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_157

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getSignificantOther()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v0

    if-nez v0, :cond_2fc

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0800ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_157
    :goto_157
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getCurrentLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getCurrentLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_175
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getHometownLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_193

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getHometownLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_193
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getReligion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b1

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800f9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getReligion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b1
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getPoliticalViews()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1cf

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800eb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getPoliticalViews()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1cf
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getActivities()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ed

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getActivities()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1ed
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getInterests()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20b

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getInterests()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20b
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getTv()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_229

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800fc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getTv()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_229
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getMovies()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_247

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getMovies()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_247
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getBooks()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_265

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getBooks()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_265
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getQuotes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_283

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800ec

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getQuotes()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_283
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getAboutMe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a1

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getAboutMe()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a1
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2a5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;

    iget-object v1, v7, Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;->mType:Ljava/lang/String;

    const-string v2, "work"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c7

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2c0

    const-string v1, ", "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c0
    iget-object v1, v7, Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;->mAffiliationName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d5

    :cond_2c7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2d2

    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d2
    sget-object v1, Lcom/facebook/katana/UserInfoAdapter;->affiliationStringMap:Ljava/util/Map;

    iget-object v2, v7, Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;->mType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_2f9

    iget-object v1, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2e8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;->mAffiliationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d5

    :cond_2f9
    iget-object v12, v7, Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;->mType:Ljava/lang/String;

    goto :goto_2e8

    :cond_2fc
    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->mItems:Ljava/util/List;

    new-instance v0, Lcom/facebook/katana/UserInfoAdapter$Item;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800ed

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getSignificantOther()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getSignificantOther()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/UserInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_157
.end method

.method public updatePhoto()V
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method

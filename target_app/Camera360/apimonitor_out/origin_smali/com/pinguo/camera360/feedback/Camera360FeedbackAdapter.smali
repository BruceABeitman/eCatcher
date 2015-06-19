.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "Camera360FeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "test"

.field private static final TYPE_RECEIVE:I = 0x1

.field private static final TYPE_SEND:I


# instance fields
.field private dateArraryPosition:[I

.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAvatar:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackData;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v10, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dateArraryPosition:[I

    const/high16 v9, 0x3f80

    iput v9, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->scale:F

    iput-object v10, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserAvatar:Ljava/lang/String;

    iput-object v10, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iput v9, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->scale:F

    iput-object p2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    if-eqz p2, :cond_3a

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;

    invoke-direct {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v0, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    :goto_2c
    if-lt v2, v6, :cond_3d

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->size()I

    move-result v9

    new-array v9, v9, [I

    invoke-virtual {v3, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->toArray([I)[I

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dateArraryPosition:[I

    :cond_3a
    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mContext:Landroid/content/Context;

    return-void

    :cond_3d
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    invoke-virtual {v9}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getTime()J

    move-result-wide v7

    sub-long v9, v7, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x1b7740

    cmp-long v9, v9, v11

    if-lez v9, :cond_65

    sub-long v9, v7, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x493e0

    cmp-long v9, v9, v11

    if-lez v9, :cond_65

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->add(I)V

    move-wide v0, v7

    :cond_65
    move-wide v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c
.end method

.method private dip2px(F)I
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->scale:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private displayDate(I)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dateArraryPosition:[I

    if-nez v3, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    iget-object v4, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dateArraryPosition:[I

    array-length v5, v4

    move v3, v2

    :goto_b
    if-lt v3, v5, :cond_f

    move v1, v2

    goto :goto_6

    :cond_f
    aget v0, v4, v3

    if-eq v0, p1, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method


# virtual methods
.method public clearUserInfo()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserAvatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserName:Ljava/lang/String;

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    invoke-virtual {v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "me"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    const/4 v11, 0x1

    invoke-virtual {v6}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "me"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v11, 0x0

    :cond_1b
    if-nez p2, :cond_fa

    packed-switch v11, :pswitch_data_16e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030101

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_30
    new-instance v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;

    invoke-direct {v5}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;-><init>()V

    const v12, 0x7f0a05b5

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;->dateText:Landroid/widget/TextView;

    const v12, 0x7f0a05b4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;->contentText:Landroid/widget/TextView;

    const v12, 0x7f0a05b7

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;->nameText:Landroid/widget/TextView;

    const v12, 0x7f0a05b6

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;->avatarImg:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_6e
    iget-object v4, v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;->dateText:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;->contentText:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;->nameText:Landroid/widget/TextView;

    iget-object v1, v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;->avatarImg:Landroid/widget/ImageView;

    if-eqz v6, :cond_d5

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->displayDate(I)Z

    move-result v12

    if-eqz v12, :cond_102

    invoke-virtual {v6}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getTime()J

    move-result-wide v9

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm"

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v8, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9c
    invoke-virtual {v6}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x1

    if-ne v11, v12, :cond_108

    const v12, 0x7f020084

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 v12, 0x41a0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dip2px(F)I

    move-result v12

    const/high16 v13, 0x40a0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dip2px(F)I

    move-result v13

    const/high16 v14, 0x4120

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dip2px(F)I

    move-result v14

    const/high16 v15, 0x40a0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dip2px(F)I

    move-result v15

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    const v12, 0x7f080220

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    :cond_d5
    :goto_d5
    return-object p2

    :pswitch_d6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030101

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_30

    :pswitch_e8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030102

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_30

    :cond_fa
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;

    goto/16 :goto_6e

    :cond_102
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9c

    :cond_108
    const v12, 0x7f020085

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 v12, 0x4120

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dip2px(F)I

    move-result v12

    const/high16 v13, 0x40a0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dip2px(F)I

    move-result v13

    const/high16 v14, 0x41a0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dip2px(F)I

    move-result v14

    const/high16 v15, 0x40a0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dip2px(F)I

    move-result v15

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserName:Ljava/lang/String;

    if-eqz v12, :cond_166

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_13e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserAvatar:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d5

    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserAvatar:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v14

    invoke-virtual {v12, v13, v1, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_d5

    :cond_166
    const v12, 0x7f080221

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_13e

    nop

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_d6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public setFeedbackDatas(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mDatas:Ljava/util/ArrayList;

    if-eqz p1, :cond_20

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;

    invoke-direct {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v0, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    :goto_12
    if-lt v2, v6, :cond_21

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->size()I

    move-result v9

    new-array v9, v9, [I

    invoke-virtual {v3, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->toArray([I)[I

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->dateArraryPosition:[I

    :cond_20
    return-void

    :cond_21
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    invoke-virtual {v9}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getTime()J

    move-result-wide v7

    sub-long v9, v7, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x1b7740

    cmp-long v9, v9, v11

    if-lez v9, :cond_49

    sub-long v9, v7, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x493e0

    cmp-long v9, v9, v11

    if-lez v9, :cond_49

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->add(I)V

    move-wide v0, v7

    :cond_49
    move-wide v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserAvatar:Ljava/lang/String;

    iput-object p2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->mUserName:Ljava/lang/String;

    return-void
.end method

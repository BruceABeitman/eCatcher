.class public Lcom/pinguo/share/ui/ShareListView;
.super Landroid/app/Dialog;
.source "ShareListView.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;,
        Lcom/pinguo/share/ui/ShareListView$ShareClickListener;
    }
.end annotation


# static fields
.field public static final ITEM_BEETALK_BUZZ:I = 0x5

.field public static final ITEM_BEETALK_CHAT:I = 0x4

.field private static final ITEM_CANCEL:I = 0x9

.field public static final ITEM_LOCAL_INSTAGRAM:I = 0x3

.field public static final ITEM_LOCAL_QQ:I = 0x0

.field public static final ITEM_LOCAL_SMS:I = 0x6

.field public static final ITEM_LOCAL_WX:I = 0x1

.field public static final ITEM_LOCAL_WX_FRIENDS:I = 0x2

.field public static final ITEM_OTHER:I = 0x8

.field public static final ITEM_WEBSITE:I = 0x7


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mIsItemShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mItemCancelBgRes:I

.field private mItemShowBgRes:[I

.field private mOnClickListener:Lcom/pinguo/share/ui/ShareListView$ShareClickListener;

.field private mOrientation:I

.field private mRotateLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 11

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v1, 0x7f090042

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    new-array v1, v8, [I

    fill-array-data v1, :array_d8

    iput-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mItemShowBgRes:[I

    const v1, 0x7f0200b8

    iput v1, p0, Lcom/pinguo/share/ui/ShareListView;->mItemCancelBgRes:I

    iput v6, p0, Lcom/pinguo/share/ui/ShareListView;->mOrientation:I

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const v3, 0x7f080040

    invoke-direct {v2, v6, v3, v6}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const v3, 0x7f080041

    invoke-direct {v2, v7, v3, v6}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const v3, 0x7f080042

    invoke-direct {v2, v4, v3, v6}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const v3, 0x7f080043

    invoke-direct {v2, v5, v3, v6}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/4 v2, 0x4

    new-instance v3, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const/4 v4, 0x4

    const v5, 0x7f08003e

    invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-instance v3, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const/4 v4, 0x5

    const v5, 0x7f08003f

    invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-instance v3, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const/4 v4, 0x6

    const v5, 0x7f080044

    invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/4 v2, 0x7

    new-instance v3, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const/4 v4, 0x7

    const v5, 0x7f080045

    invoke-direct {v3, v4, v5, v7}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const v3, 0x7f080046

    invoke-direct {v2, v8, v3, v7}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    invoke-virtual {v1, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    const/16 v1, 0x9

    const v2, 0x7f080002

    invoke-direct {v0, v1, v2, v7}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;-><init>(IIZ)V

    iget v1, p0, Lcom/pinguo/share/ui/ShareListView;->mItemCancelBgRes:I

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->setBgResId(I)V

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/pinguo/share/ui/ShareListView;->setContentView(I)V

    const v1, 0x7f0a005c

    invoke-virtual {p0, v1}, Lcom/pinguo/share/ui/ShareListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iput-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mRotateLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mRotateLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const v2, 0x7f0a005d

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/pinguo/share/ui/ShareListView;->mOrientation:I

    invoke-virtual {p0, v1, v6}, Lcom/pinguo/share/ui/ShareListView;->setOrientation(IZ)V

    return-void

    :array_d8
    .array-data 0x4
        0xb5t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private refreshUI()V
    .registers 18

    const/4 v8, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/share/ui/ShareListView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_15
    :goto_15
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lcom/pinguo/share/website/WebSiteDefaultControl;->getCurrentShareBitmapList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_e0

    :cond_26
    return-void

    :cond_27
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iget-boolean v14, v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    if-eqz v14, :cond_15

    iget v14, v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->itemId:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_a2

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f03000c

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v14, 0x7f0a0059

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v14, 0x7f0a005a

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x7f0a005b

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6b
    invoke-virtual {v2}, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->hasBgResId()Z

    move-result v14

    if-eqz v14, :cond_ce

    iget v14, v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->bgResId:I

    invoke-virtual {v10, v14}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_76
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b005c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-direct {v3, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v14, v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->itemId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pinguo/share/ui/ShareListView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_15

    :cond_a2
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v14, 0x11

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    const v14, -0x7497f0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x4180

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setClickable(Z)V

    const/4 v14, 0x5

    invoke-static {v14}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v4

    invoke-virtual {v9, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v14, v2, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->nameResId:I

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(I)V

    move-object v10, v9

    goto :goto_6b

    :cond_ce
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pinguo/share/ui/ShareListView;->mItemShowBgRes:[I

    aget v14, v14, v8

    invoke-virtual {v10, v14}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pinguo/share/ui/ShareListView;->mItemShowBgRes:[I

    array-length v14, v14

    rem-int/2addr v8, v14

    goto :goto_76

    :cond_e0
    const/4 v1, 0x0

    :goto_e1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_26

    const/4 v13, 0x3

    if-eq v1, v13, :cond_26

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1
.end method


# virtual methods
.method public hide()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public initShowItems(Z)V
    .registers 14

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/share/ShareManager;->validateQQInstall(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/share/ShareManager;->validateWeChatInstall(Landroid/content/Context;)Z

    move-result v3

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v2, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v3, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v3, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    if-eqz p1, :cond_6c

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v7, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v8, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v7, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v7, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v7, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    :goto_6b
    return-void

    :cond_6c
    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v8, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v7, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.instagram.android"

    invoke-static {v5, v6}, Lcom/pinguo/share/ShareManager;->validateLocalAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getUserCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "cx"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "countryCode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e0

    const-string/jumbo v5, "th"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    const/4 v4, 0x1

    :goto_bf
    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v1, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v4, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    iget-object v5, p0, Lcom/pinguo/share/ui/ShareListView;->mIsItemShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;

    iput-boolean v4, v5, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    goto :goto_6b

    :cond_de
    const/4 v4, 0x0

    goto :goto_bf

    :cond_e0
    invoke-static {}, Lcom/pinguo/share/ShareManager;->duringReqNationForBeeTalk()Z

    move-result v5

    if-nez v5, :cond_10c

    const-string/jumbo v5, "th"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_103

    const/4 v4, 0x1

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v5

    const-string/jumbo v6, "th"

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setUserCountryCode(Ljava/lang/String;)V

    goto :goto_bf

    :cond_103
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/share/ShareManager;->reqNationForBeeTalk(Landroid/content/Context;)V

    goto :goto_bf

    :cond_10c
    const/4 v4, 0x0

    goto :goto_bf
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_23

    move-result v0

    :goto_b
    if-gez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0x9

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->hide()V

    goto :goto_d

    :cond_16
    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mOnClickListener:Lcom/pinguo/share/ui/ShareListView$ShareClickListener;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareListView;->mOnClickListener:Lcom/pinguo/share/ui/ShareListView$ShareClickListener;

    invoke-interface {v1, v0}, Lcom/pinguo/share/ui/ShareListView$ShareClickListener;->onShareItemClick(I)V

    :cond_1f
    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->hide()V

    goto :goto_d

    :catch_23
    move-exception v1

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f09004a

    invoke-virtual {v3, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_3f
    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareListView;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setOnClickListener(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/ShareListView;->mOnClickListener:Lcom/pinguo/share/ui/ShareListView$ShareClickListener;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [Lcom/pinguo/camera360/lib/ui/Rotatable;

    iget-object v3, p0, Lcom/pinguo/share/ui/ShareListView;->mRotateLayout:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    aput-object v3, v1, v2

    array-length v3, v1

    :goto_9
    if-lt v2, v3, :cond_c

    return-void

    :cond_c
    aget-object v0, v1, v2

    if-eqz v0, :cond_13

    invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/Rotatable;->setOrientation(IZ)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public show()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/share/ui/ShareListView;->refreshUI()V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.class public Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "IDPhotoMakeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;
    }
.end annotation


# static fields
.field public static final ID_MAKE_LAST_LIST:Ljava/lang/String; = "lastList"

.field public static final PREFERENCES_ID_MAKE_DATA:Ljava/lang/String; = "pg_id_make_list"

.field private static final REQUEST_CODE_CURRENT_PRIVILEGE:I = 0x3eb

.field public static final REQUEST_CODE_LOGIN:I = 0x3e8

.field public static final REQUEST_CODE_ORDER_ADDRESS:I = 0x3e9

.field private static final REQUEST_CODE_SHARE_FOR_COUPON:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "IDPhotoMakeListFragment"


# instance fields
.field private mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

.field private mBannerView:Lcom/pinguo/camera360/shop/view/BannerView;

.field private mBottomRightBtn:Landroid/widget/TextView;

.field private mCanRemoveShareBanner:Z

.field private mCartAddLay:Landroid/view/View;

.field private mCartAddMoney:Landroid/widget/TextView;

.field private mCartAddPrice:Landroid/widget/TextView;

.field private mCartAmt:Landroid/widget/TextView;

.field private mCartFirstMoney:Landroid/widget/TextView;

.field private mCartFirstPrice:Landroid/widget/TextView;

.field private mCartNum:Landroid/widget/TextView;

.field private mCartShareTipsLay:Landroid/view/View;

.field private mCouponVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMoney:I

.field private mCurrentNum:I

.field private mCurrentTotalMoneyTextView:Landroid/widget/TextView;

.field public mDeletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExporter:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;

.field private mFooter:Landroid/view/View;

.field private mHasExported:Z

.field private mHasLogin:Z

.field private mIsLogin:Z

.field private mList:Landroid/widget/ListView;

.field private mNetworkRefreshAnim:Landroid/view/animation/Animation;

.field private mOrgPath:Ljava/lang/String;

.field private mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

.field private mProgressLay:Landroid/view/View;

.field private mReSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryBtn:Landroid/view/View;

.field private mRetryLay:Landroid/view/View;

.field private mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mShareFooter:Landroid/view/View;

.field private mShopBannerModel:Lcom/pinguo/camera360/adv/AdvertisementCache;

.field private mTitle:Lcom/pinguo/camera360/ui/TitleView;

.field private mTotalFooter:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasExported:Z

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mIsLogin:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCanRemoveShareBanner:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasLogin:Z

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasExported:Z

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasExported:Z

    return v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddMoney:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartShareTipsLay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartFirstPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartFirstMoney:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    return-void
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentTotalMoneyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasLogin:Z

    return v0
.end method

.method static synthetic access$20(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddLay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doIntentResult()V

    return-void
.end method

.method static synthetic access$24(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-object v0
.end method

.method static synthetic access$25(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryLay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$27(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressLay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$28(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreshPriceData(I)V

    return-void
.end method

.method static synthetic access$29(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreashBannerData()V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->gotoOrderActivity()V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->adapterItemMinusEvent(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->adapterItemAddEvent(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;ILandroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->adapterItemDeletedEvent(ILandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    return v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    return-void
.end method

.method private adapterItemAddEvent(I)V
    .registers 9

    const v6, 0x7f080359

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentTotalMoneyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd"

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartNum:Landroid/widget/TextView;

    const v2, 0x7f080354

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd"

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddPrice:Landroid/widget/TextView;

    const v2, 0x7f080356

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd x num"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v5, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddMoney:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd"

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v4, v4, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    iget v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddLay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private adapterItemDeletedEvent(ILandroid/widget/TextView;)V
    .registers 13

    const v9, 0x7f080359

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v3, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    if-le v3, v8, :cond_118

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iget-object v4, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v4, v4, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddPrice:Landroid/widget/TextView;

    const v4, 0x7f080356

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "dd x num"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v7, v7, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    invoke-virtual {p0, v7}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v7, v7, -0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddMoney:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "dd"

    iget-object v6, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v6, v6, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    iget v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v7, v7, -0x2

    mul-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentTotalMoneyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "dd"

    iget v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartNum:Landroid/widget/TextView;

    const v4, 0x7f080354

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "dd"

    iget v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v3, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->remove(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mDeletedList:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v4, v4, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    if-ne v3, v8, :cond_c4

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddLay:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c4
    :goto_c4
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08035b

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "dd"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v6, v6, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nameTag:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v6, v6, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, -0x2

    const v4, 0x7f0802c6

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$3;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$3;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v3, -0x1

    const v4, 0x7f0802c5

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;

    invoke-direct {v5, p0, v1, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$4;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;I)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_118
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04002c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c4
.end method

.method private adapterItemMinusEvent(I)V
    .registers 9

    const v6, 0x7f080359

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentTotalMoneyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd"

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartNum:Landroid/widget/TextView;

    const v2, 0x7f080354

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd"

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddPrice:Landroid/widget/TextView;

    const v2, 0x7f080356

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd x num"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v5, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddMoney:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd"

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v4, v4, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    iget v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ad

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddLay:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_ad
    return-void
.end method

.method private checkLogin()Z
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v1

    return v1
.end method

.method private createOrderFromSelectedPassport()V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;

    move-result-object v2

    iget-object v3, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;

    iget-object v3, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;

    const/4 v0, 0x0

    :goto_19
    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_28

    iget-object v3, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iput v4, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mTotalPrice:I

    return-void

    :cond_28
    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->getMakeNum()I

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->getMakeNum()I

    move-result v4

    iput v4, v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->itemCount:I

    iget-object v3, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;

    iget-object v4, v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method private doExporterListener()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mExporter:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->setOnExportListener(Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;)V

    return-void
.end method

.method private doIntentResult()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "deleted_bundle_key"

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mDeletedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private doRequest(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressLay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    :cond_11
    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doVerifyRequest()V

    return-void
.end method

.method private doTitleClickListener()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$6;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$6;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    return-void
.end method

.method private doVerifyRequest()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCouponVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCouponVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_a
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->verifyShareCoupon()Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCouponVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCouponVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private getExportPath()Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mOrgPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getTakenTimeFromPath(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxDir(J)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v3

    :goto_e
    return-object v3

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_e
.end method

.method private gotoOrderActivity()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->createOrderFromSelectedPassport()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/pinguo/camera360/order/OrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8
.end method

.method private initAnimation()V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private initData()V
    .registers 8

    const/4 v6, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mDeletedList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    new-instance v3, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$2;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->setAdapterDataChangeListener(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBannerView:Lcom/pinguo/camera360/shop/view/BannerView;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mFooter:Landroid/view/View;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mFooter:Landroid/view/View;

    const v3, 0x7f0a0321

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentTotalMoneyTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCanRemoveShareBanner:Z

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_44
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mFooter:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_4b
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_84

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->reLoadCurrentListItemNum()V

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    if-nez v2, :cond_ba

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/order/model/Transaction;->getShareCoupon()Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v2

    if-eqz v2, :cond_b6

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreashBannerData()V

    :goto_83
    return-void

    :cond_84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;-><init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;)V

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->getMakeNum()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    const-string/jumbo v3, "IDPhotoMakeListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "price: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->price:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_58

    :cond_b6
    invoke-direct {p0, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doRequest(Z)V

    goto :goto_83

    :cond_ba
    invoke-direct {p0, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doRequest(Z)V

    goto :goto_83
.end method

.method private initUI(Landroid/view/View;)V
    .registers 12

    const v9, 0x7f020293

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v5, 0x7f0a01b0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;

    const v6, 0x7f0801bc

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doTitleClickListener()V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->initAnimation()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f03003b

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/shop/view/BannerView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBannerView:Lcom/pinguo/camera360/shop/view/BannerView;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBannerView:Lcom/pinguo/camera360/shop/view/BannerView;

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/shop/view/BannerView;->setIndicatorVisibility(Z)V

    new-instance v4, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;

    const v5, 0x4102147b

    invoke-direct {v4, v5}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;-><init>(F)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBannerView:Lcom/pinguo/camera360/shop/view/BannerView;

    new-instance v6, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v5, 0x7f0a01b1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;

    const v5, 0x7f0a01b4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressLay:Landroid/view/View;

    const v5, 0x7f0a01b3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryLay:Landroid/view/View;

    const v5, 0x7f0a004d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryBtn:Landroid/view/View;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryBtn:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryLay:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f030086

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mFooter:Landroid/view/View;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f030087

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f030088

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;

    const v6, 0x7f0a0322

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBannerView:Lcom/pinguo/camera360/shop/view/BannerView;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;

    const v6, 0x7f0a0323

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mFooter:Landroid/view/View;

    const v6, 0x7f0a0320

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartNum:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    const v6, 0x7f0a0326

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartFirstPrice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    const v6, 0x7f0a0327

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartFirstMoney:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    const v6, 0x7f0a0328

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddLay:Landroid/view/View;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    const v6, 0x7f0a032a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddPrice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    const v6, 0x7f0a032b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddMoney:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    const v6, 0x7f0a032c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartShareTipsLay:Landroid/view/View;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mTotalFooter:Landroid/view/View;

    const v6, 0x7f0a032e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAmt:Landroid/widget/TextView;

    const v5, 0x7f0a01b2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBottomRightBtn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBottomRightBtn:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShopBannerModel:Lcom/pinguo/camera360/adv/AdvertisementCache;

    invoke-virtual {v5}, Lcom/pinguo/camera360/adv/AdvertisementCache;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_188

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShopBannerModel:Lcom/pinguo/camera360/adv/AdvertisementCache;

    const-string/jumbo v6, "41fc0e30803144cec27dd0600075672b"

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/adv/AdvertisementCache;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v5, "IDPhotoMakeListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "is available "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_17b

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->addAll(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_164
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_170

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBannerView:Lcom/pinguo/camera360/shop/view/BannerView;

    invoke-virtual {v5, v4}, Lcom/pinguo/camera360/shop/view/BannerView;->setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V

    :goto_16f
    return-void

    :cond_170
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    iput v9, v5, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_164

    :cond_17b
    const-string/jumbo v5, "IDPhotoMakeListFragment"

    const-string/jumbo v6, "list size is 0 "

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCanRemoveShareBanner:Z

    goto :goto_16f

    :cond_188
    const-string/jumbo v5, "IDPhotoMakeListFragment"

    const-string/jumbo v6, "is unavailable "

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_16f
.end method

.method private reLoadCurrentListItemNum()V
    .registers 12

    const/4 v10, 0x0

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "pg_id_make_list"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "lastList"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    if-eqz v8, :cond_2c

    iput v10, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iput v10, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    :try_start_1e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v8}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2a
    if-lt v2, v0, :cond_2d

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v8, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v9, v9, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5d

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mReSelectedList:Ljava/util/List;

    iget-object v9, v3, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v9, v9, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    iget-object v8, v3, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v8, v8, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    if-lt v6, v8, :cond_5d

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->setMakeNum(I)I

    :cond_5d
    iget v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    invoke-virtual {v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->getMakeNum()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_66} :catch_69

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :catch_69
    move-exception v1

    const-string/jumbo v8, "IDPhotoMakeListFragment"

    const-string/jumbo v9, "----------> json error"

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2c
.end method

.method private refreashBannerData()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getCouponType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    const-string/jumbo v0, "IDPhotoMakeListFragment"

    const-string/jumbo v1, "no used "

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartShareTipsLay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreshPriceData(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getCouponType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getShareCoupon()Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getShareCoupon()Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v0

    iget v0, v0, Lcom/pinguo/camera360/order/model/Coupon$Info;->amount:I

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreshPriceData(I)V

    goto :goto_1f

    :cond_43
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getCouponType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    iget v0, v0, Lcom/pinguo/camera360/order/model/Coupon$Info;->amount:I

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreshPriceData(I)V

    goto :goto_1f
.end method

.method private refreshPriceData(I)V
    .registers 9

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressLay:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_11
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1a

    :goto_19
    return-void

    :cond_1a
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v1, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->price:I

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget v0, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    if-lez p1, :cond_77

    const-string/jumbo v2, "IDPhotoMakeListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "coupon: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    if-lez v2, :cond_7b

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAmt:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080358

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "dd"

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartShareTipsLay:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_77
    :goto_77
    invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->setPriceDataUI(II)V

    goto :goto_19

    :cond_7b
    iput v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    goto :goto_77
.end method

.method private saveCurrentData()V
    .registers 9

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string/jumbo v6, "pg_id_make_list"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    :try_start_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :goto_12
    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v5}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getCount()I

    move-result v5

    if-lt v1, v5, :cond_2d

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "lastList"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2c
    return-void

    :cond_2d
    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;

    invoke-virtual {v5, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;

    iget-object v5, v2, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v5, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->getMakeNum()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_40} :catch_43

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2c
.end method

.method private setPriceDataUI(II)V
    .registers 10

    const v6, 0x7f080356

    const v5, 0x7f080359

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartNum:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080354

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd"

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartFirstPrice:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd x num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " x 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartFirstMoney:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd"

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddPrice:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd x num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddMoney:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd"

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p2

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c8

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartAddLay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c8
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentTotalMoneyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dd"

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showProgressDialog(Z)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz p1, :cond_21

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    :cond_21
    return-void
.end method


# virtual methods
.method public getDeletedList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mDeletedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFormatString(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-float v1, p1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 15

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/16 v6, 0x3e8

    if-ne p1, v6, :cond_50

    if-ne p2, v7, :cond_50

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->isLogin(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v1}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_39

    new-instance v3, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0802f5

    invoke-direct {v3, v5, v6, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    :goto_38
    return-void

    :cond_39
    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mExporter:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mOrgPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getExportPath()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasExported:Z

    if-eqz v10, :cond_4e

    :goto_47
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->export(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4a
    :goto_4a
    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_38

    :cond_4e
    move v4, v5

    goto :goto_47

    :cond_50
    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_5a

    if-ne p2, v7, :cond_5a

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->gotoOrderActivity()V

    goto :goto_4a

    :cond_5a
    const/16 v4, 0x3eb

    if-eq p1, v4, :cond_64

    const/16 v4, 0x3ea

    if-ne p1, v4, :cond_4a

    if-ne p2, v7, :cond_4a

    :cond_64
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;

    move-result-object v4

    iget-object v4, v4, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v0, v4, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    if-eqz v0, :cond_a6

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    iget v6, v0, Lcom/pinguo/camera360/order/model/Coupon$Info;->amount:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCurrentMoney:I

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/order/model/Transaction;->getShareCoupon()Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v4

    if-eqz v4, :cond_8a

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_8a
    invoke-direct {p0, v5}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doRequest(Z)V

    const-string/jumbo v4, "IDPhotoMakeListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "coupon: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/pinguo/camera360/order/model/Coupon$Info;->amount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_a6
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/order/model/Transaction;->getShareCoupon()Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v4

    if-eqz v4, :cond_b4

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreashBannerData()V

    goto :goto_4a

    :cond_b4
    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCartShareTipsLay:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doRequest(Z)V

    goto :goto_4a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mBottomRightBtn:Landroid/widget/TextView;

    if-ne p1, v4, :cond_66

    const v4, 0x7f0a01b2

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCartLayBtnClick(I)V

    iget-boolean v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mIsLogin:Z

    if-eqz v4, :cond_4d

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCartLayBtnClick(I)V

    invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_39

    new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0802f5

    invoke-direct {v2, v4, v5, v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mExporter:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mOrgPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getExportPath()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasExported:Z

    if-eqz v8, :cond_4b

    :goto_47
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->export(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_38

    :cond_4b
    const/4 v3, 0x1

    goto :goto_47

    :cond_4d
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCartLayBtnClick(I)V

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/pinguo/camera360/login/PGLoginActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_38

    :cond_66
    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryBtn:Landroid/view/View;

    if-ne p1, v4, :cond_82

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressLay:Landroid/view/View;

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryBtn:Landroid/view/View;

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressLay:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7e
    invoke-direct {p0, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doRequest(Z)V

    goto :goto_38

    :cond_82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0323

    if-ne v4, v5, :cond_38

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCartLayBtnClick(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/pinguo/camera360/order/ShareForCouponActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x3ea

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_38
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "IDPhotoMakeListFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterLayShow(I)V

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCartLay()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "reselected_bundle_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mReSelectedList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "selected_bundle_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mSelectedList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_picture_bundle_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mOrgPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "has_exported_bundle_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasExported:Z

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mExporter:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->showProgressDialog(Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doExporterListener()V

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementCache;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/adv/AdvertisementCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShopBannerModel:Lcom/pinguo/camera360/adv/AdvertisementCache;

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->checkLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mIsLogin:Z

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mIsLogin:Z

    if-eqz v0, :cond_7f

    iput-boolean v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasLogin:Z

    :cond_7f
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->initUI(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->initData()V

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    const-string/jumbo v0, "IDPhotoMakeListFragment"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCouponVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mCouponVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_1c
    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->saveCurrentData()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->checkLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mIsLogin:Z

    return-void
.end method

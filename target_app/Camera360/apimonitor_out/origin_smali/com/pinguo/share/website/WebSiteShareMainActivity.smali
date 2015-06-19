.class public Lcom/pinguo/share/website/WebSiteShareMainActivity;
.super Landroid/app/Activity;
.source "WebSiteShareMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/share/bind/BindManager$BindCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;
    }
.end annotation


# static fields
.field private static final CAN_SHARE:I = 0x1

.field private static final CONTENT_WCOUNT:I = 0x8c

.field private static final RATE:I = 0x2

.field private static final REBIND:I = 0x4

.field private static final REFRESH_TOKEN:I = 0x5

.field private static final RESULT_DIALOG:I = 0x3

.field public static final STYLEID_NORMAL:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_CHECK_STATE:I


# instance fields
.field private bindPressed:Z

.field private isBindLayoutSetted:Z

.field private isFetchBroadcastRegisted:Z

.field private isShared:Z

.field private isShowDialog:Z

.field private mActivityContent:Ljava/lang/String;

.field private mActivityTxs:Lcom/pinguo/share/theme/ThemeXMLStruct;

.field private mAtBtn:Landroid/widget/ImageView;

.field private mAtFriendsCountText:Landroid/widget/TextView;

.field private mAtTv:Landroid/widget/TextView;

.field private mAtValue:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

.field private mContentWCountText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

.field private mHandler:Landroid/os/Handler;

.field private mIsLocateStarted:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mLocationBtn:Landroid/widget/ImageView;

.field private mLocationTv:Landroid/widget/TextView;

.field private mMainContent:Landroid/widget/RelativeLayout;

.field private mNeedAddLocation:Z

.field private mNowBindSite:Ljava/lang/String;

.field private mNowOrientation:I

.field private mOtherSiteImg:Landroid/widget/ImageView;

.field private mPaused:Z

.field private mPreView:Landroid/widget/ImageView;

.field private mPreviewCount:Landroid/widget/TextView;

.field public mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

.field private mReversedAddress:Ljava/lang/String;

.field private mShare:Lcom/pinguo/share/website/WebShareModel;

.field private mShareFilePath:Ljava/lang/String;

.field private mShareInfo:Lcom/pinguo/share/ShareInfo;

.field private mSinaAtUids:[Ljava/lang/String;

.field private mSiteAdapter:Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;

.field private mStartBind:Z

.field private mTencentWeiboAtUids:[Ljava/lang/String;

.field private mThemeGroup:Landroid/view/ViewGroup;

.field private mThemeImg:Landroid/widget/ImageView;

.field private mThemeText:Ljava/lang/String;

.field private myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

.field public styleid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->styleid:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSiteAdapter:Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeGroup:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtFriendsCountText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContentWCountText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    iput-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->bindPressed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShared:Z

    iput-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFetchBroadcastRegisted:Z

    iput-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isBindLayoutSetted:Z

    iput-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mIsLocateStarted:Z

    iput-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPaused:Z

    iput-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mStartBind:Z

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeText:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$2;

    invoke-direct {v0, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$2;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

    iput-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNeedAddLocation:Z

    iput-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mReversedAddress:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;

    invoke-direct {v0, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$3;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    invoke-direct {v0, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->bindPressed:Z

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/share/website/WebSiteShareMainActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShared:Z

    return-void
.end method

.method static synthetic access$10(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityTxs:Lcom/pinguo/share/theme/ThemeXMLStruct;

    return-object v0
.end method

.method static synthetic access$12()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->addAdapter()V

    return-void
.end method

.method static synthetic access$14(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->showAtCount()V

    return-void
.end method

.method static synthetic access$15(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->bindPressed:Z

    return v0
.end method

.method static synthetic access$16(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/bind/MyBroadCastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/pinguo/share/website/WebSiteShareMainActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSinaAtUids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShowDialog:Z

    return v0
.end method

.method static synthetic access$20(Lcom/pinguo/share/website/WebSiteShareMainActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mTencentWeiboAtUids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$22(Lcom/pinguo/share/website/WebSiteShareMainActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShowDialog:Z

    return-void
.end method

.method static synthetic access$23(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$24(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v0

    return v0
.end method

.method static synthetic access$25(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pinguo/share/website/WebSiteShareMainActivity;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$27(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPreView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$28(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/CloudShareInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    return-object v0
.end method

.method static synthetic access$29(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mReversedAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/util/List;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFirstShareSuccess(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$30(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContentWCountText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$32(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->setAttention(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/website/WebShareModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShare:Lcom/pinguo/share/website/WebShareModel;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/share/website/WebSiteShareMainActivity;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowOrientation:I

    return v0
.end method

.method static synthetic access$8(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSiteAdapter:Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->goToBind()V

    return-void
.end method

.method private addAdapter()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pinguo/share/website/WebSiteDefaultControl;->getWebListForShare(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/pinguo/share/website/WebSiteInfoBean;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3, v1}, Lcom/pinguo/share/website/WebSiteInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;

    invoke-direct {v3, p0, v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/util/List;)V

    iput-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSiteAdapter:Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSiteAdapter:Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/pinguo/share/ui/ShareHorizontalListView;->setVisibility(I)V

    :goto_34
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSiteAdapter:Lcom/pinguo/share/website/WebSiteShareMainActivity$SiteAdapter;

    invoke-virtual {v3, v4}, Lcom/pinguo/share/ui/ShareHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_3c
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pinguo/share/ui/ShareHorizontalListView;->setVisibility(I)V

    goto :goto_34
.end method

.method private addFriends()V
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/share/bind/BindManager;->getAtList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_32

    :cond_11
    new-instance v3, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080081

    invoke-virtual {v3, v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080077

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    iget v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowOrientation:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setOrientation(IZ)V

    :goto_31
    return-void

    :cond_32
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/pinguo/share/at/AtActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v3, "at_qq_uids"

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mTencentWeiboAtUids:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "at_sina_uids"

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSinaAtUids:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtFriendsCountText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mTencentWeiboAtUids:[Ljava/lang/String;

    iput-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSinaAtUids:[Ljava/lang/String;

    iput-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtValue:Ljava/lang/String;

    goto :goto_31
.end method

.method private addShareParam(Lcom/pinguo/share/website/WebShareBean;ZLjava/lang/String;)V
    .registers 12

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    if-eqz v5, :cond_bb

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v5, v5, Lcom/pinguo/share/ShareInfo;->effectAlias:Ljava/lang/String;

    if-eqz v5, :cond_bb

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v5, v5, Lcom/pinguo/share/ShareInfo;->effectAlias:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setEffect(Ljava/lang/String;)V

    :goto_11
    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v5

    if-nez v5, :cond_ed

    if-eqz p2, :cond_75

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    if-eqz v5, :cond_e9

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    invoke-virtual {v5}, Lcom/pinguo/share/ShareInfo;->hasLocationInfo()Z

    move-result v5

    if-eqz v5, :cond_e9

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setLocation_id(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v2, v5, Lcom/pinguo/share/ShareInfo;->address:Ljava/lang/String;

    const-string/jumbo v5, "Test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "addShareParam:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_ce

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ce

    :try_start_50
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "addr"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pinguo/share/website/WebShareBean;->setLocation(Ljava/lang/String;)V
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_5f} :catch_c3

    :goto_5f
    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-wide v5, v5, Lcom/pinguo/share/ShareInfo;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setLatitude(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-wide v5, v5, Lcom/pinguo/share/ShareInfo;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setLongitude(Ljava/lang/String;)V

    :cond_75
    :goto_75
    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v5, v5, Lcom/pinguo/share/ShareInfo;->soundInfo:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setSoundInfo(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v3, v5, Lcom/pinguo/share/ShareInfo;->cameraMode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebShareBean;->setCamera_model(Ljava/lang/String;)V

    :goto_83
    sget-object v5, Lcom/pinguo/share/website/WebSiteShareMainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sib location, latitude:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",longtitude:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_bb
    const-string/jumbo v5, "notfound"

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setEffect(Ljava/lang/String;)V

    goto/16 :goto_11

    :catch_c3
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setLocation(Ljava/lang/String;)V

    goto :goto_5f

    :cond_ce
    const-string/jumbo v5, "Test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Set location:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/pinguo/share/website/WebShareBean;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_5f

    :cond_e9
    invoke-static {p1}, Lcom/pinguo/share/ShareAccess;->getLocation(Lcom/pinguo/share/website/WebShareBean;)V

    goto :goto_75

    :cond_ed
    if-eqz p2, :cond_14b

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    if-eqz v5, :cond_17d

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {v5}, Lcom/pinguo/share/CloudShareInfo;->hasLocationInfo()Z

    move-result v5

    if-eqz v5, :cond_17d

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setLocation_id(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    iget-object v2, v5, Lcom/pinguo/share/CloudShareInfo;->address:Ljava/lang/String;

    const-string/jumbo v5, "Test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "addShareParam:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_163

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_163

    :try_start_126
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "addr"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pinguo/share/website/WebShareBean;->setLocation(Ljava/lang/String;)V
    :try_end_135
    .catch Lorg/json/JSONException; {:try_start_126 .. :try_end_135} :catch_158

    :goto_135
    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    iget-wide v5, v5, Lcom/pinguo/share/CloudShareInfo;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setLatitude(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    iget-wide v5, v5, Lcom/pinguo/share/CloudShareInfo;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setLongitude(Ljava/lang/String;)V

    :cond_14b
    :goto_14b
    const-string/jumbo v5, "cloud"

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setCamera_model(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setCloudShareInfo(Lcom/pinguo/share/CloudShareInfo;)V

    goto/16 :goto_83

    :catch_158
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebShareBean;->setLocation(Ljava/lang/String;)V

    goto :goto_135

    :cond_163
    const-string/jumbo v5, "Test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Set location:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/pinguo/share/website/WebShareBean;->setLocation(Ljava/lang/String;)V

    goto :goto_135

    :cond_17d
    invoke-static {p1}, Lcom/pinguo/share/ShareAccess;->getLocation(Lcom/pinguo/share/website/WebShareBean;)V

    goto :goto_14b
.end method

.method private addTopic()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8c

    if-lt v3, v4, :cond_15

    :goto_14
    return-void

    :cond_15
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string/jumbo v4, "##"

    invoke-interface {v3, v0, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_14
.end method

.method private chooseThemeTemplate()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/pinguo/share/theme/ShareThemeMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->styleid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityContent:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "activity_content"

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mActivityContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getLocation(DD)V
    .registers 6

    new-instance v0, Lcom/pinguo/share/website/WebSiteShareMainActivity$7;

    invoke-direct {v0, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$7;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/pinguo/share/ShareAccess;->getLocation(DDLcom/pinguo/share/ShareAccess$LocationCallback;)V

    return-void
.end method

.method private static getWords(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_6

    const-string/jumbo p0, ""

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo p0, ""

    goto :goto_5

    :cond_1d
    const-string/jumbo v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo p0, ""

    goto :goto_5

    :cond_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_43
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    sub-int v3, v0, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method

.method private goToBind()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mStartBind:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mStartBind:Z

    invoke-static {p0, v1}, Lcom/pinguo/share/bind/BindManager;->startBind(Landroid/app/Activity;Z)V

    goto :goto_5
.end method

.method private initBindSite()V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->addAdapter()V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareHorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareHorizontalListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private initData()V
    .registers 11

    const v9, 0x7f080056

    const v8, 0x7f080055

    const/16 v7, 0x50

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "shareinfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    const-string/jumbo v3, "shareinfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/pinguo/share/ShareInfo;

    iput-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v3, v3, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    if-nez v3, :cond_80

    sget-object v3, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    :goto_29
    iput-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;

    sget-object v3, Lcom/pinguo/share/website/WebSiteShareMainActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Get sound data:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v5, v5, Lcom/pinguo/share/ShareInfo;->soundInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v3

    if-nez v3, :cond_9f

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v3, v3, Lcom/pinguo/share/ShareInfo;->soundInfo:Ljava/lang/String;

    if-eqz v3, :cond_91

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v4, v4, Lcom/pinguo/share/ShareInfo;->soundInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_6a
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;

    invoke-static {v3, v7, v7}, Lcom/pinguo/share/util/ShareModuleUtil;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/pinguo/share/util/ShareModuleUtil;->getRotateBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPreView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_7f
    return-void

    :cond_80
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v3, v3, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    goto :goto_29

    :cond_85
    const-string/jumbo v3, "cloudshareinfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/pinguo/share/CloudShareInfo;

    iput-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    goto :goto_44

    :cond_91
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_6a

    :cond_9f
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPreviewCount:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPreviewCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {v4}, Lcom/pinguo/share/CloudShareInfo;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    iget-object v1, v3, Lcom/pinguo/share/CloudShareInfo;->title:Ljava/lang/String;

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {v3}, Lcom/pinguo/share/CloudShareInfo;->isNeedPhotoWall()Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    iget-object v3, v3, Lcom/pinguo/share/CloudShareInfo;->cloudAlbumUrl:Ljava/lang/String;

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    iget-object v3, v3, Lcom/pinguo/share/CloudShareInfo;->cloudAlbumUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e6

    const v3, 0x7f08003b

    invoke-virtual {p0, v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    iget-object v5, v5, Lcom/pinguo/share/CloudShareInfo;->cloudAlbumUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_e6
    if-eqz v1, :cond_10c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10c

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_f3
    if-eqz v0, :cond_100

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_100

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_100
    new-instance v3, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;

    invoke-direct {v3, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_7f

    :cond_10c
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {v3}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z

    move-result v3

    if-eqz v3, :cond_122

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f3

    :cond_122
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f3
.end method

.method private initThemeModel()V
    .registers 7

    const/4 v5, 0x0

    new-instance v4, Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-direct {v4}, Lcom/pinguo/share/theme/ThemeXMLConsole;-><init>()V

    invoke-virtual {v4, p0, v5}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getFirstInformation(Landroid/content/Context;Lcom/pinguo/share/theme/IShowContent;)Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-direct {p0, v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->setModel(Lcom/pinguo/share/theme/ThemeXMLStruct;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {v4}, Lcom/pinguo/share/CloudShareInfo;->isMultiplePhotoes()Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeGroup:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto :goto_f
.end method

.method private initView()V
    .registers 16

    const v14, 0x7f0a00cb

    const/16 v13, 0x8

    const/4 v12, 0x3

    const/4 v11, -0x1

    const v10, 0x7f0a00c5

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    const/high16 v8, 0x4120

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x4080

    div-float/2addr v7, v8

    float-to-int v3, v7

    const v7, 0x7f0a00c4

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a0061

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v14}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a00ce

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a00d2

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a00d5

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeGroup:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a00cc

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mLocationBtn:Landroid/widget/ImageView;

    const v7, 0x7f0a00cd

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mLocationTv:Landroid/widget/TextView;

    const v7, 0x7f0a00cf

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtBtn:Landroid/widget/ImageView;

    const v7, 0x7f0a00d1

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtTv:Landroid/widget/TextView;

    const v7, 0x7f0a00d6

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->isZhForNow()Z

    move-result v7

    if-nez v7, :cond_b1

    invoke-virtual {p0, v14}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_b1
    const v7, 0x7f0a00dd

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mOtherSiteImg:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mOtherSiteImg:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a00da

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    const v7, 0x7f0a00de

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pinguo/share/ui/ShareHorizontalListView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

    const v7, 0x7f0a00c7

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPreView:Landroid/widget/ImageView;

    const v7, 0x7f0a00d0

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtFriendsCountText:Landroid/widget/TextView;

    const v7, 0x7f0a00d9

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContentWCountText:Landroid/widget/TextView;

    const v7, 0x7f0a00c8

    invoke-virtual {p0, v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPreviewCount:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mMainContent:Landroid/widget/RelativeLayout;

    iget-boolean v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isBindLayoutSetted:Z

    if-nez v7, :cond_148

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v5, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x7

    invoke-virtual {v5, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v7, 0x7f0a00db

    invoke-virtual {v5, v12, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v7, 0x7f0a00db

    invoke-virtual {v4, v12, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x5

    invoke-virtual {v4, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v7, 0x7f0a00dc

    invoke-virtual {v4, v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHListView:Lcom/pinguo/share/ui/ShareHorizontalListView;

    invoke-virtual {v7, v4}, Lcom/pinguo/share/ui/ShareHorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isBindLayoutSetted:Z

    :cond_148
    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContentWCountText:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x8c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    new-instance v8, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;

    invoke-direct {v8, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private isCloudShare()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isFirstShareSuccess(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v3, v0

    :goto_a
    return v3

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_21

    :goto_15
    if-eqz v0, :cond_33

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_33

    const/4 v3, 0x1

    goto :goto_a

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v1, v2, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-static {v1}, Lcom/pinguo/share/bind/BindSharedPreferences;->isAttantionable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    goto :goto_15

    :cond_33
    const/4 v3, 0x0

    goto :goto_a
.end method

.method private openSyncServiceAndRegisteReceiver()V
    .registers 7

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.pinguo.camera360.share.bind.FetchCloudBindInfoService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "CMD"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "rannum"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

    invoke-virtual {v4, v1, v2}, Lcom/pinguo/share/bind/MyBroadCastReceiver;->setRanNum(J)V

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

    invoke-virtual {p0, v4}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->registerFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V

    return-void
.end method

.method private setAttention(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.pinguo.camera360.share.bind.AttentionProcessService"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "CMD"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "URL"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2d
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_30} :catch_7c

    move-result v8

    if-nez v8, :cond_49

    :goto_33
    const-string/jumbo v7, "SITES"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "data"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_49
    :try_start_49
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v8, v6, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-static {v8}, Lcom/pinguo/share/bind/BindSharedPreferences;->isAttantionable(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "site_code"

    iget-object v9, v6, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "site_uid"

    invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "site_token"

    invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_7b} :catch_7c

    goto :goto_2d

    :catch_7c
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_33
.end method

.method private setModel(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
    .registers 14

    const/4 v11, 0x0

    const/16 v10, 0x23

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->styleid:Ljava/lang/String;

    :cond_35
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_ca

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_40
    invoke-virtual {p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDescription()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v8

    if-eqz v8, :cond_e7

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {v8}, Lcom/pinguo/share/CloudShareInfo;->isMultiplePhotoes()Z

    move-result v8

    if-eqz v8, :cond_d4

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeGroup:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_83
    :goto_83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9d

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_92

    invoke-virtual {v7, v11, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    if-nez v5, :cond_fa

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9d
    :goto_9d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeText:Ljava/lang/String;

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    if-eqz v8, :cond_b7

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-nez v8, :cond_c9

    :cond_b7
    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    :cond_c9
    return-void

    :cond_ca
    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    const v9, 0x7f02003c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_40

    :cond_d4
    if-eqz v4, :cond_83

    const-string/jumbo v8, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_83

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    :cond_e7
    if-eqz v4, :cond_83

    const-string/jumbo v8, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_83

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    :cond_fa
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_9d

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9d
.end method

.method private showAtCount()V
    .registers 7

    const/4 v0, 0x0

    const-string/jumbo v3, "sina"

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/pinguo/share/bind/DispatchBean;->getWebSite(Ljava/lang/String;Landroid/content/Context;)Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSinaAtUids:[Ljava/lang/String;

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/pinguo/share/website/WebSiteInfoBean;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSinaAtUids:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v0, v3

    :cond_1a
    const-string/jumbo v3, "qq"

    iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/pinguo/share/bind/DispatchBean;->getWebSite(Ljava/lang/String;Landroid/content/Context;)Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v1

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mTencentWeiboAtUids:[Ljava/lang/String;

    if-eqz v3, :cond_33

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/pinguo/share/website/WebSiteInfoBean;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mTencentWeiboAtUids:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v0, v3

    :cond_33
    if-eqz v0, :cond_5d

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtBtn:Landroid/widget/ImageView;

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtFriendsCountText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtFriendsCountText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5c
    return-void

    :cond_5d
    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtBtn:Landroid/widget/ImageView;

    const v4, 0x7f020028

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtFriendsCountText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c
.end method


# virtual methods
.method public doShare()V
    .registers 10

    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->styleid:Ljava/lang/String;

    invoke-static {v5}, Lcom/pinguo/share/ShareAccess;->statShareThemeTemplateUsed(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShared:Z

    if-eqz v5, :cond_eb

    iput-boolean v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShared:Z

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShowDialog:Z

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/pinguo/share/website/WebShareModel;

    new-instance v6, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    invoke-direct {v6, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    invoke-direct {v5, p0, v6}, Lcom/pinguo/share/website/WebShareModel;-><init>(Landroid/app/Activity;Lcom/pinguo/share/website/IShareProcess;)V

    iput-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShare:Lcom/pinguo/share/website/WebShareModel;

    new-instance v3, Lcom/pinguo/share/website/WebShareBean;

    invoke-direct {v3}, Lcom/pinguo/share/website/WebShareBean;-><init>()V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v5

    if-nez v5, :cond_ec

    invoke-virtual {v3, v8}, Lcom/pinguo/share/website/WebShareBean;->setShareType(I)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->styleid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setStyle_id(Ljava/lang/String;)V

    :goto_3f
    iget-boolean v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNeedAddLocation:Z

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mReversedAddress:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->addShareParam(Lcom/pinguo/share/website/WebShareBean;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v5

    if-nez v5, :cond_10c

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getSoundInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_107

    const-string/jumbo v5, ""

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getSoundInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_107

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_107

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setTitle(Ljava/lang/String;)V

    :cond_72
    :goto_72
    invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_82

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_88

    :cond_82
    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setTitle(Ljava/lang/String;)V

    :cond_88
    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtValue:Ljava/lang/String;

    if-eqz v5, :cond_9c

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9c

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtValue:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setAt(Ljava/lang/String;)V

    :cond_9c
    :try_start_9c
    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v5

    if-nez v5, :cond_e6

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;

    sget-object v6, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e6

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getSoundInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c8

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c8

    sget-object v5, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/pinguo/share/ShareAccess;->hasSoundInfoInFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c8

    sget-object v5, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/pinguo/share/ShareAccess;->processSoundPhoto(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c8
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/pinguo/share/net/NetConnection;->getByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setMedia([B)V

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getMedia()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getMedia()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_e6} :catch_142

    :cond_e6
    :goto_e6
    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShare:Lcom/pinguo/share/website/WebShareModel;

    invoke-virtual {v5, v3}, Lcom/pinguo/share/website/WebShareModel;->startShare(Lcom/pinguo/share/website/WebShareBean;)V

    :cond_eb
    return-void

    :cond_ec
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setShareType(I)V

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {v5}, Lcom/pinguo/share/CloudShareInfo;->isMultiplePhotoes()Z

    move-result v5

    if-nez v5, :cond_ff

    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->styleid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setStyle_id(Ljava/lang/String;)V

    goto/16 :goto_3f

    :cond_ff
    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setStyle_id(Ljava/lang/String;)V

    goto/16 :goto_3f

    :cond_107
    invoke-virtual {v3, v2}, Lcom/pinguo/share/website/WebShareBean;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_72

    :cond_10c
    if-eqz v2, :cond_119

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_119

    invoke-virtual {v3, v2}, Lcom/pinguo/share/website/WebShareBean;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_72

    :cond_119
    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    iget-object v0, v5, Lcom/pinguo/share/CloudShareInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_12a

    invoke-virtual {v3, v0}, Lcom/pinguo/share/website/WebShareBean;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_72

    :cond_12a
    iget-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;

    invoke-virtual {v5}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pinguo/share/website/WebShareBean;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_72

    :catch_142
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 16

    if-eqz p3, :cond_139

    const-string/jumbo v9, "theme"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_bb

    const-string/jumbo v9, "path"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "id"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->styleid:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_27
    const-string/jumbo v9, "description"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_48

    const-string/jumbo v9, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6a

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-eq v9, v10, :cond_5d

    const/4 v9, 0x0

    const/16 v10, 0x23

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_5d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    if-nez v2, :cond_ad

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6a
    :goto_6a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeText:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getWords(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v5, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeText:Ljava/lang/String;

    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9f
    :goto_9f
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_a3
    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mThemeImg:Landroid/widget/ImageView;

    const v10, 0x7f02003c

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_27

    :cond_ad
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-eq v9, v10, :cond_6a

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_bb
    const-string/jumbo v9, "is_at"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_f0

    const-string/jumbo v9, "at_value"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtValue:Ljava/lang/String;

    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtValue:Ljava/lang/String;

    if-eqz v9, :cond_9f

    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mAtValue:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9f

    const-string/jumbo v9, "at_qq_uids"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mTencentWeiboAtUids:[Ljava/lang/String;

    const-string/jumbo v9, "at_sina_uids"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSinaAtUids:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->showAtCount()V

    goto :goto_9f

    :cond_f0
    const-string/jumbo v9, "is_bind"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_101

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->addAdapter()V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->showAtCount()V

    goto :goto_9f

    :cond_101
    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    invoke-static {v9}, Lcom/pinguo/share/bind/SinaBinder;->isSinaSite(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_111

    sget-boolean v9, Lcom/pinguo/share/bind/SinaBinder;->mBindBySso:Z

    if-eqz v9, :cond_111

    invoke-static {p1, p2, p3}, Lcom/pinguo/share/bind/SinaBinder;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_9f

    :cond_111
    const-string/jumbo v9, "bind_result"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9f

    iget-object v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    invoke-static {v9}, Lcom/pinguo/share/bind/BindManager;->getWebSiteInfoBean(Ljava/lang/String;)Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v9

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v7, v9, v10, v11}, Lcom/pinguo/share/bind/BindManager;->saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9f

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9f

    invoke-static {p0, v3}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->addAdapter()V

    goto/16 :goto_9f

    :cond_139
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mStartBind:Z

    goto/16 :goto_9f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const v5, 0x7f0a00d2

    const v4, 0x7f0a00ce

    const v3, 0x7f0a00cb

    const v2, 0x7f0a00c4

    const v1, 0x7f0a0061

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v2, v0, :cond_1c

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->doShare()V

    invoke-static {v2}, Lcom/pinguo/share/ShareAccess;->statShareLayBtnClick(I)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v1, v0, :cond_29

    invoke-static {v1}, Lcom/pinguo/share/ShareAccess;->statShareLayBtnClick(I)V

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->finish()V

    goto :goto_1b

    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v3, v0, :cond_71

    invoke-static {v3}, Lcom/pinguo/share/ShareAccess;->statShareLayBtnClick(I)V

    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNeedAddLocation:Z

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNeedAddLocation:Z

    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNeedAddLocation:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mLocationBtn:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mLocationTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b

    :cond_56
    const/4 v0, 0x1

    goto :goto_37

    :cond_58
    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mLocationBtn:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mLocationTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1b

    :cond_71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v4, v0, :cond_7e

    invoke-static {v4}, Lcom/pinguo/share/ShareAccess;->statShareLayBtnClick(I)V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->addFriends()V

    goto :goto_1b

    :cond_7e
    const v0, 0x7f0a00d5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_91

    const v0, 0x7f0a00d5

    invoke-static {v0}, Lcom/pinguo/share/ShareAccess;->statShareLayBtnClick(I)V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->chooseThemeTemplate()V

    goto :goto_1b

    :cond_91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v5, v0, :cond_9f

    invoke-static {v5}, Lcom/pinguo/share/ShareAccess;->statShareLayBtnClick(I)V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->addTopic()V

    goto/16 :goto_1b

    :cond_9f
    const v0, 0x7f0a00dd

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1b

    const v0, 0x7f0a00dd

    invoke-static {v0}, Lcom/pinguo/share/ShareAccess;->statShareLayBtnClick(I)V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->goToBind()V

    goto/16 :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->setContentView(I)V

    invoke-static {}, Lcom/pinguo/share/ShareAccess;->statShareLay()V

    iput-object p0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1d

    const-string/jumbo v0, "site_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    :cond_1d
    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->initView()V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->initData()V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->initBindSite()V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->initThemeModel()V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pinguo/share/ShareAccess;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->openSyncServiceAndRegisteReceiver()V

    :cond_34
    return-void
.end method

.method protected onPause()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPaused:Z

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->unregisterFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.pinguo.camera360.share.bind.FetchCloudBindInfoService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/ShareAccess;->stopLocation(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mIsLocateStarted:Z

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnPause(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "site_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPaused:Z

    iput-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mStartBind:Z

    sget-boolean v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->needCallback:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/TencentWeiBoBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isAuthSuccess()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/TencentWeiBoBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->setmBindCallback(Lcom/pinguo/share/bind/BindManager$BindCallback;)V

    invoke-static {p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/TencentWeiBoBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->doOnActivityResult()V

    :cond_29
    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mIsLocateStarted:Z

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/ShareAccess;->startLocation(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mIsLocateStarted:Z

    :cond_37
    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    invoke-virtual {v0}, Lcom/pinguo/share/ShareInfo;->hasLocationInfo()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-wide v0, v0, Lcom/pinguo/share/ShareInfo;->latitude:D

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareInfo:Lcom/pinguo/share/ShareInfo;

    iget-wide v2, v2, Lcom/pinguo/share/ShareInfo;->longitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getLocation(DD)V

    :cond_50
    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnResume(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->showAtCount()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "site_code"

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowBindSite:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V
    .registers 5

    :try_start_0
    iget-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFetchBroadcastRegisted:Z

    if-nez v2, :cond_12

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "FetchCloudBindInfoService.MyBroadCastReceiver"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFetchBroadcastRegisted:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lcom/pinguo/share/website/WebSiteShareMainActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public ssoBindService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1b

    const v1, 0x7f080047

    invoke-static {p0, v1, v2, v3}, Lcom/pinguo/share/ui/dialog/ShareBSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1b
    return-void
.end method

.method public unregisterFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V
    .registers 4

    :try_start_0
    iget-boolean v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFetchBroadcastRegisted:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->isFetchBroadcastRegisted:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    sget-object v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

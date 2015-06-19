.class public Lcom/pinguo/camera360/mycenter/MyCenterActivity;
.super Landroid/app/Activity;
.source "MyCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CODE_LOGIN:I = 0x3e8

.field private static final REQUEST_CODE_LOGIN_CLOUD:I = 0x3ea

.field private static final REQUEST_CODE_LOGIN_ORDER_LIST:I = 0x3eb

.field private static final REQUEST_CODE_LOGOUT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = null

.field public static final UPDATE_FEEDBACK_ICON_ACTION:Ljava/lang/String; = "com.pinguo.camear360.feedback.update.mycenter"


# instance fields
.field private mAdapter:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mItemCloudAlubm:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

.field private mItemFans:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

.field private mItemFeedBack:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

.field private mItemMsgCenter:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

.field private mItemNbtf:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

.field private mItemOrderList:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

.field private mLoginInfoView:Landroid/widget/ImageView;

.field private mNickNameView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mUserFaceView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/mycenter/MyCenterActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity$1;-><init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUnread()V

    return-void
.end method

.method private checkLogin(I)Z
    .registers 5

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V

    const/16 v2, -0x3e7

    invoke-static {p0, p1, v2}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V

    const/4 v2, 0x0

    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x1

    goto :goto_14
.end method

.method private initGridView()V
    .registers 9

    const v4, 0x7f0a0355

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    new-instance v0, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mAdapter:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;

    new-instance v4, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    const v5, 0x7f0801d6

    const v6, 0x7f0202e4

    new-instance v7, Lcom/pinguo/camera360/mycenter/MyCenterActivity$3;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity$3;-><init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;-><init>(IILandroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemCloudAlubm:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    new-instance v4, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    const v5, 0x7f0801d7

    const v6, 0x7f0202f8

    new-instance v7, Lcom/pinguo/camera360/mycenter/MyCenterActivity$4;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity$4;-><init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;-><init>(IILandroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemOrderList:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    new-instance v4, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    const v5, 0x7f0801d8

    const v6, 0x7f0202ed

    new-instance v7, Lcom/pinguo/camera360/mycenter/MyCenterActivity$5;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity$5;-><init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;-><init>(IILandroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemMsgCenter:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    new-instance v4, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    const v5, 0x7f0801da

    const v6, 0x7f0202e7

    new-instance v7, Lcom/pinguo/camera360/mycenter/MyCenterActivity$6;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity$6;-><init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;-><init>(IILandroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemFans:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    new-instance v4, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    const v5, 0x7f0801d9

    const v6, 0x7f0202ea

    new-instance v7, Lcom/pinguo/camera360/mycenter/MyCenterActivity$7;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity$7;-><init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;-><init>(IILandroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemFeedBack:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    new-instance v4, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    const v5, 0x7f080111

    const v6, 0x7f0202f0

    new-instance v7, Lcom/pinguo/camera360/mycenter/MyCenterActivity$8;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity$8;-><init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;-><init>(IILandroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemNbtf:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemCloudAlubm:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemNbtf:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->canNotUseIDCamera()Z

    move-result v4

    if-nez v4, :cond_a2

    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemOrderList:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemMsgCenter:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemFans:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemFeedBack:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b1
    :goto_b1
    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_b8
    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemMsgCenter:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zh_HK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dd

    :cond_d2
    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemFans:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemFeedBack:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :cond_dd
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "th"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemFeedBack:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1
.end method

.method private toggleCloudImageView()Z
    .registers 3

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferencesForUploadSetting(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "valve"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private updateUnread()V
    .registers 10

    sget-object v6, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "updateUnread"

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getUnreadFeedbackCount()I

    move-result v2

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemFeedBack:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    iput v2, v6, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mUnreadCount:I

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getNewMessageCount()I

    move-result v3

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemMsgCenter:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    iput v3, v6, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mUnreadCount:I

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v0

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->toggleCloudImageView()Z

    move-result v6

    if-nez v6, :cond_5c

    if-eqz v0, :cond_5c

    const/4 v1, 0x1

    :goto_31
    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemCloudAlubm:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    iput v1, v6, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mUnreadCount:I

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getNewOrderCount()I

    move-result v4

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mItemOrderList:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;

    iput v4, v6, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mUnreadCount:I

    sget-object v6, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateUnread unreadOrderCount = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mAdapter:Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;

    invoke-virtual {v6}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;->notifyDataSetChanged()V

    return-void

    :cond_5c
    const/4 v1, 0x0

    goto :goto_31
.end method

.method private updateUserInfo()V
    .registers 6

    sget-object v2, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateUserInfo"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mUserFaceView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mNickNameView:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateUserInfo 1"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mLoginInfoView:Landroid/widget/ImageView;

    const v3, 0x7f0202fb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_38
    return-void

    :cond_39
    iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mUserFaceView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v3, 0x7f020157

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageResource(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mNickNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080222

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mLoginInfoView:Landroid/widget/ImageView;

    const v3, 0x7f0202f5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v2, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateUserInfo 2"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method


# virtual methods
.method public enterCloudAlbum()V
    .registers 4

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/pinguo/album/activities/PGAlbumActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1f
    return-void

    :cond_20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/pinguo/album/activities/PGAlbumGuideActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method public enterFans()V
    .registers 7

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/pinguo/cloudshare/support/HelperConsole;->loadLocalKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "https://cloud.camera360.com/mobile/user/forumSyncLogin"

    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "?localkey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_30
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public enterFeedBack()V
    .registers 3

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public enterMsgCenter()V
    .registers 3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public enterNbtf()V
    .registers 4

    const-string/jumbo v0, "center"

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryNearByEnter(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    move-result-object v0

    const-string/jumbo v1, "key_my_center_show_new"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public enterOrderList()V
    .registers 3

    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->checkLogin(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/order/OrderListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    :cond_16
    return-void
.end method

.method public enterPersonCenter()V
    .registers 3

    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->checkLogin(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_18
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/16 v5, 0x3e9

    const/4 v4, -0x1

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_10

    if-ne p2, v4, :cond_10

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUserInfo()V

    :cond_c
    :goto_c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-ne p1, v5, :cond_22

    if-ne p2, v5, :cond_c

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUserInfo()V

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->initUserPreference()V

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUnread()V

    goto :goto_c

    :cond_22
    const/16 v3, 0x3ea

    if-ne p1, v3, :cond_40

    if-ne p2, v4, :cond_40

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/pinguo/album/activities/PGAlbumActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    :cond_40
    const/16 v3, 0x3eb

    if-ne p1, v3, :cond_c

    if-ne p2, v4, :cond_c

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUserInfo()V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/pinguo/camera360/order/OrderListActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->clearNewFlagInMyCenter()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->clearNewFlagInMyCenter()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->finish()V

    goto :goto_7

    :pswitch_17
    invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->enterPersonCenter()V

    goto :goto_7

    nop

    :pswitch_data_1c
    .packed-switch 0x7f0a034f
        :pswitch_8
        :pswitch_17
        :pswitch_17
        :pswitch_7
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const v9, 0x7f0a0354

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f030091

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->setContentView(I)V

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayClick(I)V

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterLayShow(I)V

    const v6, 0x7f0a034e

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mRootView:Landroid/view/View;

    :try_start_1d
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0202e3

    invoke-static {v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_b8

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_41} :catch_be
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_41} :catch_c4

    :goto_41
    const v6, 0x7f0a034f

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    const v6, 0x7f0a0350

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mLoginInfoView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mLoginInfoView:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0352

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iput-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mUserFaceView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mUserFaceView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v7, 0x7f020157

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V

    const v6, 0x7f0a0353

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v9}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v9}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mNickNameView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mNickNameView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->initGridView()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->clearNewFlagInMyCenter()V

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    move-result-object v6

    const-string/jumbo v7, "key_camera_show_new"

    invoke-virtual {v6, v7, v8}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->putBoolean(Ljava/lang/String;Z)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.pinguo.camear360.feedback.update.mycenter"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    return-void

    :cond_b8
    :try_start_b8
    iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bd} :catch_be
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b8 .. :try_end_bd} :catch_c4

    goto :goto_41

    :catch_be
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_41

    :catch_c4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_41
.end method

.method public onDestroy()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_24

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_20
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_20
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/OnMyCenterNewMsgEvent;)V
    .registers 4

    const-string/jumbo v0, "PGM"

    const-string/jumbo v1, "onEvent OnMyCenterNewMsgEvent"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v0

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->updateUnreadMsg(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUnread()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/nearbytransfer/event/FinishMyCenterEvent;)V
    .registers 4

    const-string/jumbo v0, "PGM"

    const-string/jumbo v1, "onEvent FinishMyCenterEvent"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->finish()V

    return-void
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v1, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a034f

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/pinguo/camera360/mycenter/MyCenterActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity$2;-><init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;Landroid/view/View;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->updateUnreadMsg(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUnread()V

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUserInfo()V

    return-void
.end method

.class public Lcom/pinguo/share/bind/BindActivity;
.super Landroid/app/Activity;
.source "BindActivity.java"

# interfaces
.implements Lcom/pinguo/share/bind/BindManager$BindCallback;
.implements Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;


# static fields
.field public static final CAN_CLICK:I = 0x5

.field public static final FAIL:I = 0x2

.field public static final FINISH:I = 0x3

.field public static final IS_BIND:Ljava/lang/String; = "is_bind"

.field public static final IS_SHARE_INFO:Ljava/lang/String; = "is_share_into"

.field public static final NO_CONNECT:I = 0x4

.field public static final SHOW_WEBSITE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BindActivity"

.field private static mPosition:I


# instance fields
.field private isCanClick:Z

.field private isFetchBroadcastRegistered:Z

.field private isShareInto:Z

.field private mAdvanceShareBindTitle:Lcom/pinguo/share/ui/ShareTitleView;

.field private mBaseAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mNowBindSite:Ljava/lang/String;

.field private mNowOrientation:I

.field private mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

.field private myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

.field private myHandler:Landroid/os/Handler;

.field private onClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/pinguo/share/bind/BindActivity;->mNowOrientation:I

    iput-boolean v0, p0, Lcom/pinguo/share/bind/BindActivity;->isFetchBroadcastRegistered:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/share/bind/BindActivity;->isCanClick:Z

    new-instance v0, Lcom/pinguo/share/bind/BindActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/share/bind/BindActivity$1;-><init>(Lcom/pinguo/share/bind/BindActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

    new-instance v0, Lcom/pinguo/share/bind/BindActivity$2;

    invoke-direct {v0, p0}, Lcom/pinguo/share/bind/BindActivity$2;-><init>(Lcom/pinguo/share/bind/BindActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->onClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/pinguo/share/bind/BindActivity$3;

    invoke-direct {v0, p0}, Lcom/pinguo/share/bind/BindActivity$3;-><init>(Lcom/pinguo/share/bind/BindActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/bind/BindActivity;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->onClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/share/bind/BindActivity;Landroid/widget/BaseAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity;->mBaseAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic access$10(I)V
    .registers 1

    sput p0, Lcom/pinguo/share/bind/BindActivity;->mPosition:I

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/share/bind/BindActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/share/bind/BindActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/bind/BindActivity;->isShareInto:Z

    return v0
.end method

.method static synthetic access$13(Lcom/pinguo/share/bind/BindActivity;Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    return-void
.end method

.method static synthetic access$14(Lcom/pinguo/share/bind/BindActivity;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/share/bind/BindActivity;->mNowOrientation:I

    return v0
.end method

.method static synthetic access$15()I
    .registers 1

    sget v0, Lcom/pinguo/share/bind/BindActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/BaseAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mBaseAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/share/bind/BindActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/bind/BindActivity;->isCanClick:Z

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/share/bind/BindActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/bind/BindActivity;->isCanClick:Z

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/bind/MyBroadCastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/share/bind/BindActivity;Lcom/pinguo/share/website/WebSiteInfoBean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/share/bind/BindActivity;->webBind(Lcom/pinguo/share/website/WebSiteInfoBean;)V

    return-void
.end method

.method private myFinish()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "is_bind"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/share/bind/BindActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/share/bind/BindActivity;->finish()V

    return-void
.end method

.method private webBind(Lcom/pinguo/share/website/WebSiteInfoBean;)V
    .registers 6

    iget-object v0, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mNowBindSite:Ljava/lang/String;

    invoke-static {p0}, Lcom/pinguo/share/bind/BindManager;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/BindManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/pinguo/share/bind/BindManager;->startWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity;->mNowBindSite:Ljava/lang/String;

    invoke-static {v2}, Lcom/pinguo/share/bind/SinaBinder;->isSinaSite(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/pinguo/share/bind/SinaBinder;->mBindBySso:Z

    if-eqz v2, :cond_10

    invoke-static {p1, p2, p3}, Lcom/pinguo/share/bind/SinaBinder;->onActivityResult(IILandroid/content/Intent;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-eqz p3, :cond_f

    const-string/jumbo v2, "bind_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    sget-object v2, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    invoke-virtual {v2}, Lcom/pinguo/share/bind/DispatchBean;->getArray()[Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v2

    sget v3, Lcom/pinguo/share/bind/BindActivity;->mPosition:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pinguo/share/bind/BindActivity;->isShareInto:Z

    invoke-static {v1, v2, v3, v4}, Lcom/pinguo/share/bind/BindManager;->saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f
.end method

.method public onBackClick()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/share/bind/BindActivity;->myFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_e

    const-string/jumbo v1, "site_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/bind/BindActivity;->mNowBindSite:Ljava/lang/String;

    :cond_e
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/BindActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/pinguo/share/bind/BindActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/pinguo/share/bind/BindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "is_share_into"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/share/bind/BindActivity;->isShareInto:Z

    const v1, 0x7f0a0076

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/share/ui/ShareTitleView;

    iput-object v1, p0, Lcom/pinguo/share/bind/BindActivity;->mAdvanceShareBindTitle:Lcom/pinguo/share/ui/ShareTitleView;

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity;->mAdvanceShareBindTitle:Lcom/pinguo/share/ui/ShareTitleView;

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Lcom/pinguo/share/ui/ShareTitleView;->setTiTleText(I)V

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity;->mAdvanceShareBindTitle:Lcom/pinguo/share/ui/ShareTitleView;

    invoke-virtual {v1, p0}, Lcom/pinguo/share/ui/ShareTitleView;->setOnTitleViewClickListener(Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;)V

    const v1, 0x7f0a0077

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0a0078

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/pinguo/share/bind/BindActivity$4;

    invoke-direct {v1, p0}, Lcom/pinguo/share/bind/BindActivity$4;-><init>(Lcom/pinguo/share/bind/BindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Lcom/pinguo/share/bind/BindActivity$5;

    invoke-direct {v1, p0}, Lcom/pinguo/share/bind/BindActivity$5;-><init>(Lcom/pinguo/share/bind/BindActivity;)V

    invoke-static {v1, p0}, Lcom/pinguo/share/bind/BindManager;->getWebSites(Lcom/pinguo/share/bind/IBindProcess;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/pinguo/share/bind/BindActivity;->myFinish()V

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .registers 2

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnPause(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->myBroadCastReceiver:Lcom/pinguo/share/bind/MyBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/pinguo/share/bind/BindActivity;->unregisterFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "site_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mNowBindSite:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnResume(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->needCallback:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mNowBindSite:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/TencentWeiBoBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isAuthSuccess()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/TencentWeiBoBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->setmBindCallback(Lcom/pinguo/share/bind/BindManager$BindCallback;)V

    invoke-static {p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/TencentWeiBoBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->doOnActivityResult()V

    :cond_27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/share/bind/BindActivity;->myFinish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "site_code"

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity;->mNowBindSite:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V
    .registers 5

    :try_start_0
    iget-boolean v2, p0, Lcom/pinguo/share/bind/BindActivity;->isFetchBroadcastRegistered:Z

    if-nez v2, :cond_12

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "FetchCloudBindInfoService.MyBroadCastReceiver"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/pinguo/share/bind/BindActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/share/bind/BindActivity;->isFetchBroadcastRegistered:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v2, "BindActivity"

    invoke-static {v2, v0}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public ssoBindService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/pinguo/share/bind/BindActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show()V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    iget v1, p0, Lcom/pinguo/share/bind/BindActivity;->mNowOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOrientation(IZ)V

    new-instance v0, Lcom/pinguo/share/bind/BindActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/share/bind/BindActivity$6;-><init>(Lcom/pinguo/share/bind/BindActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity$6;->start()V

    :cond_28
    return-void
.end method

.method public unregisterFetchBroadCast(Lcom/pinguo/share/bind/MyBroadCastReceiver;)V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/pinguo/share/bind/BindActivity;->isFetchBroadcastRegistered:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/pinguo/share/bind/BindActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.pinguo.camera360.share.bind.FetchCloudBindInfoService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/share/bind/BindActivity;->stopService(Landroid/content/Intent;)Z

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/share/bind/BindActivity;->isFetchBroadcastRegistered:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

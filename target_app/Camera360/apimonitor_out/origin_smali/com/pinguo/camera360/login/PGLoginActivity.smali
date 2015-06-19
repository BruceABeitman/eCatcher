.class public Lcom/pinguo/camera360/login/PGLoginActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PGLoginActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/login/PGRegisterFragment$PGRegisterFragmentListener;
.implements Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;


# static fields
.field public static final ACTION_LOGIN_SUCCESS:Ljava/lang/String; = "com.pinguo.intent.login.success"

.field public static final ERROR_EMAIL:I = 0x1

.field public static final ERROR_HIDE_EMAIL:I = 0x1

.field public static final ERROR_HIDE_NO:I = 0x0

.field public static final ERROR_HIDE_PASSWORD:I = 0x2

.field public static final ERROR_NO:I = 0x0

.field public static final ERROR_PASSWORD:I = 0x2

.field public static final ERROR_SYSTEM:I = 0x3

.field public static final REQUEST_CODE_FIND_PASSWORD:I = 0x441

.field public static final REQUEST_CODE_MODIFY_PASSWORD:I = 0x440

.field public static final THRID_BUTTON_TAG_FOR_DEFAULT:[Ljava/lang/String;

.field public static final THRID_BUTTON_TAG_FOR_ZH_CN:[Ljava/lang/String;


# instance fields
.field private mBottom:Landroid/view/View;

.field public mEffectPostion:I

.field private mRegisterFragment:Lcom/pinguo/camera360/login/PGRegisterFragment;

.field private mSsoLogin:Lcom/pinguo/camera360/login/model/SsoLogin;

.field private mToast:Landroid/widget/Toast;

.field private mTop:Landroid/view/View;

.field private mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "qzone"

    aput-object v1, v0, v2

    const-string/jumbo v1, "sina"

    aput-object v1, v0, v3

    const-string/jumbo v1, "facebook"

    aput-object v1, v0, v4

    const-string/jumbo v1, "twitter"

    aput-object v1, v0, v5

    const-string/jumbo v1, "kupan"

    aput-object v1, v0, v6

    sput-object v0, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_ZH_CN:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "facebook"

    aput-object v1, v0, v2

    const-string/jumbo v1, "twitter"

    aput-object v1, v0, v3

    const-string/jumbo v1, "qzone"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sina"

    aput-object v1, v0, v5

    const-string/jumbo v1, "kupan"

    aput-object v1, v0, v6

    sput-object v0, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_DEFAULT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mEffectPostion:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/PGLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/login/PGLoginActivity;->loginForSso(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/PGLoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->dissmissDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/login/PGLoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->returnResultFinish()V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/login/PGLoginActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/PGLoginActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method private dissmissDialog()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-void
.end method

.method private init()V
    .registers 4

    invoke-static {p0}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->initLoginConfig(Landroid/content/Context;)V

    new-instance v1, Lcom/pinguo/camera360/login/PGRegisterFragment;

    invoke-direct {v1}, Lcom/pinguo/camera360/login/PGRegisterFragment;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mRegisterFragment:Lcom/pinguo/camera360/login/PGRegisterFragment;

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a03b6

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mRegisterFragment:Lcom/pinguo/camera360/login/PGRegisterFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private loginForSso(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->showDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mSsoLogin:Lcom/pinguo/camera360/login/model/SsoLogin;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mSsoLogin:Lcom/pinguo/camera360/login/model/SsoLogin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SsoLogin;->cancel(Z)Z

    :cond_d
    new-instance v0, Lcom/pinguo/camera360/login/model/SsoLogin;

    invoke-direct {v0, p0, p2, p1}, Lcom/pinguo/camera360/login/model/SsoLogin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mSsoLogin:Lcom/pinguo/camera360/login/model/SsoLogin;

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mSsoLogin:Lcom/pinguo/camera360/login/model/SsoLogin;

    new-instance v1, Lcom/pinguo/camera360/login/PGLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/PGLoginActivity$2;-><init>(Lcom/pinguo/camera360/login/PGLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SsoLogin;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private processSsoTokenData(Landroid/content/Intent;)Ljava/lang/String;
    .registers 11

    new-instance v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;

    invoke-direct {v5}, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;-><init>()V

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "access_token"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "expires_in"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "refresh_token"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "uid"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->uid:Ljava/lang/String;

    iput-object v0, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->access_token:Ljava/lang/String;

    iput-object v4, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->refresh_token:Ljava/lang/String;

    iput-object v2, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->expires_in:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_45

    :goto_39
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v7, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;

    invoke-virtual {v3, v5, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private returnResultFinish()V
    .registers 5

    const/4 v3, -0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.pinguo.intent.login.success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/login/PGLoginActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget v1, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mEffectPostion:I

    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_26

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "context_data"

    iget v2, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mEffectPostion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/pinguo/camera360/login/PGLoginActivity;->setResult(ILandroid/content/Intent;)V

    :goto_22
    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->finish()V

    return-void

    :cond_26
    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/login/PGLoginActivity;->setResult(I)V

    goto :goto_22
.end method

.method private showDialog()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    goto :goto_d
.end method

.method private showMessage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mTop:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mBottom:Landroid/view/View;

    invoke-direct {p0, v0, v1, p1}, Lcom/pinguo/camera360/login/PGLoginActivity;->showToast(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .registers 15

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v7, "HTC 802w"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-direct {v2, p0, p3, v9}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    :goto_16
    return-void

    :cond_17
    new-array v3, v10, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v3, v8

    new-array v0, v10, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v8

    add-int v6, v4, v1

    div-int/lit8 v5, v6, 0x2

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mToast:Landroid/widget/Toast;

    if-eqz v6, :cond_32

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    :cond_32
    invoke-static {p0, p3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mToast:Landroid/widget/Toast;

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mToast:Landroid/widget/Toast;

    const/16 v7, 0x31

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    invoke-virtual {v6, v7, v9, v8}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_16
.end method

.method private startThridLogin(Landroid/view/View;)V
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1a

    const v7, 0x7f08017e

    invoke-virtual {p0, v7}, Lcom/pinguo/camera360/login/PGLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mTop:Landroid/view/View;

    iget-object v8, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mBottom:Landroid/view/View;

    invoke-direct {p0, v7, v8, v0}, Lcom/pinguo/camera360/login/PGLoginActivity;->showToast(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    const/4 v7, 0x1

    const/16 v8, 0x190

    invoke-static {p1, v7, v8}, Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "sina"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    new-instance v4, Lcom/pinguo/camera360/login/model/SinaLogin;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/login/model/SinaLogin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Lcom/pinguo/camera360/login/model/SinaLogin;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    goto :goto_19

    :cond_3c
    const-string/jumbo v7, "qzone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    new-instance v3, Lcom/pinguo/camera360/login/model/QQLogin;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/login/model/QQLogin;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/pinguo/camera360/login/PGLoginActivity$1;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/login/PGLoginActivity$1;-><init>(Lcom/pinguo/camera360/login/PGLoginActivity;)V

    invoke-virtual {v3, v7}, Lcom/pinguo/camera360/login/model/QQLogin;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    goto :goto_19

    :cond_53
    const-string/jumbo v7, "facebook"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    new-instance v1, Lcom/pinguo/camera360/login/model/FacebookLogin;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/model/FacebookLogin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Lcom/pinguo/camera360/login/model/FacebookLogin;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    goto :goto_19

    :cond_65
    const-string/jumbo v7, "twitter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    new-instance v5, Lcom/pinguo/camera360/login/model/TwitterLogin;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/login/model/TwitterLogin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Lcom/pinguo/camera360/login/model/TwitterLogin;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    goto :goto_19

    :cond_77
    const-string/jumbo v7, "kupan"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    new-instance v2, Lcom/pinguo/camera360/login/model/KuPanLogin;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/login/model/KuPanLogin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Lcom/pinguo/camera360/login/model/KuPanLogin;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    goto :goto_19
.end method


# virtual methods
.method public authAgree()Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/login/PGLoginAuthorize;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/PGLoginActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public changeToLoginEmailFragment(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f04001a

    const v2, 0x7f04001d

    const v3, 0x7f04001c

    const v4, 0x7f04001b

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a03b6

    invoke-static {p1}, Lcom/pinguo/camera360/login/PGLoginFragment;->newInstance(Ljava/lang/String;)Lcom/pinguo/camera360/login/PGLoginFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public finishLoginActivity()V
    .registers 6

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v1

    iget v0, v1, Lcom/pinguo/camera360/login/model/User$Info;->forgetPass:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1a

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/pinguo/camera360/login/PGModifyPasswordActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x440

    invoke-virtual {p0, v2, v4}, Lcom/pinguo/camera360/login/PGLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->returnResultFinish()V

    goto :goto_19
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/4 v4, -0x1

    const v3, 0x80cd

    if-ne p1, v3, :cond_42

    if-ne p2, v4, :cond_33

    const-string/jumbo v3, "error"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string/jumbo v3, "error_type"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    if-eqz v0, :cond_37

    const-string/jumbo v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sina sso error="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->finish()V

    :cond_33
    :goto_33
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_37
    invoke-direct {p0, p3}, Lcom/pinguo/camera360/login/PGLoginActivity;->processSsoTokenData(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sina"

    invoke-direct {p0, v2, v3}, Lcom/pinguo/camera360/login/PGLoginActivity;->loginForSso(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_42
    const/16 v3, 0x440

    if-ne p1, v3, :cond_4c

    if-ne p2, v4, :cond_33

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->returnResultFinish()V

    goto :goto_33

    :cond_4c
    const/16 v3, 0x441

    if-ne p1, v3, :cond_33

    if-ne p2, v4, :cond_33

    new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    const v3, 0x7f080139

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/login/PGLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    goto :goto_33
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03009c

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/login/PGLoginActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->init()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string/jumbo v1, "context_data"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mEffectPostion:I

    :cond_1d
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mSsoLogin:Lcom/pinguo/camera360/login/model/SsoLogin;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mSsoLogin:Lcom/pinguo/camera360/login/model/SsoLogin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SsoLogin;->cancel(Z)Z

    :cond_11
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/login/model/LoginResultEvent;)V
    .registers 6

    const-string/jumbo v2, "test"

    const-string/jumbo v3, "\u7b2c\u4e09\u65b9\u767b\u5f55\u6210\u529f\u540e\u7684\u56de\u8c03"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/pinguo/camera360/login/model/LoginResultEvent;->getStatus()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_17

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->returnResultFinish()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {p1}, Lcom/pinguo/camera360/login/model/LoginResultEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    const v2, 0x7f0801a5

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/login/PGLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_28
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/login/PGLoginActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public registerAuthAgree()Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/login/PGLoginAuthorize;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/PGLoginActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public startPersonalInformation()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginActivity;->returnResultFinish()V

    return-void
.end method

.method public startThirdLoginForLoginEmail(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iput-object p2, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mTop:Landroid/view/View;

    iput-object p3, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mBottom:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/PGLoginActivity;->startThridLogin(Landroid/view/View;)V

    return-void
.end method

.method public startThirdLoginForRegisterEmail(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iput-object p2, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mTop:Landroid/view/View;

    iput-object p3, p0, Lcom/pinguo/camera360/login/PGLoginActivity;->mBottom:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/PGLoginActivity;->startThridLogin(Landroid/view/View;)V

    return-void
.end method

.class public Lco/vine/android/AuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "AuthenticatorActivity.java"


# static fields
.field private static final DIALOG_PROGRESS_ID:I = 0x1

.field public static final PARAM_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field public static final PARAM_CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field public static final PARAM_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field mConfirmCredentials:Ljava/lang/Boolean;

.field private mLoginEmail:Ljava/lang/String;

.field private mPasswordEditView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method

.method private saveAuth(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    sget-object v3, Lco/vine/android/client/VineAccountHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/AuthenticatorActivity;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "co.vine.android.basic_auth.token.secret"

    invoke-virtual {v1, v0, v2, p1}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method finishConfirmCredentials(Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1}, Lco/vine/android/AuthenticatorActivity;->saveAuth(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "booleanResult"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/AuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lco/vine/android/AuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lco/vine/android/AuthenticatorActivity;->finish()V

    return-void
.end method

.method finishLogin(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lco/vine/android/AuthenticatorActivity;->saveAuth(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "authAccount"

    iget-object v3, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "accountType"

    sget-object v3, Lco/vine/android/client/VineAccountHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/AuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lco/vine/android/AuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v0, p1}, Lco/vine/android/client/AppController;->updateCredentials(Ljava/lang/String;)V

    :cond_33
    invoke-virtual {p0}, Lco/vine/android/AuthenticatorActivity;->finish()V

    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .registers 7

    iget-object v3, p0, Lco/vine/android/AuthenticatorActivity;->mPasswordEditView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    :goto_10
    return-void

    :cond_11
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lco/vine/android/AuthenticatorActivity;->showDialog(I)V

    new-instance v2, Lco/vine/android/AuthenticatorActivity$1;

    invoke-direct {v2, p0}, Lco/vine/android/AuthenticatorActivity$1;-><init>(Lco/vine/android/AuthenticatorActivity;)V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lco/vine/android/service/VineService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "co.vine.android.session.login"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "login"

    iget-object v4, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "pass"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ibinder"

    new-instance v4, Lco/vine/android/service/VineServiceCallback;

    invoke-direct {v4, v2}, Lco/vine/android/service/VineServiceCallback;-><init>(Lco/vine/android/service/VineServiceResponder;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lco/vine/android/AuthenticatorActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_10
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x3

    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lco/vine/android/AuthenticatorActivity;->requestWindowFeature(I)Z

    const v2, 0x7f030051

    invoke-virtual {p0, v2}, Lco/vine/android/AuthenticatorActivity;->setContentView(I)V

    invoke-virtual {p0}, Lco/vine/android/AuthenticatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0}, Lco/vine/android/AuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    const-string v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    const v2, 0x7f0a0115

    invoke-virtual {p0, v2}, Lco/vine/android/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0118

    invoke-virtual {p0, v2}, Lco/vine/android/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mPasswordEditView:Landroid/widget/EditText;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_20

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0f0037

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0e0120

    invoke-virtual {p0, v1}, Lco/vine/android/AuthenticatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_5

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

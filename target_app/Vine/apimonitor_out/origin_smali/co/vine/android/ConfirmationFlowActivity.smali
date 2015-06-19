.class public Lco/vine/android/ConfirmationFlowActivity;
.super Lco/vine/android/BaseActionBarActivity;
.source "ConfirmationFlowActivity.java"


# static fields
.field public static final DIALOG_VERIFY_PHONE:I = 0x1

.field public static final EXTRA_FROM_SIGN_UP:Ljava/lang/String; = "from_sign_up"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final RESULT_VERIFY_PHONE_FAILURE:I = 0x5f8

.field public static final RESULT_VERIFY_PHONE_SUCCESS:I = 0x5f7

.field private static final TAG:Ljava/lang/String; = "confirmationFlow"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseActionBarActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/ConfirmationFlowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_sign_up"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static requestPhoneVerification(Lco/vine/android/client/AppController;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lco/vine/android/client/AppController;->requestPhoneVerification(Lco/vine/android/client/Session;Ljava/lang/String;J)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v4, 0x7f030045

    invoke-super {p0, p1, v4, v7, v7}, Lco/vine/android/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;IZZ)V

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "from_sign_up"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const v6, 0x7f0e0124

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lco/vine/android/ConfirmationFlowActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V

    :goto_26
    if-nez p1, :cond_55

    if-eqz v2, :cond_69

    new-instance v1, Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-direct {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;-><init>()V

    :goto_2f
    invoke-static {v3}, Lco/vine/android/BaseFragment;->prepareArguments(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "phone_number"

    const-string v5, "phone_number"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0a0102

    const-string v6, "confirmationFlow"

    invoke-virtual {v4, v5, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_55
    return-void

    :cond_56
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const v6, 0x7f0e008d

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lco/vine/android/ConfirmationFlowActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V

    goto :goto_26

    :cond_69
    new-instance v1, Lco/vine/android/ConfirmationFlowEntryFragment;

    invoke-direct {v1}, Lco/vine/android/ConfirmationFlowEntryFragment;-><init>()V

    goto :goto_2f
.end method

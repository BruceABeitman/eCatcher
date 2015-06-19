.class Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;
.super Lco/vine/android/client/AppSessionListener;
.source "LoginTwitterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/LoginTwitterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginTwitterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/LoginTwitterActivity;


# direct methods
.method constructor <init>(Lco/vine/android/LoginTwitterActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckTwitterComplete(Ljava/lang/String;ILjava/lang/String;IZLco/vine/android/api/VineUser;Lco/vine/android/api/VineLogin;)V
    .registers 19

    if-eqz p5, :cond_47

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_47

    :try_start_6
    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v1, v1, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v2, v2, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    move-object/from16 v0, p6

    iget-object v4, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p6

    iget-object v7, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    move v3, p2

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;

    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    #getter for: Lco/vine/android/LoginTwitterActivity;->mFinish:Z
    invoke-static {v1}, Lco/vine/android/LoginTwitterActivity;->access$100(Lco/vine/android/LoginTwitterActivity;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v1}, Lco/vine/android/LoginTwitterActivity;->finish()V

    :goto_2e
    return-void

    :cond_2f
    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-static {v1}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;)V
    :try_end_34
    .catch Lco/vine/android/VineLoggingException; {:try_start_6 .. :try_end_34} :catch_35

    goto :goto_2e

    :catch_35
    move-exception v8

    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    const v2, 0x7f0e00d7

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    invoke-static {v8}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v1}, Lco/vine/android/LoginTwitterActivity;->finish()V

    goto :goto_2e

    :cond_47
    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v1}, Lco/vine/android/LoginTwitterActivity;->dismissDialog()V

    const/16 v1, 0x190

    if-ne p2, v1, :cond_68

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user"

    move-object/from16 v0, p7

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v2, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-static {v2, v9}, Lco/vine/android/SignUpPagerActivity;->getIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/LoginTwitterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e

    :cond_68
    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->ACCOUNT_DEACTIVATED:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v1, v1, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    if-ne p4, v1, :cond_95

    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v10

    const v1, 0x7f0e01ce

    invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e01cf

    invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e0057

    invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e01cd

    invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v1}, Lco/vine/android/LoginTwitterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_2e

    :cond_95
    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-static {v1, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_2e
.end method

.method public onTwitterxAuthComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V
    .registers 13

    const/16 v1, 0xc8

    const/4 v6, 0x0

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    #getter for: Lco/vine/android/LoginTwitterActivity;->mFinish:Z
    invoke-static {v0}, Lco/vine/android/LoginTwitterActivity;->access$100(Lco/vine/android/LoginTwitterActivity;)Z

    move-result v0

    if-eqz v0, :cond_62

    if-ne p2, v1, :cond_54

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v0, v0, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v0, v0, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    iget-object v2, p4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    iget-object v3, p4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    iget-wide v4, p4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    :goto_26
    return-void

    :cond_27
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v0, "token"

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "secret"

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "user_id"

    iget-wide v1, p4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "screen_name"

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v7}, Lco/vine/android/LoginTwitterActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v0}, Lco/vine/android/LoginTwitterActivity;->finish()V

    goto :goto_26

    :cond_54
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v0}, Lco/vine/android/LoginTwitterActivity;->dismissDialog()V

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    const v1, 0x7f0e00f2

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_26

    :cond_62
    if-ne p2, v1, :cond_7b

    if-eqz p4, :cond_7b

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    #setter for: Lco/vine/android/LoginTwitterActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
    invoke-static {v0, p4}, Lco/vine/android/LoginTwitterActivity;->access$202(Lco/vine/android/LoginTwitterActivity;Lco/vine/android/api/VineLogin;)Lco/vine/android/api/VineLogin;

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v0, v0, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    iget-object v2, p4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    iget-object v3, p4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    iget-wide v4, p4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    goto :goto_26

    :cond_7b
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v0}, Lco/vine/android/LoginTwitterActivity;->dismissDialog()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_26

    :cond_8c
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    const v1, 0x7f0e00d0

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_26
.end method

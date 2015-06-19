.class Lco/vine/android/SettingsFragment$SettingsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SettingsFragment;


# direct methods
.method constructor <init>(Lco/vine/android/SettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearCacheComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    :try_start_11
    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mClearCacheValue:Landroid/widget/TextView;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$000(Lco/vine/android/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v3}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/util/Util;->getCacheSize(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lco/vine/android/util/Util;->formatFileSize(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2e
    .catch Lco/vine/android/VineLoggingException; {:try_start_11 .. :try_end_2e} :catch_39

    :goto_2e
    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v1}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    return-void

    :catch_39
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public onConnectFacebookComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    const/16 v0, 0xc8

    if-eq p2, v0, :cond_2e

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e00ca

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mFacebookValue:Landroid/widget/TextView;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1700(Lco/vine/android/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e01f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #calls: Lco/vine/android/SettingsFragment;->invalidateFacebookSessionUI()V
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1800(Lco/vine/android/SettingsFragment;)V

    goto :goto_2d
.end method

.method public onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 19

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_98

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_98

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    const v0, 0x7f0e01db

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$2200(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v1

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-wide/from16 v5, p7

    invoke-static/range {v0 .. v6}, Lco/vine/android/client/VineAccountHelper;->saveTwitterInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const/4 v1, 0x1

    #setter for: Lco/vine/android/SettingsFragment;->mTwitterLogin:Z
    invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$2302(Lco/vine/android/SettingsFragment;Z)Z

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$2400(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v0, "settings_twitter_connected"

    const/4 v1, 0x1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_97
    return-void

    :cond_98
    const v0, 0x7f0e01d8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0e01d9

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/SettingsFragment;->mTwitterLogin:Z
    invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$2302(Lco/vine/android/SettingsFragment;Z)Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_bd
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_97
.end method

.method public onDeactivateAccountComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 8

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    if-eqz p4, :cond_38

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$2200(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$2200(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->logout(Lco/vine/android/client/Session;)Ljava/lang/String;

    const v0, 0x7f0e01cc

    const-string v1, "User account successfully deactivated"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    :goto_2e
    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v1}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    return-void

    :cond_38
    const v0, 0x7f0e01cb

    const-string v1, "User account deactivation failed"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public onDisconnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_12
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0204

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0203

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_71

    const v2, 0x7f0e01d8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0e01d9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$2200(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/vine/android/client/VineAccountHelper;->removeTwitterInfo(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #setter for: Lco/vine/android/SettingsFragment;->mTwitterLogin:Z
    invoke-static {v2, v4}, Lco/vine/android/SettingsFragment;->access$2302(Lco/vine/android/SettingsFragment;Z)Z

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$1900(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "settings_twitter_connected"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$1900(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_70
    return-void

    :cond_71
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_84
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_70
.end method

.method public onGetEditionsComplete(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const/4 v1, 0x1

    #setter for: Lco/vine/android/SettingsFragment;->mEditionsFetched:Z
    invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$2602(Lco/vine/android/SettingsFragment;Z)Z

    :cond_a
    return-void
.end method

.method public onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V
    .registers 9

    if-eqz p6, :cond_19

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {p6}, Lco/vine/android/api/VineUser;->isEmailVerified()Z

    move-result v1

    #setter for: Lco/vine/android/SettingsFragment;->mIsEmailVerified:Z
    invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$702(Lco/vine/android/SettingsFragment;Z)Z

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {p6}, Lco/vine/android/api/VineUser;->isPhoneVerified()Z

    move-result v1

    #setter for: Lco/vine/android/SettingsFragment;->mIsPhoneVerified:Z
    invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$1002(Lco/vine/android/SettingsFragment;Z)Z

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #calls: Lco/vine/android/SettingsFragment;->updateVerificationIcons()V
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$2500(Lco/vine/android/SettingsFragment;)V

    :cond_19
    return-void
.end method

.method public onLogoutComplete(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_26
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;)V

    goto :goto_14
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1400(Lco/vine/android/SettingsFragment;)Lco/vine/android/util/image/ImageKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAvatarImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1500(Lco/vine/android/SettingsFragment;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAvatarImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$1500(Lco/vine/android/SettingsFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    return-void
.end method

.method public onRequestEmailVerificationComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_2c

    const/16 v2, 0xa

    invoke-static {v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v0

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const v2, 0x104000a

    invoke-virtual {v0, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v2

    const v3, 0x7f0e0082

    invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v3}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    :goto_2b
    return-void

    :cond_2c
    if-eqz p3, :cond_39

    move-object v1, p3

    :goto_2f
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_2b

    :cond_39
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const v3, 0x7f0e0105

    invoke-virtual {v2, v3}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f
.end method

.method public onUpdateEditionComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1f

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #setter for: Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;
    invoke-static {v0, p4}, Lco/vine/android/SettingsFragment;->access$1202(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #setter for: Lco/vine/android/SettingsFragment;->mOriginalEdition:Ljava/lang/String;
    invoke-static {v0, p4}, Lco/vine/android/SettingsFragment;->access$2102(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_1f
    return-void
.end method

.method public onUpdateProfileComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$1600(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_a8

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$1900(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$1900(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "settings_profile_avatar_url"

    invoke-interface {v2, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_32
    const-string v2, "settings_profile_name"

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$100(Lco/vine/android/SettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "settings_profile_description"

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "settings_profile_location"

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$300(Lco/vine/android/SettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "settings_profile_email"

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$400(Lco/vine/android/SettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "settings_profile_phone"

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$900(Lco/vine/android/SettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mColorIndex:I
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$2000(Lco/vine/android/SettingsFragment;)I

    move-result v2

    if-ltz v2, :cond_7c

    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mColorIndex:I
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$2000(Lco/vine/android/SettingsFragment;)I

    move-result v2

    sget-object v3, Lco/vine/android/Settings;->PROFILE_BACKGROUND_COLORS:[I

    array-length v3, v3

    if-lt v2, v3, :cond_82

    :cond_7c
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const/4 v3, 0x0

    #setter for: Lco/vine/android/SettingsFragment;->mColorIndex:I
    invoke-static {v2, v3}, Lco/vine/android/SettingsFragment;->access$2002(Lco/vine/android/SettingsFragment;I)I

    :cond_82
    const-string v2, "profile_background"

    sget-object v3, Lco/vine/android/Settings;->PROFILE_BACKGROUND_COLORS:[I

    iget-object v4, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mColorIndex:I
    invoke-static {v4}, Lco/vine/android/SettingsFragment;->access$2000(Lco/vine/android/SettingsFragment;)I

    move-result v4

    aget v3, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "color_index"

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mColorIndex:I
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$2000(Lco/vine/android/SettingsFragment;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_a4
    invoke-static {v0}, Lco/vine/android/util/Util;->changeProfileColor(Landroid/app/Activity;)V

    :goto_a7
    return-void

    :cond_a8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b5

    const v2, 0x7f0e0258

    invoke-static {v0, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_a7

    :cond_b5
    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_a7
.end method

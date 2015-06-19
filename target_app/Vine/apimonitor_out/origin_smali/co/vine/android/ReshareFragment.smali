.class public Lco/vine/android/ReshareFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "ReshareFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ReshareFragment$ReshareListener;
    }
.end annotation


# static fields
.field public static final ARG_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ARG_NETWORK:Ljava/lang/String; = "network"

.field public static final ARG_POST_ID:Ljava/lang/String; = "post_id"

.field public static final ARG_SHARE_URL:Ljava/lang/String; = "share_url"

.field public static final ARG_THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "reshare"

.field private static final MAX_CHARS_TWITTER:I = 0x8c

.field public static final NETWORK_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final NETWORK_TWITTER:Ljava/lang/String; = "twitter"


# instance fields
.field private mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;

.field private mCaption:Landroid/widget/EditText;

.field private mDescription:Ljava/lang/String;

.field private mNetwork:Ljava/lang/String;

.field private mPostId:J

.field private mProgress:Landroid/app/ProgressDialog;

.field private mShareProgress:Landroid/app/ProgressDialog;

.field private mShareUrl:Ljava/lang/String;

.field private mThumbnailKey:Lco/vine/android/util/image/ImageKey;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V

    new-instance v0, Lco/vine/android/ReshareFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/ReshareFragment$1;-><init>(Lco/vine/android/ReshareFragment;)V

    iput-object v0, p0, Lco/vine/android/ReshareFragment;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/ReshareFragment;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mShareProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/ReshareFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/ReshareFragment;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/ReshareFragment;)Lco/vine/android/util/image/ImageKey;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mThumbnailKey:Lco/vine/android/util/image/ImageKey;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/ReshareFragment;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/ReshareFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lco/vine/android/ReshareFragment;)Lco/vine/android/CaptchaRequestHelper;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;

    return-object v0
.end method

.method private setThumbnailImage(Landroid/graphics/Bitmap;)V
    .registers 5

    if-eqz p1, :cond_13

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mThumbnailView:Landroid/widget/ImageView;

    new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v2, p0, Lco/vine/android/ReshareFragment;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mThumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_12
.end method

.method private validateSocialConnect()Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "facebook"

    iget-object v2, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->isConnectedToFacebook(Landroid/app/Activity;)Z

    move-result v0

    :cond_15
    :goto_15
    return v0

    :cond_16
    const-string v1, "twitter"

    iget-object v2, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "settings_twitter_connected"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_15
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v5, "facebook"

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lco/vine/android/client/AppController;->getValidFacebookSession(Landroid/app/Activity;Z)Lcom/facebook/Session;

    move-result-object v3

    if-nez v3, :cond_57

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, p0}, Lco/vine/android/client/AppController;->connectToFacebookInitialize(Landroid/support/v4/app/Fragment;)V

    :cond_1f
    :goto_1f
    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setLines(I)V

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mThumbnailUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    new-instance v5, Lco/vine/android/util/image/ImageKey;

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mThumbnailUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lco/vine/android/ReshareFragment;->mThumbnailKey:Lco/vine/android/util/image/ImageKey;

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mThumbnailKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {v5, v6}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v5}, Lco/vine/android/ReshareFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    :cond_47
    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mDescription:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_56
    return-void

    :cond_57
    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getPendingFacebookToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->sendFacebookToken()Ljava/lang/String;

    goto :goto_1f

    :cond_65
    const-string v5, "twitter"

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    if-eqz v0, :cond_89

    if-nez v2, :cond_b0

    :cond_89
    new-instance v5, Lco/vine/android/VineLoggingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account or AM is null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    :cond_b0
    const-string v5, "account_t_token"

    invoke-virtual {v2, v0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lco/vine/android/ReshareFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    invoke-static {v5, v1}, Lco/vine/android/client/AppController;->startTwitterAuthWithFinish(Lcom/twitter/android/sdk/Twitter;Landroid/app/Activity;)V

    goto/16 :goto_1f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16

    const-wide/16 v10, 0x0

    const/4 v9, -0x1

    if-nez p2, :cond_d

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;

    invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/CaptchaRequestHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mShareProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mShareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mShareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_c

    :cond_27
    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_33
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f0037

    invoke-direct {v7, v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0e0120

    invoke-virtual {p0, v0}, Lco/vine/android/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    iput-object v7, p0, Lco/vine/android/ReshareFragment;->mProgress:Landroid/app/ProgressDialog;

    :cond_52
    packed-switch p1, :pswitch_data_f4

    const-string v0, "Facebook auth came back: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne p2, v9, :cond_c

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v8

    if-eqz v8, :cond_ee

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v8}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/vine/android/client/AppController;->setPendingFacebookToken(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->sendFacebookToken()Ljava/lang/String;

    goto :goto_c

    :pswitch_8d
    if-ne p2, v9, :cond_c

    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "tk"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_c

    :pswitch_b4
    if-ne p2, v9, :cond_c

    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "secret"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_c

    :cond_db
    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lco/vine/android/ReshareFragment$2;

    invoke-direct {v1, p0}, Lco/vine/android/ReshareFragment$2;-><init>(Lco/vine/android/ReshareFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0, p0}, Lco/vine/android/client/AppController;->connectToFacebookPublish(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_c

    :cond_ee
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseControllerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_c

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_b4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lco/vine/android/ReshareFragment$ReshareListener;

    invoke-direct {v1, p0}, Lco/vine/android/ReshareFragment$ReshareListener;-><init>(Lco/vine/android/ReshareFragment;)V

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "post_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/ReshareFragment;->mPostId:J

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mDescription:Ljava/lang/String;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    const-string v1, "share_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mShareUrl:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/ReshareFragment;->mShareUrl:Ljava/lang/String;

    if-nez v1, :cond_36

    const-string v1, ""

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mShareUrl:Ljava/lang/String;

    :cond_36
    const-string v1, "thumbnail_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mThumbnailUrl:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/ReshareFragment;->mThumbnailUrl:Ljava/lang/String;

    if-nez v1, :cond_46

    const-string v1, ""

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mThumbnailUrl:Ljava/lang/String;

    :cond_46
    new-instance v1, Lcom/twitter/android/sdk/Twitter;

    sget-object v2, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    sget-object v3, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    if-eqz p1, :cond_58

    iget-object v1, p0, Lco/vine/android/ReshareFragment;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;

    invoke-virtual {v1, p1}, Lco/vine/android/CaptchaRequestHelper;->restorePendingCaptchaRequest(Landroid/os/Bundle;)V

    :cond_58
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/vine/android/ReshareFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_2e

    const v1, 0x7f100011

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0a0245

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    :try_start_13
    const-string v1, "facebook"

    iget-object v2, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const v1, 0x7f0e0202

    invoke-virtual {p0, v1}, Lco/vine/android/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2b
    :goto_2b
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseControllerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    const-string v1, "twitter"

    iget-object v2, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const v1, 0x7f0e0203

    invoke-virtual {p0, v1}, Lco/vine/android/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_47} :catch_48

    goto :goto_2b

    :catch_48
    move-exception v1

    goto :goto_2e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v1, 0x7f030088

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mThumbnailView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 13

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_d0

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_d
    return v5

    :pswitch_e
    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int v6, v6, 0x8c

    add-int/lit8 v0, v6, -0x1

    const-string v6, "twitter"

    iget-object v7, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-le v6, v0, :cond_45

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0e01ae

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lco/vine/android/ReshareFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_d

    :cond_45
    invoke-direct {p0}, Lco/vine/android/ReshareFragment;->validateSocialConnect()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v7, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    iget-wide v8, p0, Lco/vine/android/ReshareFragment;->mPostId:J

    invoke-virtual {v6, v7, v3, v8, v9}, Lco/vine/android/client/AppController;->sharePost(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0f0037

    invoke-direct {v1, v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v6, 0x7f0e021a

    invoke-virtual {p0, v6}, Lco/vine/android/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-object v1, p0, Lco/vine/android/ReshareFragment;->mShareProgress:Landroid/app/ProgressDialog;

    goto/16 :goto_d

    :cond_93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v7, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0e0206

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {p0, v7, v8}, Lco/vine/android/ReshareFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_d

    nop

    :pswitch_data_d0
    .packed-switch 0x7f0a0245
        :pswitch_e
    .end packed-switch
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ReshareFragment;->mCaption:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    :cond_11
    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;

    invoke-virtual {v0}, Lco/vine/android/CaptchaRequestHelper;->handlePendingCaptchaRequest()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/ReshareFragment;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;

    invoke-virtual {v0, p1}, Lco/vine/android/CaptchaRequestHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

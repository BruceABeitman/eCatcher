.class public Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "PGModifyPasswordActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/login/PGModifyPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifyPasswordFragment"
.end annotation


# instance fields
.field private mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

.field private mErrorText:Landroid/widget/TextView;

.field private mEyeImagView:Landroid/widget/ImageView;

.field private mModifyPassword:Lcom/pinguo/camera360/login/model/ModifyPassword;

.field private mRootView:Landroid/view/View;

.field private mShowPassword:Z

.field private mUserId:Ljava/lang/String;

.field private mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;

.field private mUserToken:Ljava/lang/String;

.field private mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mShowPassword:Z

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mShowPassword:Z

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEyeImagView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->modifyPassword(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->hideDialog()V

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/model/User$Info;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;

    return-object v0
.end method

.method private hideDialog()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-void
.end method

.method private modifyPassword(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mModifyPassword:Lcom/pinguo/camera360/login/model/ModifyPassword;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mModifyPassword:Lcom/pinguo/camera360/login/model/ModifyPassword;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/ModifyPassword;->cancel(Z)Z

    :cond_a
    new-instance v0, Lcom/pinguo/camera360/login/model/ModifyPassword;

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserToken:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/pinguo/camera360/login/model/ModifyPassword;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mModifyPassword:Lcom/pinguo/camera360/login/model/ModifyPassword;

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->showDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mModifyPassword:Lcom/pinguo/camera360/login/model/ModifyPassword;

    new-instance v1, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;-><init>(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/ModifyPassword;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method public static newInstance()Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
    .registers 1

    new-instance v0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;-><init>()V

    return-object v0
.end method

.method private setRootViewBackground(Landroid/view/View;)V
    .registers 8

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020200

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_18} :catch_25

    :goto_18
    return-void

    :catch_19
    move-exception v2

    const-string/jumbo v5, "#60495b"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_18

    :catch_25
    move-exception v2

    const-string/jumbo v5, "#60495b"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_18
.end method

.method private showDialog()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    goto :goto_d
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v1, v1, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v1, v1, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserToken:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->logout()V

    :goto_26
    return-void

    :cond_27
    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_26
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x4

    const v3, 0x7f03008f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0349

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->setRootViewBackground(Landroid/view/View;)V

    const v3, 0x7f0a00b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    const v3, 0x7f0a00b2

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a00b1

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f080138

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v3, 0x7f0a02b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/login/EditTextWithLine;

    iput-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/login/EditTextWithLine;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    new-instance v4, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$1;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$1;-><init>(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/login/EditTextWithLine;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v3, 0x7f0a02b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEyeImagView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEyeImagView:Landroid/widget/ImageView;

    new-instance v4, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;-><init>(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a034b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;-><init>(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a034a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mErrorText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_96

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_96
    return-object v2
.end method

.method public onDestroy()V
    .registers 7

    :try_start_0
    iget-object v4, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_26

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string/jumbo v4, "test"

    const-string/jumbo v5, "\u624b\u52a8\u91ca\u653e\u4e86\u5185\u5b58"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_34

    :cond_26
    :goto_26
    iget-object v4, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mModifyPassword:Lcom/pinguo/camera360/login/model/ModifyPassword;

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mModifyPassword:Lcom/pinguo/camera360/login/model/ModifyPassword;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/login/model/ModifyPassword;->cancel(Z)Z

    :cond_30
    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V

    return-void

    :catch_34
    move-exception v4

    goto :goto_26
.end method

.method public onRightBtnClick()V
    .registers 1

    return-void
.end method

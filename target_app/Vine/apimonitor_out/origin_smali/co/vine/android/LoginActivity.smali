.class public Lco/vine/android/LoginActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/LoginActivity$LoginSessionListener;
    }
.end annotation


# static fields
.field private static final DIALOG_ACTIVATE_ACCOUNT:I = 0x1

.field public static final EXTRA_FINISH:Ljava/lang/String; = "finish"


# instance fields
.field private mFinish:Z

.field private mLoginButton:Landroid/view/MenuItem;

.field private mPassword:Landroid/widget/EditText;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/LoginActivity;)Z
    .registers 2

    invoke-direct {p0}, Lco/vine/android/LoginActivity;->validate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lco/vine/android/LoginActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/LoginActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/LoginActivity;->login(Z)V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getIntentWithFinish(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "finish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private login(Z)V
    .registers 11

    const/4 v1, 0x0

    iget-object v3, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Landroid/app/ProgressDialog;

    const v3, 0x7f0f0037

    invoke-direct {v6, p0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v3, 0x7f0e0120

    invoke-virtual {p0, v3}, Lco/vine/android/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :try_start_2b
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_44

    :goto_2e
    iput-object v6, p0, Lco/vine/android/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lco/vine/android/LoginActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3, v2}, Lco/vine/android/client/AppController;->getSession(Ljava/lang/String;)Lco/vine/android/client/Session;

    move-result-object v8

    new-instance v0, Lco/vine/android/api/VineLogin;

    const-wide/16 v3, 0x0

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/LoginActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1, v8, v0, v7, p1}, Lco/vine/android/client/AppController;->login(Lco/vine/android/client/Session;Lco/vine/android/api/VineLogin;Ljava/lang/String;Z)Ljava/lang/String;

    return-void

    :catch_44
    move-exception v3

    goto :goto_2e
.end method

.method private validate()Z
    .registers 3

    iget-object v0, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/LoginActivity;->mLoginButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lco/vine/android/LoginActivity;->mLoginButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/LoginActivity;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_d
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method completeLogin(ILjava/lang/String;I)V
    .registers 6

    packed-switch p1, :pswitch_data_3e

    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->ACCOUNT_DEACTIVATED:Lco/vine/android/api/VineError$VineKnownErrors;

    iget v1, v1, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    if-ne p3, v1, :cond_39

    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v0

    const v1, 0x7f0e01ce

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e01cf

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e01cd

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    invoke-virtual {p0}, Lco/vine/android/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    :goto_2d
    return-void

    :pswitch_2e
    iget-boolean v1, p0, Lco/vine/android/LoginActivity;->mFinish:Z

    if-nez v1, :cond_35

    invoke-static {p0}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;)V

    :cond_35
    invoke-virtual {p0}, Lco/vine/android/LoginActivity;->finish()V

    goto :goto_2d

    :cond_39
    invoke-static {p0, p2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_2d

    nop

    :pswitch_data_3e
    .packed-switch 0xc8
        :pswitch_2e
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    :goto_7
    return-void

    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/ResetPasswordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "email"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_24
    invoke-virtual {p0, v1}, Lco/vine/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    :pswitch_data_28
    .packed-switch 0x7f0a011a
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v4, 0x7f030051

    invoke-super {p0, p1, v4, v8}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const v6, 0x7f0e0123

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lco/vine/android/LoginActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V

    new-instance v4, Lco/vine/android/LoginActivity$LoginSessionListener;

    invoke-direct {v4, p0}, Lco/vine/android/LoginActivity$LoginSessionListener;-><init>(Lco/vine/android/LoginActivity;)V

    iput-object v4, p0, Lco/vine/android/LoginActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    const v4, 0x7f0a0115

    invoke-virtual {p0, v4}, Lco/vine/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    iget-object v4, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v4, 0x7f0a0118

    invoke-virtual {p0, v4}, Lco/vine/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    iget-object v4, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    new-instance v5, Lco/vine/android/LoginActivity$1;

    invoke-direct {v5, p0}, Lco/vine/android/LoginActivity$1;-><init>(Lco/vine/android/LoginActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-array v2, v9, [Landroid/text/style/StyleSpan;

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v4, v2, v8

    const v4, 0x7f0a011a

    invoke-virtual {p0, v4}, Lco/vine/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0e011f

    invoke-virtual {p0, v4}, Lco/vine/android/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v2, v3, v4}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lco/vine/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9c

    const-string v4, "finish"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lco/vine/android/LoginActivity;->mFinish:Z

    :goto_9b
    return-void

    :cond_9c
    iput-boolean v8, p0, Lco/vine/android/LoginActivity;->mFinish:Z

    goto :goto_9b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lco/vine/android/LoginActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0248

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/LoginActivity;->mLoginButton:Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .registers 5

    packed-switch p2, :pswitch_data_e

    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    packed-switch p3, :pswitch_data_14

    goto :goto_3

    :pswitch_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/LoginActivity;->login(Z)V

    goto :goto_3

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_14
    .packed-switch -0x2
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    invoke-direct {p0}, Lco/vine/android/LoginActivity;->validate()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/LoginActivity;->login(Z)V

    :cond_16
    const/4 v0, 0x1

    goto :goto_b

    :pswitch_data_18
    .packed-switch 0x7f0a0248
        :pswitch_c
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.class public Lco/vine/android/ResetPasswordActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "ResetPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ResetPasswordActivity$1;,
        Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;
    }
.end annotation


# static fields
.field private static final DIALOG_CONFIRMED:I = 0x1

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "email"


# instance fields
.field private mEmail:Landroid/widget/EditText;

.field private mSend:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V

    return-void
.end method

.method private validate()Z
    .registers 3

    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v3, 0x7f030087

    invoke-super {p0, p1, v3, v7}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lco/vine/android/ResetPasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lco/vine/android/ResetPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x7f0e0172

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lco/vine/android/ResetPasswordActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V

    new-instance v3, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;-><init>(Lco/vine/android/ResetPasswordActivity;Lco/vine/android/ResetPasswordActivity$1;)V

    iput-object v3, p0, Lco/vine/android/ResetPasswordActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    const v3, 0x7f0a01e8

    invoke-virtual {p0, v3}, Lco/vine/android/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v7, v4}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lco/vine/android/ResetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_73

    const-string v3, "email"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string v3, "email"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_73
    iput-object v1, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lco/vine/android/ResetPasswordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a024b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mSend:Landroid/view/MenuItem;

    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mSend:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/ResetPasswordActivity;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    :pswitch_c
    invoke-direct {p0}, Lco/vine/android/ResetPasswordActivity;->validate()Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0f0037

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    const v1, 0x7f0e00b9

    invoke-virtual {p0, v1}, Lco/vine/android/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lco/vine/android/ResetPasswordActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->resetPassword(Ljava/lang/String;)Ljava/lang/String;

    :cond_3c
    const/4 v1, 0x1

    goto :goto_b

    :pswitch_data_3e
    .packed-switch 0x7f0a024b
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onPause()V

    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onResume()V

    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mSend:Landroid/view/MenuItem;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mSend:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/ResetPasswordActivity;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_d
    return-void
.end method

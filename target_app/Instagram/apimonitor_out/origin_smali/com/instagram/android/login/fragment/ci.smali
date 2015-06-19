.class public final Lcom/instagram/android/login/fragment/ci;
.super Lcom/instagram/base/a/b;
.source "VerifyFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private a:Lcom/instagram/android/login/c/b;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/os/CountDownTimer;

.field private e:Ljava/lang/String;

.field private f:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private final g:Landroid/os/Handler;

.field private h:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->g:Landroid/os/Handler;

    return-void
.end method

.method private U()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private V()V
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/fragment/cv;

    invoke-interface {v0}, Lcom/instagram/android/login/fragment/cv;->b()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/fragment/ci;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private b()V
    .registers 7

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->c()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/instagram/android/c/a/z;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->y()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/cs;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/login/fragment/cs;-><init>(Lcom/instagram/android/login/fragment/ci;B)V

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->U()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/z;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/z;->h()V

    goto :goto_11
.end method

.method static synthetic b(Lcom/instagram/android/login/fragment/ci;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->b()V

    return-void
.end method

.method private c()V
    .registers 4

    new-instance v1, Lcom/instagram/android/login/a;

    invoke-direct {v1}, Lcom/instagram/android/login/a;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_EMAIL"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->a:Ljava/lang/String;

    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->d:Ljava/lang/String;

    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_USERNAME"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->b:Ljava/lang/String;

    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PASSWORD"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->c:Ljava/lang/String;

    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PROFILE_PIC"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;

    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_GUID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->f:Ljava/lang/String;

    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_DEVICE_ID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->e:Ljava/lang/String;

    const-string v0, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_NAME"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->U()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/login/a;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->a:Lcom/instagram/android/login/c/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/b;->a(Lcom/instagram/android/login/a;)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/login/fragment/ci;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->V()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/login/fragment/ci;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_27

    :cond_20
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    goto :goto_a

    :cond_27
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    goto :goto_a
.end method

.method static synthetic e(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/login/fragment/ci;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->d()V

    return-void
.end method

.method static synthetic g(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final E()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    if-nez v0, :cond_13

    new-instance v0, Lcom/instagram/android/login/fragment/cr;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/cr;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_13
    return-void
.end method

.method public final G()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->d:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v5, 0x0

    sget v0, Lcom/facebook/aw;->fragment_verify:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->no_code_received:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->c:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->confirmation_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->confirmation_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->code_instructions:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/login/fragment/ci;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/login/fragment/ci;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/cn;

    invoke-direct {v2, p0, v5}, Lcom/instagram/android/login/fragment/cn;-><init>(Lcom/instagram/android/login/fragment/ci;B)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/cj;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/cj;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->e:Ljava/lang/String;

    :cond_21
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->h:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    sget v0, Lcom/facebook/az;->verify_phone_number:I

    new-instance v1, Lcom/instagram/android/login/fragment/cm;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/cm;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->d(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/ci;->d()V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 12

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v6, Lcom/instagram/android/login/c/b;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v7

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->y()Landroid/support/v4/app/an;

    move-result-object v8

    sget v9, Lcom/instagram/android/login/c/d;->b:I

    new-instance v0, Lcom/instagram/android/login/fragment/ck;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/login/fragment/ci;->g:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->p()Landroid/support/v4/app/s;

    move-result-object v4

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/login/fragment/ck;-><init>(Lcom/instagram/android/login/fragment/ci;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V

    invoke-direct {v6, v7, v8, v9, v0}, Lcom/instagram/android/login/c/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput-object v6, p0, Lcom/instagram/android/login/fragment/ci;->a:Lcom/instagram/android/login/c/b;

    :cond_47
    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "verify"

    return-object v0
.end method

.method public final l_()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ci;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-object v3, p0, Lcom/instagram/android/login/fragment/ci;->b:Landroid/widget/EditText;

    iput-object v3, p0, Lcom/instagram/android/login/fragment/ci;->c:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/instagram/android/login/fragment/ci;->f:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    return-void
.end method

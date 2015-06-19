.class public final Lcom/instagram/android/fragment/o;
.super Lcom/instagram/base/a/b;
.source "ChangePasswordFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private a:I

.field private aa:Lcom/instagram/android/login/d;

.field private final ab:Lcom/instagram/android/fragment/w;

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->b:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/fragment/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/w;-><init>(Lcom/instagram/android/fragment/o;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->ab:Lcom/instagram/android/fragment/w;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/o;)Lcom/instagram/android/fragment/w;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->ab:Lcom/instagram/android/fragment/w;

    return-object v0
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/o;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/fragment/o;->i:Z

    return p1
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->a()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/n/e;->a(Ljava/lang/CharSequence;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/instagram/android/c/b/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/instagram/android/fragment/t;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/t;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/b/a;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;

    new-instance v1, Lcom/instagram/common/a/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->y()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/a/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/a/i;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_11
.end method

.method static synthetic b(Lcom/instagram/android/fragment/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/o;->c()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/o;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/o;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/o;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    invoke-virtual {v0}, Lcom/instagram/android/login/d;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_21
    iget-object v1, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_26
    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private c(Z)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/fragment/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/o;->b()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/fragment/o;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/o;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/o;->a:I

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-boolean v0, p0, Lcom/instagram/android/fragment/o;->h:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->b(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/o;->h:Z

    :cond_3b
    return-void
.end method

.method public final F()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/o;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    sget v0, Lcom/facebook/aw;->fragment_change_password:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->current_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->new_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->confirm_new_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget v0, Lcom/facebook/av;->reset_using_facebook_link:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->g:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/fragment/p;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/p;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/instagram/android/login/d;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/o;->o()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-direct {v0, v2, v3, v4}, Lcom/instagram/android/login/d;-><init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    new-instance v2, Lcom/instagram/android/fragment/q;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/q;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/j;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/r;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/r;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/s;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/s;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    return-object v1
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/o;->ab:Lcom/instagram/android/fragment/w;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/base/a/b;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    sget v0, Lcom/facebook/az;->change_password:I

    new-instance v1, Lcom/instagram/android/fragment/v;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/v;-><init>(Lcom/instagram/android/fragment/o;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/o;->f:Landroid/view/View;

    iget-boolean v0, p0, Lcom/instagram/android/fragment/o;->i:Z

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/o;->c()V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "change_password"

    return-object v0
.end method

.method public final j_()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/o;->a(I)V

    return-void
.end method

.method public final k_()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/o;->a(I)V

    return-void
.end method

.method public final l_()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    invoke-virtual {v0, v2}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/j;)V

    iput-object v2, p0, Lcom/instagram/android/fragment/o;->aa:Lcom/instagram/android/login/d;

    iput-object v2, p0, Lcom/instagram/android/fragment/o;->c:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/instagram/android/fragment/o;->d:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/instagram/android/fragment/o;->e:Landroid/widget/EditText;

    return-void
.end method

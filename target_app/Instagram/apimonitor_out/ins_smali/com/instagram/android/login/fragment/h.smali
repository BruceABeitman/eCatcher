.class public final Lcom/instagram/android/login/fragment/h;
.super Lcom/instagram/base/a/b;
.source "LoginFragment.java"
.implements Lcom/instagram/a/b;
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/TextView;
.field private c:Lcom/instagram/ui/widget/refresh/RefreshButton;
.field private d:Landroid/view/View;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
return-void
.end method
.method private U()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
if-eqz v0, :cond_1e
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->d()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1f
invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1f
const/4 v0, 0x1
:goto_1b
invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V
:cond_1e
return-void
:cond_1f
const/4 v0, 0x0
goto :goto_1b
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/h;)Lcom/instagram/ui/widget/refresh/RefreshButton;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
return-object v0
.end method
.method private b()V
.registers 6
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
const-wide v2, 0x139b37cbc60L
cmp-long v0, v0, v2
if-gez v0, :cond_18
sget v0, Lcom/facebook/az;->wrong_datetime:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
:goto_17
return-void
:cond_18
invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->c()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/instagram/o/b;->ag:Lcom/instagram/o/b;
invoke-virtual {v1}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "log_in_token"
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V
new-instance v1, Lcom/instagram/android/login/c/g;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->n()Landroid/content/Context;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->y()Landroid/support/v4/app/an;
move-result-object v3
new-instance v4, Lcom/instagram/android/login/a/h;
invoke-direct {v4, p0, v0}, Lcom/instagram/android/login/a/h;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/login/c/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/instagram/android/login/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_17
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->b()V
return-void
.end method
.method private c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/login/fragment/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->U()V
return-void
.end method
.method private d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v4, 0x0
sget v0, Lcom/facebook/aw;->fragment_login:I
invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
sget v1, Lcom/facebook/av;->username:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->j()Landroid/os/Bundle;
move-result-object v2
if-eqz v2, :cond_24
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "com.instagram.android.login.fragment.ARGUMENT_USERNAME"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_24
if-nez v1, :cond_34
invoke-static {}, Lcom/instagram/m/a;->b()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/instagram/common/u/e;->b(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_34
invoke-static {}, Lcom/instagram/m/a;->b()Ljava/lang/String;
move-result-object v1
:cond_34
if-eqz v1, :cond_b7
sget-object v2, Lcom/instagram/o/b;->ad:Lcom/instagram/o/b;
invoke-virtual {v2}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "log_in_token"
invoke-virtual {v2, v3, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/common/analytics/b;->a()V
iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_4a
sget v1, Lcom/facebook/av;->password:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
sget v1, Lcom/facebook/av;->forgot_password_link:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/login/fragment/h;->d:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
new-instance v2, Landroid/text/method/PasswordTransformationMethod;
invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
new-instance v1, Lcom/instagram/android/login/fragment/n;
invoke-direct {v1, p0, v4}, Lcom/instagram/android/login/fragment/n;-><init>(Lcom/instagram/android/login/fragment/h;B)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
new-instance v2, Lcom/instagram/android/login/fragment/i;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/i;-><init>(Lcom/instagram/android/login/fragment/h;)V
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
invoke-interface {v1, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
invoke-interface {v1, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->d:Landroid/view/View;
new-instance v2, Lcom/instagram/android/login/fragment/j;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/j;-><init>(Lcom/instagram/android/login/fragment/h;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
new-instance v2, Lcom/instagram/android/login/fragment/k;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/k;-><init>(Lcom/instagram/android/login/fragment/h;)V
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
new-instance v2, Lcom/instagram/android/login/fragment/l;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/l;-><init>(Lcom/instagram/android/login/fragment/h;)V
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
return-object v0
:cond_b7
sget-object v1, Lcom/instagram/o/b;->ad:Lcom/instagram/o/b;
invoke-virtual {v1}, Lcom/instagram/o/b;->c()V
goto :goto_4a
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
sget v0, Lcom/facebook/az;->nux_dayone_log_in:I
new-instance v1, Lcom/instagram/android/login/fragment/m;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/m;-><init>(Lcom/instagram/android/login/fragment/h;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/h;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/h;->U()V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "login"
return-object v0
.end method
.method public final j_()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->o()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x3f80
cmpl-float v0, v0, v1
if-ltz v0, :cond_38
iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
:goto_25
invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z
move-result v1
if-eqz v1, :cond_2e
invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V
:cond_2e
invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->n()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/instagram/common/u/f;->b(Landroid/content/Context;Landroid/view/View;)V
:cond_38
return-void
:cond_39
iget-object v0, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
goto :goto_25
.end method
.method public final k_()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/h;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V
return-void
.end method
.method public final l_()V
.registers 4
const/4 v2, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
iput-object v2, p0, Lcom/instagram/android/login/fragment/h;->a:Landroid/widget/TextView;
iput-object v2, p0, Lcom/instagram/android/login/fragment/h;->b:Landroid/widget/TextView;
iput-object v2, p0, Lcom/instagram/android/login/fragment/h;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;
iput-object v2, p0, Lcom/instagram/android/login/fragment/h;->d:Landroid/view/View;
return-void
.end method
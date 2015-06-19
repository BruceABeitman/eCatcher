.class public final Lcom/instagram/android/login/fragment/o;
.super Lcom/instagram/base/a/b;
.source "LookupFragment.java"
.implements Lcom/instagram/a/b;
.field public final a:Lcom/instagram/api/j/a;
.field public final b:Landroid/view/View$OnClickListener;
.field private final c:Landroid/os/Handler;
.field private d:Landroid/widget/EditText;
.field private e:Lcom/instagram/ui/widget/refresh/RefreshButton;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->c:Landroid/os/Handler;
new-instance v0, Lcom/instagram/android/login/fragment/p;
invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/p;-><init>(Lcom/instagram/android/login/fragment/o;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->a:Lcom/instagram/api/j/a;
new-instance v0, Lcom/instagram/android/login/fragment/s;
invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/s;-><init>(Lcom/instagram/android/login/fragment/o;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->b:Landroid/view/View$OnClickListener;
return-void
.end method
.method private U()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;
if-eqz v0, :cond_14
iget-object v1, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->V()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_11
invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V
:cond_14
return-void
:cond_15
const/4 v0, 0x0
goto :goto_11
.end method
.method private V()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/o;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->V()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/o;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->c:Landroid/os/Handler;
return-object v0
.end method
.method private b()V
.registers 5
sget-object v0, Lcom/instagram/o/b;->an:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Lcom/instagram/android/login/c/h;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->y()Landroid/support/v4/app/an;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/login/fragment/o;->a:Lcom/instagram/api/j/a;
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/login/c/h;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->V()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/h;->a(Ljava/lang/String;)V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/login/fragment/o;)Lcom/instagram/ui/widget/refresh/RefreshButton;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;
return-object v0
.end method
.method private c()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
return-void
.end method
.method private d()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/login/fragment/o;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->b()V
return-void
.end method
.method static synthetic e(Lcom/instagram/android/login/fragment/o;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->U()V
return-void
.end method
.method public final E()V
.registers 1
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->U()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const/4 v3, 0x0
sget v0, Lcom/facebook/aw;->fragment_lookup:I
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->fragment_lookup_edittext:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
invoke-static {}, Lcom/instagram/m/a;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
new-instance v2, Lcom/instagram/android/login/fragment/u;
invoke-direct {v2, p0, v3}, Lcom/instagram/android/login/fragment/u;-><init>(Lcom/instagram/android/login/fragment/o;B)V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
new-instance v2, Lcom/instagram/android/login/fragment/t;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/t;-><init>(Lcom/instagram/android/login/fragment/o;)V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
return-object v1
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
sget-object v0, Lcom/instagram/o/b;->am:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
sget v0, Lcom/facebook/az;->reset_password:I
iget-object v1, p0, Lcom/instagram/android/login/fragment/o;->b:Landroid/view/View$OnClickListener;
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;
iget-object v0, p0, Lcom/instagram/android/login/fragment/o;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;
sget v1, Lcom/facebook/au;->nav_arrow_next:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->U()V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/o;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/av;->fragment_lookup_edittext:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "password_lookup"
return-object v0
.end method
.method public final j_()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->c()V
invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V
return-void
.end method
.method public final k_()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/o;->d()V
invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V
return-void
.end method
.method public final l_()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/login/fragment/o;->d:Landroid/widget/EditText;
return-void
.end method
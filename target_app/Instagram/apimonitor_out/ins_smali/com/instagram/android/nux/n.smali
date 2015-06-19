.class public final Lcom/instagram/android/nux/n;
.super Lcom/instagram/base/a/b;
.source "LandingPageFragment.java"
.implements Lcom/instagram/a/b;
.field private a:I
.field private final b:Lcom/facebook/b/e;
.field private final c:Landroid/os/Handler;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Lcom/instagram/android/nux/ae;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/nux/ae;-><init>(Lcom/instagram/android/nux/n;B)V
iput-object v0, p0, Lcom/instagram/android/nux/n;->b:Lcom/facebook/b/e;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/nux/n;->c:Landroid/os/Handler;
return-void
.end method
.method private U()V
.registers 4
new-instance v0, Lcom/instagram/android/nux/ad;
invoke-direct {v0}, Lcom/instagram/android/nux/ad;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;
move-result-object v1
const-string v2, "ProgressDialog"
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/ag;Ljava/lang/String;)I
return-void
.end method
.method private V()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;
move-result-object v0
const-string v1, "ProgressDialog"
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Landroid/support/v4/app/f;
if-eqz v0, :cond_11
invoke-virtual {v0}, Landroid/support/v4/app/f;->b()V
:cond_11
return-void
.end method
.method private W()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->network_error:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
sget v1, Lcom/facebook/az;->ok:I
new-instance v2, Lcom/instagram/android/nux/ab;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/ab;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method private X()V
.registers 3
new-instance v0, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/android/login/fragment/h;
invoke-direct {v1}, Lcom/instagram/android/login/fragment/h;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method private Y()V
.registers 2
const/4 v0, 0x0
invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V
sget-object v0, Lcom/instagram/o/b;->u:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-direct {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;-><init>()V
invoke-direct {p0, v0}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/login/fragment/RegisterParameters;)V
return-void
.end method
.method private static Z()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v0
if-eqz v0, :cond_13
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method private a(Landroid/view/ViewGroup;)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->button_developer_options:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/android/nux/w;
invoke-direct {v1, p0}, Lcom/instagram/android/nux/w;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
return-void
.end method
.method private a(Lcom/instagram/android/login/fragment/RegisterParameters;)V
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v1, p0, Lcom/instagram/android/nux/n;->c:Landroid/os/Handler;
new-instance v2, Lcom/instagram/android/nux/q;
invoke-direct {v2, p0, v0}, Lcom/instagram/android/nux/q;-><init>(Lcom/instagram/android/nux/n;Landroid/os/Bundle;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic a(Lcom/instagram/android/nux/n;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/nux/n;->Y()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/nux/n;Lcom/instagram/android/login/fragment/RegisterParameters;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/android/login/fragment/RegisterParameters;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/nux/n;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/nux/n;->b(Ljava/lang/String;)V
return-void
.end method
.method private a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
.registers 6
sget-object v0, Lcom/instagram/o/b;->l:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->reset_to_login:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
sget v1, Lcom/facebook/az;->reset_password:I
new-instance v2, Lcom/instagram/android/nux/r;
invoke-direct {v2, p0, p1, p2}, Lcom/instagram/android/nux/r;-><init>(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/instagram/android/nux/z;
invoke-direct {v0, p0, p1}, Lcom/instagram/android/nux/z;-><init>(Lcom/instagram/android/nux/n;Ljava/lang/String;)V
new-instance v1, Lcom/instagram/android/nux/f;
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->y()Landroid/support/v4/app/an;
move-result-object v3
invoke-direct {v1, v2, v3, v0, p1}, Lcom/instagram/android/nux/f;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->h:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-virtual {v1}, Lcom/instagram/android/nux/f;->h()V
return-void
.end method
.method private b(Lcom/instagram/android/login/fragment/RegisterParameters;)V
.registers 3
sget-object v0, Lcom/instagram/o/b;->s:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-direct {p0, p1}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/login/fragment/RegisterParameters;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/nux/n;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/nux/n;->X()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/user/c/a;Ljava/lang/String;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/nux/n;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/nux/n;->a(Ljava/lang/String;)V
return-void
.end method
.method private b(Lcom/instagram/user/c/a;Ljava/lang/String;)V
.registers 6
sget-object v0, Lcom/instagram/o/b;->m:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v0
invoke-interface {v0, p1}, Lcom/instagram/user/c/h;->a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "argument_reset_token"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "argument_user_id"
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/login/fragment/v;
invoke-direct {v2}, Lcom/instagram/android/login/fragment/v;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method private b(Ljava/lang/String;)V
.registers 6
sget-object v0, Lcom/instagram/o/b;->i:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->nux_dayone_duplicate_email:I
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {p0, v1, v2}, Lcom/instagram/android/nux/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
sget v1, Lcom/facebook/az;->nux_dayone_log_in:I
new-instance v2, Lcom/instagram/android/nux/ac;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/ac;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
sget v1, Lcom/facebook/az;->nux_dayone_new_account:I
new-instance v2, Lcom/instagram/android/nux/p;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/p;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method private static b(Landroid/content/Context;)Z
.registers 2
:try_start_0
invoke-static {p0}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;
:try_end_3
.catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5
const/4 v0, 0x0
:goto_4
return v0
:catch_5
move-exception v0
const/4 v0, 0x1
goto :goto_4
.end method
.method static synthetic c(Lcom/instagram/android/nux/n;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/nux/n;->c:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic c()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/instagram/android/nux/n;->Z()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private d()V
.registers 4
invoke-static {}, Lcom/instagram/android/nux/n;->Z()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_17
sget-object v0, Lcom/instagram/o/b;->d:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
sget-object v1, Lcom/instagram/share/b/f;->b:[Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/android/nux/n;->b:Lcom/facebook/b/e;
invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V
:goto_16
return-void
:cond_17
invoke-direct {p0, v0}, Lcom/instagram/android/nux/n;->a(Ljava/lang/String;)V
goto :goto_16
.end method
.method static synthetic d(Lcom/instagram/android/nux/n;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/nux/n;->W()V
return-void
.end method
.method static synthetic e(Lcom/instagram/android/nux/n;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/nux/n;->U()V
return-void
.end method
.method static synthetic f(Lcom/instagram/android/nux/n;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/nux/n;->V()V
return-void
.end method
.method public final E()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/av;->action_bar:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/av;->action_bar:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1e
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v0
if-eqz v0, :cond_2e
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f/b;->b(Landroid/content/Context;)V
:cond_2e
invoke-static {}, Lcom/instagram/l/j;->a()Lcom/instagram/l/i;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/l/i;->a()V
sget-object v0, Lcom/instagram/o/b;->b:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
return-void
.end method
.method public final F()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
invoke-direct {p0}, Lcom/instagram/android/nux/n;->V()V
iget-object v0, p0, Lcom/instagram/android/nux/n;->c:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
sget v0, Lcom/facebook/aw;->nux_dayone_landing:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
sget v1, Lcom/facebook/av;->nux_dayone_register_facebook:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/nux/t;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/t;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v1, Lcom/facebook/av;->nux_dayone_register_email:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
new-instance v2, Lcom/instagram/android/nux/u;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/u;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v1, Lcom/facebook/av;->nux_dayone_log_in:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/nux/v;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/v;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {}, Lcom/instagram/common/o/a;->d()Z
move-result v1
if-nez v1, :cond_3e
invoke-direct {p0, v0}, Lcom/instagram/android/nux/n;->a(Landroid/view/ViewGroup;)V
:cond_3e
return-object v0
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/nux/n;->b:Lcom/facebook/b/e;
invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 2
return-void
.end method
.method public final b()V
.registers 2
const/4 v0, 0x0
invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V
invoke-direct {p0}, Lcom/instagram/android/nux/n;->d()V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V
invoke-static {}, Lcom/instagram/strings/StringBridge;->a()Z
move-result v0
if-eqz v0, :cond_47
const-string v0, "failed_to_load_library_logged_out"
const-string v1, "failed_to_load_library_logged_out"
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->incompatible_device:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->unsupported_device_message:I
new-array v2, v5, [Ljava/lang/Object;
const-string v3, "http://bit.ly/igdevices"
aput-object v3, v2, v4
invoke-virtual {p0, v1, v2}, Lcom/instagram/android/nux/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->ok:I
new-instance v2, Lcom/instagram/android/nux/o;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/o;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:cond_47
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/nux/n;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_83
const-string v0, "failed_to_write_to_fs"
const-string v1, "logged out"
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->read_only_filesystem_message:I
new-array v2, v5, [Ljava/lang/Object;
const-string v3, "http://bit.ly/igfilesystem"
aput-object v3, v2, v4
invoke-virtual {p0, v1, v2}, Lcom/instagram/android/nux/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dismiss:I
new-instance v2, Lcom/instagram/android/nux/s;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/s;-><init>(Lcom/instagram/android/nux/n;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:cond_83
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v0
const-string v1, "connectivity"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/g/a;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/facebook/b/b;->a(Landroid/content/Context;)Z
move-result v1
sget-object v2, Lcom/instagram/o/b;->a:Lcom/instagram/o/b;
invoke-virtual {v2}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "did_log_in"
invoke-static {}, Lcom/instagram/m/a;->c()Z
move-result v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "did_facebook_sso"
invoke-static {}, Lcom/instagram/m/a;->a()Z
move-result v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "fb4a_installed"
invoke-virtual {v2, v3, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "network_type"
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "landing"
return-object v0
.end method
.method public final j_()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I
move-result v0
iput v0, p0, Lcom/instagram/android/nux/n;->a:I
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V
return-void
.end method
.method public final k_()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
iget v1, p0, Lcom/instagram/android/nux/n;->a:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/av;->action_bar:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_23
invoke-virtual {p0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/av;->action_bar:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_23
invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V
return-void
.end method
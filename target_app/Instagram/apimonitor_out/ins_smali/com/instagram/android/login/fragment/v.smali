.class public final Lcom/instagram/android/login/fragment/v;
.super Lcom/instagram/base/a/b;
.source "PasswordResetFragment.java"
.implements Lcom/instagram/a/b;
.field public final a:Lcom/instagram/api/j/f;
.field private final aa:Landroid/content/BroadcastReceiver;
.field public final b:Landroid/view/View$OnClickListener;
.field private final c:Landroid/os/Handler;
.field private d:Lcom/instagram/user/c/a;
.field private e:Z
.field private f:Landroid/widget/EditText;
.field private g:Landroid/widget/EditText;
.field private h:Lcom/instagram/android/login/d;
.field private i:Landroid/view/View;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->c:Landroid/os/Handler;
new-instance v0, Lcom/instagram/android/login/fragment/w;
invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/w;-><init>(Lcom/instagram/android/login/fragment/v;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->aa:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/instagram/android/login/fragment/x;
invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/x;-><init>(Lcom/instagram/android/login/fragment/v;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->a:Lcom/instagram/api/j/f;
new-instance v0, Lcom/instagram/android/login/fragment/y;
invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/y;-><init>(Lcom/instagram/android/login/fragment/v;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->b:Landroid/view/View$OnClickListener;
return-void
.end method
.method private U()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->f:Landroid/widget/EditText;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->f:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method private V()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/user/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->d:Lcom/instagram/user/c/a;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/v;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/v;->d:Lcom/instagram/user/c/a;
return-object p1
.end method
.method private a(I)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;
move-result-object v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/instagram/android/activity/MainTabActivity;
invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V
goto :goto_a
.end method
.method private a(Landroid/view/View;Lcom/instagram/user/c/a;)V
.registers 6
const/4 v2, 0x0
if-nez p1, :cond_4
:goto_3
return-void
:cond_4
sget v0, Lcom/facebook/av;->user_profile_picture:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {p2}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V
sget v0, Lcom/facebook/av;->username_textview:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iput-boolean v2, p0, Lcom/instagram/android/login/fragment/v;->e:Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/a/e;->c(Z)V
goto :goto_3
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/v;Landroid/view/View;Lcom/instagram/user/c/a;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/login/fragment/v;->a(Landroid/view/View;Lcom/instagram/user/c/a;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/v;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/login/fragment/v;->e:Z
return p1
.end method
.method private b()V
.registers 6
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Lcom/instagram/android/login/d;
invoke-virtual {v0}, Lcom/instagram/android/login/d;->a()Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Lcom/instagram/android/login/d;
invoke-virtual {v0}, Lcom/instagram/android/login/d;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/n/e;->a(Ljava/lang/CharSequence;)V
:goto_11
return-void
:cond_12
sget-object v0, Lcom/instagram/o/b;->au:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Lcom/instagram/android/login/c/k;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/login/fragment/z;
invoke-direct {v3, p0, p0}, Lcom/instagram/android/login/fragment/z;-><init>(Lcom/instagram/android/login/fragment/v;Landroid/support/v4/app/Fragment;)V
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/login/c/k;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->d()Ljava/lang/String;
move-result-object v1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->U()Ljava/lang/String;
move-result-object v2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->V()Ljava/lang/String;
move-result-object v3
invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/v;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->b()V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/login/fragment/v;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Landroid/view/View;
return-object v0
.end method
.method private c()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "argument_reset_token"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/login/fragment/v;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->c:Landroid/os/Handler;
return-object v0
.end method
.method private d()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "argument_user_id"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic e(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/android/login/d;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Lcom/instagram/android/login/d;
return-object v0
.end method
.method public final E()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
const/16 v0, 0x8
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/v;->a(I)V
return-void
.end method
.method public final F()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Landroid/view/View;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/v;->a(I)V
return-void
.end method
.method public final G()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->G()V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/v;->aa:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
sget v0, Lcom/facebook/aw;->fragment_password_reset:I
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->new_password:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->f:Landroid/widget/EditText;
sget v0, Lcom/facebook/av;->confirm_new_password:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->f:Landroid/widget/EditText;
sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->f:Landroid/widget/EditText;
new-instance v2, Landroid/text/method/PasswordTransformationMethod;
invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;
sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;
new-instance v2, Landroid/text/method/PasswordTransformationMethod;
invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
new-instance v0, Lcom/instagram/android/login/d;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->o()Landroid/content/res/Resources;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/login/fragment/v;->f:Landroid/widget/EditText;
iget-object v4, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;
invoke-direct {v0, v2, v3, v4}, Lcom/instagram/android/login/d;-><init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Lcom/instagram/android/login/d;
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Lcom/instagram/android/login/d;
new-instance v2, Lcom/instagram/android/login/fragment/ab;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ab;-><init>(Lcom/instagram/android/login/fragment/v;)V
invoke-virtual {v0, v2}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/j;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;
new-instance v2, Lcom/instagram/android/login/fragment/ac;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ac;-><init>(Lcom/instagram/android/login/fragment/v;)V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->d:Lcom/instagram/user/c/a;
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->d:Lcom/instagram/user/c/a;
invoke-direct {p0, v1, v0}, Lcom/instagram/android/login/fragment/v;->a(Landroid/view/View;Lcom/instagram/user/c/a;)V
:cond_69
return-object v1
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
sget-object v0, Lcom/instagram/o/b;->at:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->d()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
move-result-object v0
if-eqz v0, :cond_30
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/instagram/android/login/fragment/v;->e:Z
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->d:Lcom/instagram/user/c/a;
:goto_1b
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/v;->aa:Landroid/content/BroadcastReceiver;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "ActivityInTab.BROADCAST_BACK_PRESSED"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
:cond_30
new-instance v0, Lcom/instagram/android/c/a/v;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/v;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v3
iget-object v4, p0, Lcom/instagram/android/login/fragment/v;->a:Lcom/instagram/api/j/f;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/v;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/v;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/v;->a(Ljava/lang/String;)V
goto :goto_1b
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
sget v0, Lcom/facebook/az;->change_password:I
iget-object v1, p0, Lcom/instagram/android/login/fragment/v;->b:Landroid/view/View$OnClickListener;
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->i:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/android/login/fragment/v;->h:Lcom/instagram/android/login/d;
invoke-virtual {v1}, Lcom/instagram/android/login/d;->c()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
iget-boolean v0, p0, Lcom/instagram/android/login/fragment/v;->e:Z
invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "password_reset"
return-object v0
.end method
.method public final l_()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/v;->h:Lcom/instagram/android/login/d;
invoke-virtual {v0, v1}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/j;)V
iput-object v1, p0, Lcom/instagram/android/login/fragment/v;->h:Lcom/instagram/android/login/d;
iput-object v1, p0, Lcom/instagram/android/login/fragment/v;->g:Landroid/widget/EditText;
iput-object v1, p0, Lcom/instagram/android/login/fragment/v;->f:Landroid/widget/EditText;
return-void
.end method
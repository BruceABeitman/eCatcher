.class public final Lcom/instagram/android/login/fragment/bz;
.super Lcom/instagram/base/a/b;
.source "UserPasswordRecoveryFragment.java"
.implements Lcom/instagram/a/b;
.field private a:Ljava/lang/String;
.field private b:I
.field private c:Landroid/widget/TextView;
.field private d:Landroid/view/View;
.field private e:Landroid/view/View;
.field private f:Landroid/os/Handler;
.field private g:Lcom/instagram/user/c/a;
.field private final h:Lcom/instagram/android/login/fragment/cf;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/login/fragment/bz;->f:Landroid/os/Handler;
new-instance v0, Lcom/instagram/android/login/fragment/cf;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/login/fragment/cf;-><init>(Lcom/instagram/android/login/fragment/bz;B)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/bz;->h:Lcom/instagram/android/login/fragment/cf;
return-void
.end method
.method private static a(Landroid/view/View;Lcom/instagram/user/c/a;)V
.registers 4
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
sget v0, Lcom/facebook/av;->username_textview:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
sget v0, Lcom/facebook/av;->user_profile_picture:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V
goto :goto_2
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/bz;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/bz;->c()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/bz;)Lcom/instagram/user/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->g:Lcom/instagram/user/c/a;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/login/fragment/bz;)Lcom/instagram/android/login/fragment/cf;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->h:Lcom/instagram/android/login/fragment/cf;
return-object v0
.end method
.method private c()V
.registers 4
sget-object v0, Lcom/instagram/o/b;->ar:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_SMS_RESET_FLOW"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/login/fragment/ad;
invoke-direct {v2}, Lcom/instagram/android/login/fragment/ad;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/login/fragment/bz;)I
.registers 2
iget v0, p0, Lcom/instagram/android/login/fragment/bz;->b:I
return v0
.end method
.method private d()V
.registers 5
sget v0, Lcom/facebook/az;->email_sent_short:I
iput v0, p0, Lcom/instagram/android/login/fragment/bz;->b:I
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->email_spinner:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/bz;->d:Landroid/view/View;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->o()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/az;->email_sent:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget v3, Lcom/facebook/az;->instagram_help_center:I
invoke-virtual {p0, v3}, Lcom/instagram/android/login/fragment/bz;->c(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/bz;->a:Ljava/lang/String;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->fragment_user_password_recovery_button_email_reset:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/android/login/fragment/bz;->c:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->fragment_user_password_recovery_button_email_reset_container:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/bz;->e:Landroid/view/View;
return-void
.end method
.method static synthetic e(Lcom/instagram/android/login/fragment/bz;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->c:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/android/login/fragment/bz;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->a:Ljava/lang/String;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/android/login/fragment/bz;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->d:Landroid/view/View;
return-object v0
.end method
.method static synthetic h(Lcom/instagram/android/login/fragment/bz;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/bz;->d()V
return-void
.end method
.method static synthetic i(Lcom/instagram/android/login/fragment/bz;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->e:Landroid/view/View;
return-object v0
.end method
.method static synthetic j(Lcom/instagram/android/login/fragment/bz;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->f:Landroid/os/Handler;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
const/16 v5, 0x8
const/4 v4, 0x0
sget v0, Lcom/facebook/aw;->fragment_user_password_recovery:I
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->connect_with_facebook_textview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v0
aget-object v0, v0, v4
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->o()Landroid/content/res/Resources;
move-result-object v2
sget v3, Lcom/facebook/as;->grey_2:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-static {v2}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->j()Landroid/os/Bundle;
move-result-object v0
const-string v2, "can_sms_reset"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
sget v0, Lcom/facebook/av;->fragment_user_password_recovery_button_sms_reset_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
:cond_42
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->j()Landroid/os/Bundle;
move-result-object v0
const-string v2, "can_email_reset"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_57
sget v0, Lcom/facebook/av;->fragment_user_password_recovery_button_email_reset_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
:cond_57
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->j()Landroid/os/Bundle;
move-result-object v0
const-string v2, "email_lookup"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_bc
sget v0, Lcom/facebook/av;->fragment_user_password_recovery_textview_email_alt:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/facebook/av;->user_profile_picture:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/facebook/av;->username_textview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/facebook/av;->divider_row:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/facebook/av;->fragment_user_password_recovery_button_email_reset_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/instagram/android/login/fragment/ca;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ca;-><init>(Lcom/instagram/android/login/fragment/bz;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v0, Lcom/facebook/av;->fragment_user_password_recovery_button_sms_reset_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/instagram/android/login/fragment/cb;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/cb;-><init>(Lcom/instagram/android/login/fragment/bz;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_a3
sget v0, Lcom/facebook/av;->fragment_user_password_recovery_button_connect_with_facebook:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/instagram/android/login/fragment/ce;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ce;-><init>(Lcom/instagram/android/login/fragment/bz;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->g:Lcom/instagram/user/c/a;
if-eqz v0, :cond_ba
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->g:Lcom/instagram/user/c/a;
invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/bz;->a(Landroid/view/View;Lcom/instagram/user/c/a;)V
:cond_ba
move-object v0, v1
:goto_bb
return-object v0
:cond_bc
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->j()Landroid/os/Bundle;
move-result-object v2
const-string v3, "userid"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/bz;->g:Lcom/instagram/user/c/a;
iget-object v0, p0, Lcom/instagram/android/login/fragment/bz;->g:Lcom/instagram/user/c/a;
if-nez v0, :cond_ea
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->n()Landroid/content/Context;
move-result-object v0
sget v2, Lcom/facebook/az;->try_again:I
invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V
move-object v0, v1
goto :goto_bb
:cond_ea
sget v0, Lcom/facebook/av;->fragment_user_password_recovery_button_email_reset_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/instagram/android/login/fragment/cc;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/cc;-><init>(Lcom/instagram/android/login/fragment/bz;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v0, Lcom/facebook/av;->fragment_user_password_recovery_button_sms_reset_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/instagram/android/login/fragment/cd;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/cd;-><init>(Lcom/instagram/android/login/fragment/bz;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_a3
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
const/4 v0, -0x1
if-ne p2, v0, :cond_f
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/bz;->h:Lcom/instagram/android/login/fragment/cf;
invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V
:cond_f
invoke-super {p0, p1, p2, p3}, Lcom/instagram/base/a/b;->a(IILandroid/content/Intent;)V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
sget-object v0, Lcom/instagram/o/b;->ap:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 3
sget v0, Lcom/facebook/az;->reset_password:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
const/4 v0, 0x1
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
return-void
.end method
.method public final b()Lcom/instagram/android/login/c/m;
.registers 6
new-instance v0, Lcom/instagram/android/login/c/m;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bz;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/login/fragment/ch;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Lcom/instagram/android/login/fragment/ch;-><init>(Lcom/instagram/android/login/fragment/bz;B)V
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/login/c/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
return-object v0
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "user_password_recovery"
return-object v0
.end method
.method public final j_()V
.registers 1
invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V
return-void
.end method
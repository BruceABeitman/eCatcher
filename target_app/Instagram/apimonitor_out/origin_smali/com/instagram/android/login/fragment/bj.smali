.class final Lcom/instagram/android/login/fragment/bj;
.super Lcom/instagram/android/login/a/i;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/login/a/i;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V

    return-void
.end method

.method private c()V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_EMAIL"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_USERNAME"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PASSWORD"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->e(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_NAME"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->f(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PROFILE_PIC"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->g(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/d/a;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v3}, Lcom/instagram/android/login/fragment/an;->h(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v3}, Lcom/instagram/android/login/fragment/an;->i(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_GUID"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_DEVICE_ID"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/v/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/instagram/android/login/fragment/ci;

    invoke-direct {v1}, Lcom/instagram/android/login/fragment/ci;-><init>()V

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/support/v4/app/Fragment;)V

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/bk;

    invoke-direct {v3, p0, v1, v0}, Lcom/instagram/android/login/fragment/bk;-><init>(Lcom/instagram/android/login/fragment/bj;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/bj;->c()V

    return-void
.end method

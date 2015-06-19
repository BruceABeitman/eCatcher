.class final Lcom/instagram/android/login/fragment/am;
.super Ljava/lang/Object;
.source "PhoneNumberEntryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/al;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/al;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/am;->a:Lcom/instagram/android/login/fragment/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/login/fragment/am;->a:Lcom/instagram/android/login/fragment/al;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/al;->a:Lcom/instagram/android/login/fragment/ad;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/am;->a:Lcom/instagram/android/login/fragment/al;

    iget-object v1, v1, Lcom/instagram/android/login/fragment/al;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/ad;->f(Lcom/instagram/android/login/fragment/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/ad;->a(Lcom/instagram/android/login/fragment/ad;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/am;->a:Lcom/instagram/android/login/fragment/al;

    iget-object v2, v2, Lcom/instagram/android/login/fragment/al;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/ad;->f(Lcom/instagram/android/login/fragment/ad;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/instagram/android/login/fragment/ci;

    invoke-direct {v1}, Lcom/instagram/android/login/fragment/ci;-><init>()V

    iget-object v2, p0, Lcom/instagram/android/login/fragment/am;->a:Lcom/instagram/android/login/fragment/al;

    iget-object v2, v2, Lcom/instagram/android/login/fragment/al;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/support/v4/app/Fragment;)V

    new-instance v2, Lcom/instagram/base/a/a/a;

    iget-object v3, p0, Lcom/instagram/android/login/fragment/am;->a:Lcom/instagram/android/login/fragment/al;

    iget-object v3, v3, Lcom/instagram/android/login/fragment/al;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-virtual {v3}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    invoke-virtual {v2, v1, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

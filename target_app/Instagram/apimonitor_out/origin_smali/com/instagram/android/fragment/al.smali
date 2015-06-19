.class final Lcom/instagram/android/fragment/al;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ak;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ak;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ak;

    iget-object v0, v0, Lcom/instagram/android/fragment/ak;->a:Lcom/instagram/android/fragment/ab;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->u()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ak;

    iget-object v0, v0, Lcom/instagram/android/fragment/ak;->a:Lcom/instagram/android/fragment/ab;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/al;->a:Lcom/instagram/android/fragment/ak;

    iget-object v1, v1, Lcom/instagram/android/fragment/ak;->a:Lcom/instagram/android/fragment/ab;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ab;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/ep;

    invoke-direct {v1}, Lcom/instagram/android/fragment/ep;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    :cond_2b
    return-void
.end method

.class final Lcom/instagram/android/login/fragment/g;
.super Lcom/instagram/android/login/a/d;
.source "ForgotPasswordFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/f;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/login/fragment/g;->a:Lcom/instagram/android/login/fragment/f;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/login/a/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/login/fragment/g;->a:Lcom/instagram/android/login/fragment/f;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/f;->a:Lcom/instagram/android/login/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->fragment_forgot_password_facebook:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_14
    invoke-super {p0}, Lcom/instagram/android/login/a/d;->a()V

    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/login/c/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/login/fragment/g;->a:Lcom/instagram/android/login/fragment/f;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/f;->a:Lcom/instagram/android/login/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/a;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->fragment_forgot_password_facebook:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_14
    invoke-super {p0, p1}, Lcom/instagram/android/login/a/d;->a(Lcom/instagram/api/j/j;)V

    return-void
.end method

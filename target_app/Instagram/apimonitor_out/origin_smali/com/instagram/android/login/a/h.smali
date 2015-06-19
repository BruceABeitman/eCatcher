.class public Lcom/instagram/android/login/a/h;
.super Lcom/instagram/api/j/a;
.source "LoginCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/instagram/android/login/a/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    return-void
.end method

.method protected a(Lcom/instagram/api/j/j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->u()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    :cond_10
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/instagram/android/nux/af;->a(Lcom/instagram/api/j/j;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/instagram/user/c/a;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/login/a/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/instagram/android/login/a/h;->b:Ljava/lang/String;

    :goto_6
    invoke-static {v0}, Lcom/instagram/m/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/instagram/o/b;->aE:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "instagram_id"

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;Lcom/instagram/user/c/a;)V

    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;)V

    return-void

    :cond_2f
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/user/c/a;

    invoke-virtual {p0, p1}, Lcom/instagram/android/login/a/h;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

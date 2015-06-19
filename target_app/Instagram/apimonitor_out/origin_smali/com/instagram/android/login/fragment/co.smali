.class final Lcom/instagram/android/login/fragment/co;
.super Lcom/instagram/api/j/a;
.source "VerifyFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ci;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ci;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/co;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    new-instance v0, Lcom/instagram/android/login/fragment/cq;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/cq;-><init>(Lcom/instagram/android/login/fragment/co;)V

    iget-object v1, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ci;->p()Landroid/support/v4/app/s;

    move-result-object v1

    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/login/fragment/cq;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/base/a/a;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/co;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/ci;->d(Lcom/instagram/android/login/fragment/ci;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/cp;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/login/fragment/cp;-><init>(Lcom/instagram/android/login/fragment/co;Lcom/instagram/base/a/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    return-void
.end method

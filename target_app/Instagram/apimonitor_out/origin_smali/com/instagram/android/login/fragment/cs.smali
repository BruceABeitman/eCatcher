.class final Lcom/instagram/android/login/fragment/cs;
.super Lcom/instagram/api/j/a;
.source "VerifyFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/android/h/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ci;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ci;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/cs;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    return-void
.end method

.method private a(Lcom/instagram/android/h/h;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->d(Lcom/instagram/android/login/fragment/ci;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/ct;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/fragment/ct;-><init>(Lcom/instagram/android/login/fragment/cs;Lcom/instagram/android/h/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/h/h;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ci;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/android/login/fragment/cu;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/cu;-><init>(Lcom/instagram/android/login/fragment/cs;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_3f
    return-void

    :cond_40
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/android/h/h;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/cs;->a(Lcom/instagram/android/h/h;)V

    return-void
.end method

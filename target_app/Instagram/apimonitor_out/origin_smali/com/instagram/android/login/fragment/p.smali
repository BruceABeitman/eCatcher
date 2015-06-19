.class final Lcom/instagram/android/login/fragment/p;
.super Lcom/instagram/api/j/a;
.source "LookupFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/android/login/c/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/o;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/o;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/login/c/i;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->b(Lcom/instagram/android/login/fragment/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/q;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/fragment/q;-><init>(Lcom/instagram/android/login/fragment/p;Lcom/instagram/android/login/c/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->c(Lcom/instagram/android/login/fragment/o;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/login/c/i;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->b(Lcom/instagram/android/login/fragment/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/r;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/r;-><init>(Lcom/instagram/android/login/fragment/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_28
    return-void

    :cond_29
    invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    goto :goto_28
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/android/login/c/i;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/p;->a(Lcom/instagram/android/login/c/i;)V

    return-void
.end method

.method public final b()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/api/j/a;->b()V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->c(Lcom/instagram/android/login/fragment/o;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    return-void
.end method

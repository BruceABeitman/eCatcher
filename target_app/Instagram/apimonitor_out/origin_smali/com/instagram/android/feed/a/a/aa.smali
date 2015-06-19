.class final Lcom/instagram/android/feed/a/a/aa;
.super Lcom/instagram/api/j/f;
.source "MediaOptionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/u;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/a/a/u;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/u;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/aa;-><init>(Lcom/instagram/android/feed/a/a/u;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->n(Lcom/instagram/android/feed/a/a/u;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->f(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/support/v4/app/s;)V

    invoke-super {p0}, Lcom/instagram/api/j/f;->a()V

    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/aa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->m(Lcom/instagram/android/feed/a/a/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/a/a/ab;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/ab;-><init>(Lcom/instagram/android/feed/a/a/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Lcom/instagram/api/j/f;->b()V

    return-void
.end method

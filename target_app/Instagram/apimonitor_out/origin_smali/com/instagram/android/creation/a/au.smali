.class final Lcom/instagram/android/creation/a/au;
.super Lcom/instagram/api/j/a;
.source "ShareLaterFragment.java"


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
.field final synthetic a:Lcom/instagram/android/creation/a/ar;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/au;->a:Lcom/instagram/android/creation/a/ar;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/creation/a/au;->a:Lcom/instagram/android/creation/a/ar;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ar;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->sharing_succeeded:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/au;->a:Lcom/instagram/android/creation/a/ar;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ar;->e(Lcom/instagram/android/creation/a/ar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/a/av;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/av;-><init>(Lcom/instagram/android/creation/a/au;)V

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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/creation/a/au;->a:Lcom/instagram/android/creation/a/ar;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/ar;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->sharing:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    new-instance v2, Lcom/instagram/android/creation/a/aw;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/aw;-><init>(Lcom/instagram/android/creation/a/au;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/creation/a/au;->c()V

    return-void
.end method

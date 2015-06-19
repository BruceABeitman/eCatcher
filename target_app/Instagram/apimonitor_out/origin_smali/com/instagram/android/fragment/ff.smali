.class final Lcom/instagram/android/fragment/ff;
.super Lcom/instagram/api/j/a;
.source "UserDetailFragment.java"


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
.field final synthetic a:Lcom/instagram/android/fragment/fb;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/fb;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ff;->a:Lcom/instagram/android/fragment/fb;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/fb;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ff;-><init>(Lcom/instagram/android/fragment/fb;)V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ff;->a:Lcom/instagram/android/fragment/fb;

    iget-object v0, v0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->d(Z)V

    sget v0, Lcom/facebook/az;->directshare_action_completed:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    return-void
.end method


# virtual methods
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

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/fragment/ff;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fb;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/ff;->c()V

    return-void
.end method

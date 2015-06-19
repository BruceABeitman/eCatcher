.class final Lcom/instagram/android/login/a/f;
.super Ljava/lang/Object;
.source "FacebookRecoveryCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/a/f;->a:Lcom/instagram/android/login/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/login/a/f;->a:Lcom/instagram/android/login/a/d;

    invoke-static {v1}, Lcom/instagram/android/login/a/d;->a(Lcom/instagram/android/login/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->facebook_account_not_linked_use_current_password_instead:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

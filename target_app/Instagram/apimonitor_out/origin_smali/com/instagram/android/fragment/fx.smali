.class final Lcom/instagram/android/fragment/fx;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fk;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/fx;->a:Lcom/instagram/android/fragment/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    if-nez p2, :cond_1f

    iget-object v0, p0, Lcom/instagram/android/fragment/fx;->a:Lcom/instagram/android/fragment/fk;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://help.instagram.com/372161259539444/"

    iget-object v4, p0, Lcom/instagram/android/fragment/fx;->a:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v4}, Lcom/instagram/android/fragment/fk;->l()Landroid/support/v4/app/k;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/fk;->a(Landroid/content/Intent;)V

    :goto_1e
    return-void

    :cond_1f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    const/4 v0, 0x1

    if-ne p2, v0, :cond_46

    sget v0, Lcom/facebook/az;->send_feedback:I

    :goto_2b
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v2, p0, Lcom/instagram/android/fragment/fx;->a:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/fk;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/fragment/dy;

    invoke-direct {v2}, Lcom/instagram/android/fragment/dy;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_1e

    :cond_46
    sget v0, Lcom/facebook/az;->report_problem:I

    goto :goto_2b
.end method

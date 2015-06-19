.class Lcom/twidroid/activity/UberSocialAccount$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialAccount;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$3;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$3;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c002b

    new-instance v2, Lcom/twidroid/activity/UberSocialAccount$3$2;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialAccount$3$2;-><init>(Lcom/twidroid/activity/UberSocialAccount$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c002a

    new-instance v2, Lcom/twidroid/activity/UberSocialAccount$3$1;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialAccount$3$1;-><init>(Lcom/twidroid/activity/UberSocialAccount$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

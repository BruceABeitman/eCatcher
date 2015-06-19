.class final Lcom/twidroid/c/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/r;->a(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialApplication;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/r$1;->a:Lcom/twidroid/UberSocialApplication;

    iput-object p2, p0, Lcom/twidroid/c/r$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/c/r$1;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bj()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/c/r$1;->b:Landroid/app/Activity;

    const-class v2, Lcom/twidroid/activity/MobileViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twidroid/c/r$1;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twidroid/c/r$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1f
    return-void
.end method

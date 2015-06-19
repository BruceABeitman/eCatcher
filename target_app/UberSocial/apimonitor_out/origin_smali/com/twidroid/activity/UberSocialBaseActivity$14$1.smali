.class Lcom/twidroid/activity/UberSocialBaseActivity$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity$14;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity$14;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$14;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$14$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$14$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$14;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$14;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    const-class v2, Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$14$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$14;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$14;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$14$1;->a:Lcom/twidroid/activity/UberSocialBaseActivity$14;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$14;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/16 v2, 0x3e7

    invoke-virtual {v1, v0, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

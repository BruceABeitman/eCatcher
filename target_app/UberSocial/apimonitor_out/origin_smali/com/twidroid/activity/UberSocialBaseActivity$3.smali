.class Lcom/twidroid/activity/UberSocialBaseActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity;->a(Lcom/ubermedia/net/a/a/a;I)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$3;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$3;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$3;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    const v2, 0x7f0c0022

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$3;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->n()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$3;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    return-void
.end method

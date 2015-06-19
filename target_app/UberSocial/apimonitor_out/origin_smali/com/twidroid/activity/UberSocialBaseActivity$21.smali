.class Lcom/twidroid/activity/UberSocialBaseActivity$21;
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

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$21;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$21;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->n()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$21;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$21;->a:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/16 v1, 0x44f4

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    return-void
.end method

.class Lcom/twidroid/activity/UberSocialAccount$2$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialAccount$2$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount$2$1;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1$5;->a:Lcom/twidroid/activity/UberSocialAccount$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1$5;->a:Lcom/twidroid/activity/UberSocialAccount$2$1;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialAccount;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1$5;->a:Lcom/twidroid/activity/UberSocialAccount$2$1;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

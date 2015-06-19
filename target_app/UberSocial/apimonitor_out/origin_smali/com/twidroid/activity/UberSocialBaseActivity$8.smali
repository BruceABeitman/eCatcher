.class Lcom/twidroid/activity/UberSocialBaseActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity;->a(Lcom/twidroid/model/twitter/User;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/model/twitter/User;

.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;Lcom/twidroid/model/twitter/User;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8;->a:Lcom/twidroid/model/twitter/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$8$1;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$8;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/net/n;->a(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$8;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    return-void
.end method

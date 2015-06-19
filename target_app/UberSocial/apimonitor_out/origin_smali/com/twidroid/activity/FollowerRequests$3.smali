.class Lcom/twidroid/activity/FollowerRequests$3;
.super Lcom/twidroid/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/FollowerRequests;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/FollowerRequests;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/FollowerRequests;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/FollowerRequests$3;->a:Lcom/twidroid/activity/FollowerRequests;

    invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests$3;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v0, v0, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/FollowerRequests$3;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v1, v1, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/FollowerRequests$3;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v1, v1, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests$3;->a:Lcom/twidroid/activity/FollowerRequests;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/FollowerRequests;->d(Z)V

    invoke-virtual {p0}, Lcom/twidroid/activity/FollowerRequests$3;->dismiss()V

    return-void
.end method

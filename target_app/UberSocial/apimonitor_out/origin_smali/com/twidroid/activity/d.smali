.class Lcom/twidroid/activity/d;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/activity/FollowerRequests;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/activity/FollowerRequests;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/d;->a:Lcom/twidroid/activity/FollowerRequests;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object p2, p0, Lcom/twidroid/activity/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/activity/d;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v0, v0, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->v(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
    :try_end_11
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_0 .. :try_end_11} :catch_13

    :goto_11
    const/4 v0, 0x0

    return-object v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    goto :goto_11
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/d;->a:Lcom/twidroid/activity/FollowerRequests;

    invoke-static {v0, p0}, Lcom/twidroid/activity/FollowerRequests;->a(Lcom/twidroid/activity/FollowerRequests;Lcom/ubermedia/a/a;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/d;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/d;->a:Lcom/twidroid/activity/FollowerRequests;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/FollowerRequests;->e(Z)V

    return-void
.end method

.method protected b()V
    .registers 4

    const-string v0, "FollowerRequests"

    const-string v1, "::DenyFolowerUserTask Cancelled"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/d;->a:Lcom/twidroid/activity/FollowerRequests;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/FollowerRequests;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/d;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v1, p0, Lcom/twidroid/activity/d;->a:Lcom/twidroid/activity/FollowerRequests;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/FollowerRequests;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/FollowerRequests;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/d;->a:Lcom/twidroid/activity/FollowerRequests;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    return-void
.end method

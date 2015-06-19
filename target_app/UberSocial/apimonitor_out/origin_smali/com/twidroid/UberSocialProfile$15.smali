.class Lcom/twidroid/UberSocialProfile$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->a(Landroid/net/Uri;Ljava/lang/String;II)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$15;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_6

    :cond_5
    :goto_5
    return v4

    :cond_6
    if-eqz p1, :cond_30

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_30

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/twidroid/activity/r;

    if-eqz v0, :cond_30

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/twidroid/activity/r;

    :goto_16
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$15;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v2, p0, Lcom/twidroid/UberSocialProfile$15;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v2}, Lcom/twidroid/UberSocialProfile;->ab(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/UberSocialProfile$15;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v3, v3, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v1, v2, v0, v3}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/activity/r;Lcom/twidroid/model/twitter/User;)V

    goto :goto_5

    :cond_30
    const/4 v0, 0x0

    goto :goto_16
.end method

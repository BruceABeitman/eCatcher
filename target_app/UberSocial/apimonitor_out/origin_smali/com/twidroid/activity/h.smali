.class Lcom/twidroid/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/twidroid/model/twitter/User;

.field public b:Lcom/ubermedia/net/a/a/a;


# direct methods
.method public constructor <init>(Lcom/twidroid/model/twitter/User;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twidroid/activity/h;-><init>(Lcom/twidroid/model/twitter/User;Lcom/ubermedia/net/a/a/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/model/twitter/User;Lcom/ubermedia/net/a/a/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/activity/h;->a:Lcom/twidroid/model/twitter/User;

    iput-object p2, p0, Lcom/twidroid/activity/h;->b:Lcom/ubermedia/net/a/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/ubermedia/net/a/a/a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/twidroid/activity/h;-><init>(Lcom/twidroid/model/twitter/User;Lcom/ubermedia/net/a/a/a;)V

    return-void
.end method

.class Lcom/twidroid/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/twidroid/activity/r;

.field b:Lcom/twidroid/model/twitter/User;

.field c:Lcom/twidroid/model/twitter/c;

.field final synthetic d:Lcom/twidroid/UberSocialProfile;


# direct methods
.method public constructor <init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Lcom/twidroid/model/twitter/User;Lcom/twidroid/model/twitter/c;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/ad;->d:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/ad;->a:Lcom/twidroid/activity/r;

    iput-object p3, p0, Lcom/twidroid/ad;->b:Lcom/twidroid/model/twitter/User;

    iput-object p4, p0, Lcom/twidroid/ad;->c:Lcom/twidroid/model/twitter/c;

    return-void
.end method

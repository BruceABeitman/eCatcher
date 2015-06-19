.class public Lcom/twidroid/ui/c/b;
.super Lcom/twidroid/ui/c/c;
.source "SourceFile"


# instance fields
.field private p:Ljava/lang/String;

.field private q:Lcom/twidroid/uberchannels/models/UberTopic;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "no_app_tag_assigned_to_item"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/c/c;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/ui/c/b;->p:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/twidroid/ui/c/b;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/uberchannels/models/UberTopic;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/c/b;->q:Lcom/twidroid/uberchannels/models/UberTopic;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/c/b;->p:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public t_()Lcom/twidroid/uberchannels/models/UberTopic;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/b;->q:Lcom/twidroid/uberchannels/models/UberTopic;

    return-object v0
.end method

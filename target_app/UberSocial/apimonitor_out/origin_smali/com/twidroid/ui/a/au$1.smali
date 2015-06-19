.class Lcom/twidroid/ui/a/au$1;
.super Lcom/ubermedia/net/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/au;->a(Lcom/twidroid/uberchannels/models/UberTopic;Landroid/widget/ImageView;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/uberchannels/models/UberTopic;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/twidroid/ui/a/au;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/au;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/twidroid/uberchannels/models/UberTopic;Landroid/widget/ImageView;)V
    .registers 7

    iput-object p1, p0, Lcom/twidroid/ui/a/au$1;->c:Lcom/twidroid/ui/a/au;

    iput-object p5, p0, Lcom/twidroid/ui/a/au$1;->a:Lcom/twidroid/uberchannels/models/UberTopic;

    iput-object p6, p0, Lcom/twidroid/ui/a/au$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4}, Lcom/ubermedia/net/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/au$1;->c:Lcom/twidroid/ui/a/au;

    iget-object v0, v0, Lcom/twidroid/ui/a/au;->g:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/ui/a/au$1$1;

    invoke-direct {v1, p0}, Lcom/twidroid/ui/a/au$1$1;-><init>(Lcom/twidroid/ui/a/au$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/twidroid/net/a/b/b$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/a/b/b;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/a/b/b;


# direct methods
.method constructor <init>(Lcom/twidroid/net/a/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/a/b/b$1;->a:Lcom/twidroid/net/a/b/b;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/b$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/a/b/b$1;->a:Lcom/twidroid/net/a/b/b;

    iget-object v0, v0, Lcom/twidroid/net/a/b/b;->g:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twidroid/net/a/b/b$1;->a:Lcom/twidroid/net/a/b/b;

    iget-object v0, v0, Lcom/twidroid/net/a/b/b;->g:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_d
    iget-object v0, p0, Lcom/twidroid/net/a/b/b$1;->a:Lcom/twidroid/net/a/b/b;

    iget-object v0, v0, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/twidroid/net/a/b/b$1;->a:Lcom/twidroid/net/a/b/b;

    iget-object v0, v0, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/b$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 2

    return-void
.end method

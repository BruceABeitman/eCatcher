.class Lcom/twidroid/net/a/c/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/a/c/a/d;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/a/c/a/g;

.field final synthetic b:Lcom/twidroid/net/a/c/a/d;


# direct methods
.method constructor <init>(Lcom/twidroid/net/a/c/a/d;Lcom/twidroid/net/a/c/a/g;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/a/c/a/d$1;->b:Lcom/twidroid/net/a/c/a/d;

    iput-object p2, p0, Lcom/twidroid/net/a/c/a/d$1;->a:Lcom/twidroid/net/a/c/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "TwitterStream"

    const-string v1, "Disposing old StreamWorker from separate thread"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/d$1;->a:Lcom/twidroid/net/a/c/a/g;

    iget-object v0, v0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/d$1;->a:Lcom/twidroid/net/a/c/a/g;

    iget-object v0, v0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_14
    return-void
.end method

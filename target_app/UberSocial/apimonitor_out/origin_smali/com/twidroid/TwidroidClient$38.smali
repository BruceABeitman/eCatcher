.class Lcom/twidroid/TwidroidClient$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/ui/c/f;Lcom/twidroid/model/twitter/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/c/f;

.field final synthetic b:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;Lcom/twidroid/ui/c/f;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$38;->b:Lcom/twidroid/TwidroidClient;

    iput-object p2, p0, Lcom/twidroid/TwidroidClient$38;->a:Lcom/twidroid/ui/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$38;->a:Lcom/twidroid/ui/c/f;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$38;->a:Lcom/twidroid/ui/c/f;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$38;->a:Lcom/twidroid/ui/c/f;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->m()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/twidroid/TwidroidClient$38$1;

    invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$38$1;-><init>(Lcom/twidroid/TwidroidClient$38;)V

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/twidroid/TwidroidClient$38;->b:Lcom/twidroid/TwidroidClient;

    new-instance v1, Lcom/twidroid/TwidroidClient$38$2;

    invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$38$2;-><init>(Lcom/twidroid/TwidroidClient$38;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_23
.end method

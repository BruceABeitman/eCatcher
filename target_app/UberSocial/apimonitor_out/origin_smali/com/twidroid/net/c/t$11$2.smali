.class Lcom/twidroid/net/c/t$11$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/t$11;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/c/t$11;


# direct methods
.method constructor <init>(Lcom/twidroid/net/c/t$11;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/c/t$11$2;->a:Lcom/twidroid/net/c/t$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/net/c/t$11$2;->a:Lcom/twidroid/net/c/t$11;

    iget-object v0, v0, Lcom/twidroid/net/c/t$11;->d:Lcom/twidroid/net/c/u;

    invoke-interface {v0}, Lcom/twidroid/net/c/u;->a()V

    :try_start_7
    iget-object v0, p0, Lcom/twidroid/net/c/t$11$2;->a:Lcom/twidroid/net/c/t$11;

    iget-object v0, v0, Lcom/twidroid/net/c/t$11;->e:Lcom/twidroid/ui/a/am;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/net/c/t$11$2;->a:Lcom/twidroid/net/c/t$11;

    iget-object v0, v0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;

    check-cast v0, Lcom/twidroid/TwidroidClient;

    invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->m()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/fragments/e/c;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/net/c/t$11$2;->a:Lcom/twidroid/net/c/t$11;

    iget-object v0, v0, Lcom/twidroid/net/c/t$11;->e:Lcom/twidroid/ui/a/am;

    iget-object v1, p0, Lcom/twidroid/net/c/t$11$2;->a:Lcom/twidroid/net/c/t$11;

    iget-object v1, v1, Lcom/twidroid/net/c/t$11;->b:Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/model/twitter/Tweet;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    const-string v1, "TwitterHandler"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

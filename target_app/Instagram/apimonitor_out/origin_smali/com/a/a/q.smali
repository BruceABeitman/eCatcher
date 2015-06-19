.class final Lcom/a/a/q;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/a/a/k;


# direct methods
.method constructor <init>(Lcom/a/a/k;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/a/a/q;->b:Lcom/a/a/k;

    iput-object p2, p0, Lcom/a/a/q;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/a/a/q;->b:Lcom/a/a/k;

    invoke-static {v0}, Lcom/a/a/k;->a(Lcom/a/a/k;)Lcom/a/a/j;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/a/a/q;->b:Lcom/a/a/k;

    invoke-static {v0}, Lcom/a/a/k;->a(Lcom/a/a/k;)Lcom/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/q;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/a/a/j;->onError(Ljava/lang/Exception;)V

    :cond_13
    return-void
.end method

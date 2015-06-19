.class final Lcom/a/a/o;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/k;


# direct methods
.method constructor <init>(Lcom/a/a/k;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/o;->a:Lcom/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/a/a/o;->a:Lcom/a/a/k;

    invoke-static {v0}, Lcom/a/a/k;->a(Lcom/a/a/k;)Lcom/a/a/j;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/a/a/o;->a:Lcom/a/a/k;

    invoke-static {v0}, Lcom/a/a/k;->a(Lcom/a/a/k;)Lcom/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/j;->onPing()V

    :cond_11
    return-void
.end method

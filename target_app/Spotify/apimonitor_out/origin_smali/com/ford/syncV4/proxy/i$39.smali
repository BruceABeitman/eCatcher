.class final Lcom/ford/syncV4/proxy/i$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ford/syncV4/proxy/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/ford/syncV4/proxy/rpc/aq;

.field final synthetic b:Lcom/ford/syncV4/proxy/i;


# direct methods
.method constructor <init>(Lcom/ford/syncV4/proxy/i;Lcom/ford/syncV4/proxy/rpc/aq;)V
    .registers 3

    iput-object p1, p0, Lcom/ford/syncV4/proxy/i$39;->b:Lcom/ford/syncV4/proxy/i;

    iput-object p2, p0, Lcom/ford/syncV4/proxy/i$39;->a:Lcom/ford/syncV4/proxy/rpc/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$39;->b:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;)Lcom/ford/syncV4/proxy/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ford/syncV4/proxy/i$39;->a:Lcom/ford/syncV4/proxy/rpc/aq;

    invoke-interface {v0, v1}, Lcom/ford/syncV4/proxy/b/b;->a(Lcom/ford/syncV4/proxy/rpc/aq;)V

    return-void
.end method

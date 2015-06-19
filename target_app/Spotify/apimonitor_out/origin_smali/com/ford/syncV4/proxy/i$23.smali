.class final Lcom/ford/syncV4/proxy/i$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ford/syncV4/proxy/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/ford/syncV4/proxy/rpc/br;

.field final synthetic b:Lcom/ford/syncV4/proxy/i;


# direct methods
.method constructor <init>(Lcom/ford/syncV4/proxy/i;Lcom/ford/syncV4/proxy/rpc/br;)V
    .registers 3

    iput-object p1, p0, Lcom/ford/syncV4/proxy/i$23;->b:Lcom/ford/syncV4/proxy/i;

    iput-object p2, p0, Lcom/ford/syncV4/proxy/i$23;->a:Lcom/ford/syncV4/proxy/rpc/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$23;->b:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;)Lcom/ford/syncV4/proxy/b/b;

    move-result-object v0

    instance-of v0, v0, Lcom/ford/syncV4/proxy/a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$23;->b:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;)Lcom/ford/syncV4/proxy/b/b;

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$23;->a:Lcom/ford/syncV4/proxy/rpc/br;

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$23;->b:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;)Lcom/ford/syncV4/proxy/b/b;

    goto :goto_11
.end method

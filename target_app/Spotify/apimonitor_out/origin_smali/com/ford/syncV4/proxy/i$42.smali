.class final Lcom/ford/syncV4/proxy/i$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ford/syncV4/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ford/syncV4/proxy/i;-><init>(Lcom/ford/syncV4/proxy/b/b;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/ford/syncV4/transport/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ford/syncV4/b/a",
        "<",
        "Lcom/ford/syncV4/protocol/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ford/syncV4/proxy/i;


# direct methods
.method constructor <init>(Lcom/ford/syncV4/proxy/i;)V
    .registers 2

    iput-object p1, p0, Lcom/ford/syncV4/proxy/i$42;->a:Lcom/ford/syncV4/proxy/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/ford/syncV4/protocol/e;

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$42;->a:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0, p1}, Lcom/ford/syncV4/proxy/i;->b(Lcom/ford/syncV4/proxy/i;Lcom/ford/syncV4/protocol/e;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$42;->a:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0, p1, p2}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$42;->a:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0, p1, p2}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.class final Lcom/ford/syncV4/proxy/i$59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/a/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/ford/syncV4/proxy/a/b;

.field final synthetic b:Lcom/ford/syncV4/proxy/i;


# direct methods
.method constructor <init>(Lcom/ford/syncV4/proxy/i;Lcom/ford/syncV4/proxy/a/b;)V
    .registers 3

    iput-object p1, p0, Lcom/ford/syncV4/proxy/i$59;->b:Lcom/ford/syncV4/proxy/i;

    iput-object p2, p0, Lcom/ford/syncV4/proxy/i$59;->a:Lcom/ford/syncV4/proxy/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$59;->b:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;)Lcom/ford/syncV4/proxy/b/b;

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$59;->a:Lcom/ford/syncV4/proxy/a/b;

    invoke-virtual {v0}, Lcom/ford/syncV4/proxy/a/b;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$59;->a:Lcom/ford/syncV4/proxy/a/b;

    invoke-virtual {v0}, Lcom/ford/syncV4/proxy/a/b;->c()Ljava/lang/Exception;

    return-void
.end method

.class final Lcom/ford/syncV4/proxy/i$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/a/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/ford/syncV4/proxy/i;


# direct methods
.method constructor <init>(Lcom/ford/syncV4/proxy/i;)V
    .registers 2

    iput-object p1, p0, Lcom/ford/syncV4/proxy/i$60;->a:Lcom/ford/syncV4/proxy/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/i$60;->a:Lcom/ford/syncV4/proxy/i;

    invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;)Lcom/ford/syncV4/proxy/b/b;

    return-void
.end method

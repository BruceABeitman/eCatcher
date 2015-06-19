.class final Lcom/facebook/Session$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/Session$2;->a:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/AuthorizationClient$Result;)V
    .registers 4

    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->b:Lcom/facebook/AuthorizationClient$Result$Code;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/facebook/Session$2;->a:Lcom/facebook/Session;

    invoke-static {v1, v0, p1}, Lcom/facebook/Session;->a(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V

    return-void

    :cond_d
    const/4 v0, -0x1

    goto :goto_7
.end method

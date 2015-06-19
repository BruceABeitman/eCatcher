.class final Lcom/facebook/Request$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->a(Lcom/facebook/Session;Lcom/facebook/q;)Lcom/facebook/Request;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/q;


# direct methods
.method constructor <init>(Lcom/facebook/q;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/Request$1;->a:Lcom/facebook/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/aa;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/Request$1;->a:Lcom/facebook/q;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/facebook/Request$1;->a:Lcom/facebook/q;

    const-class v0, Lcom/facebook/model/GraphUser;

    invoke-virtual {p1, v0}, Lcom/facebook/aa;->a(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphUser;

    invoke-interface {v1, v0, p1}, Lcom/facebook/q;->a(Lcom/facebook/model/GraphUser;Lcom/facebook/aa;)V

    :cond_11
    return-void
.end method

.class final Lcom/facebook/Session$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session$3;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ae;

.field final synthetic b:Lcom/facebook/Session$3;


# direct methods
.method constructor <init>(Lcom/facebook/Session$3;Lcom/facebook/ae;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/Session$3$1;->b:Lcom/facebook/Session$3;

    iput-object p2, p0, Lcom/facebook/Session$3$1;->a:Lcom/facebook/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/Session$3$1;->a:Lcom/facebook/ae;

    iget-object v1, p0, Lcom/facebook/Session$3$1;->b:Lcom/facebook/Session$3;

    iget-object v1, v1, Lcom/facebook/Session$3;->c:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/Session$3$1;->b:Lcom/facebook/Session$3;

    iget-object v2, v2, Lcom/facebook/Session$3;->a:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session$3$1;->b:Lcom/facebook/Session$3;

    iget-object v3, v3, Lcom/facebook/Session$3;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/ae;->a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

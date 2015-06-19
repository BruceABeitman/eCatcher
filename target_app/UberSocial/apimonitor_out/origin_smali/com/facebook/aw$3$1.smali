.class Lcom/facebook/aw$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/aw$3;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/bf;

.field final synthetic b:Lcom/facebook/aw$3;


# direct methods
.method constructor <init>(Lcom/facebook/aw$3;Lcom/facebook/bf;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/aw$3$1;->b:Lcom/facebook/aw$3;

    iput-object p2, p0, Lcom/facebook/aw$3$1;->a:Lcom/facebook/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/aw$3$1;->a:Lcom/facebook/bf;

    iget-object v1, p0, Lcom/facebook/aw$3$1;->b:Lcom/facebook/aw$3;

    iget-object v1, v1, Lcom/facebook/aw$3;->c:Lcom/facebook/aw;

    iget-object v2, p0, Lcom/facebook/aw$3$1;->b:Lcom/facebook/aw$3;

    iget-object v2, v2, Lcom/facebook/aw$3;->a:Lcom/facebook/bk;

    iget-object v3, p0, Lcom/facebook/aw$3$1;->b:Lcom/facebook/aw$3;

    iget-object v3, v3, Lcom/facebook/aw$3;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/bf;->a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V

    return-void
.end method

.class Lcom/facebook/widget/be$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/be;->b(Lcom/facebook/widget/bg;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/bg;

.field final synthetic b:Lcom/facebook/widget/be;


# direct methods
.method constructor <init>(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/be$1;->b:Lcom/facebook/widget/be;

    iput-object p2, p0, Lcom/facebook/widget/be$1;->a:Lcom/facebook/widget/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/widget/be$1;->a:Lcom/facebook/widget/bg;

    invoke-virtual {v0}, Lcom/facebook/widget/bg;->d()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_11

    iget-object v0, p0, Lcom/facebook/widget/be$1;->b:Lcom/facebook/widget/be;

    iget-object v1, p0, Lcom/facebook/widget/be$1;->a:Lcom/facebook/widget/bg;

    invoke-static {v0, v1}, Lcom/facebook/widget/be;->a(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)V

    return-void

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/facebook/widget/be$1;->b:Lcom/facebook/widget/be;

    iget-object v2, p0, Lcom/facebook/widget/be$1;->a:Lcom/facebook/widget/bg;

    invoke-static {v1, v2}, Lcom/facebook/widget/be;->a(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)V

    throw v0
.end method

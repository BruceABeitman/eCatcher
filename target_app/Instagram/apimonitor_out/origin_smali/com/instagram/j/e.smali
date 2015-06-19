.class final Lcom/instagram/j/e;
.super Ljava/lang/Object;
.source "AppStartPerformanceTracer.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:Lcom/facebook/e/c/a;

.field final synthetic b:J

.field final synthetic c:Lcom/instagram/j/d;


# direct methods
.method constructor <init>(Lcom/instagram/j/d;Lcom/facebook/e/c/a;J)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/j/e;->c:Lcom/instagram/j/d;

    iput-object p2, p0, Lcom/instagram/j/e;->a:Lcom/facebook/e/c/a;

    iput-wide p3, p0, Lcom/instagram/j/e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 7

    iget-object v0, p0, Lcom/instagram/j/e;->a:Lcom/facebook/e/c/a;

    invoke-virtual {v0}, Lcom/facebook/e/c/a;->a()J

    move-result-wide v1

    iget-object v0, p0, Lcom/instagram/j/e;->c:Lcom/instagram/j/d;

    iget-object v0, p0, Lcom/instagram/j/e;->c:Lcom/instagram/j/d;

    invoke-static {v0}, Lcom/instagram/j/d;->a(Lcom/instagram/j/d;)Lcom/instagram/j/f;

    move-result-object v0

    iget-wide v3, p0, Lcom/instagram/j/e;->b:J

    iget-object v5, p0, Lcom/instagram/j/e;->a:Lcom/facebook/e/c/a;

    invoke-virtual {v5}, Lcom/facebook/e/c/a;->b()Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/instagram/j/d;->a(Lcom/instagram/j/f;JJLjava/util/List;)V

    iget-object v0, p0, Lcom/instagram/j/e;->a:Lcom/facebook/e/c/a;

    iget-object v1, p0, Lcom/instagram/j/e;->c:Lcom/instagram/j/d;

    invoke-static {v1}, Lcom/instagram/j/d;->a(Lcom/instagram/j/d;)Lcom/instagram/j/f;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/j/f;->a(Lcom/instagram/j/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/e/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/j/e;->c:Lcom/instagram/j/d;

    invoke-static {v0}, Lcom/instagram/j/d;->b(Lcom/instagram/j/d;)Lcom/instagram/j/f;

    const/4 v0, 0x0

    return v0
.end method

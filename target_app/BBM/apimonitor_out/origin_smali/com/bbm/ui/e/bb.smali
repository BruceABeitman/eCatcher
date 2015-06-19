.class final Lcom/bbm/ui/e/bb;
.super Lcom/bbm/j/a;
.source "MessagesDelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/bbm/ui/e/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/bj;

.field final synthetic d:Lcom/bbm/ui/e/au;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/au;Lcom/bbm/ui/e/bj;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    iput-object p2, p0, Lcom/bbm/ui/e/bb;->a:Lcom/bbm/ui/e/bj;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 11

    const-wide/16 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/e/bb;->a:Lcom/bbm/ui/e/bj;

    iget-wide v2, v0, Lcom/bbm/ui/e/bj;->c:J

    iget-object v0, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    invoke-static {v0}, Lcom/bbm/ui/e/au;->b(Lcom/bbm/ui/e/au;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v4, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    invoke-static {v4}, Lcom/bbm/ui/e/au;->k(Lcom/bbm/ui/e/au;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v4

    iget-object v0, p0, Lcom/bbm/ui/e/bb;->a:Lcom/bbm/ui/e/bj;

    iget-boolean v0, v0, Lcom/bbm/ui/e/bj;->d:Z

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    invoke-static {v0}, Lcom/bbm/ui/e/au;->b(Lcom/bbm/ui/e/au;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v5, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    invoke-static {v5}, Lcom/bbm/ui/e/au;->k(Lcom/bbm/ui/e/au;)Ljava/lang/String;

    move-result-object v5

    sub-long v6, v2, v8

    invoke-virtual {v0, v5, v6, v7}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v0

    iget-object v5, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    invoke-static {v4, v0}, Lcom/bbm/ui/e/au;->a(Lcom/bbm/d/fg;Lcom/bbm/d/fg;)Z

    move-result v0

    :goto_35
    iget-object v5, p0, Lcom/bbm/ui/e/bb;->a:Lcom/bbm/ui/e/bj;

    iget-boolean v5, v5, Lcom/bbm/ui/e/bj;->e:Z

    if-nez v5, :cond_52

    iget-object v1, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    invoke-static {v1}, Lcom/bbm/ui/e/au;->b(Lcom/bbm/ui/e/au;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v5, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    invoke-static {v5}, Lcom/bbm/ui/e/au;->k(Lcom/bbm/ui/e/au;)Ljava/lang/String;

    move-result-object v5

    add-long/2addr v2, v8

    invoke-virtual {v1, v5, v2, v3}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/e/bb;->d:Lcom/bbm/ui/e/au;

    invoke-static {v4, v1}, Lcom/bbm/ui/e/au;->a(Lcom/bbm/d/fg;Lcom/bbm/d/fg;)Z

    move-result v1

    :cond_52
    new-instance v2, Lcom/bbm/ui/e/i;

    invoke-direct {v2, v4, v0, v1}, Lcom/bbm/ui/e/i;-><init>(Lcom/bbm/d/fg;ZZ)V

    return-object v2

    :cond_58
    move v0, v1

    goto :goto_35
.end method

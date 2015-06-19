.class final Lcom/bbm/l/d/b/f;
.super Ljava/lang/Object;
.source "GooglePlayMethod.java"

# interfaces
.implements Lcom/bbm/l/d/b/s;


# instance fields
.field final synthetic a:Lcom/bbm/l/d/b/c;


# direct methods
.method constructor <init>(Lcom/bbm/l/d/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/l/d/b/u;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/bbm/l/d/b/u;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    invoke-static {v0}, Lcom/bbm/l/d/b/c;->a(Lcom/bbm/l/d/b/c;)Z

    iget-object v0, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    invoke-static {v0, v1}, Lcom/bbm/l/d/b/c;->a(Lcom/bbm/l/d/b/c;Lcom/bbm/util/bh;)Lcom/bbm/util/bh;

    iget-object v0, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    invoke-virtual {v0}, Lcom/bbm/l/d/b/c;->i()V

    :goto_18
    return-void

    :cond_19
    const-string v0, "GooglePlayMethod.startUpIabHelper()"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PaymentController failed to start IAB. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    invoke-static {v0, v1}, Lcom/bbm/l/d/b/c;->a(Lcom/bbm/l/d/b/c;Lcom/bbm/util/bh;)Lcom/bbm/util/bh;

    iget-object v0, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    iget-object v0, v0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    iget-object v0, v0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/d/b/t;

    invoke-interface {v0, p1, v3}, Lcom/bbm/l/d/b/t;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/v;)V

    goto :goto_42

    :cond_52
    iget-object v0, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    iput-object v3, v0, Lcom/bbm/l/d/b/c;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/bbm/l/d/b/f;->a:Lcom/bbm/l/d/b/c;

    iput-object v3, v0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;

    goto :goto_18
.end method

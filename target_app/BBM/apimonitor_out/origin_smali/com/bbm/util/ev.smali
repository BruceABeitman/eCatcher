.class final Lcom/bbm/util/ev;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/util/eu;


# direct methods
.method constructor <init>(Lcom/bbm/util/eu;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/ev;->a:Lcom/bbm/util/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADS: Ad marked as viewed - id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/util/ev;->a:Lcom/bbm/util/eu;

    iget-object v1, v1, Lcom/bbm/util/eu;->a:Lcom/bbm/util/es;

    iget-object v1, v1, Lcom/bbm/util/es;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v0

    sget-object v1, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;

    sget-object v2, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;

    iget-object v3, p0, Lcom/bbm/util/ev;->a:Lcom/bbm/util/eu;

    iget-object v3, v3, Lcom/bbm/util/eu;->a:Lcom/bbm/util/es;

    iget-object v3, v3, Lcom/bbm/util/es;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V

    iget-object v0, p0, Lcom/bbm/util/ev;->a:Lcom/bbm/util/eu;

    iget-object v0, v0, Lcom/bbm/util/eu;->a:Lcom/bbm/util/es;

    invoke-static {v0}, Lcom/bbm/util/es;->a(Lcom/bbm/util/es;)V

    iget-object v0, p0, Lcom/bbm/util/ev;->a:Lcom/bbm/util/eu;

    iget-object v0, v0, Lcom/bbm/util/eu;->a:Lcom/bbm/util/es;

    iget-object v0, v0, Lcom/bbm/util/es;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

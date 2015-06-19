.class final Lcom/bbm/f/n;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/f/l;


# direct methods
.method constructor <init>(Lcom/bbm/f/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/n;->a:Lcom/bbm/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/f/n;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->a(Lcom/bbm/f/j;)Lcom/bbm/util/cr;

    move-result-object v0

    sget-object v1, Lcom/bbm/f/b;->b:Lcom/bbm/f/b;

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    const-string v0, "Service layer status: connected"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/f/n;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->i(Lcom/bbm/f/j;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "Resynch with bbmcore"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/f/n;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->j(Lcom/bbm/f/j;)V

    :cond_2d
    iget-object v0, p0, Lcom/bbm/f/n;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->k(Lcom/bbm/f/j;)Z

    return-void
.end method

.class final Lcom/bbm/c;
.super Ljava/lang/Object;
.source "Alaska.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/bbm/Alaska;


# direct methods
.method constructor <init>(Lcom/bbm/Alaska;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string v0, "Alaska onServiceConnected component %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    check-cast p2, Lcom/bbm/i;

    invoke-static {v0, p2}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;Lcom/bbm/i;)Lcom/bbm/i;

    invoke-static {}, Lcom/bbm/Alaska;->C()Lcom/bbm/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-static {v1}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;)Lcom/bbm/i;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/i;->a:Lcom/bbm/BbmService;

    invoke-static {v1}, Lcom/bbm/BbmService;->i(Lcom/bbm/BbmService;)Lcom/bbm/f/c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/f/c;->a(Lcom/google/b/a/l;)V

    invoke-static {}, Lcom/bbm/Alaska;->D()Lcom/bbm/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-static {v1}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;)Lcom/bbm/i;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/i;->a:Lcom/bbm/BbmService;

    invoke-static {v1}, Lcom/bbm/BbmService;->j(Lcom/bbm/BbmService;)Lcom/bbm/f/c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/f/c;->a(Lcom/google/b/a/l;)V

    invoke-static {}, Lcom/bbm/Alaska;->E()Lcom/bbm/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-static {v1}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;)Lcom/bbm/i;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/i;->a:Lcom/bbm/BbmService;

    invoke-static {v1}, Lcom/bbm/BbmService;->k(Lcom/bbm/BbmService;)Lcom/bbm/f/c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/f/c;->a(Lcom/google/b/a/l;)V

    invoke-static {}, Lcom/bbm/Alaska;->F()Lcom/bbm/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-static {v1}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;)Lcom/bbm/i;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/i;->a:Lcom/bbm/BbmService;

    invoke-static {v1}, Lcom/bbm/BbmService;->c(Lcom/bbm/BbmService;)Lcom/bbm/j/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/j/e;->a(Lcom/google/b/a/l;)V

    invoke-static {}, Lcom/bbm/Alaska;->G()Lcom/bbm/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-static {v1}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;)Lcom/bbm/i;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/i;->a:Lcom/bbm/BbmService;

    invoke-static {v1}, Lcom/bbm/BbmService;->l(Lcom/bbm/BbmService;)Lcom/bbm/j/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/j/e;->a(Lcom/google/b/a/l;)V

    iget-object v0, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-static {v0}, Lcom/bbm/Alaska;->b(Lcom/bbm/Alaska;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    iget-object v0, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-virtual {v0}, Lcom/bbm/Alaska;->v()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const-string v0, "Alaska onServiceDisconnected component %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;Lcom/bbm/i;)Lcom/bbm/i;

    iget-object v0, p0, Lcom/bbm/c;->a:Lcom/bbm/Alaska;

    invoke-static {v0}, Lcom/bbm/Alaska;->b(Lcom/bbm/Alaska;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    return-void
.end method

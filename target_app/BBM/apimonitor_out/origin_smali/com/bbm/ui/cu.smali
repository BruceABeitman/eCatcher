.class final Lcom/bbm/ui/cu;
.super Ljava/lang/Object;
.source "IncrementalListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/ct;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/cu;->a:Lcom/bbm/ui/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/cu;->a:Lcom/bbm/ui/ct;

    invoke-static {v0}, Lcom/bbm/ui/ct;->a(Lcom/bbm/ui/ct;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/cu;->a:Lcom/bbm/ui/ct;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/ct;->a(Lcom/bbm/ui/ct;I)I

    iget-object v0, p0, Lcom/bbm/ui/cu;->a:Lcom/bbm/ui/ct;

    invoke-static {v0}, Lcom/bbm/ui/ct;->c(Lcom/bbm/ui/ct;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/cu;->a:Lcom/bbm/ui/ct;

    invoke-static {v1}, Lcom/bbm/ui/ct;->b(Lcom/bbm/ui/ct;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/bbm/ui/cu;->a:Lcom/bbm/ui/ct;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/ct;->a(Lcom/bbm/ui/ct;I)I

    iget-object v0, p0, Lcom/bbm/ui/cu;->a:Lcom/bbm/ui/ct;

    invoke-static {v0}, Lcom/bbm/ui/ct;->d(Lcom/bbm/ui/ct;)Lcom/bbm/ui/u;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/ui/u;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1e
.end method

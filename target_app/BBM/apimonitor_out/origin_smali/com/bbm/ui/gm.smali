.class final Lcom/bbm/ui/gm;
.super Ljava/lang/Object;
.source "StickyHeaderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/gk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/gk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/gm;->a:Lcom/bbm/ui/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/gm;->a:Lcom/bbm/ui/gk;

    invoke-static {v0}, Lcom/bbm/ui/gk;->d(Lcom/bbm/ui/gk;)Ljava/util/List;

    iget-object v0, p0, Lcom/bbm/ui/gm;->a:Lcom/bbm/ui/gk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/gk;->a(Lcom/bbm/ui/gk;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/gm;->a:Lcom/bbm/ui/gk;

    invoke-static {v0}, Lcom/bbm/ui/gk;->e(Lcom/bbm/ui/gk;)V

    iget-object v0, p0, Lcom/bbm/ui/gm;->a:Lcom/bbm/ui/gk;

    invoke-static {v0}, Lcom/bbm/ui/gk;->f(Lcom/bbm/ui/gk;)Lcom/bbm/ui/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/dy;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/bbm/ui/gm;->a:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->notifyDataSetChanged()V

    return-void
.end method

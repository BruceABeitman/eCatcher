.class final Lcom/bbm/ui/eg;
.super Ljava/lang/Object;
.source "ObservableValueAdapter.java"

# interfaces
.implements Lcom/bbm/j/h;


# instance fields
.field final synthetic a:Lcom/bbm/ui/ef;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ef;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/eg;->a:Lcom/bbm/ui/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/eg;->a:Lcom/bbm/ui/ef;

    invoke-static {v0}, Lcom/bbm/ui/ef;->a(Lcom/bbm/ui/ef;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/bbm/ui/eg;->a:Lcom/bbm/ui/ef;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/ef;->a(Lcom/bbm/ui/ef;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/eg;->a:Lcom/bbm/ui/ef;

    invoke-static {v0}, Lcom/bbm/ui/ef;->c(Lcom/bbm/ui/ef;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/eg;->a:Lcom/bbm/ui/ef;

    invoke-static {v1}, Lcom/bbm/ui/ef;->b(Lcom/bbm/ui/ef;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

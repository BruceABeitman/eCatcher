.class public final Lcom/bbm/util/es;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"


# instance fields
.field a:Ljava/util/Timer;

.field b:Z

.field final c:Lcom/bbm/j/k;

.field final d:Ljava/lang/String;

.field final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Lcom/bbm/util/eq;Lcom/bbm/j/t;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lcom/bbm/util/eq;",
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/es;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/es;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bbm/util/es;->d:Ljava/lang/String;

    new-instance v0, Lcom/bbm/util/et;

    invoke-direct {v0, p0, p4, p3, p2}, Lcom/bbm/util/et;-><init>(Lcom/bbm/util/es;Lcom/bbm/j/t;Lcom/bbm/util/eq;Landroid/view/View;)V

    iput-object v0, p0, Lcom/bbm/util/es;->c:Lcom/bbm/j/k;

    iget-object v0, p0, Lcom/bbm/util/es;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/util/es;)V
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/util/es;->b:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/util/es;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/bbm/util/es;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/es;->b:Z

    :cond_11
    return-void
.end method

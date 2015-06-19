.class final Lcom/bbm/util/f/l;
.super Ljava/util/TimerTask;
.source "TimestampScheduler.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/f/k;


# direct methods
.method constructor <init>(Lcom/bbm/util/f/k;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/f/l;->a:Lcom/bbm/util/f/k;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/f/l;->a:Lcom/bbm/util/f/k;

    iget-object v0, v0, Lcom/bbm/util/f/k;->a:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/util/f/m;

    invoke-direct {v1, p0}, Lcom/bbm/util/f/m;-><init>(Lcom/bbm/util/f/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

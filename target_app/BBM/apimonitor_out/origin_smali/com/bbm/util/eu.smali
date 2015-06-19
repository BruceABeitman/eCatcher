.class final Lcom/bbm/util/eu;
.super Ljava/util/TimerTask;
.source "UpdatesFragmentUtil.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/es;


# direct methods
.method constructor <init>(Lcom/bbm/util/es;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/eu;->a:Lcom/bbm/util/es;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/eu;->a:Lcom/bbm/util/es;

    iget-object v0, v0, Lcom/bbm/util/es;->e:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/util/ev;

    invoke-direct {v1, p0}, Lcom/bbm/util/ev;-><init>(Lcom/bbm/util/eu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

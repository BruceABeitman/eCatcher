.class public final Lcom/bbm/util/bn;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Lcom/bbm/util/dc;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/util/bn;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/bbm/util/bn;
    .registers 3

    new-instance v0, Lcom/bbm/util/bn;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/bbm/util/bn;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/bn;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/util/bn;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/bn;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/bn;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

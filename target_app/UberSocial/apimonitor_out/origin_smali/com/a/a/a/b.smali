.class public final Lcom/a/a/a/b;
.super Lcom/a/a/a/cb;
.source "SourceFile"


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/a/a/a/cn;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/a/a/a/cb;-><init>(Lcom/a/a/a/cn;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/a/a/a/b;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/b;Ljava/lang/Object;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/a/a/a/cb;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lcom/a/a/a/cu;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/a/a/a/cu;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    invoke-super {p0, p1}, Lcom/a/a/a/cb;->a(Ljava/lang/Object;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/a/a/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/a/c;

    invoke-direct {v1, p0, p1}, Lcom/a/a/a/c;-><init>(Lcom/a/a/a/b;Lcom/a/a/a/cu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_1f
    instance-of v0, p1, Lcom/a/a/a/ct;

    if-nez v0, :cond_27

    instance-of v0, p1, Lcom/a/a/a/cg;

    if-eqz v0, :cond_2b

    :cond_27
    invoke-super {p0, p1}, Lcom/a/a/a/cb;->a(Ljava/lang/Object;)V

    goto :goto_13

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Posted argument must implement Event interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

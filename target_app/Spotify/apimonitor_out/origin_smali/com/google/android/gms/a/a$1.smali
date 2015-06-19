.class final Lcom/google/android/gms/a/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/a/a$1;->a:Lcom/google/android/gms/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/a/a$1;->a:Lcom/google/android/gms/a/a;

    iget-object v1, v1, Lcom/google/android/gms/a/a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

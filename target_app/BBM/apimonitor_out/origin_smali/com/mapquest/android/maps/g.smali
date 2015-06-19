.class final Lcom/mapquest/android/maps/g;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# static fields
.field public static final a:Lcom/mapquest/android/maps/g;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mapquest/android/maps/g;

    invoke-direct {v0}, Lcom/mapquest/android/maps/g;-><init>()V

    sput-object v0, Lcom/mapquest/android/maps/g;->a:Lcom/mapquest/android/maps/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/g;->b:Ljava/util/List;

    return-void
.end method

.method public static a(I)V
    .registers 4

    sget-object v0, Lcom/mapquest/android/maps/g;->a:Lcom/mapquest/android/maps/g;

    iget-object v0, v0, Lcom/mapquest/android/maps/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Lcom/mapquest/android/maps/cv;->a(Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput p0, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_8

    :cond_24
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    :cond_28
    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .registers 2

    if-eqz p0, :cond_9

    sget-object v0, Lcom/mapquest/android/maps/g;->a:Lcom/mapquest/android/maps/g;

    iget-object v0, v0, Lcom/mapquest/android/maps/g;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static a(Landroid/os/Message;)V
    .registers 4

    sget-object v0, Lcom/mapquest/android/maps/g;->a:Lcom/mapquest/android/maps/g;

    iget-object v0, v0, Lcom/mapquest/android/maps/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Lcom/mapquest/android/maps/cv;->a(Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_8

    :cond_22
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    :cond_2a
    return-void
.end method

.method public static b(Landroid/os/Handler;)V
    .registers 2

    if-eqz p0, :cond_9

    sget-object v0, Lcom/mapquest/android/maps/g;->a:Lcom/mapquest/android/maps/g;

    iget-object v0, v0, Lcom/mapquest/android/maps/g;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

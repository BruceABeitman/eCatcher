.class final Lcom/mapquest/android/maps/cr;
.super Ljava/lang/Object;
.source "TrafficManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/mapquest/android/maps/cq;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/cq;)V
    .registers 2

    iput-object p1, p0, Lcom/mapquest/android/maps/cr;->a:Lcom/mapquest/android/maps/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_4e

    move v0, v1

    :cond_8
    :goto_8
    return v0

    :sswitch_9
    iget-object v2, p0, Lcom/mapquest/android/maps/cr;->a:Lcom/mapquest/android/maps/cq;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v4}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v4

    iget-object v5, v2, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v5}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v2, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;

    invoke-static {v3, v1}, Lcom/mapquest/android/maps/cq;->a(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/b;

    move-result-object v1

    iget-object v3, v2, Lcom/mapquest/android/maps/cq;->b:Lcom/mapquest/android/maps/ct;

    if-eqz v3, :cond_30

    iget-object v3, v2, Lcom/mapquest/android/maps/cq;->b:Lcom/mapquest/android/maps/ct;

    iget-object v3, v3, Lcom/mapquest/android/maps/ct;->b:Lcom/mapquest/android/maps/b;

    invoke-virtual {v3, v1}, Lcom/mapquest/android/maps/b;->a(Lcom/mapquest/android/maps/b;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_30
    invoke-virtual {v2}, Lcom/mapquest/android/maps/cq;->b()V

    goto :goto_8

    :sswitch_34
    iget-object v1, p0, Lcom/mapquest/android/maps/cr;->a:Lcom/mapquest/android/maps/cq;

    iget-object v1, v1, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/mapquest/android/maps/cr;->a:Lcom/mapquest/android/maps/cq;

    iget-object v1, v1, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/cu;->c()V

    :cond_41
    iget-object v1, p0, Lcom/mapquest/android/maps/cr;->a:Lcom/mapquest/android/maps/cq;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/cq;->b()V

    goto :goto_8

    :sswitch_47
    iget-object v1, p0, Lcom/mapquest/android/maps/cr;->a:Lcom/mapquest/android/maps/cq;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/cq;->b()V

    goto :goto_8

    nop

    :sswitch_data_4e
    .sparse-switch
        0x5 -> :sswitch_47
        0xc -> :sswitch_34
        0x17 -> :sswitch_9
    .end sparse-switch
.end method

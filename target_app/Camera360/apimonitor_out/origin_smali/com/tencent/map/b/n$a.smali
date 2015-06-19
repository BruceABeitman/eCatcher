.class final Lcom/tencent/map/b/n$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/n;


# direct methods
.method public constructor <init>(Lcom/tencent/map/b/n;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_8a

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    iget-object v1, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/e$a;

    invoke-static {v1, v0}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Lcom/tencent/map/b/e$a;)V

    goto :goto_5

    :sswitch_10
    iget-object v1, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/m$b;

    invoke-static {v1, v0}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Lcom/tencent/map/b/m$b;)V

    goto :goto_5

    :sswitch_1a
    iget-object v1, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/f$b;

    invoke-static {v1, v0}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Lcom/tencent/map/b/f$b;)V

    goto :goto_5

    :sswitch_24
    iget-object v0, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;I)V

    goto :goto_5

    :sswitch_2c
    iget-object v0, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/map/b/n;->b(Lcom/tencent/map/b/n;I)V

    goto :goto_5

    :sswitch_34
    iget-object v1, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Landroid/location/Location;)V

    goto :goto_5

    :sswitch_3e
    iget-object v0, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    invoke-static {v0}, Lcom/tencent/map/b/n;->e(Lcom/tencent/map/b/n;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    invoke-static {v0}, Lcom/tencent/map/b/n;->c(Lcom/tencent/map/b/n;)V

    goto :goto_5

    :sswitch_4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;Lcom/tencent/map/b/n$c;)Lcom/tencent/map/b/n$c;

    goto :goto_5

    :sswitch_61
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6f

    iget-object v1, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/map/b/n;->b(Lcom/tencent/map/b/n;Ljava/lang/String;)V

    goto :goto_5

    :cond_6f
    iget-object v0, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    invoke-static {v0}, Lcom/tencent/map/b/n;->f(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/e$a;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    invoke-static {v0}, Lcom/tencent/map/b/n;->f(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/b/e$a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_83
    iget-object v0, p0, Lcom/tencent/map/b/n$a;->a:Lcom/tencent/map/b/n;

    invoke-static {v0}, Lcom/tencent/map/b/n;->g(Lcom/tencent/map/b/n;)V

    goto/16 :goto_5

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_10
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_24
        0x5 -> :sswitch_2c
        0x6 -> :sswitch_34
        0x8 -> :sswitch_61
        0x10 -> :sswitch_4d
        0x100 -> :sswitch_3e
    .end sparse-switch
.end method

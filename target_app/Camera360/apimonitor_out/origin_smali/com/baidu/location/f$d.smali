.class public Lcom/baidu/location/f$d;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/f;


# direct methods
.method public constructor <init>(Lcom/baidu/location/f;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/16 v3, 0x1a

    const/16 v2, 0x15

    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->if(Lcom/baidu/location/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_9c

    :cond_12
    :goto_12
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_16
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->do(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_12

    :sswitch_1c
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_12

    :sswitch_22
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->new(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_12

    :sswitch_28
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1, v2}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;Landroid/os/Message;I)V

    goto :goto_12

    :sswitch_2e
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1, v3}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;Landroid/os/Message;I)V

    goto :goto_12

    :sswitch_34
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->for(Lcom/baidu/location/f;)V

    goto :goto_12

    :sswitch_3a
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->char(Lcom/baidu/location/f;)V

    goto :goto_12

    :sswitch_40
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->int(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_12

    :sswitch_46
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->c(Lcom/baidu/location/f;)V

    goto :goto_12

    :sswitch_4c
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->for(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_12

    :sswitch_52
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->if(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_12

    :sswitch_58
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->try(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_12

    :sswitch_5e
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->case(Lcom/baidu/location/f;)V

    goto :goto_12

    :sswitch_64
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;)V

    goto :goto_12

    :sswitch_6a
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->try(Lcom/baidu/location/f;)V

    goto :goto_12

    :sswitch_70
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->b(Lcom/baidu/location/f;)V

    goto :goto_12

    :sswitch_76
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, v2}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;I)V

    goto :goto_12

    :sswitch_7c
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, v3}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;I)V

    goto :goto_12

    :sswitch_82
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->do(Lcom/baidu/location/f;)Lcom/baidu/location/f$c;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->do(Lcom/baidu/location/f;)Lcom/baidu/location/f$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f$c;->do()V

    goto/16 :goto_12

    :sswitch_95
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->void(Lcom/baidu/location/f;)V

    goto/16 :goto_12

    :sswitch_data_9c
    .sparse-switch
        0xb -> :sswitch_16
        0xc -> :sswitch_1c
        0xf -> :sswitch_22
        0x15 -> :sswitch_28
        0x16 -> :sswitch_4c
        0x19 -> :sswitch_58
        0x1a -> :sswitch_2e
        0x1c -> :sswitch_52
        0x1f -> :sswitch_34
        0x29 -> :sswitch_5e
        0x33 -> :sswitch_3a
        0x34 -> :sswitch_46
        0x35 -> :sswitch_70
        0x39 -> :sswitch_40
        0x3e -> :sswitch_76
        0x3f -> :sswitch_76
        0x40 -> :sswitch_7c
        0x41 -> :sswitch_7c
        0x51 -> :sswitch_64
        0x5b -> :sswitch_6a
        0x5c -> :sswitch_95
        0x65 -> :sswitch_82
    .end sparse-switch
.end method

.class Lcom/baidu/location/LocationClient$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/LocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/LocationClient;


# direct methods
.method private constructor <init>(Lcom/baidu/location/LocationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/LocationClient$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient$a;-><init>(Lcom/baidu/location/LocationClient;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_8a

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_8
    :goto_8
    return-void

    :sswitch_9
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->do(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_8

    :sswitch_f
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_8

    :sswitch_15
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_8

    :sswitch_1b
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->try(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_8

    :sswitch_21
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->new(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_8

    :sswitch_27
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->for(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_8

    :sswitch_2d
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;)V

    goto :goto_8

    :sswitch_33
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->new(Lcom/baidu/location/LocationClient;)V

    goto :goto_8

    :sswitch_39
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->case(Lcom/baidu/location/LocationClient;)V

    goto :goto_8

    :sswitch_3f
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;)V

    goto :goto_8

    :sswitch_45
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->for(Lcom/baidu/location/LocationClient;)V

    goto :goto_8

    :sswitch_4b
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->goto(Lcom/baidu/location/LocationClient;)V

    goto :goto_8

    :sswitch_51
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->byte(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->void:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;Z)Z

    goto :goto_8

    :sswitch_62
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->byte(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->void:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;Z)Z

    goto :goto_8

    :sswitch_73
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    const/16 v1, 0x15

    invoke-static {v0, p1, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Landroid/os/Message;I)V

    goto :goto_8

    :sswitch_7b
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    const/16 v1, 0x1a

    invoke-static {v0, p1, v1}, Lcom/baidu/location/LocationClient;->a(Lcom/baidu/location/LocationClient;Landroid/os/Message;I)V

    goto :goto_8

    :sswitch_83
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->int(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_8

    nop

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_2d
        0x2 -> :sswitch_33
        0x3 -> :sswitch_9
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_15
        0x6 -> :sswitch_1b
        0x7 -> :sswitch_4b
        0x8 -> :sswitch_f
        0x9 -> :sswitch_21
        0xa -> :sswitch_27
        0xb -> :sswitch_39
        0xc -> :sswitch_45
        0x15 -> :sswitch_73
        0x1a -> :sswitch_7b
        0x1b -> :sswitch_83
        0x36 -> :sswitch_51
        0x37 -> :sswitch_62
    .end sparse-switch
.end method

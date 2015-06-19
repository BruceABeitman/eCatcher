.class public Lcom/baidu/location/f$c$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/f$c;


# direct methods
.method public constructor <init>(Lcom/baidu/location/f$c;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/f$c$a;->a:Lcom/baidu/location/f$c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.baidu.locTest.LocationServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/baidu/location/f$c$a;->a:Lcom/baidu/location/f$c;

    iget-object v0, v0, Lcom/baidu/location/f$c;->e:Lcom/baidu/location/f;

    iget-object v0, v0, Lcom/baidu/location/f;->R:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    :try_start_1e
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v0, :pswitch_data_70

    iget-object v0, p0, Lcom/baidu/location/f$c$a;->a:Lcom/baidu/location/f$c;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/f$c;->a(Lcom/baidu/location/f$c;Ljava/lang/String;)Ljava/lang/String;

    :goto_40
    packed-switch v1, :pswitch_data_7a

    goto :goto_1d

    :pswitch_44
    iget-object v0, p0, Lcom/baidu/location/f$c$a;->a:Lcom/baidu/location/f$c;

    const-string/jumbo v1, "6"

    invoke-static {v0, v1}, Lcom/baidu/location/f$c;->a(Lcom/baidu/location/f$c;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4c} :catch_4d

    goto :goto_1d

    :catch_4d
    move-exception v0

    iget-object v0, p0, Lcom/baidu/location/f$c$a;->a:Lcom/baidu/location/f$c;

    invoke-static {v0, v3}, Lcom/baidu/location/f$c;->a(Lcom/baidu/location/f$c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_54
    :try_start_54
    iget-object v0, p0, Lcom/baidu/location/f$c$a;->a:Lcom/baidu/location/f$c;

    const-string/jumbo v2, "4"

    invoke-static {v0, v2}, Lcom/baidu/location/f$c;->a(Lcom/baidu/location/f$c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_40

    :pswitch_5d
    iget-object v0, p0, Lcom/baidu/location/f$c$a;->a:Lcom/baidu/location/f$c;

    const-string/jumbo v2, "3"

    invoke-static {v0, v2}, Lcom/baidu/location/f$c;->a(Lcom/baidu/location/f$c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_40

    :pswitch_66
    iget-object v0, p0, Lcom/baidu/location/f$c$a;->a:Lcom/baidu/location/f$c;

    const-string/jumbo v1, "5"

    invoke-static {v0, v1}, Lcom/baidu/location/f$c;->a(Lcom/baidu/location/f$c;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6e} :catch_4d

    goto :goto_1d

    nop

    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_54
        :pswitch_5d
        :pswitch_5d
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_66
    .end packed-switch
.end method

.class Lcom/baidu/location/e$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/e;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/e$b;->a:Lcom/baidu/location/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/e;Lcom/baidu/location/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/e$b;-><init>(Lcom/baidu/location/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/baidu/location/e$b;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->if(Lcom/baidu/location/e;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/baidu/location/e$b;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->for(Lcom/baidu/location/e;)V

    iget-object v0, p0, Lcom/baidu/location/e$b;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->if(Lcom/baidu/location/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/baidu/location/e;->do()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi manager receive new wifi..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
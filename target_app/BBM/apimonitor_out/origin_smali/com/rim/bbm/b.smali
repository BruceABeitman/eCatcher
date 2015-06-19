.class final Lcom/rim/bbm/b;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic a:Lcom/rim/bbm/a;


# direct methods
.method constructor <init>(Lcom/rim/bbm/a;)V
    .registers 2

    iput-object p1, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5d

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    iput-object p2, v0, Lcom/rim/bbm/a;->c:Landroid/bluetooth/BluetoothHeadset;

    const-string v0, "Headset proxy connected"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->c:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_48

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "Bluetooth starting audio"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iput-boolean v2, v0, Lcom/rim/bbm/a;->f:Z

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->g:Lcom/rim/bbm/d;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->g:Lcom/rim/bbm/d;

    invoke-interface {v0, v2}, Lcom/rim/bbm/d;->onBluetoothStateChange(Z)V

    :cond_48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v1, v1, Lcom/rim/bbm/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v2, v2, Lcom/rim/bbm/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5d
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_40

    const-string v0, "Headset proxy disconnected"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v1, v1, Lcom/rim/bbm/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-boolean v0, v0, Lcom/rim/bbm/a;->f:Z

    if-eqz v0, :cond_3b

    const-string v0, "Bluetooth stoping audio"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iput-boolean v2, v0, Lcom/rim/bbm/a;->f:Z

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->g:Lcom/rim/bbm/d;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    iget-object v0, v0, Lcom/rim/bbm/a;->g:Lcom/rim/bbm/d;

    invoke-interface {v0, v2}, Lcom/rim/bbm/d;->onBluetoothStateChange(Z)V

    :cond_3b
    iget-object v0, p0, Lcom/rim/bbm/b;->a:Lcom/rim/bbm/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rim/bbm/a;->c:Landroid/bluetooth/BluetoothHeadset;

    :cond_40
    return-void
.end method

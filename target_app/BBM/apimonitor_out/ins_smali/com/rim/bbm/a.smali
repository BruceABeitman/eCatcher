.class public final Lcom/rim/bbm/a;
.super Ljava/lang/Object;
.source "BluetoothManager.java"
.field  a:Landroid/media/AudioManager;
.field  b:Landroid/bluetooth/BluetoothAdapter;
.field  c:Landroid/bluetooth/BluetoothHeadset;
.field final d:Landroid/content/Context;
.field  e:Z
.field  f:Z
.field  g:Lcom/rim/bbm/d;
.field final h:Landroid/content/BroadcastReceiver;
.field private final i:Landroid/bluetooth/BluetoothProfile$ServiceListener;
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/rim/bbm/b;
invoke-direct {v0, p0}, Lcom/rim/bbm/b;-><init>(Lcom/rim/bbm/a;)V
iput-object v0, p0, Lcom/rim/bbm/a;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;
new-instance v0, Lcom/rim/bbm/c;
invoke-direct {v0, p0}, Lcom/rim/bbm/c;-><init>(Lcom/rim/bbm/a;)V
iput-object v0, p0, Lcom/rim/bbm/a;->h:Landroid/content/BroadcastReceiver;
iput-object p1, p0, Lcom/rim/bbm/a;->d:Landroid/content/Context;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/rim/bbm/d;)V
.registers 3
invoke-direct {p0, p1}, Lcom/rim/bbm/a;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/rim/bbm/a;->g:Lcom/rim/bbm/d;
return-void
.end method
.method public final a()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/rim/bbm/a;->e:Z
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
const-string v0, "BluetoothManager.activate()"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
move-result-object v0
iput-object v0, p0, Lcom/rim/bbm/a;->b:Landroid/bluetooth/BluetoothAdapter;
iget-object v0, p0, Lcom/rim/bbm/a;->b:Landroid/bluetooth/BluetoothAdapter;
if-eqz v0, :cond_30
iput-boolean v3, p0, Lcom/rim/bbm/a;->e:Z
iget-object v0, p0, Lcom/rim/bbm/a;->d:Landroid/content/Context;
const-string v1, "audio"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
iput-object v0, p0, Lcom/rim/bbm/a;->a:Landroid/media/AudioManager;
iget-object v0, p0, Lcom/rim/bbm/a;->b:Landroid/bluetooth/BluetoothAdapter;
iget-object v1, p0, Lcom/rim/bbm/a;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/rim/bbm/a;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;
invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
goto :goto_6
:cond_30
const-string v0, "Bluetooth not supported"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_6
.end method
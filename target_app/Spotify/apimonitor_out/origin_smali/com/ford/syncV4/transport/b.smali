.class final Lcom/ford/syncV4/transport/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ford/syncV4/transport/a;

.field private b:Z

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/ford/syncV4/transport/a;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/ford/syncV4/transport/b;->a:Lcom/ford/syncV4/transport/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ford/syncV4/transport/b;->b:Z

    iput-object v1, p0, Lcom/ford/syncV4/transport/b;->c:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, "BluetoothAdapterMonitor"

    iput-object v0, p0, Lcom/ford/syncV4/transport/b;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/ford/syncV4/transport/b;->e:Ljava/lang/Thread;

    if-nez p2, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothAdapter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput-object p2, p0, Lcom/ford/syncV4/transport/b;->c:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ford/syncV4/transport/b$1;

    invoke-direct {v1, p0, p1}, Lcom/ford/syncV4/transport/b$1;-><init>(Lcom/ford/syncV4/transport/b;Lcom/ford/syncV4/transport/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ford/syncV4/transport/b;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/ford/syncV4/transport/b;->e:Ljava/lang/Thread;

    const-string v1, "BluetoothAdapterMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/b;->e:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/b;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/ford/syncV4/transport/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/ford/syncV4/transport/b;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/ford/syncV4/transport/b;)V
    .registers 6

    iget-object v0, p0, Lcom/ford/syncV4/transport/b;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ford/syncV4/transport/b;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/ford/syncV4/transport/b;->a:Lcom/ford/syncV4/transport/a;

    const-string v1, "Bluetooth adapter has been disabled."

    new-instance v2, Lcom/ford/syncV4/exception/SyncException;

    const-string v3, "Bluetooth adapter must be enabled to instantiate a SyncProxy object."

    sget-object v4, Lcom/ford/syncV4/exception/SyncExceptionCause;->b:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v2, v3, v4}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    invoke-static {v0, v1, v2}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ford/syncV4/transport/b;->b:Z

    iget-object v0, p0, Lcom/ford/syncV4/transport/b;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.class public final Lcom/ford/syncV4/transport/a;
.super Lcom/ford/syncV4/transport/h;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/UUID;


# instance fields
.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Landroid/bluetooth/BluetoothSocket;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/util/UUID;

.field private f:Lcom/ford/syncV4/transport/b;

.field private g:Lcom/ford/syncV4/transport/c;

.field private h:Ljava/io/OutputStream;

.field private i:Landroid/bluetooth/BluetoothServerSocket;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x6c925fe06542b263L

    const-wide v3, -0x7f38fd507a37dd58L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/ford/syncV4/transport/a;->a:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/ford/syncV4/transport/f;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ford/syncV4/transport/h;-><init>(Lcom/ford/syncV4/transport/f;)V

    iput-object v1, p0, Lcom/ford/syncV4/transport/a;->b:Landroid/bluetooth/BluetoothAdapter;

    iput-object v1, p0, Lcom/ford/syncV4/transport/a;->c:Landroid/bluetooth/BluetoothSocket;

    iput-object v1, p0, Lcom/ford/syncV4/transport/a;->d:Ljava/io/InputStream;

    sget-object v0, Lcom/ford/syncV4/transport/a;->a:Ljava/util/UUID;

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->e:Ljava/util/UUID;

    iput-object v1, p0, Lcom/ford/syncV4/transport/a;->f:Lcom/ford/syncV4/transport/b;

    iput-object v1, p0, Lcom/ford/syncV4/transport/a;->g:Lcom/ford/syncV4/transport/c;

    iput-object v1, p0, Lcom/ford/syncV4/transport/a;->h:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    const-string v0, ""

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->j:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ford/syncV4/transport/a;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ford/syncV4/transport/a;->l:Z

    iput-boolean p2, p0, Lcom/ford/syncV4/transport/a;->k:Z

    return-void
.end method

.method private static a(Landroid/bluetooth/BluetoothSocket;)I
    .registers 9

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_5

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_f
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mPort"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_23
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_26} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_26} :catch_32

    move-result v0

    :goto_27
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_2d
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_27

    :catch_32
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_27
.end method

.method static synthetic a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method private static a(Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothSocket;
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_b
    if-ge v1, v4, :cond_36

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "mSocket"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_1f
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_25} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_25} :catch_31

    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_2a
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    :cond_36
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static synthetic a(Lcom/ford/syncV4/transport/a;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .registers 2

    iput-object p1, p0, Lcom/ford/syncV4/transport/a;->c:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic a(Lcom/ford/syncV4/transport/a;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    iput-object p1, p0, Lcom/ford/syncV4/transport/a;->d:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/ford/syncV4/transport/a;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 2

    iput-object p1, p0, Lcom/ford/syncV4/transport/a;->h:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/ford/syncV4/transport/a;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ford/syncV4/transport/a;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothSocket;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->c:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ford/syncV4/transport/a;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_96

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/ford/syncV4/transport/a;->l:Z

    if-nez p1, :cond_99

    const-string v0, ""

    :goto_e
    if-eqz p2, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BTTransport.disconnect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->a:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BILjava/lang/String;)V
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_96

    :try_start_44
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->g:Lcom/ford/syncV4/transport/c;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->g:Lcom/ford/syncV4/transport/c;

    invoke-virtual {v0}, Lcom/ford/syncV4/transport/c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->g:Lcom/ford/syncV4/transport/c;
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_50} :catch_9c

    :cond_50
    :goto_50
    :try_start_50
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->f:Lcom/ford/syncV4/transport/b;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->f:Lcom/ford/syncV4/transport/b;

    invoke-virtual {v0}, Lcom/ford/syncV4/transport/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->f:Lcom/ford/syncV4/transport/b;
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5c} :catch_a3

    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_aa

    :cond_68
    :goto_68
    :try_start_68
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->c:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->c:Landroid/bluetooth/BluetoothSocket;
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_74} :catch_b1

    :cond_74
    :goto_74
    :try_start_74
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->d:Ljava/io/InputStream;
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_80} :catch_b8

    :cond_80
    :goto_80
    :try_start_80
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->h:Ljava/io/OutputStream;
    :try_end_8c
    .catchall {:try_start_80 .. :try_end_8c} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8c} :catch_bf

    :cond_8c
    :goto_8c
    if-nez p2, :cond_c6

    :try_start_8e
    invoke-virtual {p0, p1}, Lcom/ford/syncV4/transport/a;->a(Ljava/lang/String;)V

    :goto_91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ford/syncV4/transport/a;->l:Z
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_96

    goto/16 :goto_5

    :catchall_96
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_99
    move-object v0, p1

    goto/16 :goto_e

    :catch_9c
    move-exception v0

    :try_start_9d
    const-string v1, "Failed to stop transport reader thread."

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    :catch_a3
    move-exception v0

    const-string v1, "Failed to stop adapter monitor thread."

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c

    :catch_aa
    move-exception v0

    const-string v1, "Failed to close serverSocket"

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    :catch_b1
    move-exception v0

    const-string v1, "Failed to close activeSocket"

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_74

    :catch_b8
    move-exception v0

    const-string v1, "Failed to close input stream"

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_80

    :catch_bf
    move-exception v0

    const-string v1, "Failed to close output stream"

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8c

    :cond_c6
    invoke-virtual {p0, p1, p2}, Lcom/ford/syncV4/transport/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_c9
    .catchall {:try_start_9d .. :try_end_c9} :catchall_96

    goto :goto_91
.end method

.method static synthetic c(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->b:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/ford/syncV4/transport/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/ford/syncV4/transport/a;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic f(Lcom/ford/syncV4/transport/a;)Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->d:Ljava/io/InputStream;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/ford/syncV4/exception/SyncException;

    const-string v1, "No Bluetooth adapter found. Bluetooth adapter must exist to communicate with SYNC."

    sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->a:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    throw v0

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Lcom/ford/syncV4/exception/SyncException;

    const-string v1, "Bluetooth adapter must be enabled to instantiate a SyncProxy object."

    sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->b:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    throw v0
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    new-instance v0, Lcom/ford/syncV4/exception/SyncException;

    const-string v1, "Insufficient permissions to interact with the Bluetooth Adapter."

    sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->f:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    throw v0

    :cond_38
    new-instance v0, Lcom/ford/syncV4/transport/b;

    iget-object v2, p0, Lcom/ford/syncV4/transport/a;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, p0, v2}, Lcom/ford/syncV4/transport/b;-><init>(Lcom/ford/syncV4/transport/a;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->f:Lcom/ford/syncV4/transport/b;

    :try_start_41
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->b:Landroid/bluetooth/BluetoothAdapter;

    const-string v2, "SyncProxy"

    iget-object v3, p0, Lcom/ford/syncV4/transport/a;->e:Ljava/util/UUID;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->a(Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accepting Connections on SDP Server Port Number: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->a(Landroid/bluetooth/BluetoothSocket;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ford/syncV4/transport/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Keep Server Socket Open: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/ford/syncV4/transport/a;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->j:Ljava/lang/String;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_8b} :catch_99

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->i:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v0, :cond_b6

    new-instance v0, Lcom/ford/syncV4/exception/SyncException;

    const-string v1, "Could not open connection to SYNC."

    sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->h:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    throw v0

    :catch_99
    move-exception v0

    iget-object v1, p0, Lcom/ford/syncV4/transport/a;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_ac

    new-instance v0, Lcom/ford/syncV4/exception/SyncException;

    const-string v1, "Bluetooth adapter must be on to instantiate a SyncProxy object."

    sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->b:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    throw v0

    :cond_ac
    new-instance v1, Lcom/ford/syncV4/exception/SyncException;

    const-string v2, "Could not open connection to SYNC."

    sget-object v3, Lcom/ford/syncV4/exception/SyncExceptionCause;->h:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v1, v2, v0, v3}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    throw v1

    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "BTTransport: listening for incoming connect to service ID "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ford/syncV4/transport/a;->e:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BILjava/lang/String;)V

    new-instance v0, Lcom/ford/syncV4/transport/c;

    invoke-direct {v0, p0, v4}, Lcom/ford/syncV4/transport/c;-><init>(Lcom/ford/syncV4/transport/a;B)V

    iput-object v0, p0, Lcom/ford/syncV4/transport/a;->g:Lcom/ford/syncV4/transport/c;

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->g:Lcom/ford/syncV4/transport/c;

    const-string v1, "TransportReader"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/c;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->g:Lcom/ford/syncV4/transport/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/c;->setDaemon(Z)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->g:Lcom/ford/syncV4/transport/c;

    invoke-virtual {v0}, Lcom/ford/syncV4/transport/c;->start()V

    invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->a()Z

    goto/16 :goto_6
.end method

.method public final a([BII)Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error writing to Bluetooth socket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "Error writing to Bluetooth socket:"

    invoke-virtual {p0, v1, v0}, Lcom/ford/syncV4/transport/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/ford/syncV4/transport/a;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final c()Lcom/ford/syncV4/transport/TransportType;
    .registers 2

    sget-object v0, Lcom/ford/syncV4/transport/TransportType;->a:Lcom/ford/syncV4/transport/TransportType;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/transport/a;->j:Ljava/lang/String;

    return-object v0
.end method

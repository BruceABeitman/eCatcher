.class final Lcom/ford/syncV4/transport/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:[B

.field final synthetic b:Lcom/ford/syncV4/transport/a;

.field private c:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/ford/syncV4/transport/a;)V
    .registers 3

    iput-object p1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ford/syncV4/transport/c;->a:[B

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ford/syncV4/transport/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ford/syncV4/transport/c;-><init>(Lcom/ford/syncV4/transport/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public final run()V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x10

    const-string v0, "BTTransport: Waiting for incoming RFCOMM connect"

    const-string v1, ""

    sget-object v2, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BILjava/lang/String;)V

    :try_start_f
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_15d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_fc

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->d(Lcom/ford/syncV4/transport/a;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_50

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_50

    :try_start_42
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_1e1

    :goto_4b
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->e(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d8

    :try_start_58
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->f(Lcom/ford/syncV4/transport/a;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_63} :catch_189

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c1

    :try_start_67
    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    iget-object v2, p0, Lcom/ford/syncV4/transport/c;->a:[B

    invoke-virtual {v1, v2, v0}, Lcom/ford/syncV4/transport/a;->a([BI)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_6f

    goto :goto_50

    :catch_6f
    move-exception v0

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure in BTTransport reader thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v2, v1, v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_50

    :cond_94
    :try_start_94
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->b(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/ford/syncV4/trace/e;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "BTTransport: RFCOMM Connection Accepted"

    sget-object v2, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BILjava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->b(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->b(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/io/InputStream;)Ljava/io/InputStream;

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-virtual {v0}, Lcom/ford/syncV4/transport/a;->f()V
    :try_end_d0
    .catchall {:try_start_94 .. :try_end_d0} :catchall_15d
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_d0} :catch_fc

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->d(Lcom/ford/syncV4/transport/a;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_50

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_50

    :try_start_ec
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f5} :catch_1de

    :goto_f5
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->e(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    goto/16 :goto_50

    :catch_fc
    move-exception v0

    :try_start_fd
    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_129

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->c(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_155

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->c(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_155

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    const-string v2, "Bluetooth Adapater has been disabled."

    new-instance v3, Lcom/ford/syncV4/exception/SyncException;

    const-string v4, "Bluetooth adapter must be enabled to instantiate a SyncProxy object."

    sget-object v5, Lcom/ford/syncV4/exception/SyncExceptionCause;->b:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v3, v4, v0, v5}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    invoke-static {v1, v2, v3}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_129
    .catchall {:try_start_fd .. :try_end_129} :catchall_15d

    :cond_129
    :goto_129
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->d(Lcom/ford/syncV4/transport/a;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_50

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_50

    :try_start_145
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_14e} :catch_1db

    :goto_14e
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v0}, Lcom/ford/syncV4/transport/a;->e(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    goto/16 :goto_50

    :cond_155
    :try_start_155
    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    const-string v2, "Failed to accept connection"

    invoke-static {v1, v2, v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_15c
    .catchall {:try_start_155 .. :try_end_15c} :catchall_15d

    goto :goto_129

    :catchall_15d
    move-exception v0

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->d(Lcom/ford/syncV4/transport/a;)Z

    move-result v1

    if-nez v1, :cond_188

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    if-eqz v1, :cond_188

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_188

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v6, :cond_188

    :try_start_17a
    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_183} :catch_1d9

    :goto_183
    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->e(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothServerSocket;

    :cond_188
    throw v0

    :catch_189
    move-exception v0

    :try_start_18a
    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->c(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1b8

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    invoke-static {v1}, Lcom/ford/syncV4/transport/a;->c(Lcom/ford/syncV4/transport/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1b8

    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    const-string v2, "Bluetooth Adapater has been disabled."

    new-instance v3, Lcom/ford/syncV4/exception/SyncException;

    const-string v4, "Bluetooth adapter must be enabled to instantiate a SyncProxy object."

    sget-object v5, Lcom/ford/syncV4/exception/SyncExceptionCause;->b:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v3, v4, v0, v5}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    invoke-static {v1, v2, v3}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_50

    :cond_1b8
    iget-object v1, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    const-string v2, "Failed to read from Bluetooth transport."

    invoke-static {v1, v2, v0}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_50

    :cond_1c1
    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "End of stream reached!"

    invoke-static {v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/c;->b:Lcom/ford/syncV4/transport/a;

    const-string v1, "End of stream reached."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ford/syncV4/transport/a;->a(Lcom/ford/syncV4/transport/a;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1d6} :catch_6f

    goto/16 :goto_50

    :cond_1d8
    return-void

    :catch_1d9
    move-exception v1

    goto :goto_183

    :catch_1db
    move-exception v0

    goto/16 :goto_14e

    :catch_1de
    move-exception v0

    goto/16 :goto_f5

    :catch_1e1
    move-exception v0

    goto/16 :goto_4b
.end method

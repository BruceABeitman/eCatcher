.class public Lcom/sun/mail/pop3/POP3Store;
.super Ljavax/mail/Store;
.source "SourceFile"


# instance fields
.field private defaultPort:I

.field disableTop:Z

.field forgetTopHeaders:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field messageConstructor:Ljava/lang/reflect/Constructor;

.field private name:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private portNum:I

.field private portOwner:Lcom/sun/mail/pop3/POP3Folder;

.field rsetBeforeQuit:Z

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 9

    const-string v3, "pop3"

    const/16 v4, 0x6e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "pop3"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    const/16 v0, 0x6e

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    :cond_2b
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    iput p4, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    iput-boolean p5, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".rsetbeforequit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".disabletop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7b

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".forgettopheaders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".message.class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f6

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: POP3 message class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d7
    :try_start_d7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_de} :catch_fd

    move-result-object v1

    :try_start_df
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_df .. :try_end_e2} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_fd

    move-result-object v0

    :goto_e3
    const/4 v1, 0x2

    :try_start_e4
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/mail/Folder;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    :cond_f6
    :goto_f6
    return-void

    :catch_f7
    move-exception v1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_fb} :catch_fd

    move-result-object v0

    goto :goto_e3

    :catch_fd
    move-exception v0

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: failed to load POP3 message class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f6
.end method

.method private checkConnected()V
    .registers 3

    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_12

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1a

    :goto_10
    monitor-exit p0

    return-void

    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_10

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1d
    move-exception v0

    const/4 v1, 0x0

    :try_start_1f
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-super {p0}, Ljavax/mail/Store;->close()V

    throw v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1a
.end method

.method declared-synchronized closePort(Lcom/sun/mail/pop3/POP3Folder;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 2

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Store;->close()V

    :cond_a
    return-void
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .registers 2

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 4

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_50

    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    new-instance v0, Lcom/sun/mail/pop3/Protocol;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getDebug()Z

    move-result v3

    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v4}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/pop3/Protocol;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_50

    move-result-object v1

    if-eqz v1, :cond_53

    :try_start_47
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_66
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_64

    :goto_4a
    :try_start_4a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_53
    :try_start_53
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v1, :cond_5d

    if-eqz p1, :cond_5d

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    :cond_5d
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v1, :cond_d

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_50

    goto :goto_d

    :catch_64
    move-exception v0

    goto :goto_4a

    :catchall_66
    move-exception v0

    goto :goto_4a
.end method

.method public declared-synchronized isConnected()Z
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_28

    move-result v1

    if-nez v1, :cond_a

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_28

    :try_start_b
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v1, :cond_19

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_25
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_1f

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_25

    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->noop()Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_16

    :catch_1f
    move-exception v1

    :try_start_20
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2d
    .catch Ljavax/mail/MessagingException; {:try_start_20 .. :try_end_23} :catch_2b

    :goto_23
    :try_start_23
    monitor-exit p0

    goto :goto_8

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2b
    move-exception v1

    goto :goto_23

    :catchall_2d
    move-exception v1

    goto :goto_23
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, -0x1

    monitor-enter p0

    if-eqz p1, :cond_8

    if-eqz p4, :cond_8

    if-nez p3, :cond_b

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    if-ne p2, v3, :cond_5d

    :try_start_d
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    move v0, p2

    :goto_31
    if-ne v0, v3, :cond_35

    iget v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    :cond_35
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_51

    const/4 v0, 0x0

    :try_start_3e
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_51
    .catch Ljava/io/EOFException; {:try_start_3e .. :try_end_44} :catch_46
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_54

    const/4 v0, 0x1

    goto :goto_9

    :catch_46
    move-exception v0

    :try_start_47
    new-instance v1, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_54
    move-exception v0

    :try_start_55
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Connect failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_51

    :cond_5d
    move v0, p2

    goto :goto_31
.end method

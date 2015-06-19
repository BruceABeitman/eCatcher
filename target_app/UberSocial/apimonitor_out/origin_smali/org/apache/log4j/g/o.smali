.class public Lorg/apache/log4j/g/o;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Vector;

.field private c:Ljava/net/ServerSocket;

.field private d:I

.field private final e:Lorg/apache/log4j/g/n;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/g/n;I)V
    .registers 5

    iput-object p1, p0, Lorg/apache/log4j/g/o;->e:Lorg/apache/log4j/g/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/g/o;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/g/o;->b:Ljava/util/Vector;

    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/log4j/g/o;->d:I

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/g/o;->c:Ljava/net/ServerSocket;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TelnetAppender-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/g/o;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/g/o;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/g/o;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_20

    move-result v0

    if-eqz v0, :cond_23

    :try_start_d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_20
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_16} :catch_37

    goto :goto_7

    :catch_17
    move-exception v0

    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    :try_start_24
    iget-object v0, p0, Lorg/apache/log4j/g/o;->c:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_29
    .catch Ljava/io/InterruptedIOException; {:try_start_24 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_29} :catch_33

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_29

    :catch_33
    move-exception v0

    goto :goto_29

    :catch_35
    move-exception v0

    goto :goto_29

    :catch_37
    move-exception v0

    goto :goto_7

    :catch_39
    move-exception v0

    goto :goto_7
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/g/o;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/log4j/g/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_d

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2f
    monitor-exit p0

    return-void
.end method

.method public finalize()V
    .registers 1

    invoke-virtual {p0}, Lorg/apache/log4j/g/o;->a()V

    return-void
.end method

.method public run()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/g/o;->c:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_73

    :try_start_8
    iget-object v0, p0, Lorg/apache/log4j/g/o;->c:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/apache/log4j/g/o;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/log4j/g/o;->d:I

    if-ge v2, v3, :cond_79

    monitor-enter p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_56

    :try_start_22
    iget-object v2, p0, Lorg/apache/log4j/g/o;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/log4j/g/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "TelnetAppender v1.0 ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/g/o;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " active connections)\r\n\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    monitor-exit p0

    goto :goto_0

    :catchall_53
    move-exception v0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_22 .. :try_end_55} :catchall_53

    :try_start_55
    throw v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_5f

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_66

    :cond_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_66
    iget-object v1, p0, Lorg/apache/log4j/g/o;->c:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_73

    const-string v1, "Encountered error while in SocketHandler loop."

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_73
    :try_start_73
    iget-object v0, p0, Lorg/apache/log4j/g/o;->c:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_78
    .catch Ljava/io/InterruptedIOException; {:try_start_73 .. :try_end_78} :catch_86
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_8f

    :goto_78
    return-void

    :cond_79
    :try_start_79
    const-string v2, "Too many connections.\r\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_84} :catch_56

    goto/16 :goto_0

    :catch_86
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_78

    :catch_8f
    move-exception v0

    goto :goto_78
.end method

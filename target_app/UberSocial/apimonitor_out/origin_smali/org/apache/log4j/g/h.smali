.class Lorg/apache/log4j/g/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Z

.field private final b:Lorg/apache/log4j/g/g;


# direct methods
.method constructor <init>(Lorg/apache/log4j/g/g;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/g/h;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :goto_0
    iget-boolean v0, p0, Lorg/apache/log4j/g/h;->a:Z

    if-nez v0, :cond_51

    :try_start_4
    iget-object v0, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    iget v0, v0, Lorg/apache/log4j/g/g;->o:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/log4j/g/h;->sleep(J)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Attempting connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    iget-object v1, v1, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    iget-object v1, v1, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    iget-object v2, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    iget v2, v2, Lorg/apache/log4j/g/g;->m:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    monitor-enter p0
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_38} :catch_55
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_38} :catch_5c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_83

    :try_start_38
    iget-object v1, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v1, Lorg/apache/log4j/g/g;->n:Ljava/io/ObjectOutputStream;

    iget-object v0, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/log4j/g/g;->a(Lorg/apache/log4j/g/g;Lorg/apache/log4j/g/h;)Lorg/apache/log4j/g/h;

    const-string v0, "Connection established. Exiting connector thread."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    monitor-exit p0

    :cond_51
    :goto_51
    return-void

    :catchall_52
    move-exception v0

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_52

    :try_start_54
    throw v0
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_55} :catch_55
    .catch Ljava/net/ConnectException; {:try_start_54 .. :try_end_55} :catch_5c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_83

    :catch_55
    move-exception v0

    const-string v0, "Connector interrupted. Leaving loop."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto :goto_51

    :catch_5c
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Remote host "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    iget-object v1, v1, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " refused connection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_83
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_8f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_8f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/g/h;->b:Lorg/apache/log4j/g/g;

    iget-object v2, v2, Lorg/apache/log4j/g/g;->l:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". Exception is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

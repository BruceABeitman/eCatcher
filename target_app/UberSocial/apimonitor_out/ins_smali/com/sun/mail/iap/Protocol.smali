.class public Lcom/sun/mail/iap/Protocol;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final CRLF:[B
.field private connected:Z
.field protected debug:Z
.field private volatile handlers:Ljava/util/Vector;
.field protected host:Ljava/lang/String;
.field private volatile input:Lcom/sun/mail/iap/ResponseInputStream;
.field protected out:Ljava/io/PrintStream;
.field private volatile output:Ljava/io/DataOutputStream;
.field protected prefix:Ljava/lang/String;
.field protected props:Ljava/util/Properties;
.field protected quote:Z
.field private socket:Ljava/net/Socket;
.field private tagCounter:I
.field private volatile timestamp:J
.field private traceInput:Lcom/sun/mail/util/TraceInputStream;
.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x2
new-array v0, v0, [B
fill-array-data v0, :array_a
sput-object v0, Lcom/sun/mail/iap/Protocol;->CRLF:[B
return-void
nop
:array_a
.array-data 0x1
0xdt
0xat
.end array-data
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->connected:Z
iput v1, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
const-string v0, "localhost"
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;
iput-boolean p3, p0, Lcom/sun/mail/iap/Protocol;->debug:Z
iput-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;
new-instance v0, Lcom/sun/mail/util/TraceInputStream;
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-direct {v0, p1, v1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;
invoke-virtual {v0, p3}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;
iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z
invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V
new-instance v0, Lcom/sun/mail/iap/ResponseInputStream;
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ResponseInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;
new-instance v0, Lcom/sun/mail/util/TraceOutputStream;
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-direct {v0, p2, v1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;
invoke-virtual {v0, p3}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;
iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z
invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V
new-instance v0, Ljava/io/DataOutputStream;
new-instance v1, Ljava/io/BufferedOutputStream;
iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;
invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
.registers 12
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->connected:Z
iput v1, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I
const/4 v2, 0x0
iput-object v2, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
:try_start_c
iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;
iput-boolean p3, p0, Lcom/sun/mail/iap/Protocol;->debug:Z
iput-object p4, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;
iput-object p5, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;
iput-object p6, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;
invoke-static {p1, p2, p5, p6, p7}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
move-result-object v2
iput-object v2, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
const-string v2, "mail.debug.quote"
invoke-virtual {p5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_49
const-string v3, "true"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_49
:goto_2c
iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z
invoke-direct {p0, p4}, Lcom/sun/mail/iap/Protocol;->initStreams(Ljava/io/PrintStream;)V
invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->connected:Z
:try_end_41
.catchall {:try_start_c .. :try_end_41} :catchall_4b
iget-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->connected:Z
if-nez v0, :cond_48
invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V
:cond_48
return-void
:cond_49
move v0, v1
goto :goto_2c
:catchall_4b
move-exception v0
iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->connected:Z
if-nez v1, :cond_53
invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V
:cond_53
throw v0
.end method
.method private initStreams(Ljava/io/PrintStream;)V
.registers 5
new-instance v0, Lcom/sun/mail/util/TraceInputStream;
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;
iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->debug:Z
invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;
iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z
invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V
new-instance v0, Lcom/sun/mail/iap/ResponseInputStream;
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ResponseInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;
new-instance v0, Lcom/sun/mail/util/TraceOutputStream;
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;
iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->debug:Z
invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;
iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z
invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V
new-instance v0, Ljava/io/DataOutputStream;
new-instance v1, Ljava/io/BufferedOutputStream;
iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;
invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;
return-void
.end method
.method public declared-synchronized addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
if-nez v0, :cond_c
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
:cond_c
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
.registers 9
const/4 v2, 0x1
monitor-enter p0
:try_start_2
new-instance v4, Ljava/util/Vector;
invoke-direct {v4}, Ljava/util/Vector;-><init>()V
:try_end_7
.catchall {:try_start_2 .. :try_end_7} :catchall_5c
const/4 v1, 0x0
const/4 v0, 0x0
:try_start_9
invoke-virtual {p0, p1, p2}, Lcom/sun/mail/iap/Protocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_5c
.catch Lcom/sun/mail/iap/LiteralException; {:try_start_9 .. :try_end_c} :catch_20
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_2a
move-result-object v0
:cond_d
:goto_d
if-eqz v1, :cond_34
:try_start_f
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/iap/Response;
invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J
:try_end_1e
.catchall {:try_start_f .. :try_end_1e} :catchall_5c
monitor-exit p0
return-object v0
:catch_20
move-exception v1
:try_start_21
invoke-virtual {v1}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
move v1, v2
goto :goto_d
:catch_2a
move-exception v1
invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_32
.catchall {:try_start_21 .. :try_end_32} :catchall_5c
move v1, v2
goto :goto_d
:cond_34
:try_start_34
invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;
:try_end_37
.catchall {:try_start_34 .. :try_end_37} :catchall_5c
.catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_54
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_34 .. :try_end_37} :catch_5a
move-result-object v3
:goto_38
:try_start_38
invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isBYE()Z
move-result v5
if-eqz v5, :cond_42
move v1, v2
:cond_42
invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isTagged()Z
move-result v5
if-eqz v5, :cond_d
invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_d
move v1, v2
goto :goto_d
:catch_54
move-exception v3
invoke-static {v3}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
:try_end_58
.catchall {:try_start_38 .. :try_end_58} :catchall_5c
move-result-object v3
goto :goto_38
:catch_5a
move-exception v3
goto :goto_d
:catchall_5c
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized disconnect()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_f
if-eqz v0, :cond_d
:try_start_5
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:goto_a
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_f
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_12
const/4 v0, 0x0
:try_start_b
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
:cond_d
:try_end_d
.catchall {:try_start_b .. :try_end_d} :catchall_f
monitor-exit p0
return-void
:catchall_f
move-exception v0
monitor-exit p0
throw v0
:catch_12
move-exception v0
goto :goto_a
.end method
.method protected finalize()V
.registers 1
invoke-super {p0}, Ljava/lang/Object;->finalize()V
invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V
return-void
.end method
.method protected getInputStream()Lcom/sun/mail/iap/ResponseInputStream;
.registers 2
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;
return-object v0
.end method
.method protected getOutputStream()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;
return-object v0
.end method
.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getTimestamp()J
.registers 3
iget-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J
return-wide v0
.end method
.method public handleResult(Lcom/sun/mail/iap/Response;)V
.registers 3
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-eqz v0, :cond_7
:cond_6
return-void
:cond_7
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z
move-result v0
if-eqz v0, :cond_13
new-instance v0, Lcom/sun/mail/iap/CommandFailedException;
invoke-direct {v0, p1}, Lcom/sun/mail/iap/CommandFailedException;-><init>(Lcom/sun/mail/iap/Response;)V
throw v0
:cond_13
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z
move-result v0
if-eqz v0, :cond_1f
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
invoke-direct {v0, p1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Lcom/sun/mail/iap/Response;)V
throw v0
:cond_1f
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z
move-result v0
if-eqz v0, :cond_6
invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V
new-instance v0, Lcom/sun/mail/iap/ConnectionException;
invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V
throw v0
.end method
.method public notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
if-nez v0, :cond_6
:cond_5
return-void
:cond_6
move v1, v2
:goto_7
array-length v0, p1
if-ge v1, v0, :cond_5
aget-object v4, p1, v1
if-nez v4, :cond_12
:cond_e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_12
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v5
if-eqz v5, :cond_5
new-array v6, v5, [Ljava/lang/Object;
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
invoke-virtual {v0, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
move v3, v2
:goto_22
if-ge v3, v5, :cond_e
aget-object v0, v6, v3
check-cast v0, Lcom/sun/mail/iap/ResponseHandler;
invoke-interface {v0, v4}, Lcom/sun/mail/iap/ResponseHandler;->handleResponse(Lcom/sun/mail/iap/Response;)V
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_22
.end method
.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
.registers 3
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z
move-result v0
if-eqz v0, :cond_c
new-instance v0, Lcom/sun/mail/iap/ConnectionException;
invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V
throw v0
:cond_c
return-void
.end method
.method public readResponse()Lcom/sun/mail/iap/Response;
.registers 2
new-instance v0, Lcom/sun/mail/iap/Response;
invoke-direct {v0, p0}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V
return-object v0
.end method
.method public declared-synchronized removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
:cond_a
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/sun/mail/iap/Protocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Protocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v0, v0, v1
invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Protocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-void
.end method
.method public declared-synchronized startTLS(Ljava/lang/String;)V
.registers 5
monitor-enter p0
const/4 v0, 0x0
:try_start_2
invoke-virtual {p0, p1, v0}, Lcom/sun/mail/iap/Protocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;
iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;
invoke-direct {p0, v0}, Lcom/sun/mail/iap/Protocol;->initStreams(Ljava/io/PrintStream;)V
:try_end_16
.catchall {:try_start_2 .. :try_end_16} :catchall_18
monitor-exit p0
return-void
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized supportsNonSyncLiterals()Z
.registers 2
monitor-enter p0
const/4 v0, 0x0
monitor-exit p0
return v0
.end method
.method public writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "A"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I
const/16 v2, 0xa
invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
if-eqz p2, :cond_43
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;
const/16 v2, 0x20
invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V
invoke-virtual {p2, p0}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V
:cond_43
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;
sget-object v2, Lcom/sun/mail/iap/Protocol;->CRLF:[B
invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;
invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
return-object v0
.end method
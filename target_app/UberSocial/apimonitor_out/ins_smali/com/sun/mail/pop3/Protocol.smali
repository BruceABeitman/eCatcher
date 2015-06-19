.class  Lcom/sun/mail/pop3/Protocol;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final CRLF:Ljava/lang/String; = "\r\n"
.field private static final POP3_PORT:I = 0x6e
.field private static digits:[C
.field private apopChallenge:Ljava/lang/String;
.field private debug:Z
.field private input:Ljava/io/DataInputStream;
.field private out:Ljava/io/PrintStream;
.field private output:Ljava/io/PrintWriter;
.field private socket:Ljava/net/Socket;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C
return-void
:array_a
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x61t 0x0t
0x62t 0x0t
0x63t 0x0t
0x64t 0x0t
0x65t 0x0t
0x66t 0x0t
.end array-data
.end method
.method constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
.registers 15
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v6, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;
iput-boolean p3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
iput-object p4, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, ".apop.enable"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_30
const-string v2, "true"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_30
const/4 v0, 0x1
:cond_30
if-ne p2, v6, :cond_34
const/16 p2, 0x6e
:cond_34
if-eqz p3, :cond_5c
:try_start_36
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG POP3: connecting to host \""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\", port "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", isSSL "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_5c
invoke-static {p1, p2, p5, p6, p7}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
move-result-object v1
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
new-instance v1, Ljava/io/DataInputStream;
new-instance v2, Ljava/io/BufferedInputStream;
iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
new-instance v1, Ljava/io/PrintWriter;
new-instance v2, Ljava/io/BufferedWriter;
new-instance v3, Ljava/io/OutputStreamWriter;
iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v4
const-string v5, "iso-8859-1"
invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
:try_end_91
.catch Ljava/io/IOException; {:try_start_36 .. :try_end_91} :catch_a3
move-result-object v1
iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z
if-nez v2, :cond_aa
:try_start_96
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:goto_9b
:try_end_9b
.catchall {:try_start_96 .. :try_end_9b} :catchall_e1
new-instance v0, Ljava/io/IOException;
const-string v1, "Connect failed"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:catch_a3
move-exception v0
:try_start_a4
iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
invoke-static {v1}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_a9
.catchall {:try_start_a4 .. :try_end_a9} :catchall_e3
:goto_a9
throw v0
:cond_aa
if-eqz v0, :cond_e0
iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
const/16 v2, 0x3c
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
const/16 v3, 0x3e
invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I
move-result v2
if-eq v0, v6, :cond_ca
if-eq v2, v6, :cond_ca
iget-object v1, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;
:cond_ca
if-eqz p3, :cond_e0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "DEBUG POP3: APOP challenge: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_e0
return-void
:catchall_e1
move-exception v0
goto :goto_9b
:catchall_e3
move-exception v1
goto :goto_a9
.end method
.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:try_start_14
const-string v2, "MD5"
invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v2
const-string v3, "iso-8859-1"
invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B
:try_end_23
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_23} :catch_2b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_23} :catch_29
move-result-object v0
invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->toHex([B)Ljava/lang/String;
move-result-object v0
:goto_28
return-object v0
:catch_29
move-exception v1
goto :goto_28
:catch_2b
move-exception v1
goto :goto_28
.end method
.method private multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
.registers 8
const/16 v1, 0xa
invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v3
iget-boolean v0, v3, Lcom/sun/mail/pop3/Response;->ok:Z
if-nez v0, :cond_c
move-object v0, v3
:goto_b
return-object v0
:cond_c
new-instance v4, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;
invoke-direct {v4, p2}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;-><init>(I)V
move v0, v1
:cond_12
:goto_12
iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I
move-result v2
if-gez v2, :cond_24
:goto_1a
:cond_1a
if-gez v2, :cond_64
new-instance v0, Ljava/io/EOFException;
const-string v1, "EOF on socket"
invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
if-ne v0, v1, :cond_56
const/16 v0, 0x2e
if-ne v2, v0, :cond_56
iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;
invoke-virtual {v0, v2}, Ljava/io/PrintStream;->write(I)V
:cond_33
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I
move-result v0
const/16 v2, 0xd
if-ne v0, v2, :cond_57
iget-boolean v1, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
if-eqz v1, :cond_46
iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->write(I)V
:cond_46
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I
move-result v2
iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;
invoke-virtual {v0, v2}, Ljava/io/PrintStream;->write(I)V
goto :goto_1a
:cond_56
move v0, v2
:cond_57
invoke-virtual {v4, v0}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->write(I)V
iget-boolean v2, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
if-eqz v2, :cond_12
iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;
invoke-virtual {v2, v0}, Ljava/io/PrintStream;->write(I)V
goto :goto_12
:cond_64
invoke-virtual {v4}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;
move-result-object v0
iput-object v0, v3, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
move-object v0, v3
goto :goto_b
.end method
.method private simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
.registers 6
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
if-nez v0, :cond_c
new-instance v0, Ljava/io/IOException;
const-string v1, "Folder is closed"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-eqz p1, :cond_43
iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "C: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_26
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
:cond_43
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_5e
iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
if-eqz v0, :cond_56
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;
const-string v1, "S: EOF"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_56
new-instance v0, Ljava/io/EOFException;
const-string v1, "EOF on socket"
invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5e
iget-boolean v1, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z
if-eqz v1, :cond_76
iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "S: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_76
new-instance v1, Lcom/sun/mail/pop3/Response;
invoke-direct {v1}, Lcom/sun/mail/pop3/Response;-><init>()V
const-string v2, "+OK"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_97
const/4 v2, 0x1
iput-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z
:goto_86
const/16 v2, 0x20
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-ltz v2, :cond_96
add-int/lit8 v2, v2, 0x1
invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
:cond_96
return-object v1
:cond_97
const-string v2, "-ERR"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_a3
const/4 v2, 0x0
iput-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z
goto :goto_86
:cond_a3
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unexpected response: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private static toHex([B)Ljava/lang/String;
.registers 8
const/4 v0, 0x0
array-length v1, p0
mul-int/lit8 v1, v1, 0x2
new-array v2, v1, [C
move v1, v0
:goto_7
array-length v3, p0
if-lt v1, v3, :cond_10
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
return-object v0
:cond_10
aget-byte v3, p0, v1
and-int/lit16 v3, v3, 0xff
add-int/lit8 v4, v0, 0x1
sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C
shr-int/lit8 v6, v3, 0x4
aget-char v5, v5, v6
aput-char v5, v2, v0
add-int/lit8 v0, v4, 0x1
sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C
and-int/lit8 v3, v3, 0xf
aget-char v3, v5, v3
aput-char v3, v2, v4
add-int/lit8 v1, v1, 0x1
goto :goto_7
.end method
.method declared-synchronized dele(I)Z
.registers 4
monitor-enter p0
:try_start_1
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "DELE "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v0
iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_18
monitor-exit p0
return v0
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected finalize()V
.registers 2
invoke-super {p0}, Ljava/lang/Object;->finalize()V
iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
:cond_a
return-void
.end method
.method declared-synchronized list(I)I
.registers 5
monitor-enter p0
:try_start_1
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "LIST "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v1
const/4 v0, -0x1
iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z
if-eqz v2, :cond_2f
iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_31
if-eqz v2, :cond_2f
:try_start_1d
new-instance v2, Ljava/util/StringTokenizer;
iget-object v1, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_2e
.catchall {:try_start_1d .. :try_end_2e} :catchall_31
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_34
move-result v0
:goto_2f
:cond_2f
monitor-exit p0
return v0
:catchall_31
move-exception v0
monitor-exit p0
throw v0
:catch_34
move-exception v1
goto :goto_2f
.end method
.method declared-synchronized list()Ljava/io/InputStream;
.registers 3
monitor-enter p0
:try_start_1
const-string v0, "LIST"
const/16 v1, 0x80
invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
move-result-object v0
iget-object v0, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-object v0
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;
if-eqz v1, :cond_74
invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->getDigest(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:goto_a
iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;
if-eqz v2, :cond_39
if-eqz v1, :cond_39
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "APOP "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v1
:goto_2d
iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z
if-nez v2, :cond_37
iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
if-eqz v0, :cond_6e
iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
:goto_37
:cond_37
:try_end_37
.catchall {:try_start_2 .. :try_end_37} :catchall_71
monitor-exit p0
return-object v0
:cond_39
:try_start_39
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "USER "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v1
iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z
if-nez v2, :cond_5a
iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
if-eqz v0, :cond_57
iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
goto :goto_37
:cond_57
const-string v0, "USER command failed"
goto :goto_37
:cond_5a
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "PASS "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v1
goto :goto_2d
:cond_6e
const-string v0, "login failed"
:try_end_70
.catchall {:try_start_39 .. :try_end_70} :catchall_71
goto :goto_37
:catchall_71
move-exception v0
monitor-exit p0
throw v0
:cond_74
move-object v1, v0
goto :goto_a
.end method
.method declared-synchronized noop()Z
.registers 2
monitor-enter p0
:try_start_1
const-string v0, "NOOP"
invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v0
iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return v0
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized quit()Z
.registers 3
monitor-enter p0
:try_start_1
const-string v0, "QUIT"
invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v0
iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_19
:try_start_9
iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
invoke-static {v1}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_e
.catchall {:try_start_9 .. :try_end_e} :catchall_37
const/4 v1, 0x0
:try_start_f
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
:try_end_17
.catchall {:try_start_f .. :try_end_17} :catchall_29
monitor-exit p0
return v0
:catchall_19
move-exception v0
:try_start_1a
iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
invoke-static {v1}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_1f
.catchall {:try_start_1a .. :try_end_1f} :catchall_2c
const/4 v1, 0x0
:try_start_20
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
throw v0
:catchall_29
:try_end_29
.catchall {:try_start_20 .. :try_end_29} :catchall_29
move-exception v0
monitor-exit p0
throw v0
:catchall_2c
move-exception v0
const/4 v1, 0x0
:try_start_2e
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
throw v0
:catchall_37
move-exception v0
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
throw v0
:try_end_42
.catchall {:try_start_2e .. :try_end_42} :catchall_29
.end method
.method declared-synchronized retr(II)Ljava/io/InputStream;
.registers 5
monitor-enter p0
:try_start_1
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "RETR "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
move-result-object v0
iget-object v0, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_18
monitor-exit p0
return-object v0
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized rset()Z
.registers 2
monitor-enter p0
:try_start_1
const-string v0, "RSET"
invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v0
iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return v0
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized stat()Lcom/sun/mail/pop3/Status;
.registers 4
monitor-enter p0
:try_start_1
const-string v0, "STAT"
invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v0
new-instance v1, Lcom/sun/mail/pop3/Status;
invoke-direct {v1}, Lcom/sun/mail/pop3/Status;-><init>()V
iget-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z
if-eqz v2, :cond_2f
iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_31
if-eqz v2, :cond_2f
:try_start_14
new-instance v2, Ljava/util/StringTokenizer;
iget-object v0, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, v1, Lcom/sun/mail/pop3/Status;->total:I
invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, v1, Lcom/sun/mail/pop3/Status;->size:I
:try_end_2f
.catchall {:try_start_14 .. :try_end_2f} :catchall_31
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_34
:goto_2f
:cond_2f
monitor-exit p0
return-object v1
:catchall_31
move-exception v0
monitor-exit p0
throw v0
:catch_34
move-exception v0
goto :goto_2f
.end method
.method declared-synchronized top(II)Ljava/io/InputStream;
.registers 5
monitor-enter p0
:try_start_1
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "TOP "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
move-result-object v0
iget-object v0, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
:try_end_21
.catchall {:try_start_1 .. :try_end_21} :catchall_23
monitor-exit p0
return-object v0
:catchall_23
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized uidl(I)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
monitor-enter p0
:try_start_2
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "UIDL "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
move-result-object v1
iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z
:try_end_17
.catchall {:try_start_2 .. :try_end_17} :catchall_2e
if-nez v2, :cond_1b
:cond_19
:goto_19
monitor-exit p0
return-object v0
:try_start_1b
:cond_1b
iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
const/16 v3, 0x20
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-lez v2, :cond_19
iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
add-int/lit8 v1, v2, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
:try_end_2c
.catchall {:try_start_1b .. :try_end_2c} :catchall_2e
move-result-object v0
goto :goto_19
:catchall_2e
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized uidl([Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
monitor-enter p0
:try_start_3
const-string v2, "UIDL"
array-length v3, p1
mul-int/lit8 v3, v3, 0xf
invoke-direct {p0, v2, v3}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
move-result-object v2
iget-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_48
if-nez v3, :cond_12
:goto_10
monitor-exit p0
return v0
:cond_12
:try_start_12
new-instance v0, Lcom/sun/mail/util/LineInputStream;
iget-object v2, v2, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
invoke-direct {v0, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
:cond_19
:goto_19
invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_21
move v0, v1
goto :goto_10
:cond_21
const/16 v3, 0x20
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I
move-result v3
if-lt v3, v1, :cond_19
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
if-ge v3, v4, :cond_19
const/4 v4, 0x0
invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
if-lez v4, :cond_19
array-length v5, p1
if-gt v4, v5, :cond_19
add-int/lit8 v4, v4, -0x1
add-int/lit8 v3, v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
aput-object v2, p1, v4
:try_end_47
.catchall {:try_start_12 .. :try_end_47} :catchall_48
goto :goto_19
:catchall_48
move-exception v0
monitor-exit p0
throw v0
.end method
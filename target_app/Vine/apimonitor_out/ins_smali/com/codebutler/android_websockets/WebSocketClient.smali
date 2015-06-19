.class public Lcom/codebutler/android_websockets/WebSocketClient;
.super Ljava/lang/Object;
.source "WebSocketClient.java"
.field public static final FLAG_CONNECTED:I = 0x2
.field public static final FLAG_CONNECTING:I = 0x1
.field private static final TAG:Ljava/lang/String; = "WebSocketClient"
.field private static sTrustManagers:[Ljavax/net/ssl/TrustManager;
.field private volatile mConnectionFlag:I
.field private mExtraHeaders:Ljava/util/List;
.field private mHandler:Landroid/os/Handler;
.field private mHandlerThread:Landroid/os/HandlerThread;
.field private mListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
.field private mParser:Lcom/codebutler/android_websockets/HybiParser;
.field private final mSendLock:Ljava/lang/Object;
.field private mSocket:Ljava/net/Socket;
.field private mThread:Ljava/lang/Thread;
.field private mURI:Ljava/net/URI;
.method public constructor <init>(Ljava/net/URI;Lcom/codebutler/android_websockets/WebSocketClient$Listener;Ljava/util/List;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mSendLock:Ljava/lang/Object;
iput-object p1, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mURI:Ljava/net/URI;
iput-object p2, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
iput-object p3, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mExtraHeaders:Ljava/util/List;
new-instance v0, Lcom/codebutler/android_websockets/HybiParser;
invoke-direct {v0, p0}, Lcom/codebutler/android_websockets/HybiParser;-><init>(Lcom/codebutler/android_websockets/WebSocketClient;)V
iput-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mParser:Lcom/codebutler/android_websockets/HybiParser;
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "websocket-thread"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mHandlerThread:Landroid/os/HandlerThread;
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mHandlerThread:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v0, Landroid/os/Handler;
iget-object v1, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mHandlerThread:Landroid/os/HandlerThread;
invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mHandler:Landroid/os/Handler;
const/4 v0, 0x0
iput v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mConnectionFlag:I
return-void
.end method
.method static synthetic access$002(Lcom/codebutler/android_websockets/WebSocketClient;I)I
.registers 2
iput p1, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mConnectionFlag:I
return p1
.end method
.method static synthetic access$100(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/codebutler/android_websockets/WebSocketClient;->createSecret()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1000(Lcom/codebutler/android_websockets/WebSocketClient;)Lcom/codebutler/android_websockets/WebSocketClient$Listener;
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
return-object v0
.end method
.method static synthetic access$1100(Lcom/codebutler/android_websockets/WebSocketClient;)Lcom/codebutler/android_websockets/HybiParser;
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mParser:Lcom/codebutler/android_websockets/HybiParser;
return-object v0
.end method
.method static synthetic access$1200(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mSendLock:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic access$200(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/net/URI;
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mURI:Ljava/net/URI;
return-object v0
.end method
.method static synthetic access$300(Lcom/codebutler/android_websockets/WebSocketClient;)Ljavax/net/ssl/SSLSocketFactory;
.registers 2
invoke-direct {p0}, Lcom/codebutler/android_websockets/WebSocketClient;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
return-object v0
.end method
.method static synthetic access$400(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
return-object v0
.end method
.method static synthetic access$402(Lcom/codebutler/android_websockets/WebSocketClient;Ljava/net/Socket;)Ljava/net/Socket;
.registers 2
iput-object p1, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
return-object p1
.end method
.method static synthetic access$500(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mExtraHeaders:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$600(Lcom/codebutler/android_websockets/WebSocketClient;Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/codebutler/android_websockets/WebSocketClient;->readLine(Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$700(Lcom/codebutler/android_websockets/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/StatusLine;
.registers 3
invoke-direct {p0, p1}, Lcom/codebutler/android_websockets/WebSocketClient;->parseStatusLine(Ljava/lang/String;)Lorg/apache/http/StatusLine;
move-result-object v0
return-object v0
.end method
.method static synthetic access$800(Lcom/codebutler/android_websockets/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/Header;
.registers 3
invoke-direct {p0, p1}, Lcom/codebutler/android_websockets/WebSocketClient;->parseHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v0
return-object v0
.end method
.method static synthetic access$900(Lcom/codebutler/android_websockets/WebSocketClient;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/codebutler/android_websockets/WebSocketClient;->createSecretValidation(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private createSecret()Ljava/lang/String;
.registers 8
const/16 v6, 0x10
new-array v1, v6, [B
const/4 v0, 0x0
:goto_5
if-ge v0, v6, :cond_15
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v2
const-wide/high16 v4, 0x4070
mul-double/2addr v2, v4
double-to-int v2, v2
int-to-byte v2, v2
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_15
const/4 v2, 0x0
invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method private createSecretValidation(Ljava/lang/String;)Ljava/lang/String;
.registers 6
:try_start_0
const-string v2, "SHA-1"
invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
move-result-object v2
const/4 v3, 0x0
invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
:try_end_2c
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2c} :catch_2e
move-result-object v2
return-object v2
:catch_2e
move-exception v0
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
.end method
.method private getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.registers 4
const/4 v2, 0x0
const-string v1, "TLS"
invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v0
sget-object v1, Lcom/codebutler/android_websockets/WebSocketClient;->sTrustManagers:[Ljavax/net/ssl/TrustManager;
invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v1
return-object v1
.end method
.method private parseHeader(Ljava/lang/String;)Lorg/apache/http/Header;
.registers 3
new-instance v0, Lorg/apache/http/message/BasicLineParser;
invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V
invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;
move-result-object v0
return-object v0
.end method
.method private parseStatusLine(Ljava/lang/String;)Lorg/apache/http/StatusLine;
.registers 3
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v0, Lorg/apache/http/message/BasicLineParser;
invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V
invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;
move-result-object v0
goto :goto_7
.end method
.method private readLine(Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;)Ljava/lang/String;
.registers 7
const/4 v2, 0x0
const/4 v4, -0x1
invoke-virtual {p1}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->read()I
move-result v0
if-ne v0, v4, :cond_9
:goto_8
return-object v2
:cond_9
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, ""
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
:cond_10
const/16 v3, 0xa
if-eq v0, v3, :cond_23
const/16 v3, 0xd
if-eq v0, v3, :cond_1c
int-to-char v3, v0
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1c
invoke-virtual {p1}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->read()I
move-result v0
if-ne v0, v4, :cond_10
goto :goto_8
:cond_23
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_8
.end method
.method public static setTrustManagers([Ljavax/net/ssl/TrustManager;)V
.registers 1
sput-object p0, Lcom/codebutler/android_websockets/WebSocketClient;->sTrustManagers:[Ljavax/net/ssl/TrustManager;
return-void
.end method
.method public connect()V
.registers 3
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mThread:Ljava/lang/Thread;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/codebutler/android_websockets/WebSocketClient$1;
invoke-direct {v1, p0}, Lcom/codebutler/android_websockets/WebSocketClient$1;-><init>(Lcom/codebutler/android_websockets/WebSocketClient;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mThread:Ljava/lang/Thread;
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
goto :goto_c
.end method
.method public disconnect()V
.registers 3
const/4 v0, 0x0
iput v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mConnectionFlag:I
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/codebutler/android_websockets/WebSocketClient$2;
invoke-direct {v1, p0}, Lcom/codebutler/android_websockets/WebSocketClient$2;-><init>(Lcom/codebutler/android_websockets/WebSocketClient;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_11
return-void
.end method
.method public getListener()Lcom/codebutler/android_websockets/WebSocketClient$Listener;
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
return-object v0
.end method
.method public isConnected()Z
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
if-eqz v0, :cond_c
iget v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mConnectionFlag:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isConnecting()Z
.registers 2
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
if-eqz v0, :cond_c
iget v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mConnectionFlag:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public send(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mParser:Lcom/codebutler/android_websockets/HybiParser;
invoke-virtual {v0, p1}, Lcom/codebutler/android_websockets/HybiParser;->frame(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p0, v0}, Lcom/codebutler/android_websockets/WebSocketClient;->sendFrame([B)V
return-void
.end method
.method public send([B)V
.registers 3
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mParser:Lcom/codebutler/android_websockets/HybiParser;
invoke-virtual {v0, p1}, Lcom/codebutler/android_websockets/HybiParser;->frame([B)[B
move-result-object v0
invoke-virtual {p0, v0}, Lcom/codebutler/android_websockets/WebSocketClient;->sendFrame([B)V
return-void
.end method
.method  sendFrame([B)V
.registers 4
iget-object v0, p0, Lcom/codebutler/android_websockets/WebSocketClient;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/codebutler/android_websockets/WebSocketClient$3;
invoke-direct {v1, p0, p1}, Lcom/codebutler/android_websockets/WebSocketClient$3;-><init>(Lcom/codebutler/android_websockets/WebSocketClient;[B)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
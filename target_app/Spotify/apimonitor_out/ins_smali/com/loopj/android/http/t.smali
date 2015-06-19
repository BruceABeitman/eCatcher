.class final Lcom/loopj/android/http/t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/http/client/HttpRequestRetryHandler;
.field private static final a:Ljava/util/HashSet;
.field private static final b:Ljava/util/HashSet;
.field private final c:I
.field private final d:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/loopj/android/http/t;->a:Ljava/util/HashSet;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/loopj/android/http/t;->b:Ljava/util/HashSet;
sget-object v0, Lcom/loopj/android/http/t;->a:Ljava/util/HashSet;
const-class v1, Lorg/apache/http/NoHttpResponseException;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/loopj/android/http/t;->a:Ljava/util/HashSet;
const-class v1, Ljava/net/UnknownHostException;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/loopj/android/http/t;->a:Ljava/util/HashSet;
const-class v1, Ljava/net/SocketException;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/loopj/android/http/t;->b:Ljava/util/HashSet;
const-class v1, Ljava/io/InterruptedIOException;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/loopj/android/http/t;->b:Ljava/util/HashSet;
const-class v1, Ljavax/net/ssl/SSLException;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x5
iput v0, p0, Lcom/loopj/android/http/t;->c:I
const/16 v0, 0x5dc
iput v0, p0, Lcom/loopj/android/http/t;->d:I
return-void
.end method
.method private static a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
.registers 4
invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
const-string v0, "http.request_sent"
invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-eqz v0, :cond_25
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_25
move v0, v1
:goto_13
iget v3, p0, Lcom/loopj/android/http/t;->c:I
if-le p2, v3, :cond_27
move v1, v2
:cond_18
:goto_18
if-eqz v1, :cond_3c
const-string v0, "http.request"
invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;
if-nez v0, :cond_3c
:goto_24
return v2
:cond_25
move v0, v2
goto :goto_13
:cond_27
sget-object v3, Lcom/loopj/android/http/t;->a:Ljava/util/HashSet;
invoke-static {v3, p1}, Lcom/loopj/android/http/t;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
move-result v3
if-nez v3, :cond_18
sget-object v3, Lcom/loopj/android/http/t;->b:Ljava/util/HashSet;
invoke-static {v3, p1}, Lcom/loopj/android/http/t;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
move-result v3
if-eqz v3, :cond_39
move v1, v2
goto :goto_18
:cond_39
if-nez v0, :cond_18
goto :goto_18
:cond_3c
if-eqz v1, :cond_46
iget v0, p0, Lcom/loopj/android/http/t;->d:I
int-to-long v2, v0
invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
:goto_44
move v2, v1
goto :goto_24
:cond_46
invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_44
.end method
.class public Lcom/instagram/common/a/g/a;
.super Ljava/lang/Object;
.source "ApacheAppSchemeRegistry.java"
.field private static final a:Ljava/lang/Class;
.field private static b:Lorg/apache/http/conn/scheme/SchemeRegistry;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/common/a/g/a;
sput-object v0, Lcom/instagram/common/a/g/a;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized a()Lorg/apache/http/conn/scheme/SchemeRegistry;
.registers 6
const-class v1, Lcom/instagram/common/a/g/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/common/a/g/a;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;
if-nez v0, :cond_32
new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
sput-object v0, Lcom/instagram/common/a/g/a;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string v3, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v4
const/16 v5, 0x50
invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
sget-object v0, Lcom/instagram/common/a/g/a;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string v3, "https"
new-instance v4, Lcom/instagram/common/a/g/b;
const/4 v5, 0x0
invoke-direct {v4, v5}, Lcom/instagram/common/a/g/b;-><init>(B)V
const/16 v5, 0x1bb
invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
:cond_32
sget-object v0, Lcom/instagram/common/a/g/a;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;
:try_end_34
.catchall {:try_start_3 .. :try_end_34} :catchall_36
monitor-exit v1
return-object v0
:catchall_36
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic b()Ljava/lang/Class;
.registers 1
sget-object v0, Lcom/instagram/common/a/g/a;->a:Ljava/lang/Class;
return-object v0
.end method
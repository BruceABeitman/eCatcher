.class public Lcom/twidroid/net/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "consumerKey2"
.field public static final b:Ljava/lang/String; = "consumerSecret2"
.field public static final c:Ljava/lang/String; = "importantmessage"
.field public static final d:Ljava/lang/String; = "importantmessage_flag"
.field public static final e:Ljava/lang/String; = "web_view_enabled_flag"
.field public static final f:Ljava/lang/String; = "web_view_url"
.field public static final g:Ljava/lang/String; = "Twidroyd for Android"
.field public static final h:Ljava/lang/String; = "ubermediaapiactive"
.field public static final i:Ljava/lang/String; = "ubermediaapiactive_logger"
.field public static final j:Ljava/lang/String; = "http://api.twidroyd.com/tweetupintro/channels/"
.field public static final k:J = 0xdbba00L
.field public static l:Ljava/lang/String; = null
.field private static final m:Ljava/lang/String; = "http://api.twidroyd.com/suggest/"
.field private static final n:Ljava/lang/String; = "http://api.twidroyd.com/suggest/channel_feedback.php"
.field private static final o:Ljava/lang/String; = "DroidTalk"
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/data/ubermedia/configuration/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/Object;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 1
return-object p0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "user_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "00000"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "username"
aput-object v2, v0, v1
const/4 v1, 0x3
aput-object p1, v0, v1
const/4 v1, 0x4
const-string v2, "service"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "twidroyd"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "text"
aput-object v2, v0, v1
const/4 v1, 0x7
aput-object p0, v0, v1
invoke-static {v0}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "http://api.twidroyd.com/suggest/"
invoke-static {v1, v0, v3, v3}, Lcom/twidroid/net/a/c;->a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/client/HttpClient;Lcom/ubermedia/net/b/c;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/b/c;)V
.registers 7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "User-Agent"
const-string v2, "Twidroyd for Android"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Lcom/ubermedia/net/e;
invoke-direct {v1}, Lcom/ubermedia/net/e;-><init>()V
invoke-static {p0, p1, v0, v1}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
return-void
.end method
.method private static a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/client/HttpClient;Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;)V
.registers 5
return-void
.end method
.method private static a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/client/HttpClient;Lcom/ubermedia/net/b/c;)V
.registers 6
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/net/a/c$1;
invoke-direct {v1, p0, p1, p3}, Lcom/twidroid/net/a/c$1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/b/c;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
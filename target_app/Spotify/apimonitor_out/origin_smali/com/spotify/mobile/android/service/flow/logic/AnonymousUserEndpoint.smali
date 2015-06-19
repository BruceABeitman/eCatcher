.class public final Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private final b:Lcom/spotify/mobile/android/util/be;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://embed.spotify.com"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->b:Lcom/spotify/mobile/android/util/be;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->b:Lcom/spotify/mobile/android/util/be;

    const-string v1, "Android Asynchronous Http Client"

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/util/be;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->c:Ljava/util/HashMap;

    sget-object v0, Lcom/spotify/mobile/android/ui/page/DebugFlag;->d:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    sget-object v0, Lcom/spotify/mobile/android/ui/page/DebugFlag;->e:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    sget-object v0, Lcom/spotify/mobile/android/ui/page/DebugFlag;->f:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->f()Z

    move-result v1

    if-eqz v1, :cond_43

    sget-object v1, Lcom/spotify/a/a;->a:Lcom/spotify/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/a/a;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->c:Ljava/util/HashMap;

    const-string v2, "group"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    return-void

    :cond_43
    const-string v0, "Installation ID not set while trying to access it in AnonymousUserEndpoint"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    goto :goto_42
.end method

.method static synthetic a()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/flow/logic/a;)V
    .registers 7

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/b;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/flow/logic/b;-><init>(Lcom/spotify/mobile/android/service/flow/logic/a;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$1;

    invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$1;-><init>(Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;Lcom/spotify/mobile/android/service/flow/logic/b;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->c:Ljava/util/HashMap;

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/b;->a()V

    :goto_24
    return-void

    :cond_25
    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->b:Lcom/spotify/mobile/android/util/be;

    const-string v2, "/instant/xhr/anon-gen.php"

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->c:Ljava/util/HashMap;

    new-instance v4, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;

    invoke-direct {v4, p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;-><init>(Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;Lcom/spotify/mobile/android/service/flow/logic/b;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/be;->a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V

    goto :goto_24
.end method

.class public final Lcom/spotify/mobile/android/spotlets/openaccess/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private final b:Lcom/spotify/mobile/android/spotlets/openaccess/e;

.field private final c:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/openaccess/e;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/d;->b:Lcom/spotify/mobile/android/spotlets/openaccess/e;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/b;->a:Ljava/lang/String;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/b;->b:Ljava/lang/String;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/openaccess/b;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-static {p1, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/d;->c:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    return-void
.end method

.method static synthetic a()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/d;)Lcom/spotify/mobile/android/spotlets/openaccess/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/d;->b:Lcom/spotify/mobile/android/spotlets/openaccess/e;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/d;->c:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/v1/albums/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/spotify/mobile/android/spotlets/openaccess/d$1;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/d$1;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;)V

    return-void
.end method

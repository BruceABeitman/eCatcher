.class public final Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private final b:Lcom/spotify/mobile/android/util/be;

.field private final c:Lcom/spotify/mobile/android/util/be;

.field private final d:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/spotify/mobile/android/util/cx;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/cz;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->d:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "https://api.spotify.com"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->b:Lcom/spotify/mobile/android/util/be;

    const-string v0, "https://accounts.spotify.com"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->c:Lcom/spotify/mobile/android/util/be;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->c:Lcom/spotify/mobile/android/util/be;

    invoke-interface {v0, p2, p3}, Lcom/spotify/mobile/android/util/be;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->e:Lcom/spotify/mobile/android/util/cx;

    return-void
.end method

.method static synthetic a()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/cz;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;)Lcom/spotify/mobile/android/util/be;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->b:Lcom/spotify/mobile/android/util/be;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;Ljava/lang/String;J)V
    .registers 9

    const/4 v4, 0x0

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->e:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->d:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string v0, "Could not store access token"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/spotify/mobile/android/util/bi;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;Z)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;->a(Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "grant_type"

    const-string v3, "client_credentials"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->c:Lcom/spotify/mobile/android/util/be;

    const-string v3, "/api/token"

    new-instance v4, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;

    invoke-direct {v4, p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/spotify/mobile/android/util/be;->b(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V

    goto :goto_13
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->e:Lcom/spotify/mobile/android/util/cx;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->d:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z

    move-result v0

    if-eqz v0, :cond_37

    :try_start_b
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->e:Lcom/spotify/mobile/android/util/cx;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->d:Lcom/spotify/mobile/android/util/cz;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_37

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    const-string v0, "Token array is not of length 2"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_37} :catch_39

    :cond_37
    :goto_37
    const/4 v0, 0x0

    goto :goto_31

    :catch_39
    move-exception v0

    const-string v0, "Stored token array is malformed"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_37
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->e:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->d:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ErrorResponse;

    invoke-virtual {v0, p0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ErrorResponse;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ErrorResponse;->getError()Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ErrorResponse;->getError()Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;->a()Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_21

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e

    :catch_21
    move-exception v0

    move v0, v1

    goto :goto_1e
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/spotify/mobile/android/util/bi;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;Z)V

    return-void
.end method

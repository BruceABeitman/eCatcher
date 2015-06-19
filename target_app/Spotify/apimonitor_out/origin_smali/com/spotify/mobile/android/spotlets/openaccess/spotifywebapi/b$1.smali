.class final Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;->b:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 9

    check-cast p1, Ljava/lang/String;

    :try_start_2
    invoke-static {}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    const-class v1, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;->b:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->getExpiresIn()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/ClientCredentialsResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;->a(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

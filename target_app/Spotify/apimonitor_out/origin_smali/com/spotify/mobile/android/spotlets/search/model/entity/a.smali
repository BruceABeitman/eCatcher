.class public final Lcom/spotify/mobile/android/spotlets/search/model/entity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/model/entity/c;


# instance fields
.field private final a:Lcom/spotify/mobile/android/spotlets/search/model/entity/b;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/a;->a:Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/spotlets/search/model/entity/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/a;->a:Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    return-object v0
.end method

.method public final getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/a;->a:Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/a;->a:Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/a;->a:Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

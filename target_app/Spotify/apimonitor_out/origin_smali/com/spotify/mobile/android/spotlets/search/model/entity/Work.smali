.class abstract Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;
.super Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;
.source "SourceFile"


# instance fields
.field public final artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistsString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field public final saved:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p6}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/search/b/b;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->artists:Ljava/util/List;

    if-eqz p5, :cond_15

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->saved:Z

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public artists()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->mArtistsString:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ", "

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->artists:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->mArtistsString:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->mArtistsString:Ljava/lang/String;

    return-object v0
.end method

.method public mainArtist()Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->artists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->artists:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;

    goto :goto_9
.end method

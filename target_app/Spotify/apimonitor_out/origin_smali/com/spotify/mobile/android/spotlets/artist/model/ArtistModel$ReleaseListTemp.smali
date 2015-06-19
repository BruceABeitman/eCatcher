.class Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public final releases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
            ">;"
        }
    .end annotation
.end field

.field public final totalCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 4
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "releases"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "total_count"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #calls: Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readNullableList(Ljava/util/List;)Ljava/util/List;
    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;->releases:Ljava/util/List;

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;->totalCount:I

    return-void
.end method

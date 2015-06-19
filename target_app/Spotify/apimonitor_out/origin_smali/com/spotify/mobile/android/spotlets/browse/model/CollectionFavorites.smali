.class public Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorites;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private mFavorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;)V
    .registers 6
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "favorites"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorites;->mFavorites:Ljava/util/List;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorites;->mFavorites:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method


# virtual methods
.method public getFavorites()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorites;->mFavorites:Ljava/util/List;

    return-object v0
.end method

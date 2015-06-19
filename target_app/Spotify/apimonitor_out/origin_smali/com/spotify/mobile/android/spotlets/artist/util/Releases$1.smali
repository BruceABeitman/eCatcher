.class final Lcom/spotify/mobile/android/spotlets/artist/util/Releases$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/util/Releases;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b",
        "<",
        "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;

    if-nez p1, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->name:Ljava/lang/String;

    goto :goto_6
.end method

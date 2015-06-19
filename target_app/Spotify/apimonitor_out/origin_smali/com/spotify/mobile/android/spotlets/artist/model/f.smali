.class abstract Lcom/spotify/mobile/android/spotlets/artist/model/f;
.super Landroid/content/AsyncQueryHandler;
.source "SourceFile"


# instance fields
.field protected b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

.field final synthetic c:Lcom/spotify/mobile/android/spotlets/artist/model/a;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/f;->c:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/f;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/b;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/model/i;->c:[Ljava/lang/String;

    const-string v5, "limit=5"

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/spotify/mobile/android/spotlets/artist/model/f;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    move v0, v1

    goto :goto_b
.end method

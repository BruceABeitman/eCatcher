.class final Lcom/spotify/music/spotlets/radio/service/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/music/spotlets/radio/service/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/music/spotlets/radio/service/b",
        "<",
        "Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/service/e;

.field private final b:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

.field private final c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private final d:Lcom/spotify/mobile/android/util/ViewUri$SubView;


# direct methods
.method public constructor <init>(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/music/spotlets/radio/model/RadioStationModel;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/h;->a:Lcom/spotify/music/spotlets/radio/service/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/spotify/music/spotlets/radio/service/h;->b:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    iput-object p3, p0, Lcom/spotify/music/spotlets/radio/service/h;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p4, p0, Lcom/spotify/music/spotlets/radio/service/h;->d:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/h;->a:Lcom/spotify/music/spotlets/radio/service/e;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/e;->c(Lcom/spotify/music/spotlets/radio/service/e;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/h;->a:Lcom/spotify/music/spotlets/radio/service/e;

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/h;->b:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/service/h;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/h;->d:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/music/spotlets/radio/model/RadioStationModel;Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    return-void
.end method

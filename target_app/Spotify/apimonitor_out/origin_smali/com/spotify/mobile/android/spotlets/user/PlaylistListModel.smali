.class public Lcom/spotify/mobile/android/spotlets/user/PlaylistListModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# instance fields
.field private final mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;)V
    .registers 2
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "playlists"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistListModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;

    return-void
.end method


# virtual methods
.method public getPlaylists()[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistListModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;

    return-object v0
.end method

.class public Lcom/spotify/mobile/android/spotlets/user/PlaylistListModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;)V
.registers 2
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistListModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
return-void
.end method
.method public getPlaylists()[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistListModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
return-object v0
.end method
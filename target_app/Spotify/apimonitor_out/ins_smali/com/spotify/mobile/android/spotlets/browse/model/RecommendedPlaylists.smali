.class public Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public final description:Ljava/lang/String;
.field public final recommendedPlaylists:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;
.method public constructor <init>(Ljava/lang/String;[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;->description:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;->recommendedPlaylists:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;
return-void
.end method
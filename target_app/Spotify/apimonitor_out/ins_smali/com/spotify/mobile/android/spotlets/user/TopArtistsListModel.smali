.class public Lcom/spotify/mobile/android/spotlets/user/TopArtistsListModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;)V
.registers 2
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistsListModel;->mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
return-void
.end method
.method public getTopArtists()[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistsListModel;->mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
return-object v0
.end method
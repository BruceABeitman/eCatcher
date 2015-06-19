.class final Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/common/base/b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;
if-nez p1, :cond_7
const-string v0, ""
:goto_6
return-object v0
:cond_7
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->name:Ljava/lang/String;
goto :goto_6
.end method
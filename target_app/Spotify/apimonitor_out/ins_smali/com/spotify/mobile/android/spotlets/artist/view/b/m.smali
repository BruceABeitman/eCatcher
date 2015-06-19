.class public final Lcom/spotify/mobile/android/spotlets/artist/view/b/m;
.super Lcom/spotify/mobile/android/spotlets/artist/view/b/a;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/b/a;-><init>(I)V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/b/m;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
return-void
.end method
.method public final bridge synthetic a()I
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/b/a;->a()I
move-result v0
return v0
.end method
.method public final bridge synthetic a(I)V
.registers 2
invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/a;->a(I)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/e;)V
.registers 2
invoke-interface {p1, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/b/e;->a(Lcom/spotify/mobile/android/spotlets/artist/view/b/m;)V
return-void
.end method
.method public final b()Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/b/m;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
return-object v0
.end method
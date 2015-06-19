.class final Lcom/spotify/mobile/android/spotlets/artist/util/Releases$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/common/base/b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
if-nez p1, :cond_a
const/4 v0, -0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_9
return-object v0
:cond_a
iget v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->year:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_9
.end method
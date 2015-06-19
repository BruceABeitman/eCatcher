.class public final Lcom/spotify/mobile/android/spotlets/collection/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
.field private b:Lcom/spotify/mobile/android/model/n;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;Lcom/spotify/mobile/android/model/n;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b:Lcom/spotify/mobile/android/model/n;
return-void
.end method
.method public final a()J
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b:Lcom/spotify/mobile/android/model/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackId()J
move-result-wide v0
return-wide v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b:Lcom/spotify/mobile/android/model/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getAlbumName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b:Lcom/spotify/mobile/android/model/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getAlbumUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b:Lcom/spotify/mobile/android/model/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getAlbumCollectionUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b:Lcom/spotify/mobile/android/model/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getAlbumImageUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
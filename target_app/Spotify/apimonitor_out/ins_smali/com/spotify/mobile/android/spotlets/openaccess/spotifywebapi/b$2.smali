.class final Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/c;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/util/HashMap;
.field final synthetic c:Lcom/spotify/mobile/android/util/bi;
.field final synthetic d:Z
.field final synthetic e:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;Z)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->e:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->b:Ljava/util/HashMap;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->c:Lcom/spotify/mobile/android/util/bi;
iput-boolean p5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->d:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->e:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;)Lcom/spotify/mobile/android/util/be;
move-result-object v0
const-string v1, "Authorization"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Bearer "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/util/be;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->e:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;)Lcom/spotify/mobile/android/util/be;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->b:Ljava/util/HashMap;
new-instance v3, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;)V
invoke-interface {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/be;->a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V
return-void
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->c:Lcom/spotify/mobile/android/util/bi;
invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/util/bi;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.class public final Lcom/spotify/mobile/android/spotlets/artist/b/a;
.super Lcom/spotify/mobile/android/spotlets/artist/b/b;
.source "SourceFile"
.field static final a:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 1
const-string v0, "spotify:artist:([a-zA-Z0-9]+)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/a;->a:Ljava/util/regex/Pattern;
return-void
.end method
.method constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/b/b;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/f;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/b/f;->b(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;Landroid/os/Bundle;)Landroid/content/Intent;
.registers 6
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/h;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p2}, Lcom/spotify/mobile/android/spotlets/artist/b/h;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
invoke-virtual {v0, p1, p3}, Lcom/spotify/mobile/android/spotlets/artist/b/h;->b(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method protected final a()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/c;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/b/c;->f()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":gallery"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/g;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/g;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/b/g;->f()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.class final Lcom/spotify/mobile/android/spotlets/artist/view/a/f$1;
.super Lcom/spotify/mobile/android/ui/menus/g;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/a/f;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/f$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/f;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/g;-><init>()V
return-void
.end method
.method public final a()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/f$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;->a()Landroid/content/Context;
move-result-object v0
return-object v0
.end method
.method public final b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 3
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/f$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/f;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
return-object v0
.end method
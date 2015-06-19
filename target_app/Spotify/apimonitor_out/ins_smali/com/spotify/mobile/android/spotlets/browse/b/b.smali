.class public final Lcom/spotify/mobile/android/spotlets/browse/b/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected a:Lcom/spotify/mobile/android/spotlets/browse/b/a;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/b;->a:Lcom/spotify/mobile/android/spotlets/browse/b/a;
return-void
.end method
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
.registers 9
const-string v0, "spotify:internal:discover"
invoke-static {p1, v0, p2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "referer"
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/b;->a:Lcom/spotify/mobile/android/spotlets/browse/b/a;
const/4 v2, -0x1
const-string v4, "spotify:internal:discover"
const/4 v5, 0x0
move-object v1, p1
move-object v3, p2
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
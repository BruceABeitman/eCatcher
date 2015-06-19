.class public final Lcom/spotify/mobile/android/spotlets/artist/f;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.registers 5
invoke-static {p0, p1, p2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "artist_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object v0
.end method
.method public static a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/b;-><init>()V
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/fragments/e;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/e;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "track_uri"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "autoplay"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/e;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/artist/e;-><init>()V
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/fragments/e;)V
return-object v1
.end method
.method private static a(Ljava/lang/String;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/fragments/e;)V
.registers 10
const/4 v2, 0x0
const/4 v1, 0x0
if-eqz p1, :cond_5b
const-string v0, "artist_model"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;
move-object v5, v0
:goto_d
if-eqz p1, :cond_5d
const-string v0, "artist_name"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v4, v0
:goto_16
if-eqz p1, :cond_5f
const-string v0, "concert_id"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
move v3, v0
:goto_1f
if-eqz p1, :cond_28
const-string v0, "track_uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v2, v0
:cond_28
if-eqz p1, :cond_61
const-string v0, "autoplay"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
:goto_30
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v6, "artist_uri"
invoke-virtual {v1, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "artist_model"
invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v5, "artist_name"
invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "concert_id"
invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v3, "track_uri"
invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "autoplay"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-interface {p2}, Lcom/spotify/mobile/android/ui/fragments/e;->D()Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->c_(Landroid/os/Bundle;)V
return-void
:cond_5b
move-object v5, v2
goto :goto_d
:cond_5d
move-object v4, v2
goto :goto_16
:cond_5f
move v3, v1
goto :goto_1f
:cond_61
move v0, v1
goto :goto_30
.end method
.method public static b(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/d;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/d;-><init>()V
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/fragments/e;)V
return-object v0
.end method
.method public static c(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/c;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/c;-><init>()V
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/fragments/e;)V
return-object v0
.end method
.method public static d(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/h;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/h;-><init>()V
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/fragments/e;)V
return-object v0
.end method
.method public static e(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/i;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/i;-><init>()V
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/fragments/e;)V
return-object v0
.end method
.method public static f(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/g;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/g;-><init>()V
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/fragments/e;)V
return-object v0
.end method
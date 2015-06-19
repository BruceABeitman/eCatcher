.class public final Lcom/spotify/mobile/android/provider/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v0, v1, :cond_24
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v0, v1, :cond_24
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Not a valid lookup uri: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:goto_23
return-object p0
:cond_24
invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "lookup_uri"
invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object p0
goto :goto_23
.end method
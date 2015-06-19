.class public final Lcom/spotify/music/spotlets/radio/c/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/String;
.registers 5
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget-object v2, Lcom/spotify/music/spotlets/radio/c/a$1;->a:[I
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v0
aget v0, v2, v0
packed-switch v0, :pswitch_data_2e
const-string v0, ""
:goto_15
return-object v0
:pswitch_16
const v0, 0x7f0f0317
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_15
:pswitch_1e
const v0, 0x7f0f0318
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_15
:pswitch_26
const v0, 0x7f0f0319
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_15
:pswitch_data_2e
.packed-switch 0x1
:pswitch_16
:pswitch_1e
:pswitch_26
.end packed-switch
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
if-eqz p0, :cond_29
const-string v1, "spotify:radio:"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_21
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "spotify:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v1, 0xe
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_20
:goto_20
return-object p0
:cond_21
const-string v1, "spotify:"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_20
:cond_29
move-object p0, v0
goto :goto_20
.end method
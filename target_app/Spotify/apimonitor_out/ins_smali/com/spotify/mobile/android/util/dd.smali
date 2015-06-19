.class public final Lcom/spotify/mobile/android/util/dd;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Lcom/spotify/mobile/android/util/SpotifyLink;)Landroid/net/Uri;
.registers 3
sget-object v0, Lcom/spotify/mobile/android/util/dd$1;->a:[I
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_5e
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Missing support to get content uri for this type. Type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_26
return-object v0
:pswitch_27
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/b;->c(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_26
:pswitch_30
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/c;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_26
:pswitch_39
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/o;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_26
:pswitch_42
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/a;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_26
:pswitch_4b
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/c;->d(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_26
:pswitch_54
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/Metadata$Track;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_26
nop
:pswitch_data_5e
.packed-switch 0x1
:pswitch_27
:pswitch_30
:pswitch_39
:pswitch_39
:pswitch_39
:pswitch_42
:pswitch_4b
:pswitch_54
.end packed-switch
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "radio:"
const-string v1, ""
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/Boolean;
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_11
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_16
:cond_11
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_15
return-object v0
:cond_16
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const-string v1, "radio"
aget-object v2, v0, v4
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_36
const-string v1, "genre"
const/4 v2, 0x2
aget-object v0, v0, v2
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_36
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_15
:cond_36
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_15
.end method
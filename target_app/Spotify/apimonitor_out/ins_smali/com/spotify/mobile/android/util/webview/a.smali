.class public final Lcom/spotify/mobile/android/util/webview/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/List;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "spblackbolt.s3.amazonaws.com"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "d24rpqtr39o6l1.cloudfront.net"
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/webview/a;->a:Ljava/util/List;
return-void
.end method
.method public static a(Landroid/net/Uri;)Ljava/lang/Boolean;
.registers 3
const-string v0, "spotify.c"
invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
const-string v0, "https"
invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
const/4 v0, 0x1
:goto_19
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
:cond_1e
const/4 v0, 0x0
goto :goto_19
.end method
.method public static b(Landroid/net/Uri;)Z
.registers 3
sget-object v0, Lcom/spotify/mobile/android/util/webview/a;->a:Ljava/util/List;
invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v0
const-string v1, "https"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.class public final Lcom/spotify/mobile/android/util/b/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "country_code"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "product_type"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/util/b/c;->a:[Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)V
.registers 6
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->h()Z
move-result v0
const-string v1, "Only use with tracked links"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
new-instance v0, Lcom/spotify/mobile/android/util/cs;
new-instance v1, Lcom/spotify/mobile/android/util/b/c$1;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/util/b/c$1;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)V
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V
sget-object v1, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
sget-object v2, Lcom/spotify/mobile/android/util/b/c;->a:[Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const-class v0, Lcom/spotify/mobile/android/util/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/b/a;
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->al:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aU:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v2, "link-type"
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v3
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->toString()Ljava/lang/String;
move-result-object v3
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v2, "market"
invoke-virtual {v1, v2, p2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v2, "product-type"
invoke-virtual {v1, v2, p3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
invoke-virtual {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/b/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ClientEvent;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v1, v2, :cond_3f
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->i()Z
move-result v1
if-eqz v1, :cond_4b
:cond_3f
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->al:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aV:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-virtual {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/b/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_4b
return-void
.end method
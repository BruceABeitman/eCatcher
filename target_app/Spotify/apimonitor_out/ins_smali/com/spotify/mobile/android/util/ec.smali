.class public Lcom/spotify/mobile/android/util/ec;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private static final b:[Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Lcom/spotify/mobile/android/util/ef;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/spotify/mobile/android/util/ec;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/ec;->a:Ljava/lang/String;
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "url"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "token"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "type"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/util/ec;->b:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/util/ec;-><init>()V
return-void
.end method
.method public static a(Landroid/app/Activity;Landroid/support/v4/app/y;)Lcom/spotify/mobile/android/util/ec;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/util/ed;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/ed;-><init>(Landroid/app/Activity;Landroid/support/v4/app/y;B)V
return-object v0
.end method
.method public static a(Landroid/app/Service;)Lcom/spotify/mobile/android/util/ec;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/util/ee;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/util/ee;-><init>(Landroid/app/Service;B)V
return-object v0
.end method
.method static synthetic d()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/util/ec;->b:[Ljava/lang/String;
return-object v0
.end method
.method protected final a(Landroid/database/Cursor;)V
.registers 10
const/4 v0, 0x0
const/4 v7, 0x1
const/4 v6, 0x0
invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-nez v1, :cond_a
:goto_9
:cond_9
return-void
:cond_a
invoke-static {p1}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v1
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/spotify/mobile/android/util/ec;->d:Lcom/spotify/mobile/android/util/ef;
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/spotify/mobile/android/util/ec;->c:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v3
const/4 v1, 0x1
:try_start_1f
const-string v2, ""
invoke-static {p1, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
:try_end_24
.catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_7f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_24} :catch_8a
move-result-object v1
if-eqz v1, :cond_47
:try_start_27
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_47
const-string v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v4, v2
const/4 v5, 0x2
if-lt v4, v5, :cond_47
const/4 v4, 0x1
aget-object v2, v2, v4
const-string v4, "UTF-8"
invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v2, "oauth_token"
invoke-virtual {v3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
:try_end_47
.catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_47} :catch_97
.catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_47} :catch_95
:goto_47
:cond_47
invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v2
const-string v3, "Base Url:%s"
new-array v4, v7, [Ljava/lang/Object;
iget-object v5, p0, Lcom/spotify/mobile/android/util/ec;->c:Ljava/lang/String;
aput-object v5, v4, v6
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v3, "Encoded token: %s"
new-array v4, v7, [Ljava/lang/Object;
aput-object v1, v4, v6
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v1, "Token: %s"
new-array v3, v7, [Ljava/lang/Object;
aput-object v0, v3, v6
invoke-static {v1, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "Url to open: %s"
new-array v1, v7, [Ljava/lang/Object;
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v6
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/ec;->d:Lcom/spotify/mobile/android/util/ef;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/util/ec;->d:Lcom/spotify/mobile/android/util/ef;
invoke-interface {v0, v2}, Lcom/spotify/mobile/android/util/ef;->a_(Landroid/net/Uri;)V
goto :goto_9
:catch_7f
move-exception v1
move-object v2, v1
move-object v1, v0
:goto_82
const-string v4, "Error when getting token"
new-array v5, v6, [Ljava/lang/Object;
invoke-static {v2, v4, v5}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_47
:catch_8a
move-exception v1
move-object v2, v1
move-object v1, v0
:goto_8d
const-string v4, "Error when getting token"
new-array v5, v6, [Ljava/lang/Object;
invoke-static {v2, v4, v5}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_47
:catch_95
move-exception v2
goto :goto_8d
:catch_97
move-exception v2
goto :goto_82
.end method
.method public a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/util/ec;->c:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/util/ec;->d:Lcom/spotify/mobile/android/util/ef;
return-void
.end method
.method public b()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/ec;->d:Lcom/spotify/mobile/android/util/ef;
return-void
.end method
.method protected final c()Landroid/net/Uri;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/ec;->c:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/web_token/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.class public Lcom/facebook/ai;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final A:Ljava/lang/String; = "migration_bundle"
.field private static final B:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"
.field private static final C:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
.field private static D:Ljava/lang/String; = null
.field private static volatile P:Ljava/lang/String; = null
.field public static final a:I = 0x32
.field private static final b:Ljava/lang/String; = "me"
.field private static final c:Ljava/lang/String; = "me/friends"
.field private static final d:Ljava/lang/String; = "me/photos"
.field private static final e:Ljava/lang/String; = "me/videos"
.field private static final f:Ljava/lang/String; = "search"
.field private static final g:Ljava/lang/String; = "me/feed"
.field private static final h:Ljava/lang/String; = "FBAndroidSDK"
.field private static final i:Ljava/lang/String; = "User-Agent"
.field private static final j:Ljava/lang/String; = "Content-Type"
.field private static final k:Ljava/lang/String; = "picture"
.field private static final l:Ljava/lang/String; = "format"
.field private static final m:Ljava/lang/String; = "json"
.field private static final n:Ljava/lang/String; = "sdk"
.field private static final o:Ljava/lang/String; = "android"
.field private static final p:Ljava/lang/String; = "access_token"
.field private static final q:Ljava/lang/String; = "name"
.field private static final r:Ljava/lang/String; = "omit_response_on_success"
.field private static final s:Ljava/lang/String; = "depends_on"
.field private static final t:Ljava/lang/String; = "batch_app_id"
.field private static final u:Ljava/lang/String; = "relative_url"
.field private static final v:Ljava/lang/String; = "body"
.field private static final w:Ljava/lang/String; = "method"
.field private static final x:Ljava/lang/String; = "batch"
.field private static final y:Ljava/lang/String; = "file"
.field private static final z:Ljava/lang/String; = "attached_files"
.field private E:Lcom/facebook/aw;
.field private F:Lcom/facebook/ad;
.field private G:Ljava/lang/String;
.field private H:Lcom/facebook/c/c;
.field private I:Ljava/lang/String;
.field private J:Ljava/lang/String;
.field private K:Ljava/lang/String;
.field private L:Z
.field private M:Landroid/os/Bundle;
.field private N:Lcom/facebook/aj;
.field private O:Ljava/lang/String;
.method public constructor <init>()V
.registers 7
const/4 v1, 0x0
move-object v0, p0
move-object v2, v1
move-object v3, v1
move-object v4, v1
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-void
.end method
.method public constructor <init>(Lcom/facebook/aw;Ljava/lang/String;)V
.registers 9
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, v3
move-object v5, v3
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-void
.end method
.method public constructor <init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-void
.end method
.method public constructor <init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/ai;->L:Z
iput-object p1, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
iput-object p2, p0, Lcom/facebook/ai;->G:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/ai;->N:Lcom/facebook/aj;
invoke-virtual {p0, p4}, Lcom/facebook/ai;->a(Lcom/facebook/ad;)V
if-eqz p3, :cond_2c
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
:goto_18
iget-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
const-string v1, "migration_bundle"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
const-string v1, "migration_bundle"
const-string v2, "fbsdk:20121026"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
return-void
:cond_2c
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
goto :goto_18
.end method
.method constructor <init>(Lcom/facebook/aw;Ljava/net/URL;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/ai;->L:Z
iput-object p1, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/ai;->O:Ljava/lang/String;
sget-object v0, Lcom/facebook/ad;->a:Lcom/facebook/ad;
invoke-virtual {p0, v0}, Lcom/facebook/ai;->a(Lcom/facebook/ad;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
return-void
.end method
.method public static a(Lcom/facebook/aw;Landroid/graphics/Bitmap;Lcom/facebook/aj;)Lcom/facebook/ai;
.registers 9
new-instance v3, Landroid/os/Bundle;
const/4 v0, 0x1
invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V
const-string v0, "picture"
invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v0, Lcom/facebook/ai;
const-string v2, "me/photos"
sget-object v4, Lcom/facebook/ad;->b:Lcom/facebook/ad;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-object v0
.end method
.method public static a(Lcom/facebook/aw;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/ak;)Lcom/facebook/ai;
.registers 14
if-nez p1, :cond_10
invoke-static {p4}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Lcom/facebook/t;
const-string v1, "Either location or searchText must be specified."
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
new-instance v3, Landroid/os/Bundle;
const/4 v0, 0x5
invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V
const-string v0, "type"
const-string v1, "place"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "limit"
invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
if-eqz p1, :cond_4f
const-string v0, "center"
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "%f,%f"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "distance"
invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_4f
invoke-static {p4}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_5a
const-string v0, "q"
invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_5a
new-instance v5, Lcom/facebook/ai$3;
invoke-direct {v5, p5}, Lcom/facebook/ai$3;-><init>(Lcom/facebook/ak;)V
new-instance v0, Lcom/facebook/ai;
const-string v2, "search"
sget-object v4, Lcom/facebook/ad;->a:Lcom/facebook/ad;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-object v0
.end method
.method public static a(Lcom/facebook/aw;Lcom/facebook/al;)Lcom/facebook/ai;
.registers 8
const/4 v3, 0x0
new-instance v5, Lcom/facebook/ai$1;
invoke-direct {v5, p1}, Lcom/facebook/ai$1;-><init>(Lcom/facebook/al;)V
new-instance v0, Lcom/facebook/ai;
const-string v2, "me"
move-object v1, p0
move-object v4, v3
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-object v0
.end method
.method public static a(Lcom/facebook/aw;Lcom/facebook/am;)Lcom/facebook/ai;
.registers 8
const/4 v3, 0x0
new-instance v5, Lcom/facebook/ai$2;
invoke-direct {v5, p1}, Lcom/facebook/ai$2;-><init>(Lcom/facebook/am;)V
new-instance v0, Lcom/facebook/ai;
const-string v2, "me/friends"
move-object v1, p0
move-object v4, v3
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-object v0
.end method
.method public static a(Lcom/facebook/aw;Ljava/io/File;Lcom/facebook/aj;)Lcom/facebook/ai;
.registers 9
const/high16 v0, 0x1000
invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v0
new-instance v3, Landroid/os/Bundle;
const/4 v1, 0x1
invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V
const-string v1, "picture"
invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v0, Lcom/facebook/ai;
const-string v2, "me/photos"
sget-object v4, Lcom/facebook/ad;->b:Lcom/facebook/ad;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-object v0
.end method
.method public static a(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;)Lcom/facebook/ai;
.registers 6
new-instance v0, Lcom/facebook/ai;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, p2, p3}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;)V
invoke-virtual {v0, p1}, Lcom/facebook/ai;->b(Ljava/lang/String;)V
return-object v0
.end method
.method public static a(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/aj;)Lcom/facebook/ai;
.registers 9
const/4 v3, 0x0
new-instance v0, Lcom/facebook/ai;
move-object v1, p0
move-object v2, p1
move-object v4, v3
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-object v0
.end method
.method public static a(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/c/c;Lcom/facebook/aj;)Lcom/facebook/ai;
.registers 10
new-instance v0, Lcom/facebook/ai;
const/4 v3, 0x0
sget-object v4, Lcom/facebook/ad;->b:Lcom/facebook/ad;
move-object v1, p0
move-object v2, p1
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
invoke-virtual {v0, p2}, Lcom/facebook/ai;->a(Lcom/facebook/c/c;)V
return-object v0
.end method
.method public static a(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/aq;)Lcom/facebook/ap;
.registers 4
const-string v0, "connection"
invoke-static {p1, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/ap;
invoke-direct {v0, p1, p2}, Lcom/facebook/ap;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/aq;)V
invoke-virtual {p2, p0}, Lcom/facebook/aq;->a(Landroid/os/Handler;)V
invoke-virtual {v0}, Lcom/facebook/ap;->c()Lcom/facebook/ap;
return-object v0
.end method
.method public static a(Lcom/facebook/ai;)Lcom/facebook/as;
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v3, [Lcom/facebook/ai;
aput-object p0, v0, v2
invoke-static {v0}, Lcom/facebook/ai;->b([Lcom/facebook/ai;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_12
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-eq v1, v3, :cond_1a
:cond_12
new-instance v0, Lcom/facebook/t;
const-string v1, "invalid state: expected a single response"
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/as;
return-object v0
.end method
.method public static a(Lcom/facebook/aq;)Ljava/net/HttpURLConnection;
.registers 4
invoke-virtual {p0}, Lcom/facebook/aq;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/ai;
invoke-direct {v0}, Lcom/facebook/ai;->q()V
goto :goto_4
:cond_14
:try_start_14
invoke-virtual {p0}, Lcom/facebook/aq;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_31
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/facebook/aq;->b(I)Lcom/facebook/ai;
move-result-object v1
new-instance v0, Ljava/net/URL;
invoke-virtual {v1}, Lcom/facebook/ai;->o()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:goto_29
:try_start_29
:try_end_29
.catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_29} :catch_39
invoke-static {v0}, Lcom/facebook/ai;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/ai;->a(Lcom/facebook/aq;Ljava/net/HttpURLConnection;)V
:try_end_30
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_42
.catch Lorg/json/JSONException; {:try_start_29 .. :try_end_30} :catch_4b
return-object v0
:cond_31
:try_start_31
new-instance v0, Ljava/net/URL;
const-string v1, "https://graph.facebook.com"
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_38
.catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_38} :catch_39
goto :goto_29
:catch_39
move-exception v0
new-instance v1, Lcom/facebook/t;
const-string v2, "could not construct URL for request"
invoke-direct {v1, v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_42
move-exception v0
new-instance v1, Lcom/facebook/t;
const-string v2, "could not construct request body"
invoke-direct {v1, v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_4b
move-exception v0
new-instance v1, Lcom/facebook/t;
const-string v2, "could not construct request body"
invoke-direct {v1, v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.registers 4
invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const-string v1, "User-Agent"
invoke-static {}, Lcom/facebook/ai;->s()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Content-Type"
invoke-static {}, Lcom/facebook/ai;->r()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V
return-object v0
.end method
.method public static a(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
.registers 2
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/b/q;->c(Ljava/util/Collection;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/aq;
invoke-direct {v0, p0}, Lcom/facebook/aq;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Lcom/facebook/ai;->a(Lcom/facebook/aq;)Ljava/net/HttpURLConnection;
move-result-object v0
return-object v0
.end method
.method public static varargs a([Lcom/facebook/ai;)Ljava/net/HttpURLConnection;
.registers 2
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/ai;->a(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/facebook/as;Ljava/lang/Class;)Ljava/util/List;
.registers 3
invoke-static {p0, p1}, Lcom/facebook/ai;->b(Lcom/facebook/as;Ljava/lang/Class;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/net/HttpURLConnection;Lcom/facebook/aq;)Ljava/util/List;
.registers 8
invoke-static {p0, p1}, Lcom/facebook/as;->a(Ljava/net/HttpURLConnection;Lcom/facebook/aq;)Ljava/util/List;
move-result-object v1
invoke-static {p0}, Lcom/facebook/b/p;->a(Ljava/net/URLConnection;)V
invoke-virtual {p1}, Lcom/facebook/aq;->size()I
move-result v0
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
if-eq v0, v2, :cond_32
new-instance v2, Lcom/facebook/t;
const-string v3, "Received %d responses while expecting %d"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v4, v5
const/4 v1, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v4, v1
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v2
:cond_32
invoke-static {p1, v1}, Lcom/facebook/ai;->a(Lcom/facebook/aq;Ljava/util/List;)V
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
invoke-virtual {p1}, Lcom/facebook/aq;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_3e
:cond_3e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_54
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/ai;
iget-object v4, v0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
if-eqz v4, :cond_3e
iget-object v0, v0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
goto :goto_3e
:cond_54
invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_58
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_68
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/aw;
invoke-virtual {v0}, Lcom/facebook/aw;->m()V
goto :goto_58
:cond_68
return-object v1
.end method
.method public static a(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
.registers 3
new-instance v0, Lcom/facebook/aq;
invoke-direct {v0, p1}, Lcom/facebook/aq;-><init>(Ljava/util/Collection;)V
invoke-static {p0, v0}, Lcom/facebook/ai;->a(Ljava/net/HttpURLConnection;Lcom/facebook/aq;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/os/Bundle;Lcom/facebook/ao;)V
.registers 6
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
:cond_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Lcom/facebook/ai;->d(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8
invoke-virtual {p1, v0, v2}, Lcom/facebook/ao;->a(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_8
:cond_22
return-void
.end method
.method private static a(Lcom/facebook/ao;Ljava/util/Collection;Landroid/os/Bundle;)V
.registers 6
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/ai;
invoke-direct {v0, v1, p2}, Lcom/facebook/ai;->a(Lorg/json/JSONArray;Landroid/os/Bundle;)V
goto :goto_9
:cond_19
invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "batch"
invoke-virtual {p0, v1, v0}, Lcom/facebook/ao;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static final a(Lcom/facebook/aq;Ljava/net/HttpURLConnection;)V
.registers 10
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v3, Lcom/facebook/b/j;
sget-object v0, Lcom/facebook/af;->a:Lcom/facebook/af;
const-string v4, "Request"
invoke-direct {v3, v0, v4}, Lcom/facebook/b/j;-><init>(Lcom/facebook/af;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/aq;->size()I
move-result v4
if-ne v4, v1, :cond_6d
invoke-virtual {p0, v2}, Lcom/facebook/aq;->b(I)Lcom/facebook/ai;
move-result-object v0
iget-object v0, v0, Lcom/facebook/ai;->F:Lcom/facebook/ad;
:goto_17
invoke-virtual {v0}, Lcom/facebook/ad;->name()Ljava/lang/String;
move-result-object v5
invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v5
const-string v6, "Request:\n"
invoke-virtual {v3, v6}, Lcom/facebook/b/j;->c(Ljava/lang/String;)V
const-string v6, "Id"
invoke-virtual {p0}, Lcom/facebook/aq;->b()Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v6, v7}, Lcom/facebook/b/j;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v6, "URL"
invoke-virtual {v3, v6, v5}, Lcom/facebook/b/j;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v6, "Method"
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v6, v7}, Lcom/facebook/b/j;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v6, "User-Agent"
const-string v7, "User-Agent"
invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v6, v7}, Lcom/facebook/b/j;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v6, "Content-Type"
const-string v7, "Content-Type"
invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v6, v7}, Lcom/facebook/b/j;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/facebook/aq;->a()I
move-result v6
invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
invoke-virtual {p0}, Lcom/facebook/aq;->a()I
move-result v6
invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
sget-object v6, Lcom/facebook/ad;->b:Lcom/facebook/ad;
if-ne v0, v6, :cond_70
move v0, v1
:goto_67
if-nez v0, :cond_72
invoke-virtual {v3}, Lcom/facebook/b/j;->c()V
:goto_6c
return-void
:cond_6d
sget-object v0, Lcom/facebook/ad;->b:Lcom/facebook/ad;
goto :goto_17
:cond_70
move v0, v2
goto :goto_67
:cond_72
invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
new-instance v2, Ljava/io/BufferedOutputStream;
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_7e
new-instance v0, Lcom/facebook/ao;
invoke-direct {v0, v2, v3}, Lcom/facebook/ao;-><init>(Ljava/io/BufferedOutputStream;Lcom/facebook/b/j;)V
if-ne v4, v1, :cond_b2
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/facebook/aq;->b(I)Lcom/facebook/ai;
move-result-object v1
const-string v4, "  Parameters:\n"
invoke-virtual {v3, v4}, Lcom/facebook/b/j;->c(Ljava/lang/String;)V
iget-object v4, v1, Lcom/facebook/ai;->M:Landroid/os/Bundle;
invoke-static {v4, v0}, Lcom/facebook/ai;->a(Landroid/os/Bundle;Lcom/facebook/ao;)V
const-string v4, "  Attachments:\n"
invoke-virtual {v3, v4}, Lcom/facebook/b/j;->c(Ljava/lang/String;)V
iget-object v4, v1, Lcom/facebook/ai;->M:Landroid/os/Bundle;
invoke-static {v4, v0}, Lcom/facebook/ai;->b(Landroid/os/Bundle;Lcom/facebook/ao;)V
iget-object v4, v1, Lcom/facebook/ai;->H:Lcom/facebook/c/c;
if-eqz v4, :cond_ab
iget-object v1, v1, Lcom/facebook/ai;->H:Lcom/facebook/c/c;
invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4, v0}, Lcom/facebook/ai;->a(Lcom/facebook/c/c;Ljava/lang/String;Lcom/facebook/an;)V
:cond_ab
:goto_ab
:try_end_ab
.catchall {:try_start_7e .. :try_end_ab} :catchall_c4
invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
invoke-virtual {v3}, Lcom/facebook/b/j;->c()V
goto :goto_6c
:try_start_b2
:cond_b2
invoke-static {p0}, Lcom/facebook/ai;->d(Lcom/facebook/aq;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_c9
new-instance v0, Lcom/facebook/t;
const-string v1, "At least one request in a batch must have an open Session, or a default app ID must be specified."
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:try_end_c4
.catchall {:try_start_b2 .. :try_end_c4} :catchall_c4
:catchall_c4
move-exception v0
invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
throw v0
:try_start_c9
:cond_c9
const-string v4, "batch_app_id"
invoke-virtual {v0, v4, v1}, Lcom/facebook/ao;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-static {v0, p0, v1}, Lcom/facebook/ai;->a(Lcom/facebook/ao;Ljava/util/Collection;Landroid/os/Bundle;)V
const-string v4, "  Attachments:\n"
invoke-virtual {v3, v4}, Lcom/facebook/b/j;->c(Ljava/lang/String;)V
invoke-static {v1, v0}, Lcom/facebook/ai;->b(Landroid/os/Bundle;Lcom/facebook/ao;)V
:try_end_de
.catchall {:try_start_c9 .. :try_end_de} :catchall_c4
goto :goto_ab
.end method
.method static a(Lcom/facebook/aq;Ljava/util/List;)V
.registers 8
invoke-virtual {p0}, Lcom/facebook/aq;->size()I
move-result v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_a
if-ge v0, v1, :cond_25
invoke-virtual {p0, v0}, Lcom/facebook/aq;->b(I)Lcom/facebook/ai;
move-result-object v3
iget-object v4, v3, Lcom/facebook/ai;->N:Lcom/facebook/aj;
if-eqz v4, :cond_22
new-instance v4, Landroid/util/Pair;
iget-object v3, v3, Lcom/facebook/ai;->N:Lcom/facebook/aj;
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_22
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_25
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_39
new-instance v0, Lcom/facebook/ai$4;
invoke-direct {v0, v2, p0}, Lcom/facebook/ai$4;-><init>(Ljava/util/ArrayList;Lcom/facebook/aq;)V
invoke-virtual {p0}, Lcom/facebook/aq;->c()Landroid/os/Handler;
move-result-object v1
if-nez v1, :cond_3a
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_39
:goto_39
return-void
:cond_3a
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_39
.end method
.method private static a(Lcom/facebook/c/c;Ljava/lang/String;Lcom/facebook/an;)V
.registers 10
const/4 v2, 0x1
const/4 v3, 0x0
const-string v0, "me/"
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
const-string v0, "/me/"
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_64
:cond_12
const-string v0, ":"
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
const-string v1, "?"
invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v4, 0x3
if-le v0, v4, :cond_5f
const/4 v4, -0x1
if-eq v1, v4, :cond_26
if-ge v0, v1, :cond_5f
:cond_26
move v0, v2
:goto_27
move v4, v0
:goto_28
invoke-interface {p0}, Lcom/facebook/c/c;->h()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_34
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
if-eqz v4, :cond_61
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v5, "image"
invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_61
move v5, v2
:goto_51
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-static {v1, v0, p2, v5}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/an;Z)V
goto :goto_34
:cond_5f
move v0, v3
goto :goto_27
:cond_61
move v5, v3
goto :goto_51
:cond_63
return-void
:cond_64
move v4, v3
goto :goto_28
.end method
.method private static a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/an;Z)V
.registers 13
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/facebook/c/c;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_4b
check-cast p1, Lcom/facebook/c/c;
invoke-interface {p1}, Lcom/facebook/c/c;->i()Lorg/json/JSONObject;
move-result-object p1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
move-object v1, v0
move-object v0, p1
:goto_1b
const-class v3, Lorg/json/JSONObject;
invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_84
check-cast v0, Lorg/json/JSONObject;
if-eqz p3, :cond_60
invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_2b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_71
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "%s[%s]"
new-array v5, v8, [Ljava/lang/Object;
aput-object p0, v5, v2
aput-object v1, v5, v7
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-static {v4, v1, p2, p3}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/an;Z)V
goto :goto_2b
:cond_4b
const-class v1, Lcom/facebook/c/h;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_ea
check-cast p1, Lcom/facebook/c/h;
invoke-interface {p1}, Lcom/facebook/c/h;->a()Lorg/json/JSONArray;
move-result-object p1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
move-object v1, v0
move-object v0, p1
goto :goto_1b
:cond_60
const-string v1, "id"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_72
const-string v1, "id"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, p2, p3}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/an;Z)V
:cond_71
:goto_71
return-void
:cond_72
const-string v1, "url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_71
const-string v1, "url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, p2, p3}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/an;Z)V
goto :goto_71
:cond_84
const-class v3, Lorg/json/JSONArray;
invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_af
check-cast v0, Lorg/json/JSONArray;
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v3
move v1, v2
:goto_93
if-ge v1, v3, :cond_71
const-string v4, "%s[%d]"
new-array v5, v8, [Ljava/lang/Object;
aput-object p0, v5, v2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v7
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;
move-result-object v5
invoke-static {v4, v5, p2, p3}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/an;Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_93
:cond_af
const-class v2, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_c7
const-class v2, Ljava/lang/Number;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_c7
const-class v2, Ljava/lang/Boolean;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_cf
:cond_c7
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {p2, p0, v0}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_71
:cond_cf
const-class v2, Ljava/util/Date;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_71
check-cast v0, Ljava/util/Date;
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
invoke-interface {p2, p0, v0}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_71
:cond_ea
move-object v1, v0
move-object v0, p1
goto/16 :goto_1b
.end method
.method private a(Lorg/json/JSONArray;Landroid/os/Bundle;)V
.registers 12
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
iget-object v0, p0, Lcom/facebook/ai;->J:Ljava/lang/String;
if-eqz v0, :cond_17
const-string v0, "name"
iget-object v2, p0, Lcom/facebook/ai;->J:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "omit_response_on_success"
iget-boolean v2, p0, Lcom/facebook/ai;->L:Z
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_17
iget-object v0, p0, Lcom/facebook/ai;->K:Ljava/lang/String;
if-eqz v0, :cond_22
const-string v0, "depends_on"
iget-object v2, p0, Lcom/facebook/ai;->K:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_22
invoke-virtual {p0}, Lcom/facebook/ai;->n()Ljava/lang/String;
move-result-object v2
const-string v0, "relative_url"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "method"
iget-object v3, p0, Lcom/facebook/ai;->F:Lcom/facebook/ad;
invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
invoke-virtual {v0}, Lcom/facebook/aw;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/b/j;->a(Ljava/lang/String;)V
:cond_3f
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_4e
:cond_4e
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_86
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v5, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/facebook/ai;->c(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_4e
const-string v5, "%s%d"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
const-string v8, "file"
aput-object v8, v6, v7
const/4 v7, 0x1
invoke-virtual {p2}, Landroid/os/Bundle;->size()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {p2, v5, v0}, Lcom/facebook/b/p;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_4e
:cond_86
invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_97
const-string v0, ","
invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
const-string v3, "attached_files"
invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_97
iget-object v0, p0, Lcom/facebook/ai;->H:Lcom/facebook/c/c;
if-eqz v0, :cond_b5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/facebook/ai;->H:Lcom/facebook/c/c;
new-instance v4, Lcom/facebook/ai$5;
invoke-direct {v4, p0, v0}, Lcom/facebook/ai$5;-><init>(Lcom/facebook/ai;Ljava/util/ArrayList;)V
invoke-static {v3, v2, v4}, Lcom/facebook/ai;->a(Lcom/facebook/c/c;Ljava/lang/String;Lcom/facebook/an;)V
const-string v2, "&"
invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
const-string v2, "body"
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_b5
invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
return-void
.end method
.method static synthetic a(Ljava/lang/Object;)Z
.registers 2
invoke-static {p0}, Lcom/facebook/ai;->d(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static b(Lcom/facebook/aw;Ljava/io/File;Lcom/facebook/aj;)Lcom/facebook/ai;
.registers 9
const/high16 v0, 0x1000
invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v0
new-instance v3, Landroid/os/Bundle;
const/4 v1, 0x1
invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v0, Lcom/facebook/ai;
const-string v2, "me/videos"
sget-object v4, Lcom/facebook/ad;->b:Lcom/facebook/ad;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-object v0
.end method
.method public static b(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/aj;)Lcom/facebook/ai;
.registers 9
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "message"
invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/ai;
const-string v2, "me/feed"
sget-object v4, Lcom/facebook/ad;->b:Lcom/facebook/ad;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V
return-object v0
.end method
.method public static b(Lcom/facebook/aw;Landroid/graphics/Bitmap;Lcom/facebook/aj;)Lcom/facebook/ap;
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Landroid/graphics/Bitmap;Lcom/facebook/aj;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/facebook/aw;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/ak;)Lcom/facebook/ap;
.registers 7
invoke-static/range {p0 .. p5}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/ak;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/facebook/aw;Lcom/facebook/al;)Lcom/facebook/ap;
.registers 3
invoke-static {p0, p1}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Lcom/facebook/al;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/facebook/aw;Lcom/facebook/am;)Lcom/facebook/ap;
.registers 3
invoke-static {p0, p1}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Lcom/facebook/am;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;)Lcom/facebook/ap;
.registers 5
invoke-static {p0, p1, p2, p3}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/c/c;Lcom/facebook/aj;)Lcom/facebook/ap;
.registers 5
invoke-static {p0, p1, p2, p3}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/c/c;Lcom/facebook/aj;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/net/HttpURLConnection;Lcom/facebook/aq;)Lcom/facebook/ap;
.registers 3
const/4 v0, 0x0
invoke-static {v0, p0, p1}, Lcom/facebook/ai;->a(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/aq;)Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Ljava/lang/Object;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/facebook/ai;->e(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/facebook/aq;)Ljava/util/List;
.registers 5
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/b/q;->c(Ljava/util/Collection;Ljava/lang/String;)V
:try_start_5
invoke-static {p0}, Lcom/facebook/ai;->a(Lcom/facebook/aq;)Ljava/net/HttpURLConnection;
:try_end_8
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_e
move-result-object v0
invoke-static {v0, p0}, Lcom/facebook/ai;->a(Ljava/net/HttpURLConnection;Lcom/facebook/aq;)Ljava/util/List;
move-result-object v0
:goto_d
return-object v0
:catch_e
move-exception v0
invoke-virtual {p0}, Lcom/facebook/aq;->d()Ljava/util/List;
move-result-object v1
const/4 v2, 0x0
new-instance v3, Lcom/facebook/t;
invoke-direct {v3, v0}, Lcom/facebook/t;-><init>(Ljava/lang/Throwable;)V
invoke-static {v1, v2, v3}, Lcom/facebook/as;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/t;)Ljava/util/List;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/ai;->a(Lcom/facebook/aq;Ljava/util/List;)V
goto :goto_d
.end method
.method private static b(Lcom/facebook/as;Ljava/lang/Class;)Ljava/util/List;
.registers 4
const/4 v1, 0x0
const-class v0, Lcom/facebook/c/b;
invoke-virtual {p0, v0}, Lcom/facebook/as;->a(Ljava/lang/Class;)Lcom/facebook/c/c;
move-result-object v0
check-cast v0, Lcom/facebook/c/b;
if-nez v0, :cond_d
move-object v0, v1
:goto_c
return-object v0
:cond_d
invoke-interface {v0}, Lcom/facebook/c/b;->a()Lcom/facebook/c/h;
move-result-object v0
if-nez v0, :cond_15
move-object v0, v1
goto :goto_c
:cond_15
invoke-interface {v0, p1}, Lcom/facebook/c/h;->a(Ljava/lang/Class;)Lcom/facebook/c/h;
move-result-object v0
goto :goto_c
.end method
.method public static b(Ljava/util/Collection;)Ljava/util/List;
.registers 2
new-instance v0, Lcom/facebook/aq;
invoke-direct {v0, p0}, Lcom/facebook/aq;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Lcom/facebook/ai;->b(Lcom/facebook/aq;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static varargs b([Lcom/facebook/ai;)Ljava/util/List;
.registers 2
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/ai;->b(Ljava/util/Collection;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method private static b(Landroid/os/Bundle;Lcom/facebook/ao;)V
.registers 6
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
:cond_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Lcom/facebook/ai;->c(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8
invoke-virtual {p1, v0, v2}, Lcom/facebook/ao;->a(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_8
:cond_22
return-void
.end method
.method public static c(Lcom/facebook/aq;)Lcom/facebook/ap;
.registers 2
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/b/q;->c(Ljava/util/Collection;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/ap;
invoke-direct {v0, p0}, Lcom/facebook/ap;-><init>(Lcom/facebook/aq;)V
invoke-virtual {v0}, Lcom/facebook/ap;->c()Lcom/facebook/ap;
return-object v0
.end method
.method public static c(Lcom/facebook/aw;Ljava/io/File;Lcom/facebook/aj;)Lcom/facebook/ap;
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Ljava/io/File;Lcom/facebook/aj;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static c(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/aj;)Lcom/facebook/ap;
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/aj;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static c(Ljava/util/Collection;)Lcom/facebook/ap;
.registers 2
new-instance v0, Lcom/facebook/aq;
invoke-direct {v0, p0}, Lcom/facebook/aq;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Lcom/facebook/ai;->c(Lcom/facebook/aq;)Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method public static varargs c([Lcom/facebook/ai;)Lcom/facebook/ap;
.registers 2
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/ai;->c(Ljava/util/Collection;)Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method private static c(Ljava/lang/Object;)Z
.registers 2
instance-of v0, p0, Landroid/graphics/Bitmap;
if-nez v0, :cond_c
instance-of v0, p0, [B
if-nez v0, :cond_c
instance-of v0, p0, Landroid/os/ParcelFileDescriptor;
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static d(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/aj;)Lcom/facebook/ap;
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/ai;->b(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/aj;)Lcom/facebook/ai;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ai;->m()Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method private static d(Lcom/facebook/aq;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/facebook/aq;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_f
invoke-virtual {p0}, Lcom/facebook/aq;->f()Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-virtual {p0}, Lcom/facebook/aq;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/ai;
iget-object v0, v0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
if-eqz v0, :cond_13
invoke-virtual {v0}, Lcom/facebook/aw;->e()Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_28
sget-object v0, Lcom/facebook/ai;->D:Ljava/lang/String;
goto :goto_e
.end method
.method private static d(Ljava/lang/Object;)Z
.registers 2
instance-of v0, p0, Ljava/lang/String;
if-nez v0, :cond_10
instance-of v0, p0, Ljava/lang/Boolean;
if-nez v0, :cond_10
instance-of v0, p0, Ljava/lang/Number;
if-nez v0, :cond_10
instance-of v0, p0, Ljava/util/Date;
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private static e(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
instance-of v0, p0, Ljava/lang/String;
if-eqz v0, :cond_7
check-cast p0, Ljava/lang/String;
:goto_6
return-object p0
:cond_7
instance-of v0, p0, Ljava/lang/Boolean;
if-nez v0, :cond_f
instance-of v0, p0, Ljava/lang/Number;
if-eqz v0, :cond_14
:cond_f
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_6
:cond_14
instance-of v0, p0, Ljava/util/Date;
if-eqz v0, :cond_26
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object p0
goto :goto_6
:cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Unsupported parameter type."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static final e(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/facebook/ai;->D:Ljava/lang/String;
return-void
.end method
.method private f(Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v0, Landroid/net/Uri$Builder;
invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V
invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v2
iget-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_13
:goto_13
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_29
const-string v1, ""
:cond_29
invoke-static {v1}, Lcom/facebook/ai;->d(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3b
invoke-static {v1}, Lcom/facebook/ai;->e(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
goto :goto_13
:cond_3b
iget-object v0, p0, Lcom/facebook/ai;->F:Lcom/facebook/ad;
sget-object v4, Lcom/facebook/ad;->a:Lcom/facebook/ad;
if-ne v0, v4, :cond_13
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v2, "Unsupported parameter type for GET request: %s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5b
invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final j()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/facebook/ai;->D:Ljava/lang/String;
return-object v0
.end method
.method private p()V
.registers 4
iget-object v0, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
invoke-virtual {v0}, Lcom/facebook/aw;->b()Z
move-result v0
if-nez v0, :cond_14
new-instance v0, Lcom/facebook/t;
const-string v1, "Session provided to a Request in un-opened state."
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
const-string v1, "access_token"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2e
iget-object v0, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
invoke-virtual {v0}, Lcom/facebook/aw;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/b/j;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
const-string v2, "access_token"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2e
iget-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
const-string v1, "sdk"
const-string v2, "android"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
const-string v1, "format"
const-string v2, "json"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private q()V
.registers 3
iget-object v0, p0, Lcom/facebook/ai;->G:Ljava/lang/String;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/ai;->I:Ljava/lang/String;
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Only one of a graph path or REST method may be specified per request."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-void
.end method
.method private static r()Ljava/lang/String;
.registers 4
const-string v0, "multipart/form-data; boundary=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static s()Ljava/lang/String;
.registers 4
sget-object v0, Lcom/facebook/ai;->P:Ljava/lang/String;
if-nez v0, :cond_19
const-string v0, "%s.%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "FBAndroidSDK"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "3.0.0"
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/ai;->P:Ljava/lang/String;
:cond_19
sget-object v0, Lcom/facebook/ai;->P:Ljava/lang/String;
return-object v0
.end method
.method public final a()Lcom/facebook/c/c;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->H:Lcom/facebook/c/c;
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
return-void
.end method
.method public final a(Lcom/facebook/ad;)V
.registers 4
iget-object v0, p0, Lcom/facebook/ai;->O:Ljava/lang/String;
if-eqz v0, :cond_10
sget-object v0, Lcom/facebook/ad;->a:Lcom/facebook/ad;
if-eq p1, v0, :cond_10
new-instance v0, Lcom/facebook/t;
const-string v1, "Can\'t change HTTP method on request with overridden URL."
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
if-eqz p1, :cond_15
:goto_12
iput-object p1, p0, Lcom/facebook/ai;->F:Lcom/facebook/ad;
return-void
:cond_15
sget-object p1, Lcom/facebook/ad;->a:Lcom/facebook/ad;
goto :goto_12
.end method
.method public final a(Lcom/facebook/aj;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai;->N:Lcom/facebook/aj;
return-void
.end method
.method public final a(Lcom/facebook/aw;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
return-void
.end method
.method public final a(Lcom/facebook/c/c;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai;->H:Lcom/facebook/c/c;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai;->G:Ljava/lang/String;
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/ai;->L:Z
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->G:Ljava/lang/String;
return-object v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai;->I:Ljava/lang/String;
return-void
.end method
.method public final c()Lcom/facebook/ad;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->F:Lcom/facebook/ad;
return-object v0
.end method
.method public final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai;->J:Ljava/lang/String;
return-void
.end method
.method public final d()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
return-object v0
.end method
.method public final d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai;->K:Ljava/lang/String;
return-void
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->I:Ljava/lang/String;
return-object v0
.end method
.method public final f()Lcom/facebook/aw;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->J:Ljava/lang/String;
return-object v0
.end method
.method public final h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->K:Ljava/lang/String;
return-object v0
.end method
.method public final i()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/ai;->L:Z
return v0
.end method
.method public final k()Lcom/facebook/aj;
.registers 2
iget-object v0, p0, Lcom/facebook/ai;->N:Lcom/facebook/aj;
return-object v0
.end method
.method public final l()Lcom/facebook/as;
.registers 2
invoke-static {p0}, Lcom/facebook/ai;->a(Lcom/facebook/ai;)Lcom/facebook/as;
move-result-object v0
return-object v0
.end method
.method public final m()Lcom/facebook/ap;
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Lcom/facebook/ai;
const/4 v1, 0x0
aput-object p0, v0, v1
invoke-static {v0}, Lcom/facebook/ai;->c([Lcom/facebook/ai;)Lcom/facebook/ap;
move-result-object v0
return-object v0
.end method
.method final n()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/facebook/ai;->O:Ljava/lang/String;
if-eqz v0, :cond_c
new-instance v0, Lcom/facebook/t;
const-string v1, "Can\'t override URL for a batch request"
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/facebook/ai;->I:Ljava/lang/String;
if-eqz v0, :cond_2d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "method/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->I:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_25
invoke-direct {p0}, Lcom/facebook/ai;->p()V
invoke-direct {p0, v0}, Lcom/facebook/ai;->f(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2d
iget-object v0, p0, Lcom/facebook/ai;->G:Ljava/lang/String;
goto :goto_25
.end method
.method final o()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/facebook/ai;->O:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/facebook/ai;->O:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/facebook/ai;->I:Ljava/lang/String;
if-eqz v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "https://api.facebook.com/method/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->I:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_24
invoke-direct {p0}, Lcom/facebook/ai;->p()V
invoke-direct {p0, v0}, Lcom/facebook/ai;->f(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_a
:cond_2c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "https://graph.facebook.com/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->G:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_24
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "{Request: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " session: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->E:Lcom/facebook/aw;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", graphPath: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->G:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", graphObject: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->H:Lcom/facebook/c/c;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", restMethod: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->I:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpMethod: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->F:Lcom/facebook/ad;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", parameters: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ai;->M:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
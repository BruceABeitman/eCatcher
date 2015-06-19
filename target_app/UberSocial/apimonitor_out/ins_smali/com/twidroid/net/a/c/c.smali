.class public final Lcom/twidroid/net/a/c/c;
.super Lcom/ubermedia/net/d;
.source "SourceFile"
.field private static F:Z = false
.field private static H:J = 0x0L
.field private static final I:I = 0xc350
.field private static final J:I = 0xc350
.field private static final K:Lorg/apache/http/Header; = null
.field public static final a:Z = false
.field public static final b:J = 0x493e0L
.field public static final d:Ljava/lang/String; = "null"
.field public static final e:Ljava/lang/String; = ""
.field public static final f:Ljava/lang/String; = "utf-8"
.field public static g:J = 0x0L
.field public static h:J = 0x0L
.field public static i:J = 0x0L
.field public static j:J = 0x0L
.field public static k:J = 0x0L
.field public static l:Ljava/util/Map; = null
.field public static final m:I = 0x2ee0
.field public static final n:I = 0x927c0
.field public static final o:I = 0x5b8d80
.field public static final p:I = 0x927c0
.field public static final t:J = 0x2932e00L
.field static final u:Ljava/lang/String; = "Twitter"
.field public static v:Lcom/twidroid/model/twitter/c;
.field static final y:Ljava/text/SimpleDateFormat;
.field static final synthetic z:Z
.field private G:Lcom/ubermedia/net/b/c;
.field private L:Ljava/lang/String;
.field private M:Ljava/lang/String;
.field private N:Z
.field private O:Ljava/lang/String;
.field private P:Z
.field public c:Ljava/lang/String;
.field  q:J
.field  r:J
.field  s:Z
.field final w:Z
.field final x:Z
.method static constructor <clinit>()V
.registers 4
const/4 v1, 0x0
const-wide/16 v2, -0x1
const-class v0, Lcom/twidroid/net/a/c/c;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_43
const/4 v0, 0x1
:goto_c
sput-boolean v0, Lcom/twidroid/net/a/c/c;->z:Z
sput-boolean v1, Lcom/twidroid/net/a/c/c;->F:Z
sput-wide v2, Lcom/twidroid/net/a/c/c;->g:J
sput-wide v2, Lcom/twidroid/net/a/c/c;->h:J
sput-wide v2, Lcom/twidroid/net/a/c/c;->i:J
sput-wide v2, Lcom/twidroid/net/a/c/c;->j:J
const-wide/16 v0, 0x0
sput-wide v0, Lcom/twidroid/net/a/c/c;->k:J
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;
sput-wide v2, Lcom/twidroid/net/a/c/c;->H:J
new-instance v0, Lorg/apache/http/message/BasicHeader;
const-string v1, "User-Agent"
const-string v2, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)"
invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/twidroid/net/a/c/c;->K:Lorg/apache/http/Header;
new-instance v0, Lcom/twidroid/model/twitter/c;
invoke-direct {v0}, Lcom/twidroid/model/twitter/c;-><init>()V
sput-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/twidroid/net/a/c/c;->y:Ljava/text/SimpleDateFormat;
return-void
:cond_43
move v0, v1
goto :goto_c
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V
.registers 7
invoke-direct {p0}, Lcom/ubermedia/net/d;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/a/c/c;->c:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/twidroid/net/a/c/c;->q:J
const-wide/16 v0, 0xbb8
iput-wide v0, p0, Lcom/twidroid/net/a/c/c;->r:J
const-string v0, "http://twitter.com"
iput-object v0, p0, Lcom/twidroid/net/a/c/c;->O:Ljava/lang/String;
iput-boolean p3, p0, Lcom/twidroid/net/a/c/c;->w:Z
iput-boolean p4, p0, Lcom/twidroid/net/a/c/c;->x:Z
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iput-object p2, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
return-void
.end method
.method private B(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".json"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private C(Ljava/lang/String;)V
.registers 14
const/16 v3, 0xa
const/4 v1, 0x5
const/4 v11, 0x2
const/4 v2, 0x1
if-eqz p1, :cond_f
const-string v0, "1.1"
invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_10
:cond_f
:goto_f
return-void
:cond_10
const-string v0, "1.1"
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x3
const-string v4, ".json"
invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
sget-object v0, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;
invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;
invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/a/c/f;
const-wide/32 v5, 0x1d4c0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
invoke-virtual {v0}, Lcom/twidroid/net/a/c/f;->a()J
move-result-wide v9
sub-long v9, v7, v9
cmp-long v5, v9, v5
if-lez v5, :cond_5e
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Forced retry intrval exceeded for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
iput-wide v7, v0, Lcom/twidroid/net/a/c/f;->d:J
goto :goto_f
:cond_5e
iget v5, v0, Lcom/twidroid/net/a/c/f;->a:I
if-gtz v5, :cond_f
iget-wide v5, v0, Lcom/twidroid/net/a/c/f;->b:J
cmp-long v5, v7, v5
if-gez v5, :cond_f
if-eqz v0, :cond_97
iget-wide v5, v0, Lcom/twidroid/net/a/c/f;->b:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
sub-long/2addr v5, v7
const-wide/32 v7, 0xea60
div-long/2addr v5, v7
long-to-int v5, v5
if-gt v5, v2, :cond_b9
move v1, v2
:cond_79
:goto_79
const-string v3, "Ratelimit"
const/4 v5, 0x4
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
const-string v7, "reset_time"
aput-object v7, v5, v6
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v5, v2
const-string v1, "area"
aput-object v1, v5, v11
const/4 v1, 0x3
aput-object v4, v5, v1
invoke-static {v5}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v3, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_97
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Rate limit detected for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {p0, v4, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Lcom/twidroid/net/a/c/f;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v11}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_b9
if-le v5, v1, :cond_79
if-gt v5, v3, :cond_bf
move v1, v3
goto :goto_79
:cond_bf
const/16 v1, 0xf
goto :goto_79
.end method
.method private D(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v0, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_8
:goto_7
:cond_7
return-object v0
:cond_8
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, "/"
const-string v3, "_"
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v2
if-eqz v2, :cond_7
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->getResources()Landroid/content/res/Resources;
move-result-object v3
if-eqz v3, :cond_7
:try_start_20
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "apicall"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string v4, "string"
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-lez v1, :cond_7
invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
:try_end_42
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_42} :catch_44
move-result-object v0
goto :goto_7
:catch_44
move-exception v1
invoke-static {v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_7
.end method
.method private E(Ljava/lang/String;)[J
.registers 8
const/4 v1, 0x0
:try_start_1
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "ids"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-nez v2, :cond_12
const/4 v0, 0x0
new-array v0, v0, [J
:cond_11
return-object v0
:cond_12
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
new-array v0, v3, [J
:goto_18
if-ge v1, v3, :cond_11
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getLong(I)J
move-result-wide v4
aput-wide v4, v0, v1
:try_end_20
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_20} :catch_23
add-int/lit8 v1, v1, 0x1
goto :goto_18
:catch_23
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x4
invoke-direct {v1, v0, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
.end method
.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/twidroid/model/twitter/User;
.registers 5
sget-boolean v0, Lcom/twidroid/net/a/c/c;->z:Z
if-nez v0, :cond_e
if-eqz p0, :cond_8
if-nez p1, :cond_e
:cond_8
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_e
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iget-object v2, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_12
:goto_26
return-object v0
:cond_27
const/4 v0, 0x0
goto :goto_26
.end method
.method private a(Ljava/util/Map;Z)Lcom/twidroid/model/twitter/User;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
if-eqz p2, :cond_2a
const-string v0, "/mutes/users/create.json"
:goto_11
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-direct {p0, v0, v1, p1}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
:try_start_1e
new-instance v1, Lcom/twidroid/model/twitter/User;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_29
.catch Lorg/json/JSONException; {:try_start_1e .. :try_end_29} :catch_2d
return-object v1
:cond_2a
const-string v0, "/mutes/users/destroy.json"
goto :goto_11
:catch_2d
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method private a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.registers 16
const/16 v10, 0xf
const/4 v1, 0x0
const/4 v9, 0x2
const/4 v8, 0x1
const-string v0, "ApiLog"
invoke-static {v0, p2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_start_a
invoke-direct {p0, p2}, Lcom/twidroid/net/a/c/c;->C(Ljava/lang/String;)V
new-instance v0, Lcom/ubermedia/net/b;
invoke-direct {v0, p2}, Lcom/ubermedia/net/b;-><init>(Ljava/lang/String;)V
new-instance v2, Lcom/twidroid/net/a/c/g;
iget-object v3, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
invoke-virtual {v3}, Lcom/ubermedia/net/b/c;->a()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
invoke-virtual {v4}, Lcom/ubermedia/net/b/c;->b()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Lcom/twidroid/net/a/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->k()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->l()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/twidroid/net/a/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/ubermedia/net/b;->a(Ld/a/d;)V
invoke-virtual {v0, p3}, Lcom/ubermedia/net/b;->b(Ljava/util/Map;)Lcom/ubermedia/net/b;
const-string v2, "GET"
invoke-virtual {v0, v2}, Lcom/ubermedia/net/b;->a(Ljava/lang/String;)V
const/16 v2, 0x400
const/16 v3, 0x400
invoke-virtual {v0, v3}, Lcom/ubermedia/net/b;->c(I)V
invoke-virtual {v0}, Lcom/ubermedia/net/b;->a()Ljava/net/HttpURLConnection;
:try_end_43
.catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_43} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_43} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_a .. :try_end_43} :catch_1a3
.catch Ljava/io/IOException; {:try_start_a .. :try_end_43} :catch_1d2
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_43} :catch_22e
move-result-object v3
:try_start_44
invoke-static {v3}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
const-string v0, "Twitter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "HttpResponseCode: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
packed-switch v0, :pswitch_data_2be
invoke-direct {p0, v3, p2}, Lcom/twidroid/net/a/c/c;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
invoke-direct {p0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/net/HttpURLConnection;)V
new-instance v0, Ljava/io/InputStreamReader;
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v4
invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
new-array v5, v2, [C
:goto_8e
const/4 v6, 0x0
invoke-virtual {v0, v5, v6, v2}, Ljava/io/InputStreamReader;->read([CII)I
move-result v6
const/4 v7, -0x1
if-eq v6, v7, :cond_131
const/4 v7, 0x0
invoke-virtual {v4, v5, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
:try_end_9a
.catchall {:try_start_44 .. :try_end_9a} :catchall_9b
goto :goto_8e
:catchall_9b
move-exception v0
:try_start_9c
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v2
const/4 v4, 0x0
invoke-static {v2, v4}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;
:try_end_a4
.catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a4} :catch_1c9
.catch Ljava/net/UnknownHostException; {:try_start_9c .. :try_end_a4} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_9c .. :try_end_a4} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_9c .. :try_end_a4} :catch_1a3
.catch Ljava/io/IOException; {:try_start_9c .. :try_end_a4} :catch_1d2
move-result-object v2
:try_start_a5
const-string v1, "Twitter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v2, :cond_ca
const-string v1, "Timestamp out of bounds"
invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_ca
invoke-direct {p0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/net/HttpURLConnection;)V
:cond_ca
:goto_ca
:try_end_ca
.catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ca} :catch_2ba
.catch Ljava/net/UnknownHostException; {:try_start_a5 .. :try_end_ca} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_ca} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_a5 .. :try_end_ca} :catch_1a3
.catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ca} :catch_1d2
:try_start_ca
invoke-static {v3}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
if-eqz v2, :cond_22d
const-string v1, "Rate limit exceeded."
invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_22d
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Rate limit exceeded."
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:try_end_e0
.catch Ljava/net/UnknownHostException; {:try_start_ca .. :try_end_e0} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_ca .. :try_end_e0} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_ca .. :try_end_e0} :catch_1a3
.catch Ljava/io/IOException; {:try_start_ca .. :try_end_e0} :catch_1d2
.catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e0} :catch_22e
:catch_e0
move-exception v0
invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "!!! java.net.UnknownHostException "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not connect to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v8}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:pswitch_127
:try_start_127
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v2, "Twitter has just turned off API v1."
const/16 v4, 0xf
invoke-direct {v0, v2, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_131
invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_137
.catchall {:try_start_127 .. :try_end_137} :catchall_9b
move-result-object v2
:try_start_138
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v0
const/4 v4, 0x0
invoke-static {v0, v4}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;
move-result-object v1
const-string v0, "Twitter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v1, :cond_166
const-string v0, "Timestamp out of bounds"
invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_166
invoke-direct {p0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/net/HttpURLConnection;)V
:try_end_166
.catch Ljava/lang/Exception; {:try_start_138 .. :try_end_166} :catch_19e
.catch Ljava/net/UnknownHostException; {:try_start_138 .. :try_end_166} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_138 .. :try_end_166} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_138 .. :try_end_166} :catch_1a3
.catch Ljava/io/IOException; {:try_start_138 .. :try_end_166} :catch_1d2
:cond_166
:goto_166
:try_start_166
invoke-static {v3}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
if-eqz v1, :cond_2b9
const-string v0, "Rate limit exceeded."
invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_2b9
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Rate limit exceeded."
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:try_end_17c
.catch Ljava/net/UnknownHostException; {:try_start_166 .. :try_end_17c} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_166 .. :try_end_17c} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_166 .. :try_end_17c} :catch_1a3
.catch Ljava/io/IOException; {:try_start_166 .. :try_end_17c} :catch_1d2
.catch Ljava/lang/Exception; {:try_start_166 .. :try_end_17c} :catch_22e
:catch_17c
move-exception v0
const-string v0, "Twitter"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "404 not found: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "404 Not found"
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:catch_19e
move-exception v0
:try_start_19f
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_1a2
.catch Ljava/net/UnknownHostException; {:try_start_19f .. :try_end_1a2} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_19f .. :try_end_1a2} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_19f .. :try_end_1a2} :catch_1a3
.catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1d2
.catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a2} :catch_22e
goto :goto_166
:catch_1a3
move-exception v0
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "TwitterException on "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v1
if-eq v1, v9, :cond_1c8
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v1
if-ne v1, v10, :cond_275
:cond_1c8
throw v0
:catch_1c9
move-exception v2
move-object v11, v2
move-object v2, v1
move-object v1, v11
:goto_1cd
:try_start_1cd
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_1d0
.catch Ljava/net/UnknownHostException; {:try_start_1cd .. :try_end_1d0} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_1cd .. :try_end_1d0} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_1cd .. :try_end_1d0} :catch_1a3
.catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_1d2
.catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d0} :catch_22e
goto/16 :goto_ca
:catch_1d2
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "!!! IOException "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_292
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v1
const-string v2, "No authentication"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_292
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not connect to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/16 v2, 0xd
invoke-direct {v1, v0, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_22d
:try_start_22d
throw v0
:try_end_22e
.catch Ljava/net/UnknownHostException; {:try_start_22d .. :try_end_22e} :catch_e0
.catch Ljava/io/FileNotFoundException; {:try_start_22d .. :try_end_22e} :catch_17c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_22d .. :try_end_22e} :catch_1a3
.catch Ljava/io/IOException; {:try_start_22d .. :try_end_22e} :catch_1d2
.catch Ljava/lang/Exception; {:try_start_22d .. :try_end_22e} :catch_22e
:catch_22e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "!!! Exception "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not connect to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v8}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_275
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not get "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v0
invoke-direct {v1, v2, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_292
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not connect to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v8}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_2b9
return-object v2
:catch_2ba
move-exception v1
goto/16 :goto_1cd
nop
:pswitch_data_2be
.packed-switch 0x19a
:pswitch_127
.end packed-switch
.end method
.method private a(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/lang/String;Lcom/twidroid/net/a/c/f;)Ljava/lang/String;
.registers 13
const/4 v9, 0x1
const/4 v8, 0x0
const-string v2, "Rate limit exceeded"
const-string v1, "less than a minute"
const-string v0, "%s minutes"
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v3
if-eqz v3, :cond_29
invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->getResources()Landroid/content/res/Resources;
move-result-object v3
if-eqz v3, :cond_29
const v4, 0x7f0c02b9
:try_start_17
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const v4, 0x7f0c02e8
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const v4, 0x7f0c02ea
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
:try_end_28
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_28} :catch_63
move-result-object v0
:cond_29
:goto_29
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_62
invoke-direct {p0, p1}, Lcom/twidroid/net/a/c/c;->D(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_62
if-eqz p2, :cond_62
iget-wide v4, p2, Lcom/twidroid/net/a/c/f;->b:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long/2addr v4, v6
const-wide/16 v6, 0x3e8
div-long/2addr v4, v6
const-wide/16 v6, 0x3c
div-long/2addr v4, v6
const-wide/16 v6, 0x1
cmp-long v2, v4, v6
if-lez v2, :cond_68
new-array v1, v9, [Ljava/lang/Object;
new-array v2, v9, [Ljava/lang/Object;
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
aput-object v4, v2, v8
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
aput-object v0, v1, v8
invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
:cond_62
:goto_62
return-object v2
:catch_63
move-exception v3
invoke-static {v3}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_29
:cond_68
new-array v0, v9, [Ljava/lang/Object;
aput-object v1, v0, v8
invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
goto :goto_62
.end method
.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-direct {p0, v0, p1, p2}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.registers 3
invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method private a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
.registers 10
const/4 v4, 0x0
iget-object v5, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
move-object v0, p0
move-object v1, p1
move v2, p2
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/b/c;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2b
const-string v1, "error\":\"Invalid / used nonce"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_2b
const-string v0, "Twitter"
const-string v1, "Invalid / used nonce - retry"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v0, 0x190
:try_start_1e
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:goto_21
:try_end_21
.catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_2c
iget-object v5, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
move-object v0, p0
move-object v1, p1
move v2, p2
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/b/c;)Ljava/lang/String;
move-result-object v0
:cond_2b
return-object v0
:catch_2c
move-exception v0
const-string v0, "Twitter"
const-string v1, "Thread sleep for connection retry interrupted"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_21
.end method
.method private a(Ljava/util/Map;)Ljava/util/List;
.registers 9
const/4 v1, 0x1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v3
move v0, v1
:goto_d
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "/direct_messages.json"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p0, v5, p1, v1}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v5
invoke-static {v5, v3, v4}, Lcom/twidroid/model/twitter/DirectMessage;->a(Ljava/lang/String;J)Ljava/util/List;
move-result-object v5
invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
const/16 v6, 0xc8
if-eq v5, v6, :cond_38
:cond_37
return-object v2
:cond_38
const/4 v5, 0x5
if-gt v0, v5, :cond_37
add-int/lit8 v0, v0, 0x1
const-string v5, "page"
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_d
.end method
.method private a([JLjava/util/List;)Ljava/util/List;
.registers 11
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
move v1, v0
:goto_7
array-length v0, p1
if-ge v1, v0, :cond_2c
aget-wide v3, p1, v1
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_10
:cond_10
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->e()J
move-result-wide v6
cmp-long v6, v6, v3
if-nez v6, :cond_10
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_28
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_2c
return-object v2
.end method
.method private a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
.registers 12
const/4 v6, 0x0
const-string v1, "\r\n"
const-string v2, "--"
new-instance v3, Ljava/io/DataOutputStream;
invoke-direct {v3, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Content-Disposition: post-data; name=image;filename="
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
const/16 v4, 0x400
new-array v5, v4, [B
invoke-virtual {p2, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I
move-result v0
:goto_47
if-lez v0, :cond_51
invoke-virtual {v3, v5, v6, v0}, Ljava/io/DataOutputStream;->write([BII)V
invoke-virtual {p2, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I
move-result v0
goto :goto_47
:cond_51
invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
const-string v0, "Twitter"
const-string v1, "File is written"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p2}, Ljava/io/InputStream;->close()V
invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
return-void
.end method
.method private a(Ljava/net/HttpURLConnection;)V
.registers 7
:try_start_0
const-string v0, "Date"
invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_5c
const-string v1, "GMT"
const-string v2, "+0000"
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
const-string v1, "UTC"
const-string v2, "+0000"
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
:goto_18
if-eqz v0, :cond_2f
sget-object v1, Lcom/twidroid/net/a/c/c;->y:Ljava/text/SimpleDateFormat;
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
sput-wide v0, Lcom/twidroid/net/a/c/c;->g:J
sget-wide v0, Lcom/twidroid/net/a/c/c;->g:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long/2addr v0, v2
sput-wide v0, Lcom/twidroid/net/a/c/c;->k:J
:cond_2f
const-string v0, "x-rate-limit-limit"
invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "x-rate-limit-remaining"
invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "x-rate-limit-reset"
invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v0, :cond_4a
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
int-to-long v3, v0
sput-wide v3, Lcom/twidroid/net/a/c/c;->i:J
:cond_4a
if-eqz v1, :cond_53
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
int-to-long v0, v0
sput-wide v0, Lcom/twidroid/net/a/c/c;->h:J
:cond_53
if-eqz v2, :cond_5b
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
sput-wide v0, Lcom/twidroid/net/a/c/c;->j:J
:goto_5b
:try_end_5b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5e
:cond_5b
return-void
:cond_5c
const/4 v0, 0x0
goto :goto_18
:catch_5e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_5b
.end method
.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
.registers 13
const/4 v8, 0x0
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v0
const-string v1, "X-Rate-Limit-Remaining"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8b
:try_start_d
const-string v0, "1.1"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x3
const-string v1, ".json"
invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_6b
move-result-object v5
:try_start_1f
sget-object v9, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;
new-instance v0, Lcom/twidroid/net/a/c/f;
const-string v1, "X-Rate-Limit-Remaining"
invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
const-string v1, "X-Rate-Limit-Reset"
invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v3
const-wide/16 v6, 0x3e8
mul-long/2addr v3, v6
sget-wide v6, Lcom/twidroid/net/a/c/c;->k:J
sub-long/2addr v3, v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
move-object v1, p0
invoke-direct/range {v0 .. v7}, Lcom/twidroid/net/a/c/f;-><init>(Lcom/twidroid/net/a/c/c;IJLjava/lang/String;J)V
invoke-interface {v9, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_48
:try_end_48
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_48} :catch_87
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
const/16 v1, 0x1ad
if-ne v0, v1, :cond_86
sget-object v0, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;
invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_89
sget-object v0, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;
invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/a/c/f;
:goto_60
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {p0, v5, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Lcom/twidroid/net/a/c/f;)Ljava/lang/String;
move-result-object v0
const/4 v2, 0x2
invoke-direct {v1, v0, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:catch_6b
move-exception v0
move-object v5, v8
:goto_6d
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Can\'t get rate limit for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_48
:cond_86
return-void
:catch_87
move-exception v0
goto :goto_6d
:cond_89
move-object v0, v8
goto :goto_60
:cond_8b
move-object v5, v8
goto :goto_48
.end method
.method private a([Lorg/apache/http/Header;)V
.registers 9
:try_start_0
array-length v1, p1
const/4 v0, 0x0
:goto_2
if-ge v0, v1, :cond_7e
aget-object v2, p1, v0
invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v3
const-string v4, "Date"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_33
sget-object v3, Lcom/twidroid/net/a/c/c;->y:Ljava/text/SimpleDateFormat;
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v4
const-string v5, "GMT"
const-string v6, "+0000"
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v3
invoke-virtual {v3}, Ljava/util/Date;->getTime()J
move-result-wide v3
sput-wide v3, Lcom/twidroid/net/a/c/c;->g:J
sget-wide v3, Lcom/twidroid/net/a/c/c;->g:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long/2addr v3, v5
sput-wide v3, Lcom/twidroid/net/a/c/c;->k:J
:cond_33
invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v3
const-string v4, "X-RateLimit-Limit"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4a
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
int-to-long v3, v3
sput-wide v3, Lcom/twidroid/net/a/c/c;->i:J
:cond_4a
invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v3
const-string v4, "X-RateLimit-Remaining"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_61
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
int-to-long v3, v3
sput-wide v3, Lcom/twidroid/net/a/c/c;->h:J
:cond_61
invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v3
const-string v4, "X-RateLimit-Reset"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_77
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
sput-wide v2, Lcom/twidroid/net/a/c/c;->j:J
:try_end_77
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_77} :catch_7a
:cond_77
add-int/lit8 v0, v0, 0x1
goto :goto_2
:catch_7a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_7e
return-void
.end method
.method private b(Ljava/util/Map;)Ljava/util/List;
.registers 9
const/4 v1, 0x1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v3
move v0, v1
:goto_d
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "/direct_messages/sent.json"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p0, v5, p1, v1}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v5
invoke-static {v5, v3, v4}, Lcom/twidroid/model/twitter/DirectMessage;->a(Ljava/lang/String;J)Ljava/util/List;
move-result-object v5
invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
const/16 v6, 0xc8
if-eq v5, v6, :cond_38
:cond_37
return-object v2
:cond_38
const/4 v5, 0x5
if-gt v0, v5, :cond_37
add-int/lit8 v0, v0, 0x1
const-string v5, "page"
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_d
.end method
.method private b(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)[Lorg/apache/http/Header;
.registers 14
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
const/4 v0, 0x2
new-array v7, v0, [Lorg/apache/http/Header;
const/4 v0, 0x0
new-instance v1, Lorg/apache/http/message/BasicHeader;
const-string v2, "X-Auth-Service-Provider"
invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v1, v7, v0
const/4 v8, 0x1
new-instance v9, Lorg/apache/http/message/BasicHeader;
const-string v10, "X-Verify-Credentials-Authorization"
iget-object v0, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
const-string v1, "GET"
const/4 v3, 0x0
invoke-static {}, Lcom/twidroid/net/a/c/c;->h()J
move-result-wide v4
move-object v2, p2
move-object v6, p1
invoke-virtual/range {v0 .. v6}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/ubermedia/net/c;JLcom/ubermedia/net/b/d;)Ljava/lang/String;
move-result-object v0
invoke-direct {v9, v10, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v9, v7, v8
return-object v7
.end method
.method private c(Ljava/util/Date;)Ljava/lang/String;
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public static h()J
.registers 6
const-string v0, "Twitter"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Server Timestamp: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-wide v2, Lcom/twidroid/net/a/c/c;->g:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Timestamp Before Correction: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " After Correction: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sget-wide v4, Lcom/twidroid/net/a/c/c;->k:J
add-long/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Diff int:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-wide v2, Lcom/twidroid/net/a/c/c;->k:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/twidroid/net/a/c/c;->k:J
add-long/2addr v0, v2
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
return-wide v0
.end method
.method private n(J)V
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sub-long v0, p1, v0
sput-wide v0, Lcom/twidroid/net/a/c/c;->k:J
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)I
.registers 11
const/4 v0, 0x3
const/4 v2, 0x2
const/4 v3, 0x0
const/4 v1, 0x1
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/Object;
const-string v5, "source_screen_name"
aput-object v5, v4, v3
aput-object p1, v4, v1
const-string v5, "target_screen_name"
aput-object v5, v4, v2
aput-object p2, v4, v0
invoke-static {v4}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v5
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, "/friendships/show.json"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v4, v5, v1}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_3c
const-string v6, "Invalid / used nonce"
invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_57
:cond_3c
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, "/friendships/show.json"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v4, v5, v1}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v4
:try_start_57
:cond_57
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v6, "relationship"
invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v6
const-string v7, "source"
invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v6
const-string v7, "following"
invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v6
const-string v7, "relationship"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v5
const-string v7, "source"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v5
const-string v7, "followed_by"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
:try_end_7f
.catch Lorg/json/JSONException; {:try_start_57 .. :try_end_7f} :catch_8d
move-result v4
if-eqz v6, :cond_85
if-eqz v4, :cond_85
:goto_84
return v0
:cond_85
if-eqz v6, :cond_89
move v0, v1
goto :goto_84
:cond_89
if-eqz v4, :cond_a9
move v0, v2
goto :goto_84
:catch_8d
move-exception v0
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "json page: "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
:cond_a9
move v0, v3
goto :goto_84
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/String;)Lcom/twidroid/model/twitter/DirectMessage;
.registers 8
const/16 v3, 0xe
if-eqz p1, :cond_7
:try_start_4
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_7
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
const/4 v1, 0x1
aput-object p2, v0, v1
const/4 v1, 0x2
const-string v2, "text"
aput-object v2, v0, v1
const/4 v1, 0x3
aput-object p3, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/direct_messages/new.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_58
const-string v1, "You cannot send messages to users who are not following you"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_58
const-string v1, "Twitter"
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const/16 v1, 0xe
invoke-direct {v0, p2, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:try_end_51
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_51} :catch_51
:catch_51
move-exception v0
new-instance v0, Lcom/ubermedia/net/a/a/a;
invoke-direct {v0, p2, v3}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_58
if-eqz v0, :cond_6f
:try_start_5a
const-string v1, "There was an error sending your message: Whoops! You already said that."
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_6f
const-string v1, "Twitter"
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const/16 v1, 0xb
invoke-direct {v0, p2, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_6f
:try_start_6f
:try_end_6f
.catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6f} :catch_51
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/twidroid/model/twitter/DirectMessage;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/DirectMessage;
:try_end_77
.catch Lorg/json/JSONException; {:try_start_6f .. :try_end_77} :catch_79
.catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_51
move-result-object v0
return-object v0
:catch_79
move-exception v0
:try_start_7a
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:try_end_80
.catch Ljava/lang/Exception; {:try_start_7a .. :try_end_80} :catch_51
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;JZDDJ)Lcom/twidroid/model/twitter/Tweet;
.registers 16
const/4 v3, 0x1
if-eqz p1, :cond_6
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_6
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "status"
aput-object v2, v0, v1
aput-object p2, v0, v3
const/4 v1, 0x2
const-string v2, "in_reply_to_status_id"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "source"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "twidroid"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
if-eqz p5, :cond_44
const-wide/16 v1, 0x0
cmp-long v1, p10, v1
if-nez v1, :cond_73
const-string v1, "lat"
invoke-static {p6, p7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "long"
invoke-static {p8, p9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_44
:cond_44
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/statuses/update.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_7d
const-string v1, "error\":\"Status is a duplicate."
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_7d
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Status is a duplicate."
const/16 v2, 0xb
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_73
const-string v1, "place_id"
invoke-static {p10, p11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_44
:cond_7d
:try_start_7d
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
:try_end_85
.catch Lorg/json/JSONException; {:try_start_7d .. :try_end_85} :catch_87
.catch Ljava/lang/Exception; {:try_start_7d .. :try_end_85} :catch_8e
move-result-object v0
return-object v0
:catch_87
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:catch_8e
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;ZDDJ)Lcom/twidroid/model/twitter/Tweet;
.registers 15
const/16 v4, 0xb
const/4 v3, 0x1
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "status"
aput-object v2, v0, v1
aput-object p2, v0, v3
const/4 v1, 0x2
const-string v2, "source"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "twidroid"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
if-eqz p1, :cond_20
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_20
if-eqz p3, :cond_3a
const-wide/16 v1, 0x0
cmp-long v1, p8, v1
if-nez v1, :cond_67
const-string v1, "lat"
invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "long"
invoke-static {p6, p7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_3a
:cond_3a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/statuses/update.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_71
const-string v2, "Status is a duplicate"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_71
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Status is a duplicate"
invoke-direct {v0, v1, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_67
const-string v1, "place_id"
invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3a
:try_start_71
:cond_71
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
:try_end_79
.catch Lorg/json/JSONException; {:try_start_71 .. :try_end_79} :catch_7b
.catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_bd
move-result-object v0
:goto_7a
return-object v0
:catch_7b
move-exception v1
:try_start_7c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/statuses/update.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b3
const-string v1, "Status is a duplicate"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_b3
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Status is a duplicate"
const/16 v2, 0xb
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:catch_ac
:try_end_ac
.catch Ljava/lang/Exception; {:try_start_7c .. :try_end_ac} :catch_ac
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:try_start_b3
:cond_b3
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
:try_end_bb
.catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bb} :catch_ac
move-result-object v0
goto :goto_7a
:catch_bd
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public a(JZ)Lcom/twidroid/model/twitter/User;
.registers 7
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "user_id"
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, v0, p3}, Lcom/twidroid/net/a/c/c;->a(Ljava/util/Map;Z)Lcom/twidroid/model/twitter/User;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/User;
.registers 8
const/4 v4, 0x5
const/4 v3, 0x1
if-eqz p2, :cond_7
invoke-virtual {p0, p2}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_7
const-string v0, ""
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
aput-object p1, v0, v3
const/4 v1, 0x2
const-string v2, "include_entities"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "true"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/users/show.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "HTTP Server Error 503 / No available server to handle this request"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_4d
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "No available server to handle this request"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_4d
const-string v1, "\"error\":\"Not found\""
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_5b
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_5b
const-string v1, "Twitter / Over capacity"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_6b
new-instance v1, Lcom/ubermedia/net/a/a/a;
const/16 v2, 0x9
invoke-direct {v1, v0, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_6b
const-string v1, "\"error\":\"User has been suspended"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_79
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_79
:try_start_79
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v2, Lcom/twidroid/model/twitter/User;
const/4 v0, 0x0
invoke-direct {v2, v1, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_84
.catch Lorg/json/JSONException; {:try_start_79 .. :try_end_84} :catch_96
:try_start_84
const-string v0, "status"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
iput-object v0, v2, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
:try_end_90
.catch Ljava/lang/Exception; {:try_start_84 .. :try_end_90} :catch_91
.catch Lorg/json/JSONException; {:try_start_84 .. :try_end_90} :catch_96
:goto_90
return-object v2
:catch_91
move-exception v0
:try_start_92
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_95
.catch Lorg/json/JSONException; {:try_start_92 .. :try_end_95} :catch_96
goto :goto_90
:catch_96
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v3}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
.end method
.method public a(Ljava/lang/String;Z)Lcom/twidroid/model/twitter/User;
.registers 6
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
const/4 v1, 0x1
aput-object p1, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/twidroid/net/a/c/c;->a(Ljava/util/Map;Z)Lcom/twidroid/model/twitter/User;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;ZLcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/User;
.registers 8
if-nez p3, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {p0, p3}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "screen_name"
aput-object v3, v0, v2
const/4 v2, 0x1
aput-object p1, v0, v2
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/twidroid/net/a/c/c;->a(Ljava/util/Map;Z)Lcom/twidroid/model/twitter/User;
move-result-object v0
invoke-virtual {p0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
goto :goto_3
.end method
.method public a(JLjava/lang/String;Z)Lcom/twidroid/net/a/c/i;
.registers 9
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
const/4 v1, 0x1
aput-object p3, v0, v1
const/4 v1, 0x2
const-string v2, "cursor"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/friends/ids.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, p4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/c;->E(Ljava/lang/String;)[J
move-result-object v0
new-instance v1, Lcom/twidroid/net/a/c/i;
invoke-direct {v1, v0}, Lcom/twidroid/net/a/c/i;-><init>([J)V
invoke-virtual {v1, p1, p2}, Lcom/twidroid/net/a/c/i;->a(J)V
sget-wide v2, Lcom/twidroid/net/a/c/c;->H:J
invoke-virtual {v1, v2, v3}, Lcom/twidroid/net/a/c/i;->b(J)V
return-object v1
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
.registers 12
const-string v0, "Twitter"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "url: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p1, :cond_36
const-string v0, "Twitter"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Account: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_36
if-nez p3, :cond_3d
new-instance p3, Ljava/util/HashMap;
invoke-direct {p3}, Ljava/util/HashMap;-><init>()V
:cond_3d
const-string v0, "include_entities"
invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_4c
const-string v0, "include_entities"
const-string v1, "true"
invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
:try_start_50
invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_74
const-string v0, "Twitter"
const-string v3, "Empty response - wait and try again"
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/Exception;
const-string v3, "Connection failed. Please try again."
invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:try_end_65
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_65} :catch_65
.catch Ljava/lang/OutOfMemoryError; {:try_start_50 .. :try_end_65} :catch_8b
:catch_65
move-exception v0
instance-of v3, v0, Lcom/ubermedia/net/a/a/a;
if-eqz v3, :cond_105
check-cast v0, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v3
const/4 v4, 0x3
if-ne v3, v4, :cond_f5
throw v0
:cond_74
:try_start_74
const-string v3, "error\":\"Invalid / used nonce"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_ba
const-string v0, "Twitter"
const-string v3, "Invalid / used nonce - retry"
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/Exception;
const-string v3, "Invalid / used nonce - retry"
invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:catch_8b
:try_end_8b
.catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8b} :catch_65
.catch Ljava/lang/OutOfMemoryError; {:try_start_74 .. :try_end_8b} :catch_8b
move-exception v0
const-string v0, "Twitter"
const-string v1, "OOM Error in twitterGet !!! "
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "Twitter"
const-string v1, "Trying to free some memory"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "Twitter"
const-string v1, "mem before GC"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/ubermedia/b/m;->b()V
invoke-static {}, Ljava/lang/System;->gc()V
const-string v0, "Twitter"
const-string v1, "mem after GC"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/ubermedia/b/m;->b()V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Out of memory"
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:try_start_ba
:cond_ba
const-string v3, "<title>Twitter / Over capacity</title>"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_d1
const-string v0, "Twitter"
const-string v3, "Twitter / Over capacity"
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/Exception;
const-string v3, "Twitter is over capacity."
invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_d1
const-string v3, "Twitter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "twitterGet took "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long/2addr v5, v1
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " msec"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_f4
.catch Ljava/lang/Exception; {:try_start_ba .. :try_end_f4} :catch_65
.catch Ljava/lang/OutOfMemoryError; {:try_start_ba .. :try_end_f4} :catch_8b
:goto_f4
return-object v0
:cond_f5
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v3
const/4 v4, 0x2
if-eq v3, v4, :cond_104
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v3
const/16 v4, 0xf
if-ne v3, v4, :cond_105
:cond_104
throw v0
:cond_105
const-string v0, "Twitter"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "RETRY RETRY - connection FAILED connection: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v3, 0x190
:try_start_11f
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:goto_122
:try_end_122
.catch Ljava/lang/InterruptedException; {:try_start_11f .. :try_end_122} :catch_139
:try_start_122
invoke-direct {p0, p2, p3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_142
const-string v0, "Twitter"
const-string v1, "Empty response - wait and try again"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Connection failed. Please try again."
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
:catch_137
:try_end_137
.catch Lcom/ubermedia/net/a/a/a; {:try_start_122 .. :try_end_137} :catch_137
.catch Ljava/lang/Exception; {:try_start_122 .. :try_end_137} :catch_167
move-exception v0
throw v0
:catch_139
move-exception v0
const-string v0, "Twitter"
const-string v3, "Thread sleep for connectio retry interrupted"
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_122
:cond_142
:try_start_142
const-string v3, "Twitter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "twitterGet took "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long v1, v5, v1
invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " msec WITH RETRY"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_166
.catch Lcom/ubermedia/net/a/a/a; {:try_start_142 .. :try_end_166} :catch_137
.catch Ljava/lang/Exception; {:try_start_142 .. :try_end_166} :catch_167
goto :goto_f4
:catch_167
move-exception v0
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Connection failed. Please try again."
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Ljava/lang/String;I)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "https://api.twitter.com/1.1/users/profile_banner.json?screen_name="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
:try_start_15
invoke-direct {p0, v1, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "sizes"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const/16 v2, 0x140
if-gt p2, v2, :cond_35
const-string v2, "mobile"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "url"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_34
return-object v0
:cond_35
const-string v2, "mobile_retina"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "url"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_40
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_42
move-result-object v0
goto :goto_34
:catch_42
move-exception v1
const-string v2, "Twitter"
const-string v3, "error getting background banner for profile"
invoke-static {v2, v3, v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_34
.end method
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
.registers 15
const/4 v9, 0x1
:try_start_1
new-instance v7, Lcom/ubermedia/net/b;
invoke-direct {v7, p1}, Lcom/ubermedia/net/b;-><init>(Ljava/lang/String;)V
const-string v0, "ApiLog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "POST "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x0
if-eqz p2, :cond_62
invoke-interface {p2}, Ljava/util/Map;->size()I
move-result v0
if-eqz v0, :cond_62
invoke-interface {p2}, Ljava/util/Map;->size()I
move-result v0
new-array v3, v0, [Lcom/ubermedia/net/c;
const/4 v0, 0x0
invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v2, v0
:cond_37
:goto_37
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_62
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_37
new-instance v5, Lcom/ubermedia/net/c;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v5, v1, v0}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v5, v3, v2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_37
:cond_62
const-string v8, "Authorization"
iget-object v0, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
const-string v1, "POST"
invoke-static {}, Lcom/twidroid/net/a/c/c;->h()J
move-result-wide v4
sget-object v6, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
move-object v2, p1
invoke-virtual/range {v0 .. v6}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/ubermedia/net/c;JLcom/ubermedia/net/b/d;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v8, v0}, Lcom/ubermedia/net/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ubermedia/net/b;
invoke-virtual {v7, p3}, Lcom/ubermedia/net/b;->a(Ljava/util/Map;)Lcom/ubermedia/net/b;
const-string v0, "Content-Type"
const-string v1, "application/x-www-form-urlencoded"
invoke-virtual {v7, v0, v1}, Lcom/ubermedia/net/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ubermedia/net/b;
const-string v0, "POST"
invoke-virtual {v7, v0}, Lcom/ubermedia/net/b;->a(Ljava/lang/String;)V
invoke-virtual {v7}, Lcom/ubermedia/net/b;->a()Ljava/net/HttpURLConnection;
move-result-object v1
const/4 v0, 0x1
invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
const/4 v0, 0x1
invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
invoke-static {v1}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
if-eqz p2, :cond_141
invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_141
invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_a9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_134
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v5, "UTF-8"
invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v5, "+"
const-string v6, "%20"
invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
const-string v5, "*"
const-string v6, "%2A"
invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
const-string v5, "%7E"
const-string v6, "~"
invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v4, 0x26
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_ec
.catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_ec} :catch_ed
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_ec} :catch_176
.catch Lcom/ubermedia/net/a/a/a; {:try_start_1 .. :try_end_ec} :catch_1d1
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_ec} :catch_201
goto :goto_a9
:catch_ed
move-exception v0
invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "!!! java.net.UnknownHostException "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not connect to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v9}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:cond_134
:try_start_134
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
:cond_141
new-instance v0, Ljava/io/OutputStreamWriter;
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v3
invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
if-eqz p4, :cond_167
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
invoke-virtual {p4, v0}, Lcom/ubermedia/net/e;->a(I)V
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {p4, v0}, Lcom/ubermedia/net/e;->a(Ljava/lang/String;)V
:cond_167
invoke-direct {p0, v1, p1}, Lcom/twidroid/net/a/c/c;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:try_end_175
.catch Ljava/net/UnknownHostException; {:try_start_134 .. :try_end_175} :catch_ed
.catch Ljava/io/IOException; {:try_start_134 .. :try_end_175} :catch_176
.catch Lcom/ubermedia/net/a/a/a; {:try_start_134 .. :try_end_175} :catch_1d1
.catch Ljava/lang/Exception; {:try_start_134 .. :try_end_175} :catch_201
return-object v0
:catch_176
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "!!! IOException "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p4, :cond_1aa
invoke-virtual {p4}, Lcom/ubermedia/net/e;->a()I
move-result v1
const/16 v2, 0x193
if-ne v1, v2, :cond_1aa
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, ""
const/16 v2, 0xb
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_1aa
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not connect to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v9}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:catch_1d1
move-exception v0
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v1
const/4 v2, 0x2
if-ne v1, v2, :cond_1da
throw v0
:cond_1da
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not connect to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v9}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
:catch_201
move-exception v0
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "!!! Exception "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
new-instance v1, Lcom/ubermedia/net/a/a/a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not connect to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0, v9}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v1
.end method
.method public a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {p0, v0, p1, p2, p3}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/util/Map;ZJ)Ljava/lang/String;
.registers 12
new-instance v1, Ljava/io/File;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/twidroid/net/k;->b:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_69
invoke-virtual {v1}, Ljava/io/File;->length()J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v0, v2, v4
if-lez v0, :cond_69
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1}, Ljava/io/File;->lastModified()J
move-result-wide v4
sub-long/2addr v2, v4
cmp-long v0, v2, p4
if-gez v0, :cond_69
:try_start_3f
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/4 v0, 0x0
invoke-static {v2, v0}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
const-string v2, "Twitter"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Cache hit: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_64
.catch Ljava/io/IOException; {:try_start_3f .. :try_end_64} :catch_65
:goto_64
return-object v0
:catch_65
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:cond_69
invoke-virtual {p0, p1, p2, p3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
:try_start_6d
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_7c
.catch Ljava/io/IOException; {:try_start_6d .. :try_end_7c} :catch_7d
goto :goto_64
:catch_7d
move-exception v1
goto :goto_64
.end method
.method public a(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/b/c;)Ljava/lang/String;
.registers 9
const-string v0, "Twitter"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Uri: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/ubermedia/net/e;
invoke-direct {v0}, Lcom/ubermedia/net/e;-><init>()V
invoke-virtual {p0, p1, p3, p4, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/util/List;)Ljava/util/ArrayList;
.registers 6
if-eqz p1, :cond_8
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_e
:cond_8
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_d
return-object v0
:cond_e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
const/16 v2, 0x64
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v2
const/4 v0, 0x0
:goto_1e
if-ge v0, v2, :cond_37
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
add-int/lit8 v3, v3, -0x1
if-eq v0, v3, :cond_34
const-string v3, ","
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_34
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:cond_37
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/c;->j(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
goto :goto_d
.end method
.method public a([J)Ljava/util/ArrayList;
.registers 7
if-nez p1, :cond_8
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_7
return-object v0
:cond_8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
array-length v0, p1
const/16 v2, 0x64
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v2
const/4 v0, 0x0
:goto_15
if-ge v0, v2, :cond_29
aget-wide v3, p1, v0
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
array-length v3, p1
add-int/lit8 v3, v3, -0x1
if-eq v0, v3, :cond_26
const-string v3, ","
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_29
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/c;->j(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
goto :goto_7
.end method
.method public a()Ljava/util/List;
.registers 3
const-wide/16 v0, 0x1
invoke-virtual {p0, v0, v1}, Lcom/twidroid/net/a/c/c;->a(J)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(IJZ)Ljava/util/List;
.registers 11
const/4 v5, 0x1
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "max_id"
aput-object v2, v0, v1
const-wide/16 v1, 0x1
sub-long v1, p2, v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v0, v5
const/4 v1, 0x2
const-string v2, "count"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "include_entities"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "true"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
:try_start_33
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "/statuses/mentions_timeline.json"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v3, 0x1
invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0, v2}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
:try_end_52
.catch Lcom/ubermedia/net/a/a/a; {:try_start_33 .. :try_end_52} :catch_54
move-result-object v0
:goto_53
return-object v0
:catch_54
move-exception v0
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, "This account is locked due to too many failed login attempts"
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_8b
const-wide/16 v3, 0x7d0
:try_start_63
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:goto_66
:try_end_66
.catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_86
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "/statuses/mentions_timeline.json"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v1, v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0, v2, p4}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
move-result-object v0
goto :goto_53
:catch_86
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_66
:cond_8b
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public a(J)Ljava/util/List;
.registers 40
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const-string v3, "id"
invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/trends/place.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v4
move-object/from16 v0, p0
invoke-virtual {v0, v3, v2, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v2
new-instance v34, Ljava/util/ArrayList;
invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
:try_start_36
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
:try_end_3b
.catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3b} :catch_b2
const/4 v2, 0x0
:try_start_3c
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
const-string v3, "trends"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
:try_end_45
.catch Lorg/json/JSONException; {:try_start_3c .. :try_end_45} :catch_ab
move-result-object v36
const/4 v2, 0x0
move/from16 v35, v2
:goto_49
:try_start_49
invoke-virtual/range {v36 .. v36}, Lorg/json/JSONArray;->length()I
move-result v2
move/from16 v0, v35
if-ge v0, v2, :cond_bc
move-object/from16 v0, v36
move/from16 v1, v35
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
const-string v3, "name"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v7, Lcom/twidroid/ui/StringUrlSpan;
const/4 v3, 0x0
invoke-direct {v7, v2, v3}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
new-instance v2, Lcom/twidroid/model/twitter/Tweet;
move/from16 v0, v35
int-to-long v3, v0
const-wide/16 v5, -0x1
new-instance v8, Ljava/util/Date;
invoke-direct {v8}, Ljava/util/Date;-><init>()V
invoke-virtual {v8}, Ljava/util/Date;->getTime()J
move-result-wide v8
const-wide/16 v10, 0x3e8
div-long/2addr v8, v10
const/4 v10, 0x1
const-string v11, "trends"
const/4 v12, 0x0
const-string v13, ""
const-string v14, "user_screenname"
const-string v15, "user_avatar"
const-string v16, "reply_user"
const/16 v17, -0x1
const/16 v18, 0x0
const/16 v19, 0x0
const-wide/16 v20, 0x0
const-string v22, ""
const-wide/16 v23, 0x0
const-wide/16 v25, 0x0
const-wide/16 v27, 0x0
const/16 v29, 0x0
const/16 v30, 0x0
const/16 v31, 0x0
const/16 v32, 0x0
const-string v33, ""
invoke-direct/range {v2 .. v33}, Lcom/twidroid/model/twitter/Tweet;-><init>(JJLcom/twidroid/ui/StringUrlSpan;JZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZJLjava/lang/String;DDJZZILjava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v34
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v35, 0x1
move/from16 v35, v2
goto :goto_49
:catch_ab
move-exception v2
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
:try_end_af
.catch Lorg/json/JSONException; {:try_start_49 .. :try_end_af} :catch_b2
move-object/from16 v2, v34
:goto_b1
return-object v2
:catch_b2
move-exception v2
const-string v3, "Twitter"
invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v3, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_bc
move-object/from16 v2, v34
goto :goto_b1
.end method
.method public a(JJZ)Ljava/util/List;
.registers 9
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "page"
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "count"
const-string v2, "20"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/statuses/retweets/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, p5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-static {v0, v1}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-eqz v0, :cond_68
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_56
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_68
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iget-object v0, v0, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_56
:cond_68
return-object v1
.end method
.method public a(JLjava/lang/Integer;)Ljava/util/List;
.registers 7
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "max_id"
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "count"
aput-object v2, v0, v1
const/4 v1, 0x3
aput-object p3, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/util/Map;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(JLjava/lang/String;)Ljava/util/List;
.registers 10
const/4 v5, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "id"
aput-object v3, v1, v2
aput-object p3, v1, v5
const/4 v2, 0x2
const-string v3, "page"
aput-object v3, v1, v2
const/4 v2, 0x3
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, ""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/retweeted_by_user.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(JZZ)Ljava/util/List;
.registers 10
const/4 v4, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
const/4 v0, 0x6
new-array v2, v0, [Ljava/lang/Object;
const/4 v0, 0x0
const-string v3, "since_id"
aput-object v3, v2, v0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v4
const/4 v0, 0x2
const-string v3, "trim_user"
aput-object v3, v2, v0
const/4 v3, 0x3
if-eqz p3, :cond_5e
const-string v0, "true"
:goto_2e
aput-object v0, v2, v3
const/4 v0, 0x4
const-string v3, "include_entities"
aput-object v3, v2, v0
const/4 v0, 0x5
const-string v3, "true"
aput-object v3, v2, v0
invoke-static {v2}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/mentions_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v0, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0, v1, p4}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
move-result-object v0
return-object v0
:cond_5e
const-string v0, "false"
goto :goto_2e
.end method
.method public a(Lcom/twidroid/model/twitter/c;J)Ljava/util/List;
.registers 9
const/4 v4, 0x1
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "page"
aput-object v3, v1, v2
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/retweeted_by_me.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;JJ)Ljava/util/List;
.registers 12
const-wide/16 v4, 0x0
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
cmp-long v2, p2, v4
if-lez v2, :cond_1b
const-string v2, "since_id"
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1b
cmp-long v2, p4, v4
if-lez v2, :cond_28
const-string v2, "max_id"
invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_28
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/retweets_of_me.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, v2, v1, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/d;JZ)Ljava/util/List;
.registers 14
const/4 v7, 0x2
const/4 v3, 0x0
const/4 v6, 0x6
const/4 v5, 0x3
const/4 v4, 0x1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
const-string v0, ""
if-eqz p5, :cond_70
new-array v0, v6, [Ljava/lang/Object;
const-string v2, "count"
aput-object v2, v0, v3
const/16 v2, 0x14
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v4
const-string v2, "slug"
aput-object v2, v0, v7
invoke-virtual {p2}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v5
const/4 v2, 0x4
const-string v3, "owner_screen_name"
aput-object v3, v0, v2
const/4 v2, 0x5
invoke-virtual {p2}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v3
aput-object v3, v0, v2
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-wide/16 v2, 0x0
cmp-long v2, p3, v2
if-lez v2, :cond_44
const-string v2, "max_id"
invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_44
:try_start_44
:cond_44
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/lists/statuses.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, p1, v2, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
:try_end_5f
.catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_5f} :catch_a8
move-result-object v0
const-string v2, "error\":\"Not found"
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_b4
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not found"
invoke-direct {v0, v1, v5}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_70
new-array v0, v6, [Ljava/lang/Object;
const-string v2, "count"
aput-object v2, v0, v3
const/16 v2, 0x14
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v4
const-string v2, "slug"
aput-object v2, v0, v7
invoke-virtual {p2}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v5
const/4 v2, 0x4
const-string v3, "owner_screen_name"
aput-object v3, v0, v2
const/4 v2, 0x5
invoke-virtual {p2}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v3
aput-object v3, v0, v2
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-wide/16 v2, 0x0
cmp-long v2, p3, v2
if-lez v2, :cond_44
const-string v2, "since_id"
invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_44
:catch_a8
move-exception v0
invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Connection failed."
invoke-direct {v0, v1, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_b4
const-string v2, "error\":\"Not authorized"
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_c4
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
invoke-direct {v0, v1, v6}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_c4
invoke-static {v0, v1}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
.registers 13
const/4 v6, 0x6
const/4 v5, 0x1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
new-array v1, v6, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "count"
aput-object v3, v1, v2
aput-object p3, v1, v5
const/4 v2, 0x2
const-string v3, "max_id"
aput-object v3, v1, v2
const/4 v2, 0x3
const-wide/16 v3, 0x1
sub-long v3, p4, v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, "include_entities"
aput-object v3, v1, v2
const/4 v2, 0x5
const-string v3, "true"
aput-object v3, v1, v2
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
const-string v2, "screen_name"
invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/user_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, p1, v2, v1, v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
const-string v2, "error\":\"Not authorized"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_5d
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
invoke-direct {v0, v1, v6}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_5d
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/d;I)Ljava/util/List;
.registers 7
const/4 v3, 0x1
if-nez p2, :cond_6
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->f()V
:cond_6
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "cursor"
aput-object v2, v0, v1
sget-wide v1, Lcom/twidroid/net/a/c/c;->H:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "list_id"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "owner_screen_name"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/subscribers.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/d;JZ)Ljava/util/List;
.registers 11
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
move-object v0, p0
move-object v2, p1
move-wide v3, p2
move v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/d;JZ)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;
.registers 6
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "count"
aput-object v2, v0, v1
const/4 v1, 0x1
aput-object p2, v0, v1
const/4 v1, 0x2
const-string v2, "since_id"
aput-object v2, v0, v1
const/4 v1, 0x3
aput-object p1, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/util/Map;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;DDIJZ)Ljava/util/List;
.registers 15
const-string v0, ""
if-eqz p1, :cond_a
:try_start_4
const-string v1, "utf-8"
invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_7a
move-result-object v0
:cond_a
:goto_a
const/16 v1, 0x8
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "count"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "50"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "include_entities"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "true"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, "geocode"
aput-object v3, v1, v2
const/4 v2, 0x5
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ","
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ","
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "km"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x6
const-string v3, "q"
aput-object v3, v1, v2
const/4 v2, 0x7
aput-object v0, v1, v2
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
if-eqz p9, :cond_7f
const-wide/16 v1, 0x0
cmp-long v1, p7, v1
if-lez v1, :cond_6e
const-string v1, "max_id"
invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_6e
:cond_6e
const-string v1, "https://api.twitter.com/1.1/search/tweets.json"
const/4 v2, 0x0
invoke-virtual {p0, v1, v0, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
:catch_7a
move-exception v1
invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_a
:cond_7f
const-wide/16 v1, 0x0
cmp-long v1, p7, v1
if-lez v1, :cond_6e
const-string v1, "since_id"
invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_6e
.end method
.method public a(Ljava/lang/String;J)Ljava/util/List;
.registers 9
const/4 v4, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "page"
aput-object v3, v1, v2
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
const-string v2, "screen_name"
invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/favorites/list.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;JZ)Ljava/util/List;
.registers 12
const-wide/16 v5, 0x0
const/4 v4, 0x0
const/4 v2, 0x0
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z
move-result v0
if-eqz v0, :cond_7d
const/4 v0, 0x1
new-array v0, v0, [Lorg/apache/http/Header;
sget-object v1, Lcom/twidroid/net/a/c/c;->K:Lorg/apache/http/Header;
aput-object v1, v0, v2
const-string v0, ""
if-eqz p4, :cond_65
cmp-long v1, p2, v5
if-lez v1, :cond_2e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "&max_id="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2e
:cond_2e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "https://api.twitter.com/1.1/search/tweets.json?include_entities=true&count=50&q="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " -filter:retweets"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
:goto_64
return-object v0
:cond_65
cmp-long v1, p2, v5
if-lez v1, :cond_2e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "&since_id="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2e
:cond_7d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/search.json?rpp=50&page="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&q="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v4, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
goto :goto_64
.end method
.method public a(Ljava/lang/String;Landroid/location/Location;I)Ljava/util/List;
.registers 9
const/4 v4, 0x0
const/16 v0, 0x10
new-array v0, v0, [Ljava/lang/Object;
const-string v1, "q"
aput-object v1, v0, v4
const/4 v1, 0x1
aput-object p1, v0, v1
const/4 v1, 0x2
const-string v2, "numPosts"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "0"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "numAuthors"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "3"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "locale"
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "lang"
aput-object v2, v0, v1
const/16 v1, 0x9
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "ua"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "twidroid"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "cc"
aput-object v2, v0, v1
const/16 v1, 0xd
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "usr"
aput-object v2, v0, v1
const/16 v1, 0xf
sget-object v2, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
if-eqz p2, :cond_90
const-string v1, "lat"
invoke-static {p2}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "long"
invoke-static {p2}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_90
const-string v1, "http://api.TweetUp.com/TWTDR001/mobile/srch/1.json"
invoke-virtual {p0, v1, v0, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
.registers 11
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-wide v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/Integer;JJZ)Ljava/util/List;
.registers 12
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
const-wide/16 v2, 0x0
cmp-long v0, p3, v2
if-lez v0, :cond_63
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "count"
aput-object v3, v0, v2
const/4 v2, 0x1
aput-object p2, v0, v2
const/4 v2, 0x2
const-string v3, "since_id"
aput-object v3, v0, v2
const/4 v2, 0x3
invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v0, v2
const/4 v2, 0x4
const-string v3, "include_entities"
aput-object v3, v0, v2
const/4 v2, 0x5
const-string v3, "true"
aput-object v3, v0, v2
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
:goto_31
const-wide/16 v2, 0x0
cmp-long v2, p5, v2
if-lez v2, :cond_40
const-string v2, "max_id"
invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_40
:try_start_40
const-string v2, "/statuses/home_timeline"
invoke-direct {p0, v2}, Lcom/twidroid/net/a/c/c;->B(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, v2, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v2
const-string v3, "error\":\"Not authorized"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_7d
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5c} :catch_5c
:catch_5c
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:cond_63
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "count"
aput-object v3, v0, v2
const/4 v2, 0x1
aput-object p2, v0, v2
const/4 v2, 0x2
const-string v3, "include_entities"
aput-object v3, v0, v2
const/4 v2, 0x3
const-string v3, "true"
aput-object v3, v0, v2
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
goto :goto_31
:cond_7d
:try_start_7d
const-string v3, "error\":\"Invalid / used nonce"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_8d
const-string v3, "error\":\"Could not authenticate with OAuth"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_c6
:cond_8d
const-string v2, "Twitter"
const-string v3, "first attempt return Invalid / used nonce - trying a second time before giving up"
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/home_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, v2, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
const-string v2, "error\":\"Not authorized"
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_c1
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_c1
invoke-static {v0, v1, p7}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
:try_end_c4
.catch Ljava/lang/Exception; {:try_start_7d .. :try_end_c4} :catch_5c
move-result-object v0
:goto_c5
return-object v0
:cond_c6
invoke-static {v2, v1, p7}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
move-result-object v0
goto :goto_c5
.end method
.method public a(Ljava/lang/String;Ljava/lang/Integer;JZ)Ljava/util/List;
.registers 15
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x0
const/4 v5, 0x6
const/4 v4, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
const-wide/16 v2, 0x0
cmp-long v0, p3, v2
if-lez v0, :cond_60
new-array v0, v5, [Ljava/lang/Object;
const-string v2, "count"
aput-object v2, v0, v6
aput-object p2, v0, v4
const-string v2, "since_id"
aput-object v2, v0, v7
invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v8
const/4 v2, 0x4
const-string v3, "include_entities"
aput-object v3, v0, v2
const/4 v2, 0x5
const-string v3, "true"
aput-object v3, v0, v2
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
:goto_31
:try_start_31
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/home_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, v2, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v2
const-string v3, "error\":\"Not authorized"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_76
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:try_end_5e
.catch Lcom/ubermedia/net/a/a/a; {:try_start_31 .. :try_end_5e} :catch_5e
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5e} :catch_ba
:catch_5e
move-exception v0
throw v0
:cond_60
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const-string v2, "count"
aput-object v2, v0, v6
aput-object p2, v0, v4
const-string v2, "include_entities"
aput-object v2, v0, v7
const-string v2, "true"
aput-object v2, v0, v8
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
goto :goto_31
:try_start_76
:cond_76
const-string v3, "error\":\"Invalid / used nonce"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_86
const-string v3, "error\":\"Could not authenticate with OAuth"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_c6
:cond_86
const-string v2, "Twitter"
const-string v3, "first attempt return Invalid / used nonce - trying a second time before giving up"
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/home_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, v2, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
const-string v2, "error\":\"Not authorized"
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_c1
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:catch_ba
:try_end_ba
.catch Lcom/ubermedia/net/a/a/a; {:try_start_76 .. :try_end_ba} :catch_5e
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_ba} :catch_ba
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:try_start_c1
:cond_c1
invoke-static {v0, v1, p5}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
:try_end_c4
.catch Lcom/ubermedia/net/a/a/a; {:try_start_c1 .. :try_end_c4} :catch_5e
.catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_ba
move-result-object v0
:goto_c5
return-object v0
:cond_c6
invoke-static {v2, v1, p5}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
move-result-object v0
goto :goto_c5
.end method
.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Z)Ljava/util/List;
.registers 11
const/4 v5, 0x6
const/4 v4, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
new-array v1, v5, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "count"
aput-object v3, v1, v2
aput-object p2, v1, v4
const/4 v2, 0x2
const-string v3, "since_id"
aput-object v3, v1, v2
const/4 v2, 0x3
aput-object p3, v1, v2
const/4 v2, 0x4
const-string v3, "include_entities"
aput-object v3, v1, v2
const/4 v2, 0x5
const-string v3, "true"
aput-object v3, v1, v2
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/home_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
const-string v2, "error\":\"Not authorized"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_52
const-string v2, "error\":\"Could not authenticate with OAuth"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_5a
:cond_52
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
invoke-direct {v0, v1, v5}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_5a
invoke-static {v1, v0, p4}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/util/Date;)Ljava/util/List;
.registers 5
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "since"
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-direct {p0, p1}, Lcom/twidroid/net/a/c/c;->c(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/util/Map;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/util/List;J)Ljava/util/List;
.registers 10
if-eqz p1, :cond_8
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_d
:cond_8
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
new-array v2, v1, [J
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_19
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v4
aput-wide v4, v2, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_19
:cond_2f
invoke-virtual {p0, v2, p2, p3}, Lcom/twidroid/net/a/c/c;->a([JJ)Ljava/util/List;
move-result-object v0
goto :goto_c
.end method
.method public a(Z)Ljava/util/List;
.registers 7
const/4 v4, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "include_entities"
aput-object v3, v1, v2
const-string v2, "true"
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/mentions_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0, p1}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public a([JJ)Ljava/util/List;
.registers 10
const/4 v1, 0x0
if-nez p1, :cond_8
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_7
return-object v0
:cond_8
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
array-length v0, p1
const/16 v3, 0x64
invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
move-result v3
move v0, v1
:goto_15
if-ge v0, v3, :cond_29
aget-wide v4, p1, v0
invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
array-length v4, p1
add-int/lit8 v4, v4, -0x1
if-eq v0, v4, :cond_26
const-string v4, ","
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_29
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const-string v3, "user_id"
aput-object v3, v0, v1
const/4 v1, 0x1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "cursor"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/users/lookup.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v2
invoke-virtual {p0, v1, v0, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-static {}, Lcom/twidroid/model/twitter/User;->b()J
move-result-wide v1
sput-wide v1, Lcom/twidroid/net/a/c/c;->H:J
invoke-direct {p0, p1, v0}, Lcom/twidroid/net/a/c/c;->a([JLjava/util/List;)Ljava/util/List;
move-result-object v0
goto :goto_7
.end method
.method public a([Ljava/lang/String;J)Ljava/util/List;
.registers 8
const/4 v1, 0x0
if-nez p1, :cond_8
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_7
return-object v0
:cond_8
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
move v0, v1
:goto_e
array-length v3, p1
if-ge v0, v3, :cond_23
aget-object v3, p1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
array-length v3, p1
add-int/lit8 v3, v3, -0x1
if-eq v0, v3, :cond_20
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_23
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const-string v3, "screen_name"
aput-object v3, v0, v1
const/4 v1, 0x1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "cursor"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/users/lookup.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v2
invoke-virtual {p0, v1, v0, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-static {}, Lcom/twidroid/model/twitter/User;->b()J
move-result-wide v1
sput-wide v1, Lcom/twidroid/net/a/c/c;->H:J
goto :goto_7
.end method
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.registers 22
const/4 v3, 0x0
:try_start_1
sget-object v2, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v2
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "https://"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "/account/update_profile_image.json"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/4 v2, 0x0
const-string v5, "Android"
invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
:try_end_26
.catchall {:try_start_1 .. :try_end_26} :catchall_13c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_1 .. :try_end_26} :catch_145
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_142
.catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_26} :catch_12f
move-result-object v7
:try_start_27
invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v3
const-string v5, "http.protocol.version"
sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-interface {v3, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
new-instance v9, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v9, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lcom/twidroid/net/a/c/c;->p(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "Authorization"
invoke-virtual {v9, v4, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v10, Lcom/ubermedia/net/h;
sget-object v3, Lorg/apache/a/a/a/d;->b:Lorg/apache/a/a/a/d;
new-instance v4, Lcom/twidroid/net/a/c/c$1;
move-object/from16 v0, p0
invoke-direct {v4, v0}, Lcom/twidroid/net/a/c/c$1;-><init>(Lcom/twidroid/net/a/c/c;)V
invoke-direct {v10, v3, v4}, Lcom/ubermedia/net/h;-><init>(Lorg/apache/a/a/a/d;Lcom/ubermedia/net/j;)V
:try_end_50
.catchall {:try_start_27 .. :try_end_50} :catchall_106
.catch Lcom/ubermedia/net/a/a/a; {:try_start_27 .. :try_end_50} :catch_83
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_50} :catch_104
.catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_50} :catch_140
const-wide/16 v11, 0x1f4
const/4 v6, 0x1
const-wide/16 v4, 0x0
:goto_55
if-eqz v6, :cond_be
const/4 v2, 0x0
:try_start_58
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-static {v0, v1, v2}, Lcom/twidroid/net/a/b/b;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v2
const-string v3, "Twitter"
const-string v8, "compressing image..."
invoke-static {v3, v8}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
if-nez v2, :cond_8e
new-instance v2, Lcom/ubermedia/net/a/a/a;
const-string v3, "Image preprocessing failed."
invoke-direct {v2, v3}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v2
:try_end_71
.catchall {:try_start_58 .. :try_end_71} :catchall_106
.catch Ljava/lang/OutOfMemoryError; {:try_start_58 .. :try_end_71} :catch_71
.catch Lcom/ubermedia/net/a/a/a; {:try_start_58 .. :try_end_71} :catch_83
.catch Ljava/io/IOException; {:try_start_58 .. :try_end_71} :catch_104
.catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_71} :catch_140
:catch_71
move-exception v2
:try_start_72
const-string v3, "Twitter"
const-string v4, ""
invoke-static {v3, v4, v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v3, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v3, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v3
:try_end_83
.catchall {:try_start_72 .. :try_end_83} :catchall_106
.catch Lcom/ubermedia/net/a/a/a; {:try_start_72 .. :try_end_83} :catch_83
.catch Ljava/io/IOException; {:try_start_72 .. :try_end_83} :catch_104
.catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_83} :catch_140
:catch_83
move-exception v2
move-object v3, v7
:try_start_85
:goto_85
throw v2
:catchall_86
:try_end_86
.catchall {:try_start_85 .. :try_end_86} :catchall_86
move-exception v2
move-object v7, v3
:goto_88
if-eqz v7, :cond_8d
invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V
:cond_8d
throw v2
:cond_8e
:try_start_8e
move-object/from16 v0, p1
invoke-static {v0, v2}, Lcom/twidroid/net/a/b/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;
move-result-object v8
new-instance v13, Lorg/apache/a/a/a/a/e;
const-string v2, "image/jpeg"
invoke-direct {v13, v8, v2}, Lorg/apache/a/a/a/a/e;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v13}, Lorg/apache/a/a/a/a/e;->c()J
move-result-wide v2
const-wide/16 v14, 0x0
cmp-long v14, v11, v14
if-lez v14, :cond_b2
cmp-long v14, v2, v11
if-lez v14, :cond_b2
cmp-long v14, v4, v2
if-eqz v14, :cond_b2
move v4, v6
:goto_ae
move v6, v4
move-wide v4, v2
move-object v2, v8
goto :goto_55
:cond_b2
const/4 v2, 0x0
const-string v3, "image"
invoke-virtual {v10, v3, v13}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
:try_end_b8
.catchall {:try_start_8e .. :try_end_b8} :catchall_106
.catch Ljava/lang/OutOfMemoryError; {:try_start_8e .. :try_end_b8} :catch_71
.catch Lcom/ubermedia/net/a/a/a; {:try_start_8e .. :try_end_b8} :catch_83
.catch Ljava/io/IOException; {:try_start_8e .. :try_end_b8} :catch_104
.catch Ljava/lang/IllegalStateException; {:try_start_8e .. :try_end_b8} :catch_140
move-wide/from16 v16, v4
move v4, v2
move-wide/from16 v2, v16
goto :goto_ae
:try_start_be
:cond_be
invoke-virtual {v10}, Lcom/ubermedia/net/h;->getContentLength()J
move-result-wide v3
const-string v5, "Twitter"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Total Size determined: "
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v5, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
invoke-virtual {v7, v9}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v3
new-instance v4, Ljava/io/BufferedReader;
new-instance v5, Ljava/io/InputStreamReader;
invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v3
const-string v6, "UTF-8"
invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
:goto_fa
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_108
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_103
.catchall {:try_start_be .. :try_end_103} :catchall_106
.catch Lcom/ubermedia/net/a/a/a; {:try_start_be .. :try_end_103} :catch_83
.catch Ljava/io/IOException; {:try_start_be .. :try_end_103} :catch_104
.catch Ljava/lang/IllegalStateException; {:try_start_be .. :try_end_103} :catch_140
goto :goto_fa
:catch_104
move-exception v2
:goto_105
:try_start_105
throw v2
:try_end_106
.catchall {:try_start_105 .. :try_end_106} :catchall_106
:catchall_106
move-exception v2
goto :goto_88
:cond_108
:try_start_108
const-string v4, "Twitter"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Twitter response "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v4, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v2, :cond_129
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_129
:try_end_129
.catchall {:try_start_108 .. :try_end_129} :catchall_106
.catch Lcom/ubermedia/net/a/a/a; {:try_start_108 .. :try_end_129} :catch_83
.catch Ljava/io/IOException; {:try_start_108 .. :try_end_129} :catch_104
.catch Ljava/lang/IllegalStateException; {:try_start_108 .. :try_end_129} :catch_140
if-eqz v7, :cond_12e
invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V
:cond_12e
return-void
:catch_12f
move-exception v2
move-object v7, v3
:try_start_131
:goto_131
new-instance v3, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;
move-result-object v2
const/4 v4, 0x1
invoke-direct {v3, v2, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v3
:try_end_13c
.catchall {:try_start_131 .. :try_end_13c} :catchall_106
:catchall_13c
move-exception v2
move-object v7, v3
goto/16 :goto_88
:catch_140
move-exception v2
goto :goto_131
:catch_142
move-exception v2
move-object v7, v3
goto :goto_105
:catch_145
move-exception v2
goto/16 :goto_85
.end method
.method public a(Lcom/twidroid/model/twitter/c;)V
.registers 4
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/a/c/c;->L:Ljava/lang/String;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->i()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/a/c/c;->M:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/a/c/c;->N:Z
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->b()Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/net/a/c/c;->P:Z
iget-boolean v0, p0, Lcom/twidroid/net/a/c/c;->P:Z
if-eqz v0, :cond_19
:cond_19
sput-object p1, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
iget-boolean v0, p0, Lcom/twidroid/net/a/c/c;->N:Z
if-eqz v0, :cond_3a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "https://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/c;->w(Ljava/lang/String;)V
:goto_39
return-void
:cond_3a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/c;->w(Ljava/lang/String;)V
goto :goto_39
.end method
.method public a(Lcom/twidroid/model/twitter/d;)V
.registers 6
const/4 v3, 0x1
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "slug"
aput-object v2, v0, v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
const/4 v1, 0x2
const-string v2, "owner_screen_name"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "/lists/subscribers/destroy"
invoke-direct {p0, v1}, Lcom/twidroid/net/a/c/c;->B(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "::listUnsubscribe("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "): "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/twidroid/net/k;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
.registers 8
const/4 v3, 0x1
const/4 v0, 0x4
new-array v1, v0, [Ljava/lang/Object;
const/4 v0, 0x0
const-string v2, "name"
aput-object v2, v1, v0
aput-object p2, v1, v3
const/4 v0, 0x2
const-string v2, "mode"
aput-object v2, v1, v0
const/4 v2, 0x3
if-eqz p3, :cond_36
const-string v0, "public"
:goto_15
aput-object v0, v1, v2
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/update.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
return-void
:cond_36
const-string v0, "private"
goto :goto_15
.end method
.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/d;J)Z
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
:try_start_2
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const-string v3, "slug"
invoke-virtual {p2}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "user_id"
invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "owner_id"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/lists/members/show.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {p0, p1, v3, v2, v4}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v2
const-string v3, "Twitter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "::showListMember("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "): "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/twidroid/model/twitter/User;
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-direct {v3, v4, v2}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
iget-wide v2, v3, Lcom/twidroid/model/twitter/User;->b:J
:try_end_75
.catch Lcom/ubermedia/net/a/a/a; {:try_start_2 .. :try_end_75} :catch_7d
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_75} :catch_82
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_75} :catch_87
cmp-long v2, v2, p3
if-nez v2, :cond_7b
:goto_79
move v1, v0
:goto_7a
return v1
:cond_7b
move v0, v1
goto :goto_79
:catch_7d
move-exception v0
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_7a
:catch_82
move-exception v0
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_7a
:catch_87
move-exception v0
const-string v2, "Twitter"
const-string v3, "404 error while checking list members"
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_7a
.end method
.method public a(Lcom/twidroid/model/twitter/d;J)Z
.registers 8
const/4 v3, 0x1
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "user_id"
aput-object v2, v0, v1
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
const/4 v1, 0x2
const-string v2, "slug"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "owner_screen_name"
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/members/create.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "profile_background_tile"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)[Lorg/apache/http/Header;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)[Lorg/apache/http/Header;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Z)[Lorg/apache/http/Header;
.registers 7
const/4 v1, 0x1
const/4 v3, 0x0
const-string v0, "https://api.twitter.com/1/account/verify_credentials.%s"
if-eqz p2, :cond_17
const-string v0, "https://api.twitter.com/1/account/verify_credentials.%s"
new-array v1, v1, [Ljava/lang/Object;
const-string v2, "xml"
aput-object v2, v1, v3
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_12
invoke-direct {p0, p1, v0}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)[Lorg/apache/http/Header;
move-result-object v0
return-object v0
:cond_17
const-string v0, "https://api.twitter.com/1/account/verify_credentials.%s"
new-array v1, v1, [Ljava/lang/Object;
const-string v2, "json"
aput-object v2, v1, v3
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_12
.end method
.method public b(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
.registers 6
if-nez p1, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "screen_name"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/friendships/create.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "TwitterAPi"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "beFriend: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_start_48
new-instance v1, Lcom/twidroid/model/twitter/User;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_53
.catch Lorg/json/JSONException; {:try_start_48 .. :try_end_53} :catch_54
return-object v1
:catch_54
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1, p2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()Ljava/util/List;
.registers 13
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/trends/available.json"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v3
const-wide/32 v4, 0x5b8d80
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;ZJ)Ljava/lang/String;
move-result-object v0
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
:try_start_2b
new-instance v10, Lorg/json/JSONArray;
invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
move v8, v0
:goto_32
invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v8, v0, :cond_66
invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
new-instance v0, Lcom/ubermedia/model/twitter/d;
const-string v1, "countryCode"
invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "woeid"
invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
const-string v4, "parentid"
invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v4
const-string v6, "country"
invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v11, "name"
invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-direct/range {v0 .. v7}, Lcom/ubermedia/model/twitter/d;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v8, 0x1
move v8, v0
goto :goto_32
:cond_66
invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:try_end_69
.catch Lorg/json/JSONException; {:try_start_2b .. :try_end_69} :catch_6a
:goto_69
return-object v9
:catch_6a
move-exception v0
const-string v1, "Twitter"
invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_69
.end method
.method public b(JLjava/lang/String;)Ljava/util/List;
.registers 12
const-wide/16 v6, 0x1
const/4 v5, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z
move-result v0
if-eqz v0, :cond_64
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "per_page"
aput-object v2, v0, v1
const-string v1, "20"
aput-object v1, v0, v5
const/4 v1, 0x2
const-string v2, "q"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "page"
aput-object v2, v0, v1
const/4 v1, 0x5
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
add-long v3, p1, v6
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/users/search.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
:goto_63
return-object v0
:cond_64
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/users/search.json?per_page=20&q="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&page="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-long v1, p1, v6
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1, v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
goto :goto_63
.end method
.method public b(JZ)Ljava/util/List;
.registers 12
const-wide/16 v6, 0x0
const/16 v5, 0x14
const/4 v2, 0x2
const/4 v3, 0x0
const/4 v4, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
const-string v0, ""
if-eqz p3, :cond_5b
new-array v0, v2, [Ljava/lang/Object;
const-string v2, "count"
aput-object v2, v0, v3
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v4
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
cmp-long v2, p1, v6
if-lez v2, :cond_2e
const-string v2, "max_id"
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_2e
:goto_2e
:cond_2e
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/favorites/list.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, v2, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
:try_end_49
.catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_49} :catch_79
move-result-object v0
const-string v2, "error\":\"Not found"
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_85
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not found"
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_5b
new-array v0, v2, [Ljava/lang/Object;
const-string v2, "count"
aput-object v2, v0, v3
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v4
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
cmp-long v2, p1, v6
if-lez v2, :cond_2e
const-string v2, "since_id"
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2e
:catch_79
move-exception v0
invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Connection failed."
invoke-direct {v0, v1, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_85
const-string v2, "error\":\"Not authorized"
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_96
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_96
invoke-static {v0, v1}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/twidroid/model/twitter/c;J)Ljava/util/List;
.registers 9
const/4 v4, 0x1
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "page"
aput-object v3, v1, v2
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/retweeted_to_me.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
.registers 14
const/4 v7, 0x3
const/4 v4, 0x2
const/4 v3, 0x0
const/4 v6, 0x6
const/4 v5, 0x1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
const-wide/16 v0, 0x0
cmp-long v0, p4, v0
if-lez v0, :cond_bd
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/Object;
const-string v1, "count"
aput-object v1, v0, v3
aput-object p3, v0, v5
const-string v1, "since_id"
aput-object v1, v0, v4
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v0, v7
const/4 v1, 0x4
const-string v3, "include_rts"
aput-object v3, v0, v1
const/4 v1, 0x5
const-string v3, "true"
aput-object v3, v0, v1
const-string v1, "include_entities"
aput-object v1, v0, v6
const/4 v1, 0x7
const-string v3, "true"
aput-object v3, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
:goto_3a
const-string v1, "screen_name"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "Twitter"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "ACCOUNT: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Twitter"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "SCREEN_NAME: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "/statuses/user_timeline.json"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, p1, v1, v0, v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
const-string v3, "Twitter"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "USER_TIMELINE JSON: "
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_dd
move-object v0, v1
:goto_a2
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "error\":\"Not authorized"
invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e0
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
invoke-direct {v0, v1, v6}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_bd
new-array v0, v6, [Ljava/lang/Object;
const-string v1, "count"
aput-object v1, v0, v3
aput-object p3, v0, v5
const-string v1, "include_rts"
aput-object v1, v0, v4
const-string v1, "true"
aput-object v1, v0, v7
const/4 v1, 0x4
const-string v3, "include_entities"
aput-object v3, v0, v1
const/4 v1, 0x5
const-string v3, "true"
aput-object v3, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
goto/16 :goto_3a
:cond_dd
const-string v0, "EMPTY"
goto :goto_a2
:cond_e0
invoke-static {v1, v2}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/twidroid/model/twitter/d;I)Ljava/util/List;
.registers 7
const/4 v3, 0x1
if-nez p2, :cond_6
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->f()V
:cond_6
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "cursor"
aput-object v2, v0, v1
sget-wide v1, Lcom/twidroid/net/a/c/c;->H:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "list_id"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/members.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
.registers 11
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-wide v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/String;Ljava/lang/Integer;JZ)Ljava/util/List;
.registers 14
const-wide/16 v0, 0x0
const/4 v7, 0x6
const/4 v6, 0x1
sget-object v2, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
new-array v3, v7, [Ljava/lang/Object;
const/4 v4, 0x0
const-string v5, "count"
aput-object v5, v3, v4
aput-object p2, v3, v6
const/4 v4, 0x2
const-string v5, "max_id"
aput-object v5, v3, v4
const/4 v4, 0x3
cmp-long v5, p3, v0
if-lez v5, :cond_21
const-wide/16 v0, 0x1
sub-long v0, p3, v0
:cond_21
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v3, v4
const/4 v0, 0x4
const-string v1, "include_entities"
aput-object v1, v3, v0
const/4 v0, 0x5
const-string v1, "true"
aput-object v1, v3, v0
invoke-static {v3}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "/statuses/home_timeline.json"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, v6}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
const-string v1, "error\":\"Not authorized"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_60
const-string v1, "error\":\"Could not authenticate with OAuth"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_68
:cond_60
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
invoke-direct {v0, v1, v7}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_68
invoke-static {v0, v2, p5}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;IZ)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/util/Date;)Ljava/util/List;
.registers 7
const/4 v4, 0x1
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "since"
aput-object v2, v0, v1
invoke-direct {p0, p1}, Lcom/twidroid/net/a/c/c;->c(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v4
const/4 v1, 0x2
const-string v2, "include_entities"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "true"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
sget-object v1, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/mentions_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v0, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0, v1}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public b(J)V
.registers 6
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "id"
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_10
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/favorites/create.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_2c
return-void
:catch_2c
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public b(Lcom/twidroid/model/twitter/d;)V
.registers 6
const/4 v3, 0x1
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "slug"
aput-object v2, v0, v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
const/4 v1, 0x2
const-string v2, "owner_screen_name"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "/lists/subscribers/create"
invoke-direct {p0, v1}, Lcom/twidroid/net/a/c/c;->B(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "Twitter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "::listSubscribe("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "): "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b(Lcom/twidroid/model/twitter/d;J)V
.registers 8
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "user_id"
aput-object v2, v0, v1
new-instance v1, Ljava/lang/Long;
invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "slug"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "owner_screen_name"
sget-object v2, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/members/destroy.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
return-void
.end method
.method public b(Ljava/lang/String;Z)V
.registers 7
const/4 v3, 0x1
const/4 v0, 0x4
new-array v1, v0, [Ljava/lang/Object;
const/4 v0, 0x0
const-string v2, "name"
aput-object v2, v1, v0
aput-object p1, v1, v3
const/4 v0, 0x2
const-string v2, "mode"
aput-object v2, v1, v0
const/4 v2, 0x3
if-eqz p2, :cond_36
const-string v0, "public"
:goto_15
aput-object v0, v1, v2
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/create.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
return-void
:cond_36
const-string v0, "private"
goto :goto_15
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;)Z
.registers 6
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/blocks/ids.json"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
:try_end_20
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_22
move-result v0
:goto_21
return v0
:catch_22
move-exception v0
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
const/4 v0, 0x0
goto :goto_21
.end method
.method public b(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Z)[Lorg/apache/http/Header;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/twidroid/model/twitter/c;Z)[Lorg/apache/http/Header;
.registers 7
const/4 v1, 0x1
const/4 v3, 0x0
const-string v0, "https://api.twitter.com/1.1/account/verify_credentials.%s"
if-eqz p2, :cond_17
const-string v0, "https://api.twitter.com/1.1/account/verify_credentials.%s"
new-array v1, v1, [Ljava/lang/Object;
const-string v2, "xml"
aput-object v2, v1, v3
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_12
invoke-direct {p0, p1, v0}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)[Lorg/apache/http/Header;
move-result-object v0
return-object v0
:cond_17
const-string v0, "https://api.twitter.com/1.1/account/verify_credentials.%s"
new-array v1, v1, [Ljava/lang/Object;
const-string v2, "json"
aput-object v2, v1, v3
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_12
.end method
.method public c(Lcom/twidroid/model/twitter/c;J)Lcom/twidroid/model/twitter/Tweet;
.registers 9
const/16 v4, 0x8
const/4 v3, 0x1
if-eqz p1, :cond_47
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:goto_8
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "source"
aput-object v2, v0, v1
const-string v1, "twidroid"
aput-object v1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/statuses/retweet/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_4f
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Connection failed."
invoke-direct {v0, v1, v3}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_47
const-string v0, "Twitter"
const-string v1, "Native retweet with default account"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
:cond_4f
const-string v1, "Share validations failed"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_61
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Already retweeted."
const/16 v2, 0xa
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_61
const-string v1, "error\":\"Not found"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_71
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Already retweeted."
invoke-direct {v0, v1, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:try_start_71
:cond_71
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
:try_end_79
.catch Lorg/json/JSONException; {:try_start_71 .. :try_end_79} :catch_7b
.catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_84
move-result-object v0
return-object v0
:catch_7b
move-exception v0
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Already retweeted."
invoke-direct {v0, v1, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:catch_84
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public c(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
.registers 5
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "screen_name"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/friendships/destroy.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
:try_start_28
new-instance v1, Lcom/twidroid/model/twitter/User;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_33
.catch Lorg/json/JSONException; {:try_start_28 .. :try_end_33} :catch_34
return-object v1
:catch_34
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public c(Ljava/lang/String;Z)Lcom/twidroid/model/twitter/d;
.registers 7
const/4 v1, 0x0
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "slug"
aput-object v3, v0, v2
const/4 v2, 0x1
invoke-static {p1}, Lcom/twidroid/model/twitter/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v0, v2
const/4 v2, 0x2
const-string v3, "owner_screen_name"
aput-object v3, v0, v2
const/4 v2, 0x3
invoke-static {p1}, Lcom/twidroid/model/twitter/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v0, v2
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/lists/show.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v0, p2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_43
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_45
:cond_43
move-object v0, v1
:goto_44
return-object v0
:try_start_45
:cond_45
new-instance v0, Lcom/twidroid/model/twitter/d;
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-direct {v0, v3, v2}, Lcom/twidroid/model/twitter/d;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/c;)V
:try_end_53
.catch Lorg/json/JSONException; {:try_start_45 .. :try_end_53} :catch_54
goto :goto_44
:catch_54
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
move-object v0, v1
goto :goto_44
.end method
.method public c(JLjava/lang/String;)Lcom/twidroid/net/a/c/i;
.registers 8
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
const/4 v1, 0x1
aput-object p3, v0, v1
const/4 v1, 0x2
const-string v2, "cursor"
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/followers/ids.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v2
invoke-virtual {p0, v1, v0, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/c;->E(Ljava/lang/String;)[J
move-result-object v0
new-instance v1, Lcom/twidroid/net/a/c/i;
invoke-direct {v1, v0}, Lcom/twidroid/net/a/c/i;-><init>([J)V
invoke-virtual {v1, p1, p2}, Lcom/twidroid/net/a/c/i;->a(J)V
sget-wide v2, Lcom/twidroid/net/a/c/c;->H:J
invoke-virtual {v1, v2, v3}, Lcom/twidroid/net/a/c/i;->b(J)V
return-object v1
.end method
.method public c(JZ)Lcom/twidroid/net/a/c/i;
.registers 8
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "cursor"
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/blocks/ids.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, p3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/c;->E(Ljava/lang/String;)[J
move-result-object v0
new-instance v1, Lcom/twidroid/net/a/c/i;
invoke-direct {v1, v0}, Lcom/twidroid/net/a/c/i;-><init>([J)V
invoke-virtual {v1, p1, p2}, Lcom/twidroid/net/a/c/i;->a(J)V
sget-wide v2, Lcom/twidroid/net/a/c/c;->H:J
invoke-virtual {v1, v2, v3}, Lcom/twidroid/net/a/c/i;->b(J)V
return-object v1
.end method
.method public c()Ljava/util/List;
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const-string v3, "cursor"
aput-object v3, v2, v1
const-string v3, "0"
aput-object v3, v2, v0
const/4 v3, 0x2
const-string v4, "include_entities"
aput-object v4, v2, v3
const/4 v3, 0x3
const-string v4, "true"
aput-object v4, v2, v3
invoke-static {v2}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->k()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_51
iget-object v3, p0, Lcom/twidroid/net/a/c/c;->M:Ljava/lang/String;
if-eqz v3, :cond_51
:goto_25
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "/statuses/public_timeline.json"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
const-string v1, "error\":\"Not authorized"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_53
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Not authorized"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_51
move v0, v1
goto :goto_25
:cond_53
const/4 v1, -0x1
invoke-static {v0, v1}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public c(Lcom/twidroid/model/twitter/d;)V
.registers 6
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "_method"
aput-object v2, v0, v1
const-string v1, "DELETE"
aput-object v1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "list_id"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/destroy.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
return-void
.end method
.method public c(J)Z
.registers 7
const/4 v3, 0x1
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "id"
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/direct_messages/destroy.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
return v3
.end method
.method public c(Lcom/twidroid/model/twitter/d;J)Z
.registers 5
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {p0, v0, p1, p2, p3}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/d;J)Z
move-result v0
return v0
.end method
.method public c(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/c;Z)[Lorg/apache/http/Header;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
.registers 6
const/4 v3, 0x1
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
aput-object p1, v0, v3
const/4 v1, 0x2
const-string v2, "include_entities"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "false"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "skip_status"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "true"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/blocks/create.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
:try_start_3e
new-instance v1, Lcom/twidroid/model/twitter/User;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_49
.catch Lorg/json/JSONException; {:try_start_3e .. :try_end_49} :catch_4a
return-object v1
:catch_4a
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public d()Lcom/ubermedia/net/b/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
return-object v0
.end method
.method public d(Lcom/twidroid/model/twitter/c;)Ljava/util/List;
.registers 11
const/4 v8, 0x4
const/4 v7, 0x0
const/4 v6, 0x1
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const-wide/16 v2, -0x1
const/4 v4, 0x6
new-array v4, v4, [Ljava/lang/Object;
const-string v5, "cursor"
aput-object v5, v4, v7
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v4, v6
const/4 v2, 0x2
const-string v3, "skip_status"
aput-object v3, v4, v2
const/4 v2, 0x3
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v4, v2
const-string v2, "include_entities"
aput-object v2, v4, v8
const/4 v2, 0x5
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v4, v2
invoke-static {v4}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
:cond_39
:try_start_39
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/mutes/users/list.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {p0, p1, v3, v2, v4}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
:try_end_54
.catchall {:try_start_39 .. :try_end_54} :catchall_7b
move-result-object v3
:try_start_55
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v5, "next_cursor"
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v4
invoke-static {v3}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:try_end_67
.catchall {:try_start_55 .. :try_end_67} :catchall_7b
.catch Lorg/json/JSONException; {:try_start_55 .. :try_end_67} :catch_71
const-wide/16 v6, 0x0
cmp-long v3, v4, v6
if-nez v3, :cond_39
invoke-virtual {p0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
return-object v0
:catch_71
move-exception v0
:try_start_72
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v2, "Can\'t parse JSON"
const/4 v3, 0x4
invoke-direct {v0, v2, v3}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:catchall_7b
:try_end_7b
.catchall {:try_start_72 .. :try_end_7b} :catchall_7b
move-exception v0
invoke-virtual {p0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
throw v0
.end method
.method public d(J)V
.registers 6
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
:try_start_7
const-string v1, "id"
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/favorites/destroy.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_2c
return-void
:catch_2c
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public e()J
.registers 3
sget-wide v0, Lcom/twidroid/net/a/c/c;->H:J
return-wide v0
.end method
.method public e(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
.registers 6
const/4 v3, 0x1
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
aput-object p1, v0, v3
const/4 v1, 0x2
const-string v2, "include_entities"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "false"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "skip_status"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "true"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/blocks/destroy.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
:try_start_3e
new-instance v1, Lcom/twidroid/model/twitter/User;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_49
.catch Lorg/json/JSONException; {:try_start_3e .. :try_end_49} :catch_4a
return-object v1
:catch_4a
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public e(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
.registers 14
const/4 v11, 0x2
const/4 v5, 0x0
const/4 v10, 0x1
const/4 v7, 0x0
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const-string v1, "x_auth_username"
aput-object v1, v0, v7
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v10
const-string v1, "x_auth_password"
aput-object v1, v0, v11
const/4 v1, 0x3
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->i()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "x_auth_mode"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "client_auth"
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v8
sput-boolean v10, Lcom/twidroid/net/a/c/c;->F:Z
const-string v2, "https://api.twitter.com/oauth/access_token"
if-eqz v8, :cond_11e
invoke-interface {v8}, Ljava/util/Map;->size()I
move-result v0
if-eqz v0, :cond_11e
invoke-interface {v8}, Ljava/util/Map;->size()I
move-result v0
new-array v4, v0, [Lcom/ubermedia/net/c;
invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
move v3, v7
:goto_45
:cond_45
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_70
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_45
new-instance v9, Lcom/ubermedia/net/c;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v9, v1, v0}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v9, v4, v3
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_45
:cond_70
move-object v3, v4
:goto_71
invoke-virtual {p1, v5, v5}, Lcom/twidroid/model/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;)V
new-array v9, v11, [Ljava/lang/Object;
const-string v0, "Authorization"
aput-object v0, v9, v7
iget-object v0, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
const-string v1, "POST"
invoke-static {}, Lcom/twidroid/net/a/c/c;->h()J
move-result-wide v4
move-object v6, p1
invoke-virtual/range {v0 .. v6}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/ubermedia/net/c;JLcom/ubermedia/net/b/d;)Ljava/lang/String;
move-result-object v0
aput-object v0, v9, v10
invoke-static {v9}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v5
iget-object v6, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
move-object v1, p0
move v3, v7
move-object v4, v8
invoke-virtual/range {v1 .. v6}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/b/c;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a0
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Connection failed"
invoke-direct {v0, v1, v10}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_a0
const-string v1, "Invalid user name or password"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b2
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Invalid user name or password"
const/16 v2, 0xd
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_b2
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0, v1}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Ljava/util/List;)V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_be
:cond_be
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_11b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/net/c;
invoke-virtual {v0}, Lcom/ubermedia/net/c;->a()Ljava/lang/String;
move-result-object v2
const-string v3, "oauth_token"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_dd
invoke-virtual {v0}, Lcom/ubermedia/net/c;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Lcom/twidroid/model/twitter/c;->a(Ljava/lang/String;)V
:cond_dd
invoke-virtual {v0}, Lcom/ubermedia/net/c;->a()Ljava/lang/String;
move-result-object v2
const-string v3, "oauth_token_secret"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_f0
invoke-virtual {v0}, Lcom/ubermedia/net/c;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Lcom/twidroid/model/twitter/c;->b(Ljava/lang/String;)V
:cond_f0
invoke-virtual {v0}, Lcom/ubermedia/net/c;->a()Ljava/lang/String;
move-result-object v2
const-string v3, "user_id"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_107
invoke-virtual {v0}, Lcom/ubermedia/net/c;->b()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
invoke-virtual {p1, v2, v3}, Lcom/twidroid/model/twitter/c;->a(J)J
:cond_107
invoke-virtual {v0}, Lcom/ubermedia/net/c;->a()Ljava/lang/String;
move-result-object v2
const-string v3, "screen_name"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_be
invoke-virtual {v0}, Lcom/ubermedia/net/c;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/twidroid/model/twitter/c;->c(Ljava/lang/String;)V
goto :goto_be
:cond_11b
sput-boolean v7, Lcom/twidroid/net/a/c/c;->F:Z
return-object p1
:cond_11e
move-object v3, v5
goto/16 :goto_71
.end method
.method public e(J)Z
.registers 7
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "user_id"
aput-object v2, v0, v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/users/report_spam.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "Not found"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_4d
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "User not found."
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
:cond_4d
return v3
.end method
.method public f()V
.registers 3
const-wide/16 v0, -0x1
sput-wide v0, Lcom/twidroid/net/a/c/c;->H:J
return-void
.end method
.method public f(J)Z
.registers 7
const/4 v3, 0x1
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/statuses/destroy/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "You may not delete another user\'s status."
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_3d
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "You may not delete another user\'s status."
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
:cond_3d
return v3
.end method
.method public f(Ljava/lang/String;)Z
.registers 6
const/4 v3, 0x1
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "screen_name"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/friendships/create.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
:try_start_28
new-instance v1, Lcom/twidroid/model/twitter/User;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_33
.catch Lorg/json/JSONException; {:try_start_28 .. :try_end_33} :catch_34
:goto_33
return v3
:catch_34
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_33
.end method
.method public g()Lcom/twidroid/model/twitter/c;
.registers 2
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method public g(J)Ljava/util/List;
.registers 4
const/16 v0, 0xc8
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/twidroid/net/a/c/c;->a(JLjava/lang/Integer;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public g(Ljava/lang/String;)Ljava/util/List;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/users/suggestions/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".json"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public h(Ljava/lang/String;)Lcom/twidroid/model/twitter/Tweet;
.registers 8
const/4 v5, 0x0
const/4 v4, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
sget-boolean v1, Lcom/twidroid/net/a/c/c;->z:Z
if-nez v1, :cond_14
if-nez p1, :cond_14
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_14
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const-string v2, "count"
aput-object v2, v1, v5
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
const-string v2, "screen_name"
invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/statuses/user_timeline.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
return-object v0
.end method
.method public h(J)Ljava/util/List;
.registers 6
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "since_id"
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/c;->b(Ljava/util/Map;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public i(Ljava/lang/String;)Lcom/ubermedia/model/twitter/c;
.registers 8
const/4 v5, 0x4
const/4 v3, 0x1
new-array v0, v5, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "source_screen_name"
aput-object v2, v0, v1
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
const/4 v1, 0x2
const-string v2, "target_screen_name"
aput-object v2, v0, v1
const/4 v1, 0x3
aput-object p1, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/friendships/show.json"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_44
const-string v2, "Invalid / used nonce"
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_95
:cond_44
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/friendships/show.json"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
move-object v1, v0
:try_start_60
:goto_60
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "relationship"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
new-instance v2, Lcom/ubermedia/model/twitter/c;
invoke-direct {v2, v0}, Lcom/ubermedia/model/twitter/c;-><init>(Lorg/json/JSONObject;)V
:try_end_70
.catch Lorg/json/JSONException; {:try_start_60 .. :try_end_70} :catch_71
return-object v2
:catch_71
move-exception v0
const-string v2, "Twitter"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "json page: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Json parser failed at friendship method"
invoke-direct {v0, v1, v5}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_95
move-object v1, v0
goto :goto_60
.end method
.method public i()Ljava/util/List;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->n()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public i(J)Ljava/util/List;
.registers 8
const/4 v4, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "page"
aput-object v3, v1, v2
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
const-string v2, "screen_name"
sget-object v3, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/favorites/list.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public j(J)Lcom/twidroid/model/twitter/Tweet;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/statuses/show/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".json"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
:try_start_27
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
:try_end_2f
.catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2f} :catch_31
move-result-object v0
return-object v0
:catch_31
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public j(Ljava/lang/String;)Ljava/util/ArrayList;
.registers 8
const/4 v5, 0x1
const/4 v1, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const-string v3, "screen_name"
aput-object v3, v2, v1
aput-object p1, v2, v5
invoke-static {v2}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/friendships/lookup.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3, v2, v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_39
const-string v3, "Invalid / used nonce"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_3a
:cond_39
return-object v0
:try_start_3a
:cond_3a
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
:goto_3f
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v4
if-ge v1, v4, :cond_39
new-instance v4, Lcom/ubermedia/model/twitter/a;
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
invoke-direct {v4, v5}, Lcom/ubermedia/model/twitter/a;-><init>(Lorg/json/JSONObject;)V
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_51
.catch Lorg/json/JSONException; {:try_start_3a .. :try_end_51} :catch_54
add-int/lit8 v1, v1, 0x1
goto :goto_3f
:catch_54
move-exception v0
const-string v1, "Twitter"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "json page: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Json parser failed at friendship method"
const/4 v2, 0x4
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
.end method
.method public j()Ljava/util/List;
.registers 5
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v2, "screen_name"
sget-object v3, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/favorites/list.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, v2, v1, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/User;
move-result-object v0
return-object v0
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/c;->L:Ljava/lang/String;
return-object v0
.end method
.method public k(J)V
.registers 6
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/saved_searches/destroy/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "error\":\"Not found"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_35
:cond_35
return-void
.end method
.method public l()I
.registers 2
const/16 v0, 0xf
return v0
.end method
.method public l(J)Lcom/twidroid/net/a/c/i;
.registers 7
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "cursor"
aput-object v2, v0, v1
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/mutes/users/ids.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/c;->E(Ljava/lang/String;)[J
move-result-object v0
new-instance v1, Lcom/twidroid/net/a/c/i;
invoke-direct {v1, v0}, Lcom/twidroid/net/a/c/i;-><init>([J)V
invoke-virtual {v1, p1, p2}, Lcom/twidroid/net/a/c/i;->a(J)V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->e()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/twidroid/net/a/c/i;->b(J)V
return-object v1
.end method
.method public l(Ljava/lang/String;)Z
.registers 6
const/4 v3, 0x1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0x1e
if-le v0, v1, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Status text must be 30 characters or less"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "location"
aput-object v2, v0, v1
aput-object p1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/account/update_profile.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
return v3
.end method
.method public m()I
.registers 2
const/16 v0, 0xf
return v0
.end method
.method public m(Ljava/lang/String;)Z
.registers 6
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "description"
aput-object v2, v0, v1
aput-object p1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/account/update_profile.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
return v3
.end method
.method public n()Ljava/util/List;
.registers 7
const/4 v5, 0x1
sget-object v0, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v0
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const-string v4, "count"
aput-object v4, v2, v3
const/16 v3, 0xc8
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v2}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/direct_messages.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3, v2, v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v2
invoke-static {v2, v0, v1}, Lcom/twidroid/model/twitter/DirectMessage;->a(Ljava/lang/String;J)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public n(Ljava/lang/String;)Z
.registers 6
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "url"
aput-object v2, v0, v1
aput-object p1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/account/update_profile.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
return v3
.end method
.method public o()J
.registers 3
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->k()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
move-result-object v0
iget-wide v0, v0, Lcom/twidroid/model/twitter/User;->b:J
return-wide v0
.end method
.method public o(Ljava/lang/String;)Lcom/twidroid/model/twitter/b;
.registers 6
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "query"
aput-object v2, v0, v1
aput-object p1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/saved_searches/create.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
const-string v1, "error\":\"Not found"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_3a
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "There was an error creating your search."
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
:cond_3a
const-string v1, "There was an error creating your search."
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_4a
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "There was an error creating your search."
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
:cond_4a
invoke-static {v0}, Lcom/twidroid/model/twitter/b;->a(Ljava/lang/String;)Lcom/twidroid/model/twitter/b;
move-result-object v0
return-object v0
.end method
.method public p(Ljava/lang/String;)Ljava/lang/String;
.registers 9
iget-object v0, p0, Lcom/twidroid/net/a/c/c;->G:Lcom/ubermedia/net/b/c;
const-string v1, "POST"
const/4 v3, 0x0
invoke-static {}, Lcom/twidroid/net/a/c/c;->h()J
move-result-wide v4
sget-object v6, Lcom/twidroid/net/a/c/c;->v:Lcom/twidroid/model/twitter/c;
move-object v2, p1
invoke-virtual/range {v0 .. v6}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/ubermedia/net/c;JLcom/ubermedia/net/b/d;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public p()Z
.registers 5
const/4 v3, 0x0
const/4 v0, 0x1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/account/verify_credentials.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_3a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/account/verify_credentials.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
:cond_3a
if-eqz v1, :cond_4c
const-string v2, "Could not authenticate"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_4c
const-string v2, "Incorrect signature"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_54
:cond_4c
const-string v0, "Twitter"
const-string v1, "Authentication failed"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:cond_54
return v0
.end method
.method public q()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/saved_searches/list.json"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public q(Ljava/lang/String;)Ljava/util/List;
.registers 6
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
aput-object p1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "/lists/list"
invoke-direct {p0, v1}, Lcom/twidroid/net/a/c/c;->B(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/model/twitter/d;->a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public r()Lcom/ubermedia/model/twitter/e;
.registers 7
const/4 v5, -0x1
:try_start_1
new-instance v0, Lcom/ubermedia/model/twitter/e;
invoke-direct {v0}, Lcom/ubermedia/model/twitter/e;-><init>()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/help/configuration.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {p0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "photo_size_limit"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v3
invoke-virtual {v0, v3, v4}, Lcom/ubermedia/model/twitter/e;->a(J)V
const-string v1, "max_media_per_upload"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/ubermedia/model/twitter/e;->b(I)V
const-string v1, "characters_reserved_per_media"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/ubermedia/model/twitter/e;->a(I)V
const-string v1, "Twitter"
const-string v2, "Updated native image configuration OK"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_4a
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_4b
return-object v0
:catch_4b
move-exception v0
const-string v0, "Twitter"
const-string v1, "Error getting calling help/configuration.json"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/ubermedia/model/twitter/e;
const-wide/16 v1, -0x1
invoke-direct {v0, v5, v1, v2, v5}, Lcom/ubermedia/model/twitter/e;-><init>(IJI)V
goto :goto_4a
.end method
.method public r(Ljava/lang/String;)Ljava/util/List;
.registers 6
const/4 v3, 0x1
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
aput-object p1, v0, v3
const/4 v1, 0x2
const-string v2, "count"
aput-object v2, v0, v1
const/4 v1, 0x3
sget v2, Lcom/twidroid/b/a/b;->b:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/subscriptions.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/model/twitter/d;->a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public s()Ljava/util/List;
.registers 9
const/4 v1, 0x2
const/4 v0, 0x0
const/4 v4, 0x1
new-array v1, v1, [Ljava/lang/Object;
const-string v2, "cursor"
aput-object v2, v1, v0
const-string v2, "-1"
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/friendships/incoming.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v1, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
:try_start_2c
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "ids"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-nez v3, :cond_48
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_47
return-object v0
:cond_48
:goto_48
if-ge v0, v3, :cond_8d
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getLong(I)J
move-result-wide v5
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ","
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v4, "Twitter"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Found ID: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getLong(I)J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " ids length: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_48
:cond_8d
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "user_id"
aput-object v3, v0, v2
const/4 v2, 0x1
aput-object v1, v0, v2
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/users/lookup.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {p0, v1, v0, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/User;->a(Ljava/lang/String;)Ljava/util/List;
:try_end_bb
.catch Lorg/json/JSONException; {:try_start_2c .. :try_end_bb} :catch_bd
move-result-object v0
goto :goto_47
:catch_bd
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
const/4 v0, 0x0
goto :goto_47
.end method
.method public s(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x1
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v2, "screen_name"
aput-object v2, v0, v1
aput-object p1, v0, v3
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/memberships.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
return-void
.end method
.method public t(Ljava/lang/String;)Lcom/twidroid/model/twitter/d;
.registers 6
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
const-string v1, "list_id"
invoke-static {p1}, Lcom/twidroid/model/twitter/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/lists/show.json"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {p0, v1, v0, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v1
:try_start_2c
new-instance v0, Lcom/twidroid/model/twitter/d;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-direct {v0, v2, v3}, Lcom/twidroid/model/twitter/d;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/c;)V
:try_end_3a
.catch Lorg/json/JSONException; {:try_start_2c .. :try_end_3a} :catch_3b
return-object v0
:catch_3b
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
new-instance v0, Lcom/ubermedia/net/a/a/a;
invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public t()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/c;->O:Ljava/lang/String;
return-object v0
.end method
.method public u(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
.registers 5
if-nez p1, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "http://twitter.com/friend_requests/accept/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
:try_start_27
new-instance v1, Lcom/twidroid/model/twitter/User;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_32
.catch Lorg/json/JSONException; {:try_start_27 .. :try_end_32} :catch_33
return-object v1
:catch_33
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public u()V
.registers 6
const-wide/16 v3, -0x1
:try_start_2
const-string v0, "http://api.twitter.com/1/account/rate_limit_status.json"
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v0, "remaining_hits"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
int-to-long v0, v0
sput-wide v0, Lcom/twidroid/net/a/c/c;->h:J
:goto_18
:try_end_18
.catch Lcom/ubermedia/net/a/a/a; {:try_start_2 .. :try_end_18} :catch_19
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_18} :catch_1d
return-void
:catch_19
move-exception v0
sput-wide v3, Lcom/twidroid/net/a/c/c;->h:J
goto :goto_18
:catch_1d
move-exception v0
sput-wide v3, Lcom/twidroid/net/a/c/c;->h:J
goto :goto_18
.end method
.method public v(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
.registers 5
if-nez p1, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Lcom/twidroid/net/a/c/c;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "http://twitter.com/friend_requests/deny/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, v1, v2, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
move-result-object v0
:try_start_27
new-instance v1, Lcom/twidroid/model/twitter/User;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/Tweet;)V
:try_end_32
.catch Lorg/json/JSONException; {:try_start_27 .. :try_end_32} :catch_33
return-object v1
:catch_33
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public v()V
.registers 12
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/net/a/c/c;->t()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/application/rate_limit_status.json"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v0
:try_start_1d
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v0, "resources"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v6
invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v7
sget-object v0, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
:cond_31
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_75
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v8
invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v9
:goto_45
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
sget-object v10, Lcom/twidroid/net/a/c/c;->l:Ljava/util/Map;
new-instance v0, Lcom/twidroid/net/a/c/f;
const-string v2, "remaining"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
const-string v3, "reset"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v3
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/a/c/f;-><init>(Lcom/twidroid/net/a/c/c;IJLjava/lang/String;)V
invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_6c
.catch Lorg/json/JSONException; {:try_start_1d .. :try_end_6c} :catch_6d
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_6c} :catch_76
goto :goto_45
:catch_6d
move-exception v0
const-string v1, "Twitter"
const-string v2, "Cant parse rate limits"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_75
:cond_75
return-void
:catch_76
move-exception v0
const-string v1, "Twitter"
const-string v2, "Unexpected error"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_75
.end method
.method public w(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/a/c/c;->O:Ljava/lang/String;
return-void
.end method
.method public w()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
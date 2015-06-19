.class public Lcom/facebook/as;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"
.field static final synthetic b:Z = false
.field private static final i:I = 0xbe
.field private static final j:Ljava/lang/String; = "code"
.field private static final k:Ljava/lang/String; = "body"
.field private static final l:Ljava/lang/String; = "Response"
.field private static final m:Ljava/lang/String; = "ResponseCache"
.field private static n:Lcom/facebook/b/b;
.field private final c:Ljava/net/HttpURLConnection;
.field private final d:Lcom/facebook/c/c;
.field private final e:Lcom/facebook/c/h;
.field private final f:Z
.field private final g:Lcom/facebook/w;
.field private final h:Lcom/facebook/ai;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/as;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/as;->b:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/c/c;Z)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/as;->h:Lcom/facebook/ai;
iput-object p2, p0, Lcom/facebook/as;->c:Ljava/net/HttpURLConnection;
iput-object p3, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
iput-object v0, p0, Lcom/facebook/as;->e:Lcom/facebook/c/h;
iput-boolean p4, p0, Lcom/facebook/as;->f:Z
iput-object v0, p0, Lcom/facebook/as;->g:Lcom/facebook/w;
return-void
.end method
.method constructor <init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/c/h;Z)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/as;->h:Lcom/facebook/ai;
iput-object p2, p0, Lcom/facebook/as;->c:Ljava/net/HttpURLConnection;
iput-object v0, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
iput-object p3, p0, Lcom/facebook/as;->e:Lcom/facebook/c/h;
iput-boolean p4, p0, Lcom/facebook/as;->f:Z
iput-object v0, p0, Lcom/facebook/as;->g:Lcom/facebook/w;
return-void
.end method
.method constructor <init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/w;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/as;->h:Lcom/facebook/ai;
iput-object p2, p0, Lcom/facebook/as;->c:Ljava/net/HttpURLConnection;
iput-object v0, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
iput-object v0, p0, Lcom/facebook/as;->e:Lcom/facebook/c/h;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/as;->f:Z
iput-object p3, p0, Lcom/facebook/as;->g:Lcom/facebook/w;
return-void
.end method
.method private static a(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/as;
.registers 8
instance-of v0, p2, Lorg/json/JSONObject;
if-eqz v0, :cond_4f
check-cast p2, Lorg/json/JSONObject;
invoke-static {p2, p4, p1}, Lcom/facebook/w;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/w;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v1}, Lcom/facebook/w;->e()I
move-result v0
const/16 v2, 0xbe
if-ne v0, v2, :cond_1d
invoke-virtual {p0}, Lcom/facebook/ai;->f()Lcom/facebook/aw;
move-result-object v0
if-eqz v0, :cond_1d
invoke-virtual {v0}, Lcom/facebook/aw;->j()V
:cond_1d
new-instance v0, Lcom/facebook/as;
invoke-direct {v0, p0, p1, v1}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/w;)V
:goto_22
return-object v0
:cond_23
const-string v0, "body"
const-string v1, "FACEBOOK_NON_JSON_RESULT"
invoke-static {p2, v0, v1}, Lcom/facebook/b/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lorg/json/JSONObject;
if-eqz v1, :cond_3b
check-cast v0, Lorg/json/JSONObject;
invoke-static {v0}, Lcom/facebook/c/d;->a(Lorg/json/JSONObject;)Lcom/facebook/c/c;
move-result-object v1
new-instance v0, Lcom/facebook/as;
invoke-direct {v0, p0, p1, v1, p3}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/c/c;Z)V
goto :goto_22
:cond_3b
instance-of v1, v0, Lorg/json/JSONArray;
if-eqz v1, :cond_4d
check-cast v0, Lorg/json/JSONArray;
const-class v1, Lcom/facebook/c/c;
invoke-static {v0, v1}, Lcom/facebook/c/d;->a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/c/h;
move-result-object v1
new-instance v0, Lcom/facebook/as;
invoke-direct {v0, p0, p1, v1, p3}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/c/h;Z)V
goto :goto_22
:cond_4d
sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
:cond_4f
sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
if-ne p2, v0, :cond_5d
new-instance v1, Lcom/facebook/as;
const/4 v0, 0x0
check-cast v0, Lcom/facebook/c/c;
invoke-direct {v1, p0, p1, v0, p3}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/c/c;Z)V
move-object v0, v1
goto :goto_22
:cond_5d
new-instance v0, Lcom/facebook/t;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Got unexpected object type in response, class: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method static a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/aq;Z)Ljava/util/List;
.registers 14
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v7, 0x0
invoke-static {p0}, Lcom/facebook/b/p;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/facebook/af;->c:Lcom/facebook/af;
const-string v2, "Response"
const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"
new-array v4, v9, [Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v7
aput-object v0, v4, v8
invoke-static {v1, v2, v3, v4}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v1, Lorg/json/JSONTokener;
invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v1
invoke-static {p1, p2, v1, p3}, Lcom/facebook/as;->a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
move-result-object v1
sget-object v2, Lcom/facebook/af;->a:Lcom/facebook/af;
const-string v3, "Response"
const-string v4, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"
const/4 v5, 0x3
new-array v5, v5, [Ljava/lang/Object;
invoke-virtual {p2}, Lcom/facebook/aq;->b()Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v7
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v5, v8
aput-object v1, v5, v9
invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
return-object v1
.end method
.method static a(Ljava/net/HttpURLConnection;Lcom/facebook/aq;)Ljava/util/List;
.registers 10
const/4 v2, 0x0
const/4 v6, 0x1
const/4 v5, 0x0
instance-of v0, p1, Lcom/facebook/b/a;
if-eqz v0, :cond_ff
move-object v0, p1
check-cast v0, Lcom/facebook/b/a;
invoke-static {}, Lcom/facebook/as;->g()Lcom/facebook/b/b;
move-result-object v3
invoke-virtual {v0}, Lcom/facebook/b/a;->k()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_26
invoke-virtual {p1}, Lcom/facebook/aq;->size()I
move-result v4
if-ne v4, v6, :cond_44
invoke-virtual {p1, v5}, Lcom/facebook/aq;->b(I)Lcom/facebook/ai;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/ai;->o()Ljava/lang/String;
move-result-object v1
:goto_26
:cond_26
invoke-virtual {v0}, Lcom/facebook/b/a;->l()Z
move-result v0
if-nez v0, :cond_f9
if-eqz v3, :cond_f9
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_f9
:try_start_34
invoke-virtual {v3, v1}, Lcom/facebook/b/b;->a(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_37
.catchall {:try_start_34 .. :try_end_37} :catchall_85
.catch Lcom/facebook/t; {:try_start_34 .. :try_end_37} :catch_6a
.catch Lorg/json/JSONException; {:try_start_34 .. :try_end_37} :catch_73
.catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_7c
move-result-object v2
if-eqz v2, :cond_4e
const/4 v0, 0x0
const/4 v4, 0x1
:try_start_3c
invoke-static {v2, v0, p1, v4}, Lcom/facebook/as;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/aq;Z)Ljava/util/List;
:try_end_3f
.catchall {:try_start_3c .. :try_end_3f} :catchall_85
.catch Lcom/facebook/t; {:try_start_3c .. :try_end_3f} :catch_f5
.catch Lorg/json/JSONException; {:try_start_3c .. :try_end_3f} :catch_73
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_7c
move-result-object v0
invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
:goto_43
return-object v0
:cond_44
sget-object v4, Lcom/facebook/af;->a:Lcom/facebook/af;
const-string v5, "ResponseCache"
const-string v6, "Not using cache for cacheable request because no key was specified"
invoke-static {v4, v5, v6}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
:cond_4e
invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
move-object v0, v3
move-object v7, v1
move-object v1, v2
move-object v2, v7
:goto_55
:try_start_55
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
const/16 v4, 0x190
if-lt v3, v4, :cond_8a
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v1
:cond_61
:goto_61
const/4 v0, 0x0
invoke-static {v1, p0, p1, v0}, Lcom/facebook/as;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/aq;Z)Ljava/util/List;
:try_end_65
.catchall {:try_start_55 .. :try_end_65} :catchall_f0
.catch Lcom/facebook/t; {:try_start_55 .. :try_end_65} :catch_9c
.catch Lorg/json/JSONException; {:try_start_55 .. :try_end_65} :catch_b4
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_65} :catch_d2
move-result-object v0
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
goto :goto_43
:catch_6a
move-exception v0
move-object v0, v2
:goto_6c
invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
move-object v2, v1
move-object v1, v0
move-object v0, v3
goto :goto_55
:catch_73
move-exception v0
invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
move-object v0, v3
move-object v7, v1
move-object v1, v2
move-object v2, v7
goto :goto_55
:catch_7c
move-exception v0
invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
move-object v0, v3
move-object v7, v1
move-object v1, v2
move-object v2, v7
goto :goto_55
:catchall_85
move-exception v0
invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
throw v0
:cond_8a
:try_start_8a
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
if-eqz v0, :cond_61
if-eqz v2, :cond_61
if-eqz v1, :cond_61
invoke-virtual {v0, v2, v1}, Lcom/facebook/b/b;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
:try_end_97
.catchall {:try_start_8a .. :try_end_97} :catchall_f0
.catch Lcom/facebook/t; {:try_start_8a .. :try_end_97} :catch_9c
.catch Lorg/json/JSONException; {:try_start_8a .. :try_end_97} :catch_b4
.catch Ljava/io/IOException; {:try_start_8a .. :try_end_97} :catch_d2
move-result-object v0
if-eqz v0, :cond_61
move-object v1, v0
goto :goto_61
:catch_9c
move-exception v0
:try_start_9d
sget-object v2, Lcom/facebook/af;->a:Lcom/facebook/af;
const-string v3, "Response"
const-string v4, "Response <Error>: %s"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v0, v5, v6
invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {p1, p0, v0}, Lcom/facebook/as;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/t;)Ljava/util/List;
:try_end_af
.catchall {:try_start_9d .. :try_end_af} :catchall_f0
move-result-object v0
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
goto :goto_43
:catch_b4
move-exception v0
:try_start_b5
sget-object v2, Lcom/facebook/af;->a:Lcom/facebook/af;
const-string v3, "Response"
const-string v4, "Response <Error>: %s"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v0, v5, v6
invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v2, Lcom/facebook/t;
invoke-direct {v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/Throwable;)V
invoke-static {p1, p0, v2}, Lcom/facebook/as;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/t;)Ljava/util/List;
:try_end_cc
.catchall {:try_start_b5 .. :try_end_cc} :catchall_f0
move-result-object v0
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
goto/16 :goto_43
:catch_d2
move-exception v0
:try_start_d3
sget-object v2, Lcom/facebook/af;->a:Lcom/facebook/af;
const-string v3, "Response"
const-string v4, "Response <Error>: %s"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v0, v5, v6
invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v2, Lcom/facebook/t;
invoke-direct {v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/Throwable;)V
invoke-static {p1, p0, v2}, Lcom/facebook/as;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/t;)Ljava/util/List;
:try_end_ea
.catchall {:try_start_d3 .. :try_end_ea} :catchall_f0
move-result-object v0
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
goto/16 :goto_43
:catchall_f0
move-exception v0
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V
throw v0
:catch_f5
move-exception v0
move-object v0, v2
goto/16 :goto_6c
:cond_f9
move-object v0, v3
move-object v7, v1
move-object v1, v2
move-object v2, v7
goto/16 :goto_55
:cond_ff
move-object v0, v2
move-object v1, v2
goto/16 :goto_55
.end method
.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
.registers 11
const/4 v2, 0x0
sget-boolean v0, Lcom/facebook/as;->b:Z
if-nez v0, :cond_f
if-nez p0, :cond_f
if-nez p3, :cond_f
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_f
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x1
if-ne v3, v0, :cond_74
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/ai;
:try_start_21
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v1, "body"
invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
if-eqz p0, :cond_53
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v1
:goto_31
const-string v6, "code"
invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:try_end_3e
.catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3e} :catch_56
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_3e} :catch_66
:goto_3e
instance-of v0, v1, Lorg/json/JSONArray;
if-eqz v0, :cond_4b
move-object v0, v1
check-cast v0, Lorg/json/JSONArray;
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v0
if-eq v0, v3, :cond_76
:cond_4b
new-instance v0, Lcom/facebook/t;
const-string v1, "Unexpected number of results"
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_53
const/16 v1, 0xc8
goto :goto_31
:catch_56
move-exception v1
new-instance v5, Lcom/facebook/as;
new-instance v6, Lcom/facebook/w;
invoke-direct {v6, p0, v1}, Lcom/facebook/w;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v5, v0, p0, v6}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/w;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v1, p2
goto :goto_3e
:catch_66
move-exception v1
new-instance v5, Lcom/facebook/as;
new-instance v6, Lcom/facebook/w;
invoke-direct {v6, p0, v1}, Lcom/facebook/w;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v5, v0, p0, v6}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/w;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_74
move-object v1, p2
goto :goto_3e
:cond_76
check-cast v1, Lorg/json/JSONArray;
:goto_78
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v2, v0, :cond_b1
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/ai;
:try_start_84
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-static {v0, p0, v3, p3, p2}, Lcom/facebook/as;->a(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/as;
move-result-object v3
invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_8f
:try_end_8f
.catch Lorg/json/JSONException; {:try_start_84 .. :try_end_8f} :catch_93
.catch Lcom/facebook/t; {:try_start_84 .. :try_end_8f} :catch_a2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_78
:catch_93
move-exception v3
new-instance v5, Lcom/facebook/as;
new-instance v6, Lcom/facebook/w;
invoke-direct {v6, p0, v3}, Lcom/facebook/w;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v5, v0, p0, v6}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/w;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_8f
:catch_a2
move-exception v3
new-instance v5, Lcom/facebook/as;
new-instance v6, Lcom/facebook/w;
invoke-direct {v6, p0, v3}, Lcom/facebook/w;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v5, v0, p0, v6}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/w;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_8f
:cond_b1
return-object v4
.end method
.method static a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/t;)Ljava/util/List;
.registers 9
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v2
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
move v1, v0
:goto_b
if-ge v1, v2, :cond_24
new-instance v4, Lcom/facebook/as;
invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/ai;
new-instance v5, Lcom/facebook/w;
invoke-direct {v5, p1, p2}, Lcom/facebook/w;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v4, v0, p1, v5}, Lcom/facebook/as;-><init>(Lcom/facebook/ai;Ljava/net/HttpURLConnection;Lcom/facebook/w;)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
:cond_24
return-object v3
.end method
.method static g()Lcom/facebook/b/b;
.registers 4
sget-object v0, Lcom/facebook/as;->n:Lcom/facebook/b/b;
if-nez v0, :cond_18
invoke-static {}, Lcom/facebook/aw;->l()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_18
new-instance v1, Lcom/facebook/b/b;
const-string v2, "ResponseCache"
new-instance v3, Lcom/facebook/b/f;
invoke-direct {v3}, Lcom/facebook/b/f;-><init>()V
invoke-direct {v1, v0, v2, v3}, Lcom/facebook/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/f;)V
sput-object v1, Lcom/facebook/as;->n:Lcom/facebook/b/b;
:cond_18
sget-object v0, Lcom/facebook/as;->n:Lcom/facebook/b/b;
return-object v0
.end method
.method public a(Lcom/facebook/au;)Lcom/facebook/ai;
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
const-class v2, Lcom/facebook/at;
invoke-interface {v0, v2}, Lcom/facebook/c/c;->a(Ljava/lang/Class;)Lcom/facebook/c/c;
move-result-object v0
check-cast v0, Lcom/facebook/at;
invoke-interface {v0}, Lcom/facebook/at;->b()Lcom/facebook/av;
move-result-object v0
if-eqz v0, :cond_4b
sget-object v2, Lcom/facebook/au;->a:Lcom/facebook/au;
if-ne p1, v2, :cond_24
invoke-interface {v0}, Lcom/facebook/av;->a()Ljava/lang/String;
move-result-object v0
:goto_1d
invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_29
:goto_23
:cond_23
return-object v1
:cond_24
invoke-interface {v0}, Lcom/facebook/av;->b()Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_29
if-eqz v0, :cond_37
iget-object v2, p0, Lcom/facebook/as;->h:Lcom/facebook/ai;
invoke-virtual {v2}, Lcom/facebook/ai;->o()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_23
:cond_37
:try_start_37
new-instance v2, Lcom/facebook/ai;
iget-object v3, p0, Lcom/facebook/as;->h:Lcom/facebook/ai;
invoke-virtual {v3}, Lcom/facebook/ai;->f()Lcom/facebook/aw;
move-result-object v3
new-instance v4, Ljava/net/URL;
invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-direct {v2, v3, v4}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/net/URL;)V
:try_end_47
.catch Ljava/net/MalformedURLException; {:try_start_37 .. :try_end_47} :catch_49
move-object v1, v2
goto :goto_23
:catch_49
move-exception v0
goto :goto_23
:cond_4b
move-object v0, v1
goto :goto_1d
.end method
.method public final a(Ljava/lang/Class;)Lcom/facebook/c/c;
.registers 4
iget-object v0, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
if-nez p1, :cond_10
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Must pass in a valid interface that extends GraphObject"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
invoke-interface {v0, p1}, Lcom/facebook/c/c;->a(Ljava/lang/Class;)Lcom/facebook/c/c;
move-result-object v0
goto :goto_5
.end method
.method public final a()Lcom/facebook/w;
.registers 2
iget-object v0, p0, Lcom/facebook/as;->g:Lcom/facebook/w;
return-object v0
.end method
.method public final b()Lcom/facebook/c/c;
.registers 2
iget-object v0, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
return-object v0
.end method
.method public final b(Ljava/lang/Class;)Lcom/facebook/c/h;
.registers 3
iget-object v0, p0, Lcom/facebook/as;->e:Lcom/facebook/c/h;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/facebook/as;->e:Lcom/facebook/c/h;
invoke-interface {v0, p1}, Lcom/facebook/c/h;->a(Ljava/lang/Class;)Lcom/facebook/c/h;
move-result-object v0
goto :goto_5
.end method
.method public final c()Lcom/facebook/c/h;
.registers 2
iget-object v0, p0, Lcom/facebook/as;->e:Lcom/facebook/c/h;
return-object v0
.end method
.method public final d()Ljava/net/HttpURLConnection;
.registers 2
iget-object v0, p0, Lcom/facebook/as;->c:Ljava/net/HttpURLConnection;
return-object v0
.end method
.method public e()Lcom/facebook/ai;
.registers 2
iget-object v0, p0, Lcom/facebook/as;->h:Lcom/facebook/ai;
return-object v0
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/as;->f:Z
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
:try_start_0
const-string v1, "%d"
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v0, p0, Lcom/facebook/as;->c:Ljava/net/HttpURLConnection;
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/facebook/as;->c:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
:goto_10
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_19
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_61
move-result-object v0
:goto_1a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "{Response: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " responseCode: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", graphObject: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/as;->d:Lcom/facebook/c/c;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", error: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/as;->g:Lcom/facebook/w;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", isFromCache:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/facebook/as;->f:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_5e
const/16 v0, 0xc8
goto :goto_10
:catch_61
move-exception v0
const-string v0, "unknown"
goto :goto_1a
.end method
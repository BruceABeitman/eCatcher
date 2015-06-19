.class public Lcom/facebook/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:Z
.field private static i:Lcom/facebook/internal/c;
.field private final b:Ljava/net/HttpURLConnection;
.field private final c:Lcom/facebook/model/GraphObject;
.field private final d:Lcom/facebook/model/GraphObjectList;
.field private final e:Z
.field private final f:Lcom/facebook/FacebookRequestError;
.field private final g:Ljava/lang/String;
.field private final h:Lcom/facebook/Request;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/aa;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/aa;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
.registers 12
const/4 v3, 0x0
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, v3
move-object v5, v3
move-object v7, p3
invoke-direct/range {v0 .. v7}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V
return-void
.end method
.method private constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/aa;->h:Lcom/facebook/Request;
iput-object p2, p0, Lcom/facebook/aa;->b:Ljava/net/HttpURLConnection;
iput-object p3, p0, Lcom/facebook/aa;->g:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/aa;->c:Lcom/facebook/model/GraphObject;
iput-object p5, p0, Lcom/facebook/aa;->d:Lcom/facebook/model/GraphObjectList;
iput-boolean p6, p0, Lcom/facebook/aa;->e:Z
iput-object p7, p0, Lcom/facebook/aa;->f:Lcom/facebook/FacebookRequestError;
return-void
.end method
.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V
.registers 14
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move v6, p5
move-object v7, v5
invoke-direct/range {v0 .. v7}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V
return-void
.end method
.method private constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObjectList;Z)V
.registers 14
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p4
move v6, p5
move-object v7, v4
invoke-direct/range {v0 .. v7}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V
return-void
.end method
.method private static a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/v;Z)Ljava/util/List;
.registers 8
invoke-static {p0}, Lcom/facebook/internal/ai;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/facebook/LoggingBehavior;->c:Lcom/facebook/LoggingBehavior;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object v0, v1, v2
invoke-static {}, Lcom/facebook/internal/v;->b()V
invoke-static {v0, p1, p2, p3}, Lcom/facebook/aa;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/v;Z)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/v;Z)Ljava/util/List;
.registers 8
new-instance v0, Lorg/json/JSONTokener;
invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v0
invoke-static {p1, p2, v0, p3}, Lcom/facebook/aa;->a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
move-result-object v0
sget-object v1, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p2}, Lcom/facebook/v;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
aput-object v0, v1, v2
invoke-static {}, Lcom/facebook/internal/v;->b()V
return-object v0
.end method
.method static a(Ljava/net/HttpURLConnection;Lcom/facebook/v;)Ljava/util/List;
.registers 11
const/4 v2, 0x0
const/4 v7, 0x1
const/4 v6, 0x0
instance-of v0, p1, Lcom/facebook/internal/b;
if-eqz v0, :cond_11c
move-object v0, p1
check-cast v0, Lcom/facebook/internal/b;
sget-object v1, Lcom/facebook/aa;->i:Lcom/facebook/internal/c;
if-nez v1, :cond_22
invoke-static {}, Lcom/facebook/Session;->i()Landroid/content/Context;
move-result-object v1
if-eqz v1, :cond_22
new-instance v3, Lcom/facebook/internal/c;
const-string v4, "ResponseCache"
new-instance v5, Lcom/facebook/internal/g;
invoke-direct {v5}, Lcom/facebook/internal/g;-><init>()V
invoke-direct {v3, v1, v4, v5}, Lcom/facebook/internal/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/g;)V
sput-object v3, Lcom/facebook/aa;->i:Lcom/facebook/internal/c;
:cond_22
sget-object v3, Lcom/facebook/aa;->i:Lcom/facebook/internal/c;
invoke-virtual {v0}, Lcom/facebook/internal/b;->g()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_3c
invoke-virtual {p1}, Lcom/facebook/v;->size()I
move-result v4
if-ne v4, v7, :cond_5b
invoke-virtual {p1, v6}, Lcom/facebook/v;->a(I)Lcom/facebook/Request;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/Request;->e()Ljava/lang/String;
move-result-object v1
:cond_3c
:goto_3c
invoke-virtual {v0}, Lcom/facebook/internal/b;->h()Z
move-result v0
if-nez v0, :cond_116
if-eqz v3, :cond_116
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_116
const/4 v0, 0x0
:try_start_4b
invoke-virtual {v3, v1, v0}, Lcom/facebook/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_98
.catch Lcom/facebook/FacebookException; {:try_start_4b .. :try_end_4e} :catch_7d
.catch Lorg/json/JSONException; {:try_start_4b .. :try_end_4e} :catch_86
.catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_8f
move-result-object v2
if-eqz v2, :cond_61
const/4 v0, 0x0
const/4 v4, 0x1
:try_start_53
invoke-static {v2, v0, p1, v4}, Lcom/facebook/aa;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/v;Z)Ljava/util/List;
:try_end_56
.catchall {:try_start_53 .. :try_end_56} :catchall_98
.catch Lcom/facebook/FacebookException; {:try_start_53 .. :try_end_56} :catch_112
.catch Lorg/json/JSONException; {:try_start_53 .. :try_end_56} :catch_86
.catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_8f
move-result-object v0
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
:goto_5a
return-object v0
:cond_5b
sget-object v4, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
invoke-static {}, Lcom/facebook/internal/v;->a()V
goto :goto_3c
:cond_61
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
move-object v0, v3
move-object v8, v1
move-object v1, v2
move-object v2, v8
:goto_68
:try_start_68
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
const/16 v4, 0x190
if-lt v3, v4, :cond_9d
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v1
:goto_74
:cond_74
const/4 v0, 0x0
invoke-static {v1, p0, p1, v0}, Lcom/facebook/aa;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/v;Z)Ljava/util/List;
:try_end_78
.catchall {:try_start_68 .. :try_end_78} :catchall_10d
.catch Lcom/facebook/FacebookException; {:try_start_68 .. :try_end_78} :catch_ac
.catch Lorg/json/JSONException; {:try_start_68 .. :try_end_78} :catch_c0
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_78} :catch_d9
.catch Ljava/lang/SecurityException; {:try_start_68 .. :try_end_78} :catch_f3
move-result-object v0
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_5a
:catch_7d
move-exception v0
move-object v0, v2
:goto_7f
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
move-object v2, v1
move-object v1, v0
move-object v0, v3
goto :goto_68
:catch_86
move-exception v0
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
move-object v0, v3
move-object v8, v1
move-object v1, v2
move-object v2, v8
goto :goto_68
:catch_8f
move-exception v0
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
move-object v0, v3
move-object v8, v1
move-object v1, v2
move-object v2, v8
goto :goto_68
:catchall_98
move-exception v0
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
throw v0
:try_start_9d
:cond_9d
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
if-eqz v0, :cond_74
if-eqz v2, :cond_74
if-eqz v1, :cond_74
invoke-virtual {v0, v2, v1}, Lcom/facebook/internal/c;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
:try_end_aa
.catchall {:try_start_9d .. :try_end_aa} :catchall_10d
.catch Lcom/facebook/FacebookException; {:try_start_9d .. :try_end_aa} :catch_ac
.catch Lorg/json/JSONException; {:try_start_9d .. :try_end_aa} :catch_c0
.catch Ljava/io/IOException; {:try_start_9d .. :try_end_aa} :catch_d9
.catch Ljava/lang/SecurityException; {:try_start_9d .. :try_end_aa} :catch_f3
move-result-object v1
goto :goto_74
:catch_ac
move-exception v0
:try_start_ad
sget-object v2, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {}, Lcom/facebook/internal/v;->b()V
invoke-static {p1, p0, v0}, Lcom/facebook/aa;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
:try_end_bb
.catchall {:try_start_ad .. :try_end_bb} :catchall_10d
move-result-object v0
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_5a
:catch_c0
move-exception v0
:try_start_c1
sget-object v2, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {}, Lcom/facebook/internal/v;->b()V
new-instance v2, Lcom/facebook/FacebookException;
invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
invoke-static {p1, p0, v2}, Lcom/facebook/aa;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
:try_end_d4
.catchall {:try_start_c1 .. :try_end_d4} :catchall_10d
move-result-object v0
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_5a
:catch_d9
move-exception v0
:try_start_da
sget-object v2, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {}, Lcom/facebook/internal/v;->b()V
new-instance v2, Lcom/facebook/FacebookException;
invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
invoke-static {p1, p0, v2}, Lcom/facebook/aa;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
:try_end_ed
.catchall {:try_start_da .. :try_end_ed} :catchall_10d
move-result-object v0
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto/16 :goto_5a
:catch_f3
move-exception v0
:try_start_f4
sget-object v2, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {}, Lcom/facebook/internal/v;->b()V
new-instance v2, Lcom/facebook/FacebookException;
invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
invoke-static {p1, p0, v2}, Lcom/facebook/aa;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
:try_end_107
.catchall {:try_start_f4 .. :try_end_107} :catchall_10d
move-result-object v0
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto/16 :goto_5a
:catchall_10d
move-exception v0
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
throw v0
:catch_112
move-exception v0
move-object v0, v2
goto/16 :goto_7f
:cond_116
move-object v0, v3
move-object v8, v1
move-object v1, v2
move-object v2, v8
goto/16 :goto_68
:cond_11c
move-object v0, v2
move-object v1, v2
goto/16 :goto_68
.end method
.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
.registers 14
const/4 v3, 0x0
sget-boolean v1, Lcom/facebook/aa;->a:Z
if-nez v1, :cond_f
if-nez p0, :cond_f
if-nez p3, :cond_f
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V
throw v1
:cond_f
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v4
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V
const/4 v1, 0x1
if-ne v4, v1, :cond_74
invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/Request;
:try_start_21
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v2, "body"
invoke-virtual {v5, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
if-eqz p0, :cond_53
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v2
:goto_31
const-string v6, "code"
invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:try_end_3e
.catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3e} :catch_56
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_3e} :catch_66
:goto_3e
instance-of v1, v2, Lorg/json/JSONArray;
if-eqz v1, :cond_4b
move-object v1, v2
check-cast v1, Lorg/json/JSONArray;
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v1
if-eq v1, v4, :cond_76
:cond_4b
new-instance v1, Lcom/facebook/FacebookException;
const-string v2, "Unexpected number of results"
invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v1
:cond_53
const/16 v2, 0xc8
goto :goto_31
:catch_56
move-exception v2
new-instance v5, Lcom/facebook/aa;
new-instance v6, Lcom/facebook/FacebookRequestError;
invoke-direct {v6, p0, v2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v5, v1, p0, v6}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v2, p2
goto :goto_3e
:catch_66
move-exception v2
new-instance v5, Lcom/facebook/aa;
new-instance v6, Lcom/facebook/FacebookRequestError;
invoke-direct {v6, p0, v2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v5, v1, p0, v6}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_74
move-object v2, p2
goto :goto_3e
:cond_76
move-object v7, v2
check-cast v7, Lorg/json/JSONArray;
move v8, v3
:goto_7a
invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v8, v1, :cond_13c
invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/Request;
:try_start_86
invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v3, v1, Lorg/json/JSONObject;
if-eqz v3, :cond_13d
check-cast v1, Lorg/json/JSONObject;
invoke-static {v1, p2, p0}, Lcom/facebook/FacebookRequestError;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
move-result-object v3
if-eqz v3, :cond_b3
invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->b()I
move-result v1
const/16 v4, 0xbe
if-ne v1, v4, :cond_a7
invoke-virtual {v2}, Lcom/facebook/Request;->b()Lcom/facebook/Session;
move-result-object v1
if-eqz v1, :cond_a7
invoke-virtual {v1}, Lcom/facebook/Session;->g()V
:cond_a7
new-instance v1, Lcom/facebook/aa;
invoke-direct {v1, v2, p0, v3}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
:goto_ac
invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_af
add-int/lit8 v1, v8, 0x1
move v8, v1
goto :goto_7a
:cond_b3
const-string v3, "body"
const-string v4, "FACEBOOK_NON_JSON_RESULT"
invoke-static {v1, v3, v4}, Lcom/facebook/internal/ai;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
instance-of v1, v3, Lorg/json/JSONObject;
if-eqz v1, :cond_e2
move-object v0, v3
check-cast v0, Lorg/json/JSONObject;
move-object v1, v0
invoke-static {v1}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
move-result-object v5
new-instance v1, Lcom/facebook/aa;
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
move-object v3, p0
move v6, p3
invoke-direct/range {v1 .. v6}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V
:try_end_d2
.catch Lorg/json/JSONException; {:try_start_86 .. :try_end_d2} :catch_d3
.catch Lcom/facebook/FacebookException; {:try_start_86 .. :try_end_d2} :catch_fc
goto :goto_ac
:catch_d3
move-exception v1
new-instance v3, Lcom/facebook/aa;
new-instance v4, Lcom/facebook/FacebookRequestError;
invoke-direct {v4, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v3, v2, p0, v4}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_af
:cond_e2
:try_start_e2
instance-of v1, v3, Lorg/json/JSONArray;
if-eqz v1, :cond_10b
move-object v0, v3
check-cast v0, Lorg/json/JSONArray;
move-object v1, v0
const-class v4, Lcom/facebook/model/GraphObject;
invoke-static {v1, v4}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
move-result-object v5
new-instance v1, Lcom/facebook/aa;
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
move-object v3, p0
move v6, p3
invoke-direct/range {v1 .. v6}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObjectList;Z)V
:try_end_fb
.catch Lorg/json/JSONException; {:try_start_e2 .. :try_end_fb} :catch_d3
.catch Lcom/facebook/FacebookException; {:try_start_e2 .. :try_end_fb} :catch_fc
goto :goto_ac
:catch_fc
move-exception v1
new-instance v3, Lcom/facebook/aa;
new-instance v4, Lcom/facebook/FacebookRequestError;
invoke-direct {v4, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v3, v2, p0, v4}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_af
:try_start_10b
:cond_10b
sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
move-object v3, v1
:goto_10e
sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
if-ne v3, v1, :cond_11f
new-instance v1, Lcom/facebook/aa;
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
move-object v3, p0
move v6, p3
invoke-direct/range {v1 .. v6}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V
goto :goto_ac
:cond_11f
new-instance v1, Lcom/facebook/FacebookException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Got unexpected object type in response, class: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_13c
.catch Lorg/json/JSONException; {:try_start_10b .. :try_end_13c} :catch_d3
.catch Lcom/facebook/FacebookException; {:try_start_10b .. :try_end_13c} :catch_fc
:cond_13c
return-object v9
:cond_13d
move-object v3, v1
goto :goto_10e
.end method
.method static a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
.registers 9
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v2
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
move v1, v0
:goto_b
if-ge v1, v2, :cond_24
new-instance v4, Lcom/facebook/aa;
invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Request;
new-instance v5, Lcom/facebook/FacebookRequestError;
invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
invoke-direct {v4, v0, p1, v5}, Lcom/facebook/aa;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
:cond_24
return-object v3
.end method
.method public final a()Lcom/facebook/FacebookRequestError;
.registers 2
iget-object v0, p0, Lcom/facebook/aa;->f:Lcom/facebook/FacebookRequestError;
return-object v0
.end method
.method public final a(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
.registers 3
iget-object v0, p0, Lcom/facebook/aa;->c:Lcom/facebook/model/GraphObject;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/facebook/aa;->c:Lcom/facebook/model/GraphObject;
invoke-interface {v0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v0
goto :goto_5
.end method
.method public final b()Lcom/facebook/model/GraphObject;
.registers 2
iget-object v0, p0, Lcom/facebook/aa;->c:Lcom/facebook/model/GraphObject;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
:try_start_0
const-string v1, "%d"
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v0, p0, Lcom/facebook/aa;->b:Ljava/net/HttpURLConnection;
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/facebook/aa;->b:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
:goto_10
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_19
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_57
move-result-object v0
:goto_1a
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "{Response:  responseCode: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", graphObject: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/aa;->c:Lcom/facebook/model/GraphObject;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", error: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/aa;->f:Lcom/facebook/FacebookRequestError;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", isFromCache:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/facebook/aa;->e:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_54
const/16 v0, 0xc8
goto :goto_10
:catch_57
move-exception v0
const-string v0, "unknown"
goto :goto_1a
.end method
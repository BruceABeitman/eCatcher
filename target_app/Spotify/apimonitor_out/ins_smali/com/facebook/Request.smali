.class public Lcom/facebook/Request;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String;
.field private static b:Ljava/lang/String;
.field private static c:Ljava/util/regex/Pattern;
.field private static volatile q:Ljava/lang/String;
.field private d:Lcom/facebook/Session;
.field private e:Lcom/facebook/HttpMethod;
.field private f:Ljava/lang/String;
.field private g:Lcom/facebook/model/GraphObject;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Z
.field private l:Landroid/os/Bundle;
.field private m:Lcom/facebook/p;
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/Object;
.field private p:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/Request;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/Request;->a:Ljava/lang/String;
const-string v0, "^v\\d+\\.\\d+/.*"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/facebook/Request;->c:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>()V
.registers 7
const/4 v1, 0x0
move-object v0, p0
move-object v2, v1
move-object v3, v1
move-object v4, v1
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;)V
return-void
.end method
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;)V
.registers 13
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;B)V
return-void
.end method
.method private constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;B)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/Request;->k:Z
iput-object p1, p0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
iput-object p2, p0, Lcom/facebook/Request;->f:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/Request;->m:Lcom/facebook/p;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/Request;->p:Ljava/lang/String;
iget-object v0, p0, Lcom/facebook/Request;->n:Ljava/lang/String;
if-eqz v0, :cond_1f
sget-object v0, Lcom/facebook/HttpMethod;->a:Lcom/facebook/HttpMethod;
if-eq p4, v0, :cond_1f
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Can\'t change HTTP method on request with overridden URL."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
if-eqz p4, :cond_37
:goto_21
iput-object p4, p0, Lcom/facebook/Request;->e:Lcom/facebook/HttpMethod;
if-eqz p3, :cond_3a
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
:goto_2c
iget-object v0, p0, Lcom/facebook/Request;->p:Ljava/lang/String;
if-nez v0, :cond_36
invoke-static {}, Lcom/facebook/internal/ad;->e()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/Request;->p:Ljava/lang/String;
:cond_36
return-void
:cond_37
sget-object p4, Lcom/facebook/HttpMethod;->a:Lcom/facebook/HttpMethod;
goto :goto_21
:cond_3a
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
goto :goto_2c
.end method
.method public static a(Lcom/facebook/Session;Lcom/facebook/q;)Lcom/facebook/Request;
.registers 8
const/4 v3, 0x0
new-instance v5, Lcom/facebook/Request$1;
invoke-direct {v5, p1}, Lcom/facebook/Request$1;-><init>(Lcom/facebook/q;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me"
move-object v1, p0
move-object v4, v3
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;)Lcom/facebook/Request;
.registers 7
const/4 v1, 0x0
new-instance v0, Lcom/facebook/Request;
move-object v2, p0
move-object v3, v1
move-object v4, v1
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;Lcom/facebook/model/GraphObject;)Lcom/facebook/Request;
.registers 8
const/4 v1, 0x0
new-instance v0, Lcom/facebook/Request;
sget-object v4, Lcom/facebook/HttpMethod;->b:Lcom/facebook/HttpMethod;
move-object v2, p0
move-object v3, v1
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;)V
iput-object p1, v0, Lcom/facebook/Request;->g:Lcom/facebook/model/GraphObject;
return-object v0
.end method
.method public static varargs a([Lcom/facebook/Request;)Lcom/facebook/u;
.registers 3
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/internal/ak;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
new-instance v1, Lcom/facebook/v;
invoke-direct {v1, v0}, Lcom/facebook/v;-><init>(Ljava/util/Collection;)V
invoke-static {v1}, Lcom/facebook/Request;->b(Lcom/facebook/v;)Lcom/facebook/u;
move-result-object v0
return-object v0
.end method
.method public static a(Lcom/facebook/v;)Ljava/util/List;
.registers 5
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/internal/ak;->a(Ljava/util/Collection;Ljava/lang/String;)V
:try_start_5
invoke-static {p0}, Lcom/facebook/Request;->c(Lcom/facebook/v;)Ljava/net/HttpURLConnection;
:try_end_8
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_e
move-result-object v0
invoke-static {v0, p0}, Lcom/facebook/Request;->a(Ljava/net/HttpURLConnection;Lcom/facebook/v;)Ljava/util/List;
move-result-object v0
:goto_d
return-object v0
:catch_e
move-exception v0
invoke-virtual {p0}, Lcom/facebook/v;->d()Ljava/util/List;
move-result-object v1
const/4 v2, 0x0
new-instance v3, Lcom/facebook/FacebookException;
invoke-direct {v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
invoke-static {v1, v2, v3}, Lcom/facebook/aa;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/Request;->a(Lcom/facebook/v;Ljava/util/List;)V
goto :goto_d
.end method
.method public static a(Ljava/net/HttpURLConnection;Lcom/facebook/v;)Ljava/util/List;
.registers 8
invoke-static {p0, p1}, Lcom/facebook/aa;->a(Ljava/net/HttpURLConnection;Lcom/facebook/v;)Ljava/util/List;
move-result-object v1
invoke-static {p0}, Lcom/facebook/internal/ai;->a(Ljava/net/URLConnection;)V
invoke-virtual {p1}, Lcom/facebook/v;->size()I
move-result v0
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
if-eq v0, v2, :cond_32
new-instance v2, Lcom/facebook/FacebookException;
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
invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v2
:cond_32
invoke-static {p1, v1}, Lcom/facebook/Request;->a(Lcom/facebook/v;Ljava/util/List;)V
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
invoke-virtual {p1}, Lcom/facebook/v;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_3e
:cond_3e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_54
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Request;
iget-object v4, v0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
if-eqz v4, :cond_3e
iget-object v0, v0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
goto :goto_3e
:cond_54
invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_58
:goto_58
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Session;
invoke-virtual {v0}, Lcom/facebook/Session;->k()Z
move-result v3
if-eqz v3, :cond_58
invoke-virtual {v0}, Lcom/facebook/Session;->j()V
goto :goto_58
:cond_6e
return-object v1
.end method
.method private static a(Landroid/os/Bundle;Lcom/facebook/t;Lcom/facebook/Request;)V
.registers 7
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
invoke-static {v2}, Lcom/facebook/Request;->e(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8
invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V
goto :goto_8
:cond_22
return-void
.end method
.method private static a(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/r;)V
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
invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;
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
invoke-static {v1, v0, p2, v5}, Lcom/facebook/Request;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/r;Z)V
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
.method private static a(Lcom/facebook/t;Ljava/util/Collection;Ljava/util/Map;)V
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
check-cast v0, Lcom/facebook/Request;
invoke-direct {v0, v1, p2}, Lcom/facebook/Request;->a(Lorg/json/JSONArray;Ljava/util/Map;)V
goto :goto_9
:cond_19
const-string v0, "batch"
invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/t;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
return-void
.end method
.method private static a(Lcom/facebook/v;Lcom/facebook/internal/v;ILjava/net/URL;Ljava/io/OutputStream;)V
.registers 12
new-instance v1, Lcom/facebook/t;
invoke-direct {v1, p4, p1}, Lcom/facebook/t;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/v;)V
const/4 v0, 0x1
if-ne p2, v0, :cond_61
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/facebook/v;->a(I)Lcom/facebook/Request;
move-result-object v2
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
iget-object v0, v2, Lcom/facebook/Request;->l:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1c
:cond_1c
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3d
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v5, v2, Lcom/facebook/Request;->l:Landroid/os/Bundle;
invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v5
invoke-static {v5}, Lcom/facebook/Request;->d(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_1c
new-instance v6, Lcom/facebook/o;
invoke-direct {v6, v2, v5}, Lcom/facebook/o;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V
invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1c
:cond_3d
if-eqz p1, :cond_44
const-string v0, "  Parameters:\n"
invoke-virtual {p1, v0}, Lcom/facebook/internal/v;->b(Ljava/lang/String;)V
:cond_44
iget-object v0, v2, Lcom/facebook/Request;->l:Landroid/os/Bundle;
invoke-static {v0, v1, v2}, Lcom/facebook/Request;->a(Landroid/os/Bundle;Lcom/facebook/t;Lcom/facebook/Request;)V
if-eqz p1, :cond_50
const-string v0, "  Attachments:\n"
invoke-virtual {p1, v0}, Lcom/facebook/internal/v;->b(Ljava/lang/String;)V
:cond_50
invoke-static {v3, v1}, Lcom/facebook/Request;->a(Ljava/util/Map;Lcom/facebook/t;)V
iget-object v0, v2, Lcom/facebook/Request;->g:Lcom/facebook/model/GraphObject;
if-eqz v0, :cond_60
iget-object v0, v2, Lcom/facebook/Request;->g:Lcom/facebook/model/GraphObject;
invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2, v1}, Lcom/facebook/Request;->a(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/r;)V
:cond_60
:goto_60
return-void
:cond_61
invoke-static {p0}, Lcom/facebook/Request;->e(Lcom/facebook/v;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_73
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "At least one request in a batch must have an open Session, or a default app ID must be specified."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_73
const-string v2, "batch_app_id"
invoke-virtual {v1, v2, v0}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-static {v1, p0, v0}, Lcom/facebook/Request;->a(Lcom/facebook/t;Ljava/util/Collection;Ljava/util/Map;)V
if-eqz p1, :cond_87
const-string v2, "  Attachments:\n"
invoke-virtual {p1, v2}, Lcom/facebook/internal/v;->b(Ljava/lang/String;)V
:cond_87
invoke-static {v0, v1}, Lcom/facebook/Request;->a(Ljava/util/Map;Lcom/facebook/t;)V
goto :goto_60
.end method
.method private static a(Lcom/facebook/v;Ljava/util/List;)V
.registers 8
invoke-virtual {p0}, Lcom/facebook/v;->size()I
move-result v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_a
if-ge v0, v1, :cond_25
invoke-virtual {p0, v0}, Lcom/facebook/v;->a(I)Lcom/facebook/Request;
move-result-object v3
iget-object v4, v3, Lcom/facebook/Request;->m:Lcom/facebook/p;
if-eqz v4, :cond_22
new-instance v4, Landroid/util/Pair;
iget-object v3, v3, Lcom/facebook/Request;->m:Lcom/facebook/p;
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
new-instance v0, Lcom/facebook/Request$2;
invoke-direct {v0, v2, p0}, Lcom/facebook/Request$2;-><init>(Ljava/util/ArrayList;Lcom/facebook/v;)V
invoke-virtual {p0}, Lcom/facebook/v;->c()Landroid/os/Handler;
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
.method private static a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/r;Z)V
.registers 14
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v2, 0x0
move-object v0, p1
:goto_4
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
const-class v3, Lcom/facebook/model/GraphObject;
invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_4d
check-cast v0, Lcom/facebook/model/GraphObject;
invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
move-object v9, v0
move-object v0, v1
move-object v1, v9
:goto_1d
:cond_1d
const-class v3, Lorg/json/JSONObject;
invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_81
check-cast v0, Lorg/json/JSONObject;
if-eqz p3, :cond_63
invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_2d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_cb
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
invoke-static {v4, v1, p2, p3}, Lcom/facebook/Request;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/r;Z)V
goto :goto_2d
:cond_4d
const-class v3, Lcom/facebook/model/GraphObjectList;
invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_1d
check-cast v0, Lcom/facebook/model/GraphObjectList;
invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
move-object v9, v0
move-object v0, v1
move-object v1, v9
goto :goto_1d
:cond_63
const-string v1, "id"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_72
const-string v1, "id"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_4
:cond_72
const-string v1, "url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_cb
const-string v1, "url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_4
:cond_81
const-class v3, Lorg/json/JSONArray;
invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_ac
check-cast v0, Lorg/json/JSONArray;
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v3
move v1, v2
:goto_90
if-ge v1, v3, :cond_cb
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
invoke-static {v4, v5, p2, p3}, Lcom/facebook/Request;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/r;Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_90
:cond_ac
const-class v2, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_c4
const-class v2, Ljava/lang/Number;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_c4
const-class v2, Ljava/lang/Boolean;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_cc
:cond_c4
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {p2, p0, v0}, Lcom/facebook/r;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_cb
:cond_cb
return-void
:cond_cc
const-class v2, Ljava/util/Date;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_cb
check-cast v0, Ljava/util/Date;
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
invoke-interface {p2, p0, v0}, Lcom/facebook/r;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_cb
.end method
.method private static a(Ljava/util/Map;Lcom/facebook/t;)V
.registers 6
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
:cond_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/o;
invoke-virtual {v1}, Lcom/facebook/o;->b()Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Lcom/facebook/Request;->d(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8
invoke-virtual {v1}, Lcom/facebook/o;->b()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1}, Lcom/facebook/o;->a()Lcom/facebook/Request;
move-result-object v1
invoke-virtual {p1, v0, v3, v1}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V
goto :goto_8
:cond_30
return-void
.end method
.method private a(Lorg/json/JSONArray;Ljava/util/Map;)V
.registers 12
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
iget-object v0, p0, Lcom/facebook/Request;->i:Ljava/lang/String;
if-eqz v0, :cond_17
const-string v0, "name"
iget-object v2, p0, Lcom/facebook/Request;->i:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "omit_response_on_success"
iget-boolean v2, p0, Lcom/facebook/Request;->k:Z
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_17
iget-object v0, p0, Lcom/facebook/Request;->j:Ljava/lang/String;
if-eqz v0, :cond_22
const-string v0, "depends_on"
iget-object v2, p0, Lcom/facebook/Request;->j:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_22
invoke-direct {p0}, Lcom/facebook/Request;->g()Ljava/lang/String;
move-result-object v2
const-string v0, "relative_url"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "method"
iget-object v3, p0, Lcom/facebook/Request;->e:Lcom/facebook/HttpMethod;
invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
invoke-virtual {v0}, Lcom/facebook/Session;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;)V
:cond_3f
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_4e
:cond_4e
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v5, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/facebook/Request;->d(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_4e
const-string v5, "%s%d"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
const-string v8, "file"
aput-object v8, v6, v7
const/4 v7, 0x1
invoke-interface {p2}, Ljava/util/Map;->size()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lcom/facebook/o;
invoke-direct {v6, p0, v0}, Lcom/facebook/o;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V
invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4e
:cond_8b
invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_9c
const-string v0, ","
invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
const-string v3, "attached_files"
invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_9c
iget-object v0, p0, Lcom/facebook/Request;->g:Lcom/facebook/model/GraphObject;
if-eqz v0, :cond_ba
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/facebook/Request;->g:Lcom/facebook/model/GraphObject;
new-instance v4, Lcom/facebook/Request$3;
invoke-direct {v4, p0, v0}, Lcom/facebook/Request$3;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V
invoke-static {v3, v2, v4}, Lcom/facebook/Request;->a(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/r;)V
const-string v2, "&"
invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
const-string v2, "body"
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_ba
invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
return-void
.end method
.method public static b(Lcom/facebook/v;)Lcom/facebook/u;
.registers 2
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/internal/ak;->a(Ljava/util/Collection;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/u;
invoke-direct {v0, p0}, Lcom/facebook/u;-><init>(Lcom/facebook/v;)V
invoke-virtual {v0}, Lcom/facebook/u;->a()Lcom/facebook/u;
return-object v0
.end method
.method private b(Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v0, Landroid/net/Uri$Builder;
invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V
invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v2
iget-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
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
iget-object v1, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_29
const-string v1, ""
:cond_29
invoke-static {v1}, Lcom/facebook/Request;->e(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3b
invoke-static {v1}, Lcom/facebook/Request;->f(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
goto :goto_13
:cond_3b
iget-object v0, p0, Lcom/facebook/Request;->e:Lcom/facebook/HttpMethod;
sget-object v4, Lcom/facebook/HttpMethod;->a:Lcom/facebook/HttpMethod;
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
.method static synthetic b(Ljava/lang/Object;)Z
.registers 2
invoke-static {p0}, Lcom/facebook/Request;->e(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method static synthetic c(Ljava/lang/Object;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/facebook/Request;->f(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static c(Lcom/facebook/v;)Ljava/net/HttpURLConnection;
.registers 13
const/4 v8, 0x0
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/facebook/v;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_7
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_23
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/Request;
iget-object v5, v1, Lcom/facebook/Request;->f:Ljava/lang/String;
if-eqz v5, :cond_7
iget-object v1, v1, Lcom/facebook/Request;->h:Ljava/lang/String;
if-eqz v1, :cond_7
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Only one of a graph path or REST method may be specified per request."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_23
:try_start_23
invoke-virtual {p0}, Lcom/facebook/v;->size()I
move-result v1
if-ne v1, v2, :cond_ef
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/facebook/v;->a(I)Lcom/facebook/Request;
move-result-object v4
new-instance v1, Ljava/net/URL;
invoke-virtual {v4}, Lcom/facebook/Request;->e()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:goto_37
:try_start_37
:try_end_37
.catch Ljava/net/MalformedURLException; {:try_start_23 .. :try_end_37} :catch_fa
invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/net/HttpURLConnection;
move-object v7, v0
const-string v1, "User-Agent"
sget-object v4, Lcom/facebook/Request;->q:Ljava/lang/String;
if-nez v4, :cond_5a
const-string v4, "%s.%s"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
const-string v9, "FBAndroidSDK"
aput-object v9, v5, v6
const/4 v6, 0x1
const-string v9, "3.14.1"
aput-object v9, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
sput-object v4, Lcom/facebook/Request;->q:Ljava/lang/String;
:cond_5a
sget-object v4, Lcom/facebook/Request;->q:Ljava/lang/String;
invoke-virtual {v7, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Content-Type"
const-string v4, "multipart/form-data; boundary=%s"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
const-string v9, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
aput-object v9, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v7, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Accept-Language"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v4
invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v7, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V
new-instance v9, Lcom/facebook/internal/v;
sget-object v1, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
const-string v4, "Request"
invoke-direct {v9, v1, v4}, Lcom/facebook/internal/v;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/v;->size()I
move-result v10
if-ne v10, v2, :cond_103
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/facebook/v;->a(I)Lcom/facebook/Request;
move-result-object v1
iget-object v1, v1, Lcom/facebook/Request;->e:Lcom/facebook/HttpMethod;
:goto_99
invoke-virtual {v1}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;
move-result-object v4
invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v11
const-string v4, "Request:\n"
invoke-virtual {v9, v4}, Lcom/facebook/internal/v;->b(Ljava/lang/String;)V
const-string v4, "Id"
invoke-virtual {p0}, Lcom/facebook/v;->b()Ljava/lang/String;
move-result-object v5
invoke-virtual {v9, v4, v5}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v4, "URL"
invoke-virtual {v9, v4, v11}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v4, "Method"
invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
move-result-object v5
invoke-virtual {v9, v4, v5}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v4, "User-Agent"
const-string v5, "User-Agent"
invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v9, v4, v5}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v4, "Content-Type"
const-string v5, "Content-Type"
invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v9, v4, v5}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/facebook/v;->a()I
move-result v4
invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
invoke-virtual {p0}, Lcom/facebook/v;->a()I
move-result v4
invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
sget-object v4, Lcom/facebook/HttpMethod;->b:Lcom/facebook/HttpMethod;
if-ne v1, v4, :cond_106
move v1, v2
:goto_e9
if-nez v1, :cond_108
invoke-virtual {v9}, Lcom/facebook/internal/v;->d()V
:try_end_ee
.catch Ljava/io/IOException; {:try_start_37 .. :try_end_ee} :catch_142
.catch Lorg/json/JSONException; {:try_start_37 .. :try_end_ee} :catch_15b
:goto_ee
return-object v7
:cond_ef
:try_start_ef
new-instance v1, Ljava/net/URL;
invoke-static {}, Lcom/facebook/internal/ad;->b()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_f8
.catch Ljava/net/MalformedURLException; {:try_start_ef .. :try_end_f8} :catch_fa
goto/16 :goto_37
:catch_fa
move-exception v1
new-instance v2, Lcom/facebook/FacebookException;
const-string v3, "could not construct URL for request"
invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_103
:try_start_103
sget-object v1, Lcom/facebook/HttpMethod;->b:Lcom/facebook/HttpMethod;
goto :goto_99
:cond_106
move v1, v3
goto :goto_e9
:cond_108
const/4 v1, 0x1
invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
:try_start_10c
:try_end_10c
.catch Ljava/io/IOException; {:try_start_103 .. :try_end_10c} :catch_142
.catch Lorg/json/JSONException; {:try_start_103 .. :try_end_10c} :catch_15b
invoke-static {p0}, Lcom/facebook/Request;->d(Lcom/facebook/v;)Z
move-result v1
if-eqz v1, :cond_14b
new-instance v1, Lcom/facebook/m;
invoke-virtual {p0}, Lcom/facebook/v;->c()Landroid/os/Handler;
move-result-object v2
invoke-direct {v1, v2}, Lcom/facebook/m;-><init>(Landroid/os/Handler;)V
const/4 v2, 0x0
invoke-static {p0, v2, v10, v11, v1}, Lcom/facebook/Request;->a(Lcom/facebook/v;Lcom/facebook/internal/v;ILjava/net/URL;Ljava/io/OutputStream;)V
invoke-virtual {v1}, Lcom/facebook/m;->a()I
move-result v3
invoke-virtual {v1}, Lcom/facebook/m;->b()Ljava/util/Map;
move-result-object v4
new-instance v2, Ljava/io/BufferedOutputStream;
invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
new-instance v1, Lcom/facebook/n;
int-to-long v5, v3
move-object v3, p0
invoke-direct/range {v1 .. v6}, Lcom/facebook/n;-><init>(Ljava/io/OutputStream;Lcom/facebook/v;Ljava/util/Map;J)V
:try_end_137
.catchall {:try_start_10c .. :try_end_137} :catchall_155
move-object v2, v1
:try_start_138
:goto_138
invoke-static {p0, v9, v10, v11, v2}, Lcom/facebook/Request;->a(Lcom/facebook/v;Lcom/facebook/internal/v;ILjava/net/URL;Ljava/io/OutputStream;)V
:try_end_13b
.catchall {:try_start_138 .. :try_end_13b} :catchall_164
:try_start_13b
invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
invoke-virtual {v9}, Lcom/facebook/internal/v;->d()V
:try_end_141
.catch Ljava/io/IOException; {:try_start_13b .. :try_end_141} :catch_142
.catch Lorg/json/JSONException; {:try_start_13b .. :try_end_141} :catch_15b
goto :goto_ee
:catch_142
move-exception v1
new-instance v2, Lcom/facebook/FacebookException;
const-string v3, "could not construct request body"
invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:try_start_14b
:cond_14b
new-instance v2, Ljava/io/BufferedOutputStream;
invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_154
.catchall {:try_start_14b .. :try_end_154} :catchall_155
goto :goto_138
:catchall_155
move-exception v1
move-object v2, v8
:goto_157
:try_start_157
invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
throw v1
:try_end_15b
.catch Ljava/io/IOException; {:try_start_157 .. :try_end_15b} :catch_142
.catch Lorg/json/JSONException; {:try_start_157 .. :try_end_15b} :catch_15b
:catch_15b
move-exception v1
new-instance v2, Lcom/facebook/FacebookException;
const-string v3, "could not construct request body"
invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catchall_164
move-exception v1
goto :goto_157
.end method
.method private static d(Lcom/facebook/v;)Z
.registers 4
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/facebook/v;->e()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/w;
instance-of v0, v0, Lcom/facebook/x;
if-eqz v0, :cond_9
move v0, v1
:goto_1a
return v0
:cond_1b
invoke-virtual {p0}, Lcom/facebook/v;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Request;
iget-object v0, v0, Lcom/facebook/Request;->m:Lcom/facebook/p;
instance-of v0, v0, Lcom/facebook/s;
if-eqz v0, :cond_1f
move v0, v1
goto :goto_1a
:cond_33
const/4 v0, 0x0
goto :goto_1a
.end method
.method private static d(Ljava/lang/Object;)Z
.registers 2
instance-of v0, p0, Landroid/graphics/Bitmap;
if-nez v0, :cond_10
instance-of v0, p0, [B
if-nez v0, :cond_10
instance-of v0, p0, Landroid/os/ParcelFileDescriptor;
if-nez v0, :cond_10
instance-of v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private static e(Lcom/facebook/v;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/facebook/v;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_f
invoke-virtual {p0}, Lcom/facebook/v;->f()Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-virtual {p0}, Lcom/facebook/v;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Request;
iget-object v0, v0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
if-eqz v0, :cond_13
invoke-virtual {v0}, Lcom/facebook/Session;->d()Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_28
sget-object v0, Lcom/facebook/Request;->b:Ljava/lang/String;
goto :goto_e
.end method
.method private static e(Ljava/lang/Object;)Z
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
.method private static f(Ljava/lang/Object;)Ljava/lang/String;
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
.method private f()V
.registers 4
iget-object v0, p0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
invoke-virtual {v0}, Lcom/facebook/Session;->a()Z
move-result v0
if-nez v0, :cond_14
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Session provided to a Request in un-opened state."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
const-string v1, "access_token"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2e
iget-object v0, p0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
invoke-virtual {v0}, Lcom/facebook/Session;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
const-string v2, "access_token"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_2e
:cond_2e
iget-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
const-string v1, "sdk"
const-string v2, "android"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
const-string v1, "format"
const-string v2, "json"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_41
iget-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
const-string v1, "access_token"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2e
invoke-static {}, Lcom/facebook/ah;->h()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/facebook/ah;->i()Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_7e
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_7e
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "|"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
const-string v2, "access_token"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2e
:cond_7e
sget-object v0, Lcom/facebook/Request;->a:Ljava/lang/String;
const-string v1, "Warning: Sessionless Request needs token but missing either application ID or client token."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2e
.end method
.method private g()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/facebook/Request;->n:Ljava/lang/String;
if-eqz v0, :cond_c
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Can\'t override URL for a batch request"
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/facebook/Request;->h:Ljava/lang/String;
if-eqz v0, :cond_1c
invoke-direct {p0}, Lcom/facebook/Request;->i()Ljava/lang/String;
move-result-object v0
:goto_14
invoke-direct {p0}, Lcom/facebook/Request;->f()V
invoke-direct {p0, v0}, Lcom/facebook/Request;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1c
invoke-direct {p0}, Lcom/facebook/Request;->h()Ljava/lang/String;
move-result-object v0
goto :goto_14
.end method
.method private h()Ljava/lang/String;
.registers 5
sget-object v0, Lcom/facebook/Request;->c:Ljava/util/regex/Pattern;
iget-object v1, p0, Lcom/facebook/Request;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/Request;->f:Ljava/lang/String;
:goto_10
return-object v0
:cond_11
const-string v0, "%s/%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/facebook/Request;->p:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/facebook/Request;->f:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method
.method private i()Ljava/lang/String;
.registers 5
sget-object v0, Lcom/facebook/Request;->c:Ljava/util/regex/Pattern;
iget-object v1, p0, Lcom/facebook/Request;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/Request;->h:Ljava/lang/String;
:goto_10
return-object v0
:cond_11
const-string v0, "%s/%s/%s"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/facebook/Request;->p:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "method"
aput-object v3, v1, v2
const/4 v2, 0x2
iget-object v3, p0, Lcom/facebook/Request;->h:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method
.method public final a()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
return-void
.end method
.method public final a(Lcom/facebook/model/GraphObject;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->g:Lcom/facebook/model/GraphObject;
return-void
.end method
.method public final a(Lcom/facebook/p;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->m:Lcom/facebook/p;
return-void
.end method
.method public final a(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->o:Ljava/lang/Object;
return-void
.end method
.method public final b()Lcom/facebook/Session;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
return-object v0
.end method
.method public final c()Lcom/facebook/p;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->m:Lcom/facebook/p;
return-object v0
.end method
.method public final d()Lcom/facebook/aa;
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v3, [Lcom/facebook/Request;
aput-object p0, v0, v2
const-string v1, "requests"
invoke-static {v0, v1}, Lcom/facebook/internal/ak;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
new-instance v1, Lcom/facebook/v;
invoke-direct {v1, v0}, Lcom/facebook/v;-><init>(Ljava/util/Collection;)V
invoke-static {v1}, Lcom/facebook/Request;->a(Lcom/facebook/v;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_20
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-eq v1, v3, :cond_28
:cond_20
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "invalid state: expected a single response"
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/aa;
return-object v0
.end method
.method final e()Ljava/lang/String;
.registers 6
const/4 v2, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/facebook/Request;->n:Ljava/lang/String;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/Request;->n:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/facebook/Request;->h:Ljava/lang/String;
if-eqz v0, :cond_2e
const-string v0, "%s/%s"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {}, Lcom/facebook/internal/ad;->d()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v3
invoke-direct {p0}, Lcom/facebook/Request;->i()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_26
invoke-direct {p0}, Lcom/facebook/Request;->f()V
invoke-direct {p0, v0}, Lcom/facebook/Request;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_d
:cond_2e
iget-object v0, p0, Lcom/facebook/Request;->e:Lcom/facebook/HttpMethod;
sget-object v1, Lcom/facebook/HttpMethod;->b:Lcom/facebook/HttpMethod;
if-ne v0, v1, :cond_57
iget-object v0, p0, Lcom/facebook/Request;->f:Ljava/lang/String;
if-eqz v0, :cond_57
iget-object v0, p0, Lcom/facebook/Request;->f:Ljava/lang/String;
const-string v1, "/videos"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_57
invoke-static {}, Lcom/facebook/internal/ad;->c()Ljava/lang/String;
move-result-object v0
:goto_46
const-string v1, "%s/%s"
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v3
invoke-direct {p0}, Lcom/facebook/Request;->h()Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_26
:cond_57
invoke-static {}, Lcom/facebook/internal/ad;->b()Ljava/lang/String;
move-result-object v0
goto :goto_46
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "{Request:  session: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/Request;->d:Lcom/facebook/Session;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", graphPath: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", graphObject: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->g:Lcom/facebook/model/GraphObject;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", restMethod: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpMethod: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->e:Lcom/facebook/HttpMethod;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", parameters: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->l:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
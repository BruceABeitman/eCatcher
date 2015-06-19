.class public Lcom/twidroid/net/c;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "me/home"
.field public static final b:I = 0x1
.field public static final c:I = 0x2
.field public static final d:I = 0x3
.field public static final e:I = 0x5
.field public static final f:I = 0x6
.field public static final g:I = 0x7
.field public static final h:Ljava/lang/String; = "paramRequestString"
.field public static final i:Ljava/lang/String; = "summary"
.field public static final j:Ljava/lang/String; = "method"
.field public static final k:Ljava/lang/String; = "queries"
.field public static final l:Ljava/lang/String; = "uid"
.field public static final m:Ljava/lang/String; = "message"
.field public static final n:Ljava/lang/String; = "limit"
.field public static final o:Ljava/lang/String; = "until"
.field public static final p:Ljava/lang/String; = "newsListResult"
.field public static final q:Ljava/lang/String; = "commentsListResult"
.field public static final r:Ljava/lang/String; = "exceptionResult"
.field public static final s:Ljava/lang/String; = "booleanResult"
.field public static final t:Ljava/lang/String; = "stringResult"
.field private static final w:Ljava/lang/String; = "FacebookNewsfeedLoadTask"
.field private static final x:Ljava/lang/String; = "List of parameters not containes all needeble parameters."
.field private static final y:Ljava/lang/String; = "https://graph.facebook.com/%1$s/picture?type=%2$s&access_token=%3$s"
.field private A:Lcom/facebook/a/e;
.field private B:Lcom/twidroid/net/a/a/b;
.field private C:I
.field private D:Landroid/os/Bundle;
.field private E:Ljava/lang/ref/WeakReference;
.field private z:Lcom/twidroid/net/i;
.method public constructor <init>(Lcom/twidroid/fragments/base/o;Lcom/facebook/a/e;ILcom/twidroid/net/i;)V
.registers 6
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
iput-object p2, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
iput-object p4, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
iput p3, p0, Lcom/twidroid/net/c;->C:I
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/twidroid/net/c;->E:Ljava/lang/ref/WeakReference;
return-void
.end method
.method private a(Lorg/json/JSONObject;)Lcom/twidroid/model/facebook/FacebookNewsModel;
.registers 12
const/16 v9, 0xa
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
new-instance v0, Lcom/twidroid/model/facebook/FacebookNewsModel;
invoke-direct {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;-><init>()V
const-string v1, "id"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(Ljava/lang/String;)V
const-string v1, "from"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "id"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(Ljava/lang/String;)V
const-string v2, "name"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c(Ljava/lang/String;)V
const-string v1, "message"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_43
const-string v1, "message"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x20
invoke-virtual {v1, v9, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d(Ljava/lang/String;)V
:cond_43
const-string v1, "type"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_b5
const-string v1, "type"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->l(Ljava/lang/String;)V
const-string v2, "photo"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b5
const-string v1, "object_id"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_b5
const-string v1, "object_id"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "https://graph.facebook.com/%1$s/picture?type=%2$s&access_token=%3$s"
new-array v3, v8, [Ljava/lang/Object;
aput-object v1, v3, v5
const-string v4, "thumbnail"
aput-object v4, v3, v6
iget-object v4, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
invoke-virtual {v4}, Lcom/facebook/a/e;->d()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v7
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->h(Ljava/lang/String;)V
const-string v2, "https://graph.facebook.com/%1$s/picture?type=%2$s&access_token=%3$s"
new-array v3, v8, [Ljava/lang/Object;
aput-object v1, v3, v5
const-string v4, "normal"
aput-object v4, v3, v6
iget-object v4, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
invoke-virtual {v4}, Lcom/facebook/a/e;->d()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v7
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->i(Ljava/lang/String;)V
const-string v2, "https://graph.facebook.com/%1$s/picture?type=%2$s&access_token=%3$s"
new-array v3, v8, [Ljava/lang/Object;
aput-object v1, v3, v5
const-string v1, "album"
aput-object v1, v3, v6
iget-object v1, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
invoke-virtual {v1}, Lcom/facebook/a/e;->d()Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v7
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->j(Ljava/lang/String;)V
:cond_b5
const-string v1, "picture"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_c6
const-string v1, "picture"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->g(Ljava/lang/String;)V
:cond_c6
const-string v1, "link"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_d7
const-string v1, "link"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->f(Ljava/lang/String;)V
:cond_d7
const-string v1, "caption"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_e8
const-string v1, "caption"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->m(Ljava/lang/String;)V
:cond_e8
const-string v1, "story"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_ff
const-string v1, "story"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x20
invoke-virtual {v1, v9, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->n(Ljava/lang/String;)V
:cond_ff
const-string v1, "name"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_110
const-string v1, "name"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->k(Ljava/lang/String;)V
:cond_110
const-string v1, "description"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_127
const-string v1, "description"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x20
invoke-virtual {v1, v9, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o(Ljava/lang/String;)V
:cond_127
const-string v1, "created_time"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->e(Ljava/lang/String;)V
const-string v1, "likes"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_19b
const-string v1, "likes"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "count"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_167
const-string v2, "count"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(I)V
:goto_14f
const-string v1, "comments"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
if-eqz v1, :cond_1a3
const-string v2, "data"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
if-eqz v1, :cond_19f
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(I)V
:goto_166
return-object v0
:cond_167
const-string v2, "summary"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
if-nez v2, :cond_191
const-string v2, "FacebookNewsfeedLoadTask"
const-string v3, "can\'t find likes count data in post. will use array length"
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "data"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
if-eqz v1, :cond_186
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(I)V
goto :goto_14f
:cond_186
const-string v1, "FacebookNewsfeedLoadTask"
const-string v2, "can\'t use array length. Setting 0 as likes value"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v5}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(I)V
goto :goto_14f
:cond_191
const-string v1, "total_count"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(I)V
goto :goto_14f
:cond_19b
invoke-virtual {v0, v5}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(I)V
goto :goto_14f
:cond_19f
invoke-virtual {v0, v5}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(I)V
goto :goto_166
:cond_1a3
invoke-virtual {v0, v5}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(I)V
goto :goto_166
.end method
.method private a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/twidroid/net/a/a/b;
.registers 10
const/4 v3, 0x0
const/4 v1, 0x3
:try_start_2
const-string v0, ""
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v4, "error"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_6c
const-string v4, "error"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string v4, "message"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_25
const-string v0, "message"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_25
const-string v4, "type"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_6c
const-string v4, "OAuthException"
const-string v5, "type"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6c
const/4 v1, 0x5
move v2, v1
move-object v1, v0
:goto_3e
new-instance v0, Lcom/twidroid/net/a/a/b;
invoke-direct {v0, v1, v2}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
:goto_43
:try_end_43
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_43} :catch_44
return-object v0
:catch_44
move-exception v0
move-object v2, v0
:try_start_46
new-instance v1, Lcom/twidroid/net/a/a/b;
iget-object v0, p0, Lcom/twidroid/net/c;->E:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
const v4, 0x7f0c00ca
invoke-virtual {v0, v4}, Lcom/twidroid/fragments/base/o;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v4, 0x1
invoke-direct {v1, v0, v4}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
:try_end_5b
.catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5b} :catch_60
:try_start_5b
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
:try_end_5e
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_67
move-object v0, v1
goto :goto_43
:catch_60
move-exception v0
move-object v1, v0
move-object v0, v3
:goto_63
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_43
:catch_67
move-exception v0
move-object v6, v0
move-object v0, v1
move-object v1, v6
goto :goto_63
:cond_6c
move v2, v1
move-object v1, v0
goto :goto_3e
.end method
.method private a(Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_8a
:try_start_8
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v3, "error"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_36
const-string v3, "error"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
const-string v4, "message"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_36
new-instance v4, Lcom/twidroid/net/a/a/b;
const-string v5, "message"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const/4 v5, 0x3
invoke-direct {v4, v3, v5}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
iput-object v4, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
iget-object v3, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v3}, Lcom/twidroid/net/a/a/b;->printStackTrace()V
:cond_36
const-string v3, "error_msg"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_51
new-instance v3, Lcom/twidroid/net/a/a/b;
const-string v4, "error_msg"
invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x3
invoke-direct {v3, v4, v5}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
iput-object v3, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
iget-object v3, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v3}, Lcom/twidroid/net/a/a/b;->printStackTrace()V
:cond_51
const-string v3, "data"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_8a
const-string v3, "data"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
move v1, v0
:goto_60
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v4
if-ge v1, v4, :cond_8a
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
const-string v5, "id"
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_7b
const-string v5, "id"
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_7b
:try_end_7b
.catch Lorg/json/JSONException; {:try_start_8 .. :try_end_7b} :catch_7e
add-int/lit8 v1, v1, 0x1
goto :goto_60
:catch_7e
move-exception v1
invoke-direct {p0, v1, p1}, Lcom/twidroid/net/c;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/twidroid/net/a/a/b;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
iget-object v1, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v1}, Lcom/twidroid/net/a/a/b;->printStackTrace()V
:cond_8a
iget-object v1, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v3, "uid"
invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_99
const/4 v0, 0x1
:cond_99
return v0
.end method
.method private b(Ljava/lang/String;)Landroid/os/Bundle;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
if-eqz p1, :cond_62
:try_start_c
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v0, "data"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
const/4 v0, 0x0
:goto_18
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v5
if-ge v0, v5, :cond_2c
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
invoke-direct {p0, v5}, Lcom/twidroid/net/c;->a(Lorg/json/JSONObject;)Lcom/twidroid/model/facebook/FacebookNewsModel;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_2c
const-string v0, "paging"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_62
const-string v0, "paging"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v3, "next"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_62
const-string v3, "next"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
const-string v3, "limit"
const-string v4, "limit"
invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "until"
const-string v4, "until"
invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_62
:try_end_62
.catch Lorg/json/JSONException; {:try_start_c .. :try_end_62} :catch_68
:goto_62
const-string v0, "newsListResult"
invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
return-object v2
:catch_68
move-exception v0
invoke-direct {p0, v0, p1}, Lcom/twidroid/net/c;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/twidroid/net/a/a/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
iget-object v0, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v0}, Lcom/twidroid/net/a/a/b;->printStackTrace()V
goto :goto_62
.end method
.method private c()Landroid/os/Bundle;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget v1, p0, Lcom/twidroid/net/c;->C:I
packed-switch v1, :pswitch_data_5a
:pswitch_a
:goto_a
return-object v0
:pswitch_b
invoke-direct {p0}, Lcom/twidroid/net/c;->d()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/c;->b(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
goto :goto_a
:pswitch_14
invoke-direct {p0}, Lcom/twidroid/net/c;->e()Ljava/lang/String;
move-result-object v1
const-string v2, "booleanResult"
invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto :goto_a
:pswitch_22
invoke-direct {p0}, Lcom/twidroid/net/c;->e()Ljava/lang/String;
move-result-object v1
const-string v2, "booleanResult"
invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto :goto_a
:pswitch_30
const-string v1, "stringResult"
invoke-direct {p0}, Lcom/twidroid/net/c;->j()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/twidroid/net/c;->f(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a
:pswitch_3e
const-string v1, "booleanResult"
invoke-direct {p0}, Lcom/twidroid/net/c;->l()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/twidroid/net/c;->a(Ljava/lang/String;)Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto :goto_a
:pswitch_4c
const-string v1, "commentsListResult"
invoke-direct {p0}, Lcom/twidroid/net/c;->k()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/twidroid/net/c;->e(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto :goto_a
:pswitch_data_5a
.packed-switch 0x1
:pswitch_b
:pswitch_14
:pswitch_22
:pswitch_a
:pswitch_30
:pswitch_3e
:pswitch_4c
.end packed-switch
.end method
.method private c(Ljava/lang/String;)Ljava/util/ArrayList;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "data"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
const/4 v0, 0x0
:goto_11
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_61
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
new-instance v4, Lcom/twidroid/model/facebook/FacebookCommentModel;
invoke-direct {v4}, Lcom/twidroid/model/facebook/FacebookCommentModel;-><init>()V
const-string v5, "id"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/twidroid/model/facebook/FacebookCommentModel;->a(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
const-string v5, "message"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_3a
const-string v5, "message"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/twidroid/model/facebook/FacebookCommentModel;->d(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
:cond_3a
const-string v5, "created_time"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/twidroid/model/facebook/FacebookCommentModel;->e(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
const-string v5, "from"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
const-string v5, "id"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/twidroid/model/facebook/FacebookCommentModel;->b(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
const-string v5, "name"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Lcom/twidroid/model/facebook/FacebookCommentModel;->c(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_61
return-object v1
.end method
.method private d()Ljava/lang/String;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v2, "paramRequestString"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3e
:try_start_b
iget-object v0, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
iget-object v2, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v3, "paramRequestString"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
invoke-virtual {v0, v2, v3}, Lcom/facebook/a/e;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1c
move-result-object v0
:goto_1b
return-object v0
:catch_1c
move-exception v0
move-object v2, v0
:try_start_1e
new-instance v3, Lcom/twidroid/net/a/a/b;
iget-object v0, p0, Lcom/twidroid/net/c;->E:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
const v4, 0x7f0c00ca
invoke-virtual {v0, v4}, Lcom/twidroid/fragments/base/o;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:goto_37
:try_end_37
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_39
move-object v0, v1
goto :goto_1b
:catch_39
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_37
:cond_3e
new-instance v0, Lcom/twidroid/net/a/a/b;
const-string v2, "List of parameters not containes all needeble parameters."
const/4 v3, 0x4
invoke-direct {v0, v2, v3}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
move-object v0, v1
goto :goto_1b
.end method
.method private d(Ljava/lang/String;)Ljava/util/List;
.registers 11
const/4 v1, 0x0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v0, ""
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_a8
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v4, "fql_result_set"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
move v0, v1
:goto_24
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v6
if-ge v0, v6, :cond_48
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v6
const-string v7, "uid"
invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
const-string v8, "name"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_48
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v3, "fql_result_set"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
:goto_52
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v1, v0, :cond_a8
new-instance v4, Lcom/twidroid/model/facebook/FacebookCommentModel;
invoke-direct {v4}, Lcom/twidroid/model/facebook/FacebookCommentModel;-><init>()V
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v6, "id"
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/twidroid/model/facebook/FacebookCommentModel;->a(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v6, "time"
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v6
invoke-virtual {v4, v6, v7}, Lcom/twidroid/model/facebook/FacebookCommentModel;->a(J)Lcom/twidroid/model/facebook/FacebookCommentModel;
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v6, "text"
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/twidroid/model/facebook/FacebookCommentModel;->d(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v6, "fromid"
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/twidroid/model/facebook/FacebookCommentModel;->b(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v0}, Lcom/twidroid/model/facebook/FacebookCommentModel;->c(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_52
:cond_a8
return-object v2
.end method
.method private e()Ljava/lang/String;
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v2, "paramRequestString"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_63
:try_start_b
iget v1, p0, Lcom/twidroid/net/c;->C:I
const/4 v2, 0x2
if-ne v1, v2, :cond_25
iget-object v1, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
iget-object v2, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v3, "paramRequestString"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v4, "POST"
invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/a/e;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
:try_end_24
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_40
move-result-object v0
:cond_25
:try_start_25
iget v1, p0, Lcom/twidroid/net/c;->C:I
const/4 v2, 0x3
if-ne v1, v2, :cond_3f
iget-object v1, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
iget-object v2, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v3, "paramRequestString"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v4, "DELETE"
invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/a/e;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3e} :catch_6e
move-result-object v0
:goto_3f
:cond_3f
return-object v0
:catch_40
move-exception v1
move-object v2, v1
move-object v1, v0
:goto_43
:try_start_43
new-instance v3, Lcom/twidroid/net/a/a/b;
iget-object v0, p0, Lcom/twidroid/net/c;->E:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
const v4, 0x7f0c00ca
invoke-virtual {v0, v4}, Lcom/twidroid/fragments/base/o;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5c} :catch_5e
:goto_5c
move-object v0, v1
goto :goto_3f
:catch_5e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_5c
:cond_63
new-instance v1, Lcom/twidroid/net/a/a/b;
const-string v2, "List of parameters not containes all needeble parameters."
const/4 v3, 0x4
invoke-direct {v1, v2, v3}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
iput-object v1, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
goto :goto_3f
:catch_6e
move-exception v1
move-object v2, v1
move-object v1, v0
goto :goto_43
.end method
.method private e(Ljava/lang/String;)Ljava/util/ArrayList;
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_b
:try_start_7
invoke-direct {p0, p1}, Lcom/twidroid/net/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;
:try_end_a
.catch Lorg/json/JSONException; {:try_start_7 .. :try_end_a} :catch_c
move-result-object v0
:cond_b
:goto_b
return-object v0
:catch_c
move-exception v1
invoke-direct {p0, v1, p1}, Lcom/twidroid/net/c;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/twidroid/net/a/a/b;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
iget-object v1, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v1}, Lcom/twidroid/net/a/a/b;->printStackTrace()V
goto :goto_b
.end method
.method private f(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const-string v0, ""
const-string v1, ""
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1d
:try_start_a
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "id"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1d
const-string v2, "id"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_1c
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_1e
move-result-object v0
:goto_1d
:cond_1d
return-object v0
:catch_1e
move-exception v1
invoke-direct {p0, v1, p1}, Lcom/twidroid/net/c;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/twidroid/net/a/a/b;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
iget-object v1, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v1}, Lcom/twidroid/net/a/a/b;->printStackTrace()V
goto :goto_1d
.end method
.method private j()Ljava/lang/String;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v2, "message"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v2, "paramRequestString"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4a
:try_start_15
iget-object v0, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
iget-object v2, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v3, "paramRequestString"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v4, "POST"
invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/a/e;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
:try_end_26
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_28
move-result-object v0
:goto_27
return-object v0
:catch_28
move-exception v0
move-object v2, v0
:try_start_2a
new-instance v3, Lcom/twidroid/net/a/a/b;
iget-object v0, p0, Lcom/twidroid/net/c;->E:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
const v4, 0x7f0c00ca
invoke-virtual {v0, v4}, Lcom/twidroid/fragments/base/o;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:goto_43
:try_end_43
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_43} :catch_45
move-object v0, v1
goto :goto_27
:catch_45
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_43
:cond_4a
new-instance v0, Lcom/twidroid/net/a/a/b;
const-string v2, "List of parameters not containes all needeble parameters."
const/4 v3, 0x4
invoke-direct {v0, v2, v3}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
move-object v0, v1
goto :goto_27
.end method
.method private k()Ljava/lang/String;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v2, "paramRequestString"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v2, "limit"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_48
:try_start_15
iget-object v0, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
iget-object v2, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v3, "paramRequestString"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
invoke-virtual {v0, v2, v3}, Lcom/facebook/a/e;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
:try_end_24
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26
move-result-object v0
:goto_25
return-object v0
:catch_26
move-exception v0
move-object v2, v0
:try_start_28
new-instance v3, Lcom/twidroid/net/a/a/b;
iget-object v0, p0, Lcom/twidroid/net/c;->E:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
const v4, 0x7f0c00ca
invoke-virtual {v0, v4}, Lcom/twidroid/fragments/base/o;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:goto_41
:try_end_41
.catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_43
move-object v0, v1
goto :goto_25
:catch_43
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_41
:cond_48
new-instance v0, Lcom/twidroid/net/a/a/b;
const-string v2, "List of parameters not containes all needeble parameters."
const/4 v3, 0x4
invoke-direct {v0, v2, v3}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
move-object v0, v1
goto :goto_25
.end method
.method private l()Ljava/lang/String;
.registers 6
const-string v1, ""
iget-object v0, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v2, "paramRequestString"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v2, "uid"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4c
:try_start_16
iget v0, p0, Lcom/twidroid/net/c;->C:I
const/4 v2, 0x6
if-ne v0, v2, :cond_57
iget-object v0, p0, Lcom/twidroid/net/c;->A:Lcom/facebook/a/e;
iget-object v2, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
const-string v3, "paramRequestString"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/facebook/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
:try_end_28
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_2b
move-result-object v0
:goto_29
move-object v1, v0
:goto_2a
return-object v1
:catch_2b
move-exception v0
move-object v2, v0
:try_start_2d
new-instance v3, Lcom/twidroid/net/a/a/b;
iget-object v0, p0, Lcom/twidroid/net/c;->E:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
const v4, 0x7f0c00ca
invoke-virtual {v0, v4}, Lcom/twidroid/fragments/base/o;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_46
.catch Ljava/lang/Exception; {:try_start_2d .. :try_end_46} :catch_47
goto :goto_2a
:catch_47
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_2a
:cond_4c
new-instance v0, Lcom/twidroid/net/a/a/b;
const-string v2, "List of parameters not containes all needeble parameters."
const/4 v3, 0x4
invoke-direct {v0, v2, v3}, Lcom/twidroid/net/a/a/b;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
goto :goto_2a
:cond_57
move-object v0, v1
goto :goto_29
.end method
.method protected varargs a([Landroid/os/Bundle;)Landroid/os/Bundle;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
array-length v1, p1
if-lez v1, :cond_11
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/twidroid/net/c;->D:Landroid/os/Bundle;
invoke-direct {p0}, Lcom/twidroid/net/c;->c()Landroid/os/Bundle;
move-result-object v0
:cond_11
return-object v0
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Landroid/os/Bundle;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c;->a([Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 1
invoke-super {p0}, Lcom/ubermedia/a/a;->a()V
return-void
.end method
.method protected a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
iget-object v1, p0, Lcom/twidroid/net/c;->B:Lcom/twidroid/net/a/a/b;
invoke-interface {v0, v1}, Lcom/twidroid/net/i;->a(Lcom/twidroid/net/a/a/b;)V
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
instance-of v0, v0, Lcom/twidroid/net/h;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
check-cast v0, Lcom/twidroid/net/h;
invoke-interface {v0, p1}, Lcom/twidroid/net/h;->a(Landroid/os/Bundle;)V
goto :goto_e
:cond_1d
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
instance-of v0, v0, Lcom/twidroid/net/g;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
check-cast v0, Lcom/twidroid/net/g;
invoke-interface {v0, p1}, Lcom/twidroid/net/g;->a(Landroid/os/Bundle;)V
goto :goto_e
:cond_2b
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
instance-of v0, v0, Lcom/twidroid/net/e;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
check-cast v0, Lcom/twidroid/net/e;
invoke-interface {v0, p1}, Lcom/twidroid/net/e;->a(Landroid/os/Bundle;)V
goto :goto_e
:cond_39
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
instance-of v0, v0, Lcom/twidroid/net/f;
if-eqz v0, :cond_59
const/4 v0, 0x2
iget v1, p0, Lcom/twidroid/net/c;->C:I
if-ne v0, v1, :cond_4c
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
check-cast v0, Lcom/twidroid/net/f;
invoke-interface {v0, p1}, Lcom/twidroid/net/f;->b(Landroid/os/Bundle;)V
goto :goto_e
:cond_4c
const/4 v0, 0x3
iget v1, p0, Lcom/twidroid/net/c;->C:I
if-ne v0, v1, :cond_e
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
check-cast v0, Lcom/twidroid/net/f;
invoke-interface {v0, p1}, Lcom/twidroid/net/f;->a(Landroid/os/Bundle;)V
goto :goto_e
:cond_59
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
instance-of v0, v0, Lcom/twidroid/net/d;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/twidroid/net/c;->z:Lcom/twidroid/net/i;
check-cast v0, Lcom/twidroid/net/d;
invoke-interface {v0, p1}, Lcom/twidroid/net/d;->a(Landroid/os/Bundle;)V
goto :goto_e
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/os/Bundle;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c;->a(Landroid/os/Bundle;)V
return-void
.end method
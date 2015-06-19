.class final Lcom/bbm/d/s;
.super Ljava/lang/Object;
.source "BbmdsModel.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field protected a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/b/f/a/r;

.field final synthetic d:Lcom/bbm/d/a;


# direct methods
.method constructor <init>(Lcom/bbm/d/a;Ljava/lang/String;Lcom/google/b/f/a/r;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/d/s;->d:Lcom/bbm/d/a;

    iput-object p2, p0, Lcom/bbm/d/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/d/s;->c:Lcom/google/b/f/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/d/s;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listElements"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "cookie"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/d/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iput-boolean v3, p0, Lcom/bbm/d/s;->a:Z

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-boolean v0, p0, Lcom/bbm/d/s;->a:Z

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listChunk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "last"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/bbm/d/s;->d:Lcom/bbm/d/a;

    iget-object v1, v1, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    :cond_4d
    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_73

    new-instance v1, Lcom/bbm/d/gp;

    invoke-direct {v1}, Lcom/bbm/d/gp;-><init>()V

    const/4 v2, 0x0

    :try_start_61
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/gp;->a(Lorg/json/JSONObject;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_68} :catch_6e

    :goto_68
    iget-object v0, p0, Lcom/bbm/d/s;->c:Lcom/google/b/f/a/r;

    invoke-virtual {v0, v1}, Lcom/google/b/f/a/r;->a(Ljava/lang/Object;)Z

    goto :goto_1d

    :catch_6e
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_68

    :cond_73
    iget-object v0, p0, Lcom/bbm/d/s;->c:Lcom/google/b/f/a/r;

    new-instance v1, Lcom/bbm/d/gp;

    invoke-direct {v1}, Lcom/bbm/d/gp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/b/f/a/r;->a(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

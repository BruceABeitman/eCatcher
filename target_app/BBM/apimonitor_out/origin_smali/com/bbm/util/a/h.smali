.class final Lcom/bbm/util/a/h;
.super Ljava/lang/Object;
.source "GlympseTracker.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Lcom/bbm/util/a/g;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/bbm/util/a/g;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/a/h;->a:Lcom/bbm/util/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/a/h;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "listElements"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v0, "cookie"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/util/a/h;->a:Lcom/bbm/util/a/g;

    iget-object v1, v1, Lcom/bbm/util/a/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/util/a/h;->b:Z

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-boolean v3, p0, Lcom/bbm/util/a/h;->b:Z

    if-eqz v3, :cond_65

    const-string v3, "listChunk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/bbm/util/a/h;->a:Lcom/bbm/util/a/g;

    const-string v0, "elements"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v0, v1

    :goto_41
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_59

    iget-object v5, v3, Lcom/bbm/util/a/g;->g:Lcom/bbm/util/cs;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bbm/util/cs;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    const-string v0, "last"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    iput-boolean v1, p0, Lcom/bbm/util/a/h;->b:Z

    goto :goto_2b

    :cond_65
    const-string v3, "listAdd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/util/a/h;->a:Lcom/bbm/util/a/g;

    const-string v3, "elements"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_75
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2b

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "conv"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/bbm/util/a/g;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    sget-object v4, Lcom/bbm/d/fk;->t:Lcom/bbm/d/fk;

    invoke-virtual {v4}, Lcom/bbm/d/fk;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/bbm/util/a/g;->g:Lcom/bbm/util/cs;

    invoke-virtual {v4, v3}, Lcom/bbm/util/cs;->a(Ljava/lang/Object;)V

    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_75
.end method

.class public final Lcom/bbm/ui/f/o;
.super Ljava/lang/Object;
.source "GroupNotificationModel.java"

# interfaces
.implements Lcom/bbm/f/ac;
.implements Lcom/bbm/ui/f/c;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/ui/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/ui/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/f/o;->d:Z

    invoke-interface {p1, p0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/f/o;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/f/o;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V
    .registers 4

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/f/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/f/o;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_16
    iget-object v0, p0, Lcom/bbm/ui/f/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "invites"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bbm/ui/f/o;->d:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_25

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/bbm/g/ad;

    invoke-direct {v2}, Lcom/bbm/g/ad;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bbm/g/ad;->a(Lorg/json/JSONObject;)V

    iget-boolean v1, v2, Lcom/bbm/g/ad;->a:Z

    if-eqz v1, :cond_22

    new-instance v1, Lcom/bbm/ui/f/n;

    invoke-direct {v1, p0, v2, p2}, Lcom/bbm/ui/f/n;-><init>(Lcom/bbm/ui/f/o;Lcom/bbm/g/ad;Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/bbm/ui/f/o;->a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V

    invoke-virtual {v1}, Lcom/bbm/ui/f/n;->c()V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method private b(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_34

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/bbm/g/ag;

    invoke-direct {v2}, Lcom/bbm/g/ag;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bbm/g/ag;->a(Lorg/json/JSONObject;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "picture"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/bbm/ui/f/p;

    invoke-direct {v3, p0, v2, p2}, Lcom/bbm/ui/f/p;-><init>(Lcom/bbm/ui/f/o;Lcom/bbm/g/ag;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcom/bbm/ui/f/o;->a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V

    invoke-virtual {v3}, Lcom/bbm/ui/f/p;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_34
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v2, "listAdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    iget-object v1, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupInvitation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_21
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_a9

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/bbm/g/t;

    invoke-direct {v3}, Lcom/bbm/g/t;-><init>()V

    invoke-virtual {v3, v2}, Lcom/bbm/g/t;->a(Lorg/json/JSONObject;)V

    iget-object v2, v3, Lcom/bbm/g/t;->g:Ljava/lang/String;

    new-instance v4, Lcom/bbm/ui/f/m;

    invoke-direct {v4, p0, v3}, Lcom/bbm/ui/f/m;-><init>(Lcom/bbm/ui/f/o;Lcom/bbm/g/t;)V

    iget-boolean v3, v3, Lcom/bbm/g/t;->l:Z

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Lcom/bbm/ui/f/o;->d:Z

    if-eqz v3, :cond_48

    invoke-direct {p0, v2, v4}, Lcom/bbm/ui/f/o;->a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V

    invoke-virtual {v4}, Lcom/bbm/ui/f/m;->c()V

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_4b
    const-string v3, "groupPicture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_59
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_a9

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/bbm/g/af;

    invoke-direct {v3}, Lcom/bbm/g/af;-><init>()V

    invoke-virtual {v3, v2}, Lcom/bbm/g/af;->a(Lorg/json/JSONObject;)V

    iget-boolean v2, v3, Lcom/bbm/g/af;->e:Z

    if-eqz v2, :cond_8f

    iget-object v2, v3, Lcom/bbm/g/af;->l:Ljava/lang/String;

    new-instance v4, Lcom/bbm/ui/f/q;

    invoke-direct {v4, p0, v3}, Lcom/bbm/ui/f/q;-><init>(Lcom/bbm/ui/f/o;Lcom/bbm/g/af;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "picture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/bbm/ui/f/o;->a(Ljava/lang/String;Lcom/bbm/ui/f/e;)V

    invoke-virtual {v4}, Lcom/bbm/ui/f/q;->c()V

    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_92
    const-string v0, "groupPictureComment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    const-string v0, "elements"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bbm/ui/f/o;->b(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    return-void

    :cond_aa
    const-string v0, "groupMessage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const-string v0, "elements"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bbm/ui/f/o;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_a9

    :cond_c2
    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "global"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bbm/ui/f/o;->a(Lorg/json/JSONArray;)V

    goto :goto_a9
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/f/o;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/bbm/ui/f/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/f/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/f/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/f/o;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/bbm/ui/f/o;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->a()V

    :cond_1a
    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/f/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method

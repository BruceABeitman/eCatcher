.class public final Lcom/bbm/l/b/j;
.super Lcom/bbm/l/b/l;
.source "WebStickerPack.java"


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/l/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/l/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/l/b/l;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/l/b/j;",
            ">;"
        }
    .end annotation

    const-string v0, "stickerpacks"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_27

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_24

    new-instance v4, Lcom/bbm/l/b/j;

    invoke-direct {v4}, Lcom/bbm/l/b/j;-><init>()V

    invoke-direct {v4, v3}, Lcom/bbm/l/b/j;->c(Lorg/json/JSONObject;)Lcom/bbm/l/b/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_27
    return-object v2
.end method

.method private c(Lorg/json/JSONObject;)Lcom/bbm/l/b/j;
    .registers 8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/bbm/l/b/l;->b(Lorg/json/JSONObject;)Lcom/bbm/l/b/l;

    const-string v0, "heroStickers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_35

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    move v0, v1

    :goto_18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_35

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_32

    iget-object v4, p0, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    new-instance v5, Lcom/bbm/l/b/e;

    invoke-direct {v5}, Lcom/bbm/l/b/e;-><init>()V

    invoke-virtual {v5, v3}, Lcom/bbm/l/b/e;->a(Lorg/json/JSONObject;)Lcom/bbm/l/b/e;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_35
    const-string v0, "wingmenStickers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_65

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    :goto_48
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_65

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_62

    iget-object v3, p0, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    new-instance v4, Lcom/bbm/l/b/e;

    invoke-direct {v4}, Lcom/bbm/l/b/e;-><init>()V

    invoke-virtual {v4, v2}, Lcom/bbm/l/b/e;->a(Lorg/json/JSONObject;)Lcom/bbm/l/b/e;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_65
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/bbm/l/b/k;Lcom/bbm/l/b/f;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/bbm/l/b/k;->a:Lcom/bbm/l/b/k;

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    :goto_6
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/b/e;

    iget-object v2, v0, Lcom/bbm/l/b/e;->b:Lcom/bbm/l/b/f;

    if-ne p2, v2, :cond_c

    iget-object v0, v0, Lcom/bbm/l/b/e;->a:Ljava/lang/String;

    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    goto :goto_6

    :cond_22
    const-string v0, ""

    goto :goto_1e
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/l/b/j;->h:Lcom/bbm/util/cr;

    if-nez v0, :cond_10

    new-instance v0, Lcom/bbm/util/cr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/l/b/j;->h:Lcom/bbm/util/cr;

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/bbm/l/b/j;->h:Lcom/bbm/util/cr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public final a()Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/l/b/j;->h:Lcom/bbm/util/cr;

    if-nez v0, :cond_10

    new-instance v0, Lcom/bbm/util/cr;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/l/b/j;->h:Lcom/bbm/util/cr;

    :cond_10
    iget-object v0, p0, Lcom/bbm/l/b/j;->h:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lorg/json/JSONObject;)Lcom/bbm/l/b/l;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/l/b/j;->c(Lorg/json/JSONObject;)Lcom/bbm/l/b/j;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/l/b/j;->i:Lcom/bbm/util/cr;

    if-nez v0, :cond_10

    new-instance v0, Lcom/bbm/util/cr;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/l/b/j;->i:Lcom/bbm/util/cr;

    :cond_10
    iget-object v0, p0, Lcom/bbm/l/b/j;->i:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/l/b/j;->i:Lcom/bbm/util/cr;

    if-nez v0, :cond_11

    new-instance v0, Lcom/bbm/util/cr;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/l/b/j;->i:Lcom/bbm/util/cr;

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/bbm/l/b/j;->i:Lcom/bbm/util/cr;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    invoke-super {p0, p1}, Lcom/bbm/l/b/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    check-cast p1, Lcom/bbm/l/b/j;

    iget-object v2, p0, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    if-nez v2, :cond_29

    iget-object v2, p1, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    if-eqz v2, :cond_35

    move v0, v1

    goto :goto_4

    :cond_29
    iget-object v2, p0, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    if-nez v2, :cond_3f

    iget-object v2, p1, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_3f
    iget-object v2, p0, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/bbm/l/b/l;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    if-nez v0, :cond_15

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    if-nez v2, :cond_1c

    :goto_13
    add-int/2addr v0, v1

    return v0

    :cond_15
    iget-object v0, p0, Lcom/bbm/l/b/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_1c
    iget-object v1, p0, Lcom/bbm/l/b/j;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_13
.end method

.class public final Lcom/bbm/d/a/c;
.super Ljava/lang/Object;
.source "ListDescriptor.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/d/a/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/a/c;->d:Ljava/util/Map;

    iput-object p2, p0, Lcom/bbm/d/a/c;->e:Ljava/util/List;

    iput-boolean v1, p0, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v1, p0, Lcom/bbm/d/a/c;->c:Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_15

    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_14} :catch_16

    move-object p0, v0

    :cond_15
    :goto_15
    return-object p0

    :catch_16
    move-exception v0

    goto :goto_15
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;
    .registers 4

    iget-object v0, p0, Lcom/bbm/d/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    array-length v0, v3

    iget-object v4, p0, Lcom/bbm/d/a/c;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_34

    :try_start_1a
    iget-object v0, p0, Lcom/bbm/d/a/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v4, v3, v1

    invoke-static {v4}, Lcom/bbm/d/a/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_2b} :catch_2f

    :goto_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :catch_2f
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_2b

    :cond_34
    return-object v2
.end method

.class public final Lcom/bbm/f/ab;
.super Ljava/lang/Object;
.source "ProtocolMessage.java"


# static fields
.field private static final e:Lorg/json/JSONObject;


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/bbm/f/ab;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/bbm/f/ab;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/f/ab;->d:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/f/ab;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbm/f/ab;->d:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    sget-object v0, Lcom/bbm/f/ab;->e:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "JSON object has 0 keys, should be 1."

    invoke-static {v0, v2}, Lcom/google/b/a/o;->a(ZLjava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x1

    :goto_23
    const-string v1, "JSON object has more then 1 key."

    invoke-static {v0, v1}, Lcom/google/b/a/o;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/bbm/f/ab;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/bbm/f/ab;->d:[B

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_23
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/bbm/f/ab;->d:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final b()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/f/ab;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

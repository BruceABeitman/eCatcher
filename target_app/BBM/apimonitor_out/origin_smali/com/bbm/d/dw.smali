.class public Lcom/bbm/d/dw;
.super Ljava/lang/Object;
.source "BbmdsProtocol.java"


# instance fields
.field a:Lcom/bbm/f/ab;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/f/ab;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/bbm/f/ab;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bbm/d/dw;->a:Lcom/bbm/f/ab;

    return-void
.end method


# virtual methods
.method public a()Lcom/bbm/f/ab;
    .registers 4

    iget-object v0, p0, Lcom/bbm/d/dw;->a:Lcom/bbm/f/ab;

    new-instance v1, Lcom/bbm/f/ab;

    iget-object v2, v0, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bbm/f/ab;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bbm/d/dw;->a:Lcom/bbm/f/ab;

    iget-object v0, v0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/bbm/util/cb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Lcom/bbm/f/z;

    invoke-direct {v1, v0}, Lcom/bbm/f/z;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.class final Lcom/bbm/util/dx;
.super Ljava/lang/Object;
.source "TpaUtil.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Lcom/bbm/util/cr;


# direct methods
.method constructor <init>(Lcom/bbm/util/cr;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/dx;->a:Lcom/bbm/util/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 4

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "checkPartnerTokenResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "valid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    :try_start_14
    const-string v1, "valid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/util/dx;->a:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_43
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_27} :catch_33

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    :try_start_34
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_43

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    goto :goto_32

    :catchall_43
    move-exception v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    throw v0

    :cond_50
    iget-object v0, p0, Lcom/bbm/util/dx;->a:Lcom/bbm/util/cr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    goto :goto_32
.end method

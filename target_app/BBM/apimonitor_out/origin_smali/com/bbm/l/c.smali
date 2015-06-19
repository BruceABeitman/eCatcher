.class final Lcom/bbm/l/c;
.super Ljava/lang/Object;
.source "PaymentController.java"

# interfaces
.implements Lcom/bbm/f/ac;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "paymentConfigurationResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "response"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    :try_start_15
    const-string v1, "response"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_47

    const-string v1, "response"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bbm/l/a;->d()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bbm/l/b/b;->b:Lcom/bbm/l/b/b;

    invoke-static {v0, v1, v2}, Lcom/bbm/l/b/c;->a(Ljava/lang/String;Landroid/content/Context;Lcom/bbm/l/b/b;)Lcom/bbm/l/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/b/c;)Lcom/bbm/l/b/c;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_34} :catch_50

    :goto_34
    invoke-static {}, Lcom/bbm/l/a;->f()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-static {}, Lcom/bbm/l/a;->e()Lcom/bbm/f/ac;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    invoke-static {}, Lcom/bbm/l/a;->g()Lcom/bbm/f/ac;

    :cond_46
    return-void

    :cond_47
    :try_start_47
    const-string v0, "paymentConfigurationResponse received with empty response body."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4f} :catch_50

    goto :goto_34

    :catch_50
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_34

    :cond_55
    const-string v0, "paymentConfigurationResponse received with no response body."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_34
.end method

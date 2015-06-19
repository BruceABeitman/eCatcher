.class final Lcom/bbm/util/dp;
.super Ljava/lang/Object;
.source "TpaUtil.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bbm/d/fl;

.field final synthetic e:Lcom/bbm/util/do;


# direct methods
.method constructor <init>(Lcom/bbm/util/do;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/d/fl;)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/util/dp;->e:Lcom/bbm/util/do;

    iput-object p2, p0, Lcom/bbm/util/dp;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/util/dp;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbm/util/dp;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bbm/util/dp;->d:Lcom/bbm/d/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 7

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "generatePartnerTokenResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    :try_start_14
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/util/dp;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/util/dp;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/util/dp;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/bbm/util/dm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invoke TPA Uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/bbm/util/dm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/dp;->e:Lcom/bbm/util/do;

    iget-object v0, v0, Lcom/bbm/util/do;->a:Lcom/bbm/util/dn;

    iget-object v0, v0, Lcom/bbm/util/dn;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/util/dp;->d:Lcom/bbm/d/fl;

    invoke-static {v0}, Lcom/bbm/util/dm;->a(Lcom/bbm/d/fl;)V
    :try_end_6c
    .catchall {:try_start_14 .. :try_end_6c} :catchall_88
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_6c} :catch_78

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    :cond_77
    :goto_77
    return-void

    :catch_78
    move-exception v0

    :try_start_79
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_88

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    goto :goto_77

    :catchall_88
    move-exception v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    throw v0
.end method

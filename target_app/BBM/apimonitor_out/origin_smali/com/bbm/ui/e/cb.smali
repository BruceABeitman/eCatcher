.class public final Lcom/bbm/ui/e/cb;
.super Lcom/bbm/j/u;
.source "StickerHolder.java"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/bbm/ui/e/bz;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/e/bz;Landroid/app/Activity;Z)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/e/cb;->d:Lcom/bbm/ui/e/bz;

    iput-object p2, p0, Lcom/bbm/ui/e/cb;->a:Landroid/app/Activity;

    const/16 v0, 0xa

    iput v0, p0, Lcom/bbm/ui/e/cb;->b:I

    iput-boolean p3, p0, Lcom/bbm/ui/e/cb;->c:Z

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/e/cb;->d:Lcom/bbm/ui/e/bz;

    invoke-static {v0}, Lcom/bbm/ui/e/bz;->c(Lcom/bbm/ui/e/bz;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/e/cb;->d:Lcom/bbm/ui/e/bz;

    invoke-static {v3}, Lcom/bbm/ui/e/bz;->b(Lcom/bbm/ui/e/bz;)Lcom/bbm/d/fg;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d/fg;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bbm/d/a;->r(Ljava/lang/String;)Lcom/bbm/d/gf;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/e/cb;->d:Lcom/bbm/ui/e/bz;

    invoke-static {v0}, Lcom/bbm/ui/e/bz;->d(Lcom/bbm/ui/e/bz;)Lcom/bbm/d/gh;

    move-result-object v4

    iget-object v0, v4, Lcom/bbm/d/gh;->g:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v0, v5, :cond_b3

    iget-object v0, v3, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v0, v5, :cond_b3

    move v0, v1

    :goto_27
    iget-object v5, v4, Lcom/bbm/d/gh;->g:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v5, v6, :cond_b2

    iget-object v5, v3, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v5, v6, :cond_b2

    iget-object v4, v4, Lcom/bbm/d/gh;->f:Ljava/lang/String;

    iget-object v5, v3, Lcom/bbm/d/gf;->c:Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/bbm/ui/e/cb;->d:Lcom/bbm/ui/e/bz;

    invoke-static {v7}, Lcom/bbm/ui/e/bz;->e(Lcom/bbm/ui/e/bz;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/bbm/ui/activities/StickerDetailsActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "pack_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "showStickerDetail"

    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "externalStickerId"

    iget-object v5, v3, Lcom/bbm/d/gf;->b:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "viewSource"

    sget-object v5, Lcom/bbm/c/q;->a:Lcom/bbm/c/q;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/bbm/ui/e/cb;->a:Landroid/app/Activity;

    if-eqz v4, :cond_b6

    const-string v4, "updateAfterPurchase"

    invoke-virtual {v6, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/e/cb;->a:Landroid/app/Activity;

    iget v4, p0, Lcom/bbm/ui/e/cb;->b:I

    invoke-virtual {v1, v6, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_6c
    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v4

    iget-boolean v1, p0, Lcom/bbm/ui/e/cb;->c:Z

    iget-object v5, p0, Lcom/bbm/ui/e/cb;->d:Lcom/bbm/ui/e/bz;

    invoke-static {v5}, Lcom/bbm/ui/e/bz;->f(Lcom/bbm/ui/e/bz;)Z

    move-result v5

    :try_start_78
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    sget-object v7, Lcom/bbm/c/n;->N:Lcom/bbm/c/n;

    invoke-virtual {v7}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/bbm/d/gf;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v7, Lcom/bbm/c/n;->P:Lcom/bbm/c/n;

    invoke-virtual {v7}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v3, Lcom/bbm/d/gf;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/bbm/c/n;->ab:Lcom/bbm/c/n;

    invoke-virtual {v3}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/bbm/c/l;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/bbm/c/n;->ac:Lcom/bbm/c/n;

    invoke-virtual {v1}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_c0

    sget-object v1, Lcom/bbm/c/k;->b:Lcom/bbm/c/k;

    :goto_aa
    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/bbm/c/m;->b:Lcom/bbm/c/m;

    invoke-virtual {v4, v1, v6}, Lcom/bbm/c/c;->a(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
    :try_end_b2
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_b2} :catch_c3

    :cond_b2
    :goto_b2
    return v0

    :cond_b3
    move v0, v2

    goto/16 :goto_27

    :cond_b6
    iget-object v1, p0, Lcom/bbm/ui/e/cb;->d:Lcom/bbm/ui/e/bz;

    invoke-static {v1}, Lcom/bbm/ui/e/bz;->e(Lcom/bbm/ui/e/bz;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6c

    :cond_c0
    :try_start_c0
    sget-object v1, Lcom/bbm/c/k;->a:Lcom/bbm/c/k;
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_c0 .. :try_end_c2} :catch_c3

    goto :goto_aa

    :catch_c3
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EventTracker.trackFullStickerViewEvent() JSONException - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_b2
.end method

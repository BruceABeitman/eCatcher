.class final Lcom/bbm/b/h;
.super Ljava/lang/Object;
.source "AdUtils.java"
.implements Lcom/bbm/f/ac;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 6
const-string v0, "listAdd"
iget-object v1, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6e
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "elements"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6e
:try_start_14
const-string v1, "elements"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "offerUri"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6e
const-string v1, "offerUri"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->b()Lcom/bbm/f/a;
move-result-object v2
invoke-static {}, Lcom/bbm/b/e;->c()Lcom/bbm/f/ac;
move-result-object v3
invoke-interface {v2, v3}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_59
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v1, 0x1000
invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v1
invoke-virtual {v1, v2}, Lcom/bbm/Alaska;->startActivity(Landroid/content/Intent;)V
:cond_59
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/b/e;->d()Lcom/bbm/b/q;
move-result-object v0
const-string v2, "offer"
invoke-static {v1, v2}, Lcom/bbm/b/v;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/b/af;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:goto_6e
:cond_6e
:try_end_6e
.catch Lorg/json/JSONException; {:try_start_14 .. :try_end_6e} :catch_6f
return-void
:catch_6f
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_6e
.end method
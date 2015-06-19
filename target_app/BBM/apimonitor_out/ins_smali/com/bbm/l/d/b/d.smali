.class final Lcom/bbm/l/d/b/d;
.super Ljava/lang/Object;
.source "GooglePlayMethod.java"
.implements Lcom/bbm/f/ac;
.field final synthetic a:Lcom/bbm/l/d/b/c;
.method constructor <init>(Lcom/bbm/l/d/b/c;)V
.registers 2
iput-object p1, p0, Lcom/bbm/l/d/b/d;->a:Lcom/bbm/l/d/b/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 6
const/4 v2, 0x0
iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
const-string v1, "validatePurchaseResponse"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_84
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "cookie"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_12d
:try_start_15
const-string v1, "cookie"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_123
const-string v2, "response"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
sget-object v2, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v2
const/16 v3, 0xc8
if-ne v0, v3, :cond_85
const-string v0, "validatePurchase passed"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/b/x;
invoke-static {}, Lcom/bbm/l/d/b/c;->j()Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
:goto_54
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z
move-result v0
if-eqz v0, :cond_fa
const-string v0, "purchaseValidation listener called with results"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/l/d/b/c;->k()Lcom/bbm/l/d;
move-result-object v0
if-eqz v0, :cond_75
invoke-static {}, Lcom/bbm/l/d/b/c;->k()Lcom/bbm/l/d;
move-result-object v0
invoke-static {}, Lcom/bbm/l/d/b/c;->j()Ljava/util/ArrayList;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/l/d;->a(Ljava/util/List;)V
:cond_75
invoke-static {}, Lcom/bbm/l/d/b/c;->j()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
invoke-static {}, Lcom/bbm/l/d/b/c;->l()Lcom/bbm/l/d;
:goto_84
:cond_84
return-void
:cond_85
const/16 v3, 0x1f7
if-ne v0, v3, :cond_e6
if-eqz v2, :cond_d7
const-string v0, "validatePurchase treat as passed"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/b/x;
invoke-static {}, Lcom/bbm/l/d/b/c;->j()Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
:try_end_ac
.catch Lorg/json/JSONException; {:try_start_15 .. :try_end_ac} :catch_ad
goto :goto_54
:catch_ad
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
invoke-static {}, Lcom/bbm/l/d/b/c;->k()Lcom/bbm/l/d;
move-result-object v0
if-eqz v0, :cond_c2
invoke-static {}, Lcom/bbm/l/d/b/c;->k()Lcom/bbm/l/d;
move-result-object v0
invoke-static {}, Lcom/bbm/l/d/b/c;->j()Ljava/util/ArrayList;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/l/d;->a(Ljava/util/List;)V
:cond_c2
invoke-static {}, Lcom/bbm/l/d/b/c;->j()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
invoke-static {}, Lcom/bbm/l/d/b/c;->l()Lcom/bbm/l/d;
goto :goto_84
:try_start_d7
:cond_d7
const-string v0, "validatePurchase retry"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
goto/16 :goto_54
:cond_e6
const-string v0, "validatePurchase failed"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
goto/16 :goto_54
:cond_fa
if-nez v2, :cond_84
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z
move-result v0
if-nez v0, :cond_84
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->size()I
move-result v0
sget-object v1, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->size()I
move-result v1
if-lt v0, v1, :cond_84
new-instance v0, Lcom/bbm/l/d/b/e;
invoke-direct {v0, p0}, Lcom/bbm/l/d/b/e;-><init>(Lcom/bbm/l/d/b/d;)V
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
const-wide/16 v2, 0xbb8
invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto/16 :goto_84
:cond_123
const-string v0, "validatePurchaseResponse received unknown cookie"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_12b
.catch Lorg/json/JSONException; {:try_start_d7 .. :try_end_12b} :catch_ad
goto/16 :goto_84
:cond_12d
const-string v0, "validatePurchaseResponse received with no cookie"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_84
.end method
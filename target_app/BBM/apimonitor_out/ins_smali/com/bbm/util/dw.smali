.class final Lcom/bbm/util/dw;
.super Ljava/lang/Object;
.source "TpaUtil.java"
.implements Lcom/bbm/f/ac;
.field final synthetic a:Lcom/bbm/util/cr;
.method constructor <init>(Lcom/bbm/util/cr;)V
.registers 2
iput-object p1, p0, Lcom/bbm/util/dw;->a:Lcom/bbm/util/cr;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 4
iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
const-string v1, "generatePartnerTokenResponse"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "token"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4c
:try_start_14
const-string v1, "token"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/util/dw;->a:Lcom/bbm/util/cr;
invoke-virtual {v1, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
:try_end_23
.catchall {:try_start_14 .. :try_end_23} :catchall_3f
.catch Lorg/json/JSONException; {:try_start_14 .. :try_end_23} :catch_2f
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
:goto_2e
:cond_2e
return-void
:catch_2f
move-exception v0
:try_start_30
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:try_end_33
.catchall {:try_start_30 .. :try_end_33} :catchall_3f
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
goto :goto_2e
:catchall_3f
move-exception v0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
throw v0
:cond_4c
iget-object v0, p0, Lcom/bbm/util/dw;->a:Lcom/bbm/util/cr;
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
goto :goto_2e
.end method
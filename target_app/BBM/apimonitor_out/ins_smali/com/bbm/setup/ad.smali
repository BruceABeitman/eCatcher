.class final Lcom/bbm/setup/ad;
.super Lcom/bbm/j/k;
.source "SetupManager.java"
.field final synthetic a:Lcom/bbm/setup/aa;
.method constructor <init>(Lcom/bbm/setup/aa;)V
.registers 3
iput-object p1, p0, Lcom/bbm/setup/ad;->a:Lcom/bbm/setup/aa;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
iget-object v1, p0, Lcom/bbm/setup/ad;->a:Lcom/bbm/setup/aa;
iget-object v0, v1, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
const-string v2, "bbidState"
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v0
const-string v2, "credentials"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v0, v1, Lcom/bbm/setup/aa;->g:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_2f
const-string v0, "Unknown"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2f
iget-object v0, v1, Lcom/bbm/setup/aa;->g:Lcom/bbm/util/cr;
invoke-virtual {v0, v2}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
:cond_2f
return-void
.end method
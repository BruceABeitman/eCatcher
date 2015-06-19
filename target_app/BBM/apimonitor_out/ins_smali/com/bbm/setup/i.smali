.class final Lcom/bbm/setup/i;
.super Lcom/bbm/j/k;
.source "LoadingActivity.java"
.field final synthetic a:Lcom/bbm/setup/LoadingActivity;
.method constructor <init>(Lcom/bbm/setup/LoadingActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
const/4 v0, 0x0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
sget-object v1, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;
invoke-virtual {v1}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;
move-result-object v1
iget-object v1, v1, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
sget-object v2, Lcom/bbm/setup/ah;->a:Lcom/bbm/setup/ah;
if-eq v2, v1, :cond_14
sget-object v2, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;
if-ne v2, v1, :cond_48
:cond_14
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v1, "setupState"
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v0
const-string v1, "state"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "Ongoing"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_65
const-string v1, "progressMessage"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "Transferring"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5d
sget-object v0, Lcom/bbm/c/n;->am:Lcom/bbm/c/n;
iget-object v1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->a(Lcom/bbm/setup/LoadingActivity;)V
:cond_48
:goto_48
if-eqz v0, :cond_5c
iget-object v1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->e(Lcom/bbm/setup/LoadingActivity;)Lcom/bbm/c/n;
move-result-object v1
if-eq v1, v0, :cond_5c
iget-object v1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->f(Lcom/bbm/setup/LoadingActivity;)V
iget-object v1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1, v0}, Lcom/bbm/setup/LoadingActivity;->a(Lcom/bbm/setup/LoadingActivity;Lcom/bbm/c/n;)V
:cond_5c
return-void
:cond_5d
sget-object v0, Lcom/bbm/c/n;->ak:Lcom/bbm/c/n;
iget-object v1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->b(Lcom/bbm/setup/LoadingActivity;)V
goto :goto_48
:cond_65
const-string v0, "Success"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_85
iget-object v0, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->c(Lcom/bbm/setup/LoadingActivity;)Z
move-result v0
if-eqz v0, :cond_7d
sget-object v0, Lcom/bbm/c/n;->al:Lcom/bbm/c/n;
iget-object v1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->d(Lcom/bbm/setup/LoadingActivity;)V
goto :goto_48
:cond_7d
sget-object v0, Lcom/bbm/c/n;->ak:Lcom/bbm/c/n;
iget-object v1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->b(Lcom/bbm/setup/LoadingActivity;)V
goto :goto_48
:cond_85
sget-object v0, Lcom/bbm/c/n;->ak:Lcom/bbm/c/n;
iget-object v1, p0, Lcom/bbm/setup/i;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v1}, Lcom/bbm/setup/LoadingActivity;->b(Lcom/bbm/setup/LoadingActivity;)V
goto :goto_48
.end method
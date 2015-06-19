.class final Lcom/bbm/setup/ae;
.super Lcom/bbm/j/k;
.source "SetupManager.java"
.field  a:Z
.field final synthetic b:Lcom/bbm/setup/aa;
.method constructor <init>(Lcom/bbm/setup/aa;)V
.registers 3
const/4 v0, 0x0
iput-object p1, p0, Lcom/bbm/setup/ae;->b:Lcom/bbm/setup/aa;
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
iput-boolean v0, p0, Lcom/bbm/setup/ae;->a:Z
return-void
.end method
.method protected final a()V
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/setup/ae;->b:Lcom/bbm/setup/aa;
iget-object v0, v0, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
const-string v3, "bbidState"
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v0
const-string v3, "credentials"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/bbm/setup/ae;->b:Lcom/bbm/setup/aa;
iget-object v3, v3, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
const-string v4, "setupState"
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v3
const-string v4, "state"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;
move-result-object v5
iget-object v4, p0, Lcom/bbm/setup/ae;->b:Lcom/bbm/setup/aa;
iget-object v4, v4, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
invoke-virtual {v4}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v4
iget-object v6, v4, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v7, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v6, v7, :cond_4c
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_4c
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_4c
iget-boolean v6, v5, Lcom/bbm/f/ae;->i:Z
if-nez v6, :cond_4d
:goto_4c
:cond_4c
return-void
:cond_4d
iget-object v4, v4, Lcom/bbm/d/gp;->s:Ljava/util/List;
const-string v6, "Verified"
invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_db
const-string v0, "NotRequested"
invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_db
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_db
move v0, v1
:goto_66
iget-object v3, p0, Lcom/bbm/setup/ae;->b:Lcom/bbm/setup/aa;
iget-object v3, v3, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
invoke-virtual {v3}, Lcom/bbm/d/a;->c()Lcom/google/b/a/l;
move-result-object v3
invoke-virtual {v3}, Lcom/google/b/a/l;->a()Z
move-result v3
if-eqz v3, :cond_d9
move v4, v2
:goto_75
if-eqz v4, :cond_b9
iget-boolean v0, p0, Lcom/bbm/setup/ae;->a:Z
if-nez v0, :cond_b9
invoke-static {}, Lcom/blackberry/ids/IDS;->ids_get_bbmdn()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a6
iget-object v0, v5, Lcom/bbm/f/ae;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v3, v5, Lcom/bbm/f/ae;->h:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_bc
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_bc
const-string v5, "%s %s"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
aput-object v0, v6, v2
aput-object v3, v6, v1
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_a6
:cond_a6
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
new-instance v1, Lcom/bbm/d/dg;
invoke-direct {v1}, Lcom/bbm/d/dg;-><init>()V
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:cond_b9
iput-boolean v4, p0, Lcom/bbm/setup/ae;->a:Z
goto :goto_4c
:cond_bc
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_a6
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_ca
move-object v0, v3
goto :goto_a6
:cond_ca
iget-object v0, v5, Lcom/bbm/f/ae;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_a6
iget-object v0, v5, Lcom/bbm/f/ae;->a:Ljava/lang/String;
goto :goto_a6
:cond_d9
move v4, v0
goto :goto_75
:cond_db
move v0, v2
goto :goto_66
.end method
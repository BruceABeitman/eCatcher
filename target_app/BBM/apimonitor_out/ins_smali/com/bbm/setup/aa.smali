.class public final Lcom/bbm/setup/aa;
.super Ljava/lang/Object;
.source "SetupManager.java"
.field final a:Lcom/bbm/d/a;
.field public b:Lcom/bbm/j/k;
.field public c:Lcom/bbm/y;
.field public final d:Lcom/bbm/j/k;
.field public final e:Lcom/bbm/j/k;
.field public final f:Lcom/bbm/j/k;
.field  g:Lcom/bbm/util/cr;
.field public h:Lcom/bbm/setup/ai;
.field public i:Lcom/bbm/setup/an;
.field  j:Lcom/bbm/f/ae;
.field private final k:Lcom/bbm/s;
.field private l:Lcom/bbm/setup/g;
.field private m:Lcom/bbm/af;
.method public constructor <init>(Lcom/bbm/s;Lcom/bbm/d/a;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/setup/ab;
invoke-direct {v0, p0}, Lcom/bbm/setup/ab;-><init>(Lcom/bbm/setup/aa;)V
iput-object v0, p0, Lcom/bbm/setup/aa;->b:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/setup/ac;
invoke-direct {v0, p0}, Lcom/bbm/setup/ac;-><init>(Lcom/bbm/setup/aa;)V
iput-object v0, p0, Lcom/bbm/setup/aa;->d:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/setup/ad;
invoke-direct {v0, p0}, Lcom/bbm/setup/ad;-><init>(Lcom/bbm/setup/aa;)V
iput-object v0, p0, Lcom/bbm/setup/aa;->e:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/setup/ae;
invoke-direct {v0, p0}, Lcom/bbm/setup/ae;-><init>(Lcom/bbm/setup/aa;)V
iput-object v0, p0, Lcom/bbm/setup/aa;->f:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/util/cr;
const-string v1, ""
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/setup/aa;->g:Lcom/bbm/util/cr;
new-instance v0, Lcom/bbm/setup/g;
invoke-direct {v0}, Lcom/bbm/setup/g;-><init>()V
iput-object v0, p0, Lcom/bbm/setup/aa;->l:Lcom/bbm/setup/g;
new-instance v0, Lcom/bbm/setup/ai;
invoke-direct {v0}, Lcom/bbm/setup/ai;-><init>()V
iput-object v0, p0, Lcom/bbm/setup/aa;->h:Lcom/bbm/setup/ai;
new-instance v0, Lcom/bbm/f/ae;
invoke-direct {v0}, Lcom/bbm/f/ae;-><init>()V
iput-object v0, p0, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;
iput-object p1, p0, Lcom/bbm/setup/aa;->k:Lcom/bbm/s;
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
iput-object v0, p0, Lcom/bbm/setup/aa;->m:Lcom/bbm/af;
iput-object p2, p0, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/y;
invoke-interface {p1}, Lcom/bbm/s;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, p2, v1}, Lcom/bbm/y;-><init>(Lcom/bbm/d/a;Landroid/content/Context;)V
iput-object v0, p0, Lcom/bbm/setup/aa;->c:Lcom/bbm/y;
new-instance v0, Lcom/bbm/setup/an;
invoke-direct {v0, p1}, Lcom/bbm/setup/an;-><init>(Lcom/bbm/s;)V
iput-object v0, p0, Lcom/bbm/setup/aa;->i:Lcom/bbm/setup/an;
return-void
.end method
.method public final a()Lcom/bbm/setup/ag;
.registers 12
const/4 v10, 0x0
const/4 v9, 0x1
iget-object v0, p0, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
const-string v1, "bbidState"
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v0
const-string v1, "credentials"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
const-string v1, "setupState"
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v0
const-string v1, "state"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
const-string v1, "upgradeNotification"
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v0
const-string v1, "showNotification"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v4
iget-object v0, p0, Lcom/bbm/setup/aa;->k:Lcom/bbm/s;
invoke-interface {v0}, Lcom/bbm/s;->A()Lcom/bbm/f/af;
move-result-object v0
sget-object v1, Lcom/bbm/setup/af;->a:[I
invoke-virtual {v0}, Lcom/bbm/f/af;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_2c6
const-string v0, "SetupManager getActiveScreen bbidState.credentials %s, setupState.state %s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
aput-object v2, v1, v10
aput-object v3, v1, v9
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/setup/aa;->k:Lcom/bbm/s;
invoke-interface {v0}, Lcom/bbm/s;->n()Z
move-result v0
if-eqz v0, :cond_74
sget-object v0, Lcom/bbm/al;->l:Lcom/bbm/al;
invoke-static {v0}, Lcom/bbm/setup/ag;->a(Lcom/bbm/al;)Lcom/bbm/setup/ag;
move-result-object v0
:goto_63
return-object v0
:pswitch_64
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->l:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto :goto_63
:pswitch_6c
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto :goto_63
:cond_74
invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/f/ae;->j:Z
if-eqz v0, :cond_8c
const-string v0, "Unknown"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8c
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->i:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto :goto_63
:cond_8c
iget-object v0, p0, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->c()Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_af
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/al;
sget-object v1, Lcom/bbm/al;->j:Lcom/bbm/al;
if-ne v0, v1, :cond_aa
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->c:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto :goto_63
:cond_aa
invoke-static {v0}, Lcom/bbm/setup/ag;->a(Lcom/bbm/al;)Lcom/bbm/setup/ag;
move-result-object v0
goto :goto_63
:cond_af
iget-object v0, p0, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;
const-string v1, "bbidState"
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v1
const-string v5, "credentials"
invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v5, "setupState"
invoke-virtual {v0, v5}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v5
invoke-virtual {v5}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v5
const-string v6, "state"
invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0}, Lcom/bbm/d/a;->i()Ljava/lang/String;
move-result-object v6
invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v0
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-nez v7, :cond_f1
invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-nez v7, :cond_f1
invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-nez v7, :cond_f1
iget-object v7, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v8, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v7, v8, :cond_12a
:cond_f1
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
move-object v1, v0
:goto_f4
const-string v0, "Unknown"
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_162
const-string v0, "NotRequested"
invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_162
iget-object v0, p0, Lcom/bbm/setup/aa;->g:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_162
iget-object v0, p0, Lcom/bbm/setup/aa;->g:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v5, "Unknown"
invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_162
sget-object v0, Lcom/bbm/al;->e:Lcom/bbm/al;
invoke-static {v0}, Lcom/bbm/setup/ag;->a(Lcom/bbm/al;)Lcom/bbm/setup/ag;
move-result-object v0
goto/16 :goto_63
:cond_12a
iget-object v0, v0, Lcom/bbm/d/gp;->s:Ljava/util/List;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v7
invoke-virtual {v7}, Lcom/bbm/Alaska;->A()Lcom/bbm/f/af;
move-result-object v7
sget-object v8, Lcom/bbm/f/af;->a:Lcom/bbm/f/af;
if-ne v7, v8, :cond_15e
const-string v7, "Verified"
invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_15e
const-string v1, "NotRequested"
invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_15e
invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_15e
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_15e
invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_15e
sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
move-object v1, v0
goto :goto_f4
:cond_15e
sget-object v0, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
move-object v1, v0
goto :goto_f4
:cond_162
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v1, v0, :cond_16f
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_16f
sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v0, :cond_17c
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->d:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_17c
const-string v0, "Verified"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_195
const-string v0, "Success"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_195
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->a:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_195
iget-object v0, p0, Lcom/bbm/setup/aa;->m:Lcom/bbm/af;
invoke-virtual {v0}, Lcom/bbm/af;->j()Z
move-result v0
if-nez v0, :cond_1a6
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->g:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_1a6
iget-object v0, p0, Lcom/bbm/setup/aa;->m:Lcom/bbm/af;
invoke-virtual {v0}, Lcom/bbm/af;->p()Z
move-result v0
if-eqz v0, :cond_255
iget-object v0, p0, Lcom/bbm/setup/aa;->m:Lcom/bbm/af;
invoke-virtual {v0}, Lcom/bbm/af;->h()Z
move-result v0
if-eqz v0, :cond_1be
iget-object v0, p0, Lcom/bbm/setup/aa;->m:Lcom/bbm/af;
invoke-virtual {v0}, Lcom/bbm/af;->i()Z
move-result v0
if-nez v0, :cond_255
:cond_1be
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-static {v0}, Lcom/bbm/i/a;->a(Lcom/bbm/d/a;)Z
move-result v0
invoke-static {}, Lcom/bbm/Alaska;->y()Z
move-result v1
if-eqz v1, :cond_1ce
if-eqz v0, :cond_1d7
:cond_1ce
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->a:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_1d7
iget-object v0, p0, Lcom/bbm/setup/aa;->m:Lcom/bbm/af;
invoke-virtual {v0}, Lcom/bbm/af;->h()Z
move-result v0
if-nez v0, :cond_216
new-instance v0, Lcom/bbm/i/b;
invoke-static {}, Lcom/bbm/Alaska;->x()Lcom/bbm/j/r;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v5
invoke-direct {v0, v1, v5}, Lcom/bbm/i/b;-><init>(Lcom/bbm/j/r;Lcom/bbm/d;)V
invoke-virtual {v0}, Lcom/bbm/i/b;->b()V
invoke-virtual {v0}, Lcom/bbm/i/b;->d()I
move-result v0
if-lez v0, :cond_1fe
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->e:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_1fe
const-string v0, "No local friends to add. Skipping the \'Add Friends\' screen"
new-array v1, v10, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "has_shown_pyk_add"
invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_216
iget-object v0, p0, Lcom/bbm/setup/aa;->m:Lcom/bbm/af;
invoke-virtual {v0}, Lcom/bbm/af;->i()Z
move-result v0
if-nez v0, :cond_255
new-instance v0, Lcom/bbm/i/b;
invoke-static {}, Lcom/bbm/Alaska;->x()Lcom/bbm/j/r;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v5
invoke-direct {v0, v1, v5}, Lcom/bbm/i/b;-><init>(Lcom/bbm/j/r;Lcom/bbm/d;)V
invoke-virtual {v0}, Lcom/bbm/i/b;->h()V
invoke-virtual {v0}, Lcom/bbm/i/b;->d()I
move-result v0
if-lez v0, :cond_23d
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->f:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_23d
const-string v0, "No local friends to add. Skipping the \'Invite To BBM\' screen"
new-array v1, v10, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "has_shown_pyk_invite"
invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_255
iget-object v0, p0, Lcom/bbm/setup/aa;->i:Lcom/bbm/setup/an;
iget-object v0, v0, Lcom/bbm/setup/an;->c:Lcom/bbm/af;
invoke-virtual {v0}, Lcom/bbm/af;->f()I
move-result v0
if-eq v9, v0, :cond_272
iget-object v0, p0, Lcom/bbm/setup/aa;->i:Lcom/bbm/setup/an;
iget-object v0, v0, Lcom/bbm/setup/an;->c:Lcom/bbm/af;
invoke-virtual {v0}, Lcom/bbm/af;->g()Z
move-result v0
if-nez v0, :cond_272
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->h:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_272
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_27e
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_287
:cond_27e
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_287
if-eqz v4, :cond_2ab
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "inapp_upgrade_notification_last_show_timestamp"
const-wide/16 v4, 0x0
invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long v0, v4, v0
const-wide/32 v4, 0x5265c00
cmp-long v0, v0, v4
if-ltz v0, :cond_2ab
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->m:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_2ab
const-string v0, "Success"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2bc
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->k:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
:cond_2bc
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->a:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
goto/16 :goto_63
nop
:pswitch_data_2c6
.packed-switch 0x1
:pswitch_64
:pswitch_64
:pswitch_6c
:pswitch_6c
.end packed-switch
.end method
.class final Lcom/bbm/ui/activities/we;
.super Lcom/bbm/j/u;
.source "MainActivity.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/activities/wd;
.method constructor <init>(Lcom/bbm/ui/activities/wd;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iput-object p2, p0, Lcom/bbm/ui/activities/we;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v3, v3, Lcom/bbm/ui/activities/wd;->e:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v0, v0, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->r(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_24
move v0, v1
:goto_23
return v0
:cond_24
if-eqz v3, :cond_2c
iget-object v4, v3, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_2e
:cond_2c
move v0, v1
goto :goto_23
:cond_2e
if-eqz v3, :cond_36
iget-object v1, v3, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v1, v4, :cond_4b
:cond_36
iget-object v0, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v0, v0, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;
const/4 v1, 0x0
iget-object v3, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v3, v3, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;
const v4, 0x7f0e0564
invoke-virtual {v3, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v3}, Lcom/bbm/util/dm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move v0, v2
goto :goto_23
:cond_4b
iget-object v1, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v1, v1, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/MainActivity;->s(Lcom/bbm/ui/activities/MainActivity;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;
move-result-object v1
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
const-string v5, "appId"
iget-object v6, v3, Lcom/bbm/d/fl;->a:Ljava/lang/String;
invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v5, "appMessage"
iget-object v6, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v6, v6, Lcom/bbm/ui/activities/wd;->c:Ljava/lang/String;
invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v5, "appContext"
iget-object v6, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v6, v6, Lcom/bbm/ui/activities/wd;->h:Ljava/lang/String;
invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v5, "customMessage"
iget-object v6, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v6, v6, Lcom/bbm/ui/activities/wd;->d:Ljava/lang/String;
invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v5, "receiverUri"
iget-object v6, p0, Lcom/bbm/ui/activities/we;->a:Ljava/lang/String;
invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v5, "displayName"
iget-object v3, v3, Lcom/bbm/d/fl;->c:Ljava/lang/String;
invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "valid"
invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/ui/activities/we;->b:Lcom/bbm/ui/activities/wd;
iget-object v0, v0, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->s(Lcom/bbm/ui/activities/MainActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
move v0, v2
goto :goto_23
.end method
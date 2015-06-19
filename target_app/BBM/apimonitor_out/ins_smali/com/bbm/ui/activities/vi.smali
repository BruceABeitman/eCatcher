.class final Lcom/bbm/ui/activities/vi;
.super Landroid/os/Handler;
.source "MainActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/vi;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 11
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/util/HashMap;
const-string v1, "appId"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v2, "appMessage"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
const-string v3, "appContext"
invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
const-string v4, "customMessage"
invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
const-string v5, "receiverUri"
invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
const-string v6, "displayName"
invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
const-string v7, "valid"
invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v7
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
if-eqz v7, :cond_80
invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
move-result v7
if-eqz v7, :cond_80
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/bbm/ui/activities/vi;->a:Lcom/bbm/ui/activities/MainActivity;
const v6, 0x7f0e056d
invoke-virtual {v0, v6}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v6
:goto_5b
iget-object v0, p0, Lcom/bbm/ui/activities/vi;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v5}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/vi;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-static/range {v0 .. v6}, Lcom/bbm/util/dm;->a(Lcom/bbm/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_6b
return-void
:cond_6c
iget-object v0, p0, Lcom/bbm/ui/activities/vi;->a:Lcom/bbm/ui/activities/MainActivity;
const v7, 0x7f0e056e
invoke-virtual {v0, v7}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object v6, v7, v8
invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
goto :goto_5b
:cond_80
iget-object v1, p0, Lcom/bbm/ui/activities/vi;->a:Lcom/bbm/ui/activities/MainActivity;
check-cast v0, Ljava/util/HashMap;
invoke-static {v1, v5, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
goto :goto_6b
.end method
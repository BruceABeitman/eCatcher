.class public Lcom/igexin/push/core/a/a/k;
.super Ljava/lang/Object;
.implements Lcom/igexin/push/core/a/a/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
.registers 9
sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_5b
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_11
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/PackageInfo;
iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_11
iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;
array-length v3, v2
const/4 v0, 0x0
:goto_29
if-ge v0, v3, :cond_11
aget-object v4, v2, v0
sget-object v5, Lcom/igexin/push/core/a;->n:Ljava/lang/String;
iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_55
sget-object v5, Lcom/igexin/push/core/a;->o:Ljava/lang/String;
iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_55
sget-object v5, Lcom/igexin/push/core/a;->p:Ljava/lang/String;
iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_55
sget-object v5, Lcom/igexin/push/core/a;->q:Ljava/lang/String;
iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_58
:cond_55
iget-object v0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
:goto_57
return-object v0
:cond_58
add-int/lit8 v0, v0, 0x1
goto :goto_29
:cond_5b
const/4 v0, 0x0
goto :goto_57
.end method
.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;
.registers 4
sget-object v0, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;
return-object v0
.end method
.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
.registers 4
:try_start_0
sget-boolean v0, Lcom/igexin/push/a/j;->v:Z
const/4 v1, 0x1
if-ne v0, v1, :cond_67
const-string/jumbo v0, "do"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_67
const-string/jumbo v0, "actionid"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_67
const-string/jumbo v0, "type"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_67
const-string/jumbo v0, "pkgname"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_67
new-instance v0, Lcom/igexin/push/core/bean/m;
invoke-direct {v0}, Lcom/igexin/push/core/bean/m;-><init>()V
const-string/jumbo v1, "wakeupsdk"
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->setType(Ljava/lang/String;)V
const-string/jumbo v1, "actionid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->setActionId(Ljava/lang/String;)V
const-string/jumbo v1, "do"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->setDoActionId(Ljava/lang/String;)V
const-string/jumbo v1, "pkgname"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->a(Ljava/lang/String;)V
const-string/jumbo v1, "is_forcestart"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_65
const-string/jumbo v1, "is_forcestart"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->a(Z)V
:cond_65
:try_end_65
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_65} :catch_66
:goto_65
return-object v0
:catch_66
move-exception v0
:cond_67
const/4 v0, 0x0
goto :goto_65
.end method
.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
.registers 8
const/4 v4, 0x1
if-eqz p1, :cond_64
if-eqz p2, :cond_64
move-object v0, p2
check-cast v0, Lcom/igexin/push/core/bean/m;
invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->b()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/igexin/push/core/a/a/k;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_44
sget-object v3, Lcom/igexin/push/core/a;->n:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_73
invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->a()Z
move-result v0
if-ne v0, v4, :cond_65
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "action"
const-string/jumbo v2, "com.igexin.action.initialize.slave"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "op_app"
sget-object v2, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "isSlave"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:goto_44
:cond_44
invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
:cond_64
return v4
:cond_65
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_44
:cond_73
sget-object v0, Lcom/igexin/push/core/a;->o:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_8b
sget-object v0, Lcom/igexin/push/core/a;->p:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_8b
sget-object v0, Lcom/igexin/push/core/a;->q:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_44
:cond_8b
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_44
.end method
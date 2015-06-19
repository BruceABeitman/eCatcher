.class public Lcom/igexin/push/core/a/a/i;
.super Ljava/lang/Object;
.implements Lcom/igexin/push/core/a/a/a;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/a/i;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Lcom/igexin/push/core/bean/k;Ljava/lang/String;)V
.registers 13
const/4 v8, 0x0
const/4 v7, -0x1
invoke-virtual {p1}, Lcom/igexin/push/core/bean/k;->a()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-eq v3, v7, :cond_8
const-string/jumbo v1, ""
const/4 v0, 0x0
const-string/jumbo v4, "&"
invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-ne v4, v7, :cond_43
add-int/lit8 v1, v3, -0x1
invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "="
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-eq v3, v7, :cond_3c
const-string/jumbo v0, "="
invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_3c
:cond_3c
invoke-virtual {p1, v1}, Lcom/igexin/push/core/bean/k;->a(Ljava/lang/String;)V
invoke-virtual {p1, v0}, Lcom/igexin/push/core/bean/k;->b(Ljava/lang/String;)V
goto :goto_8
:cond_43
add-int/lit8 v5, v3, -0x1
invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
const/16 v6, 0x3f
if-ne v5, v6, :cond_83
invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
add-int/lit8 v5, v4, 0x1
invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "="
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-eq v3, v7, :cond_3c
const-string/jumbo v0, "="
invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
goto :goto_3c
:cond_83
add-int/lit8 v4, v3, -0x1
invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x26
if-ne v4, v5, :cond_3c
add-int/lit8 v0, v3, -0x1
invoke-virtual {v2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v0, ""
const-string/jumbo v2, "&"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-eq v2, v7, :cond_ce
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
:goto_b8
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v9, v1
move-object v1, v0
move-object v0, v9
goto/16 :goto_3c
:cond_ce
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
goto :goto_b8
.end method
.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;
.registers 4
sget-object v0, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;
return-object v0
.end method
.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
.registers 5
:try_start_0
const-string/jumbo v0, "url"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_89
const-string/jumbo v0, "do"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_89
const-string/jumbo v0, "actionid"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_89
const-string/jumbo v0, "url"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v0, ""
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_89
new-instance v0, Lcom/igexin/push/core/bean/k;
invoke-direct {v0}, Lcom/igexin/push/core/bean/k;-><init>()V
const-string/jumbo v2, "startweb"
invoke-virtual {v0, v2}, Lcom/igexin/push/core/bean/k;->setType(Ljava/lang/String;)V
const-string/jumbo v2, "actionid"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/igexin/push/core/bean/k;->setActionId(Ljava/lang/String;)V
const-string/jumbo v2, "do"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/igexin/push/core/bean/k;->setDoActionId(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/k;->a(Ljava/lang/String;)V
const-string/jumbo v1, "is_withcid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6a
const-string/jumbo v1, "is_withcid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "true"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6a
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/k;->a(Z)V
:cond_6a
const-string/jumbo v1, "is_withnettype"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_87
const-string/jumbo v1, "is_withnettype"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "true"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_87
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/k;->b(Z)V
:try_end_87
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_87} :catch_88
:cond_87
:goto_87
return-object v0
:catch_88
move-exception v0
:cond_89
const/4 v0, 0x0
goto :goto_87
.end method
.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
.registers 7
move-object v0, p2
check-cast v0, Lcom/igexin/push/core/bean/k;
const-string/jumbo v1, "targetpkgname"
invoke-direct {p0, v0, v1}, Lcom/igexin/push/core/a/a/i;->a(Lcom/igexin/push/core/bean/k;Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string/jumbo v2, "android.intent.action.VIEW"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-virtual {v0}, Lcom/igexin/push/core/bean/k;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0}, Lcom/igexin/push/core/bean/k;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
:try_start_2b
sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_30
:try_end_30
.catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_52
invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_50
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
:cond_50
const/4 v0, 0x1
return v0
:catch_52
move-exception v0
goto :goto_30
.end method
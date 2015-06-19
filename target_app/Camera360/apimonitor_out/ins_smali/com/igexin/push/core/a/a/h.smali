.class public Lcom/igexin/push/core/a/a/h;
.super Ljava/lang/Object;
.implements Lcom/igexin/push/core/a/a/a;
.field public static a:Ljava/util/HashMap;
.field private static final b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/a/h;->b:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/igexin/push/core/a/a/h;->a:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
.registers 9
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.doaction"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "taskid"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "messageid"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "appid"
sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "actionid"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "accesstoken"
sget-object v2, Lcom/igexin/push/core/g;->av:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "notifID"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
new-instance v1, Ljava/util/Random;
invoke-direct {v1}, Ljava/util/Random;-><init>()V
sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
const/16 v3, 0x3e8
invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I
move-result v1
const/high16 v3, 0x800
invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;
.registers 4
sget-object v0, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;
return-object v0
.end method
.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
.registers 6
const/4 v3, -0x1
:try_start_1
new-instance v0, Lcom/igexin/push/core/bean/h;
invoke-direct {v0}, Lcom/igexin/push/core/bean/h;-><init>()V
const-string/jumbo v1, "notification"
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->setType(Ljava/lang/String;)V
const-string/jumbo v1, "actionid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->setActionId(Ljava/lang/String;)V
const-string/jumbo v1, "do"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->setDoActionId(Ljava/lang/String;)V
const-string/jumbo v1, "title"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "text"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->a(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/igexin/push/core/bean/h;->b(Ljava/lang/String;)V
const-string/jumbo v1, "logo"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8a
const-string/jumbo v1, "logo"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, ".png"
invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
if-ne v1, v3, :cond_5d
const-string/jumbo v1, "logo"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, ".jpeg"
invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
if-eq v1, v3, :cond_c4
:cond_5d
const-string/jumbo v1, "logo"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, ".png"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-ne v1, v3, :cond_7b
const-string/jumbo v1, "logo"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, ".jpeg"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
:cond_7b
const-string/jumbo v2, "logo"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->c(Ljava/lang/String;)V
:goto_8a
:cond_8a
const-string/jumbo v1, "is_noclear"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_9d
const-string/jumbo v1, "is_noclear"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->a(Z)V
:cond_9d
const-string/jumbo v1, "is_novibrate"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_b0
const-string/jumbo v1, "is_novibrate"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->b(Z)V
:cond_b0
const-string/jumbo v1, "is_noring"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_c3
const-string/jumbo v1, "is_noring"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->c(Z)V
:goto_c3
:cond_c3
return-object v0
:cond_c4
const-string/jumbo v1, "null"
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/h;->c(Ljava/lang/String;)V
:try_end_ca
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_ca} :catch_cb
goto :goto_8a
:catch_cb
move-exception v0
const/4 v0, 0x0
goto :goto_c3
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/h;)V
.registers 14
const/4 v8, 0x1
const v9, 0x1080093
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
long-to-int v1, v0
sget-object v0, Lcom/igexin/push/core/g;->ak:Ljava/util/Map;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->getDoActionId()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, v0, v1}, Lcom/igexin/push/core/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
move-result-object v2
sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
const-string/jumbo v3, "notification"
invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
new-instance v3, Landroid/app/Notification;
invoke-direct {v3}, Landroid/app/Notification;-><init>()V
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
const/4 v4, 0x4
iput v4, v3, Landroid/app/Notification;->defaults:I
const v4, -0xff0100
iput v4, v3, Landroid/app/Notification;->ledARGB:I
const/16 v4, 0x3e8
iput v4, v3, Landroid/app/Notification;->ledOnMS:I
const/16 v4, 0xbb8
iput v4, v3, Landroid/app/Notification;->ledOffMS:I
iput v8, v3, Landroid/app/Notification;->flags:I
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->c()Z
move-result v4
if-nez v4, :cond_137
iget v4, v3, Landroid/app/Notification;->flags:I
or-int/lit8 v4, v4, 0x10
iput v4, v3, Landroid/app/Notification;->flags:I
:goto_4e
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->e()Z
move-result v4
if-nez v4, :cond_5a
iget v4, v3, Landroid/app/Notification;->defaults:I
or-int/lit8 v4, v4, 0x1
iput v4, v3, Landroid/app/Notification;->defaults:I
:cond_5a
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->d()Z
move-result v4
if-nez v4, :cond_66
iget v4, v3, Landroid/app/Notification;->defaults:I
or-int/lit8 v4, v4, 0x2
iput v4, v3, Landroid/app/Notification;->defaults:I
:cond_66
sget-object v4, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const-string/jumbo v5, "push"
const-string/jumbo v6, "drawable"
sget-object v7, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v4
const-string/jumbo v5, "null"
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_16c
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "@"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_149
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "email"
invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_13f
const v4, 0x108008f
iput v4, v3, Landroid/app/Notification;->icon:I
:goto_ac
sget-object v4, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const-string/jumbo v5, "notification"
const-string/jumbo v6, "layout"
sget-object v7, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v4
if-eqz v4, :cond_118
new-instance v5, Landroid/widget/RemoteViews;
sget-object v6, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-direct {v5, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
iput-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
sget-object v5, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const-string/jumbo v6, "notification_icon"
const-string/jumbo v7, "id"
sget-object v8, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v5
iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
iget v7, v3, Landroid/app/Notification;->icon:I
invoke-virtual {v6, v5, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
sget-object v6, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const-string/jumbo v7, "notification_title"
const-string/jumbo v8, "id"
sget-object v9, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v6
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->a()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
sget-object v6, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const-string/jumbo v7, "notification_name"
const-string/jumbo v8, "id"
sget-object v9, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v6
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
:cond_118
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->h()Ljava/lang/String;
move-result-object v5
if-nez v5, :cond_124
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->g()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_126
:cond_124
if-nez v4, :cond_176
:cond_126
sget-object v4, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->a()Ljava/lang/String;
move-result-object v5
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v4, v5, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
:goto_133
invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
return-void
:cond_137
iget v4, v3, Landroid/app/Notification;->flags:I
or-int/lit8 v4, v4, 0x20
iput v4, v3, Landroid/app/Notification;->flags:I
goto/16 :goto_4e
:cond_13f
if-eqz v4, :cond_145
iput v4, v3, Landroid/app/Notification;->icon:I
goto/16 :goto_ac
:cond_145
iput v9, v3, Landroid/app/Notification;->icon:I
goto/16 :goto_ac
:cond_149
sget-object v5, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {p3}, Lcom/igexin/push/core/bean/h;->f()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "drawable"
sget-object v8, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v5
if-eqz v5, :cond_162
iput v5, v3, Landroid/app/Notification;->icon:I
goto/16 :goto_ac
:cond_162
if-eqz v4, :cond_168
iput v4, v3, Landroid/app/Notification;->icon:I
goto/16 :goto_ac
:cond_168
iput v9, v3, Landroid/app/Notification;->icon:I
goto/16 :goto_ac
:cond_16c
if-eqz v4, :cond_172
iput v4, v3, Landroid/app/Notification;->icon:I
goto/16 :goto_ac
:cond_172
iput v9, v3, Landroid/app/Notification;->icon:I
goto/16 :goto_ac
:cond_176
iput-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
goto :goto_133
.end method
.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
.registers 5
if-eqz p1, :cond_15
if-eqz p2, :cond_15
instance-of v0, p2, Lcom/igexin/push/core/bean/h;
if-eqz v0, :cond_15
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v1
check-cast p2, Lcom/igexin/push/core/bean/h;
invoke-virtual {p0, v0, v1, p2}, Lcom/igexin/push/core/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/h;)V
:cond_15
const/4 v0, 0x1
return v0
.end method
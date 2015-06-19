.class public Lcom/pinguo/camera360/push/business/scene/PushSceneBean;
.super Ljava/lang/Object;
.source "PushSceneBean.java"
.implements Lcom/pinguo/camera360/push/PushDataBean;
.field private static final KEY_SCENE:Ljava/lang/String; = "scene"
.field private scene:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;->scene:I
return-void
.end method
.method public static getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/scene/PushSceneBean;
.registers 7
:try_start_0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;
invoke-direct {v0}, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;-><init>()V
const-string/jumbo v3, "scene"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v3
iput v3, v0, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;->scene:I
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-object v0
:catch_14
move-exception v1
const-string/jumbo v3, "newpush"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "push error:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, 0x0
goto :goto_13
.end method
.method public static notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
.registers 12
const/4 v5, 0x1
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getData()Lcom/pinguo/camera360/push/PushDataBean;
move-result-object v1
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;
move-result-object v0
const/4 v3, 0x0
check-cast v1, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;
invoke-virtual {v1}, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;->getScene()I
move-result v4
const-string/jumbo v6, "newpush"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "templateCount: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-lez v4, :cond_31
invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->getInstance()Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
move-result-object v2
const/4 v6, 0x3
invoke-virtual {v2, v6, v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->updateSceneTemplate(IZ)Z
move-result v3
:cond_31
const-string/jumbo v6, "newpush"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "success: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v3, :cond_51
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V
:goto_50
return v5
:cond_51
const/4 v5, 0x2
goto :goto_50
.end method
.method public getScene()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;->scene:I
return v0
.end method
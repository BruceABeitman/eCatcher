.class  Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;
.super Ljava/lang/Thread;
.source "WelcomeAdDownloadModle.java"
.field final synthetic this$0:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;
.field private final synthetic val$context:Landroid/content/Context;
.method constructor <init>(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;->this$0:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;
iput-object p2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;->val$context:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 6
:try_start_0
new-instance v2, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;->val$context:Landroid/content/Context;
invoke-direct {v2, v3}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;-><init>(Landroid/content/Context;)V
invoke-virtual {v2}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->getAdaptedContent()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->access$1()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Refresh adv list by welcome at startup:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;->this$0:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->onResponse(Lorg/json/JSONObject;)V
:goto_2c
:try_end_2c
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_2d
return-void
:catch_2d
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
iget-object v2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;->this$0:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;
new-instance v3, Lcom/android/volley/VolleyError;
invoke-direct {v3, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->onErrorResponse(Lcom/android/volley/VolleyError;)V
const/4 v2, 0x2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherWelcomeError(I)V
goto :goto_2c
.end method
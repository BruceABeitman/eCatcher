.class  Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;
.super Ljava/lang/Object;
.source "ReAddActivity.java"
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onResult(Ljava/lang/Object;)V
.registers 11
move-object v5, p1
check-cast v5, Lcom/tencent/weibo/sdk/android/model/ModelResult;
if-eqz v5, :cond_70
invoke-virtual {v5}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isExpires()Z
move-result v6
if-nez v6, :cond_6a
invoke-virtual {v5}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isSuccess()Z
move-result v6
if-eqz v6, :cond_6a
:try_start_11
invoke-virtual {v5}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getObj()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lorg/json/JSONObject;
const-string/jumbo v6, "data"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
new-instance v3, Lcom/tencent/weibo/sdk/android/model/ImageInfo;
invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/model/ImageInfo;-><init>()V
const-string/jumbo v6, "minipic"
invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->setImagePath(Ljava/lang/String;)V
const-string/jumbo v6, "title"
invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->setImageName(Ljava/lang/String;)V
const-string/jumbo v6, "real"
invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->setPlayPath(Ljava/lang/String;)V
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->imageList:Ljava/util/ArrayList;
invoke-static {v6}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Ljava/util/ArrayList;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
invoke-virtual {v6}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v6
iget-object v7, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->loadingWindow:Landroid/widget/PopupWindow;
invoke-static {v7}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/PopupWindow;
move-result-object v7
iget-object v8, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->imageList:Ljava/util/ArrayList;
invoke-static {v8}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Ljava/util/ArrayList;
move-result-object v8
invoke-direct {v0, v6, v7, v8}, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;-><init>(Landroid/content/Context;Landroid/widget/PopupWindow;Ljava/util/ArrayList;)V
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->gallery:Landroid/widget/Gallery;
invoke-static {v6}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$2(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/Gallery;
move-result-object v6
invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V
:goto_6a
:cond_6a
:try_end_6a
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_6a} :catch_6b
return-void
:catch_6b
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_6a
:cond_70
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->loadingWindow:Landroid/widget/PopupWindow;
invoke-static {v6}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/PopupWindow;
move-result-object v6
if-eqz v6, :cond_6a
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->loadingWindow:Landroid/widget/PopupWindow;
invoke-static {v6}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/PopupWindow;
move-result-object v6
invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v6
if-eqz v6, :cond_6a
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->loadingWindow:Landroid/widget/PopupWindow;
invoke-static {v6}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/PopupWindow;
move-result-object v6
invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V
goto :goto_6a
.end method
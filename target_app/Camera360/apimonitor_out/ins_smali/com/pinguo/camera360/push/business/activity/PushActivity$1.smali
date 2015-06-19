.class  Lcom/pinguo/camera360/push/business/activity/PushActivity$1;
.super Landroid/os/AsyncTask;
.source "PushActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/push/business/activity/PushActivity;
.method constructor <init>(Lcom/pinguo/camera360/push/business/activity/PushActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity$1;->this$0:Lcom/pinguo/camera360/push/business/activity/PushActivity;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/push/business/activity/PushActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.registers 8
iget-object v4, p0, Lcom/pinguo/camera360/push/business/activity/PushActivity$1;->this$0:Lcom/pinguo/camera360/push/business/activity/PushActivity;
invoke-virtual {v4}, Lcom/pinguo/camera360/push/business/activity/PushActivity;->getIntent()Landroid/content/Intent;
move-result-object v4
const-string/jumbo v5, "actId"
invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_30
if-eqz v3, :cond_30
sget-object v4, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_FILE_NAME:Ljava/lang/String;
invoke-static {v4}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile(Ljava/lang/String;)Ljava/util/List;
move-result-object v2
invoke-static {v2, v3}, Lcom/pinguo/share/theme/ThemeXMLConsole;->isStyeIdIn(Ljava/util/List;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_30
:try_start_1d
const-class v4, Lcom/pinguo/share/theme/ThemeXMLConsole;
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "push activity"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
invoke-static {v4}, Lcom/pinguo/share/theme/ThemeXMLConsole;->setSelect(I)V
:try_end_30
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_32
:cond_30
:goto_30
const/4 v4, 0x0
return-object v4
:catch_32
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_30
.end method
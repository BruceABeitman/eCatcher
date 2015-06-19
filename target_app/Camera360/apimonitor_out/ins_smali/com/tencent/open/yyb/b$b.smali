.class  Lcom/tencent/open/yyb/b$b;
.super Landroid/os/AsyncTask;
.source "ProGuard"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/tencent/open/yyb/b$1;)V
.registers 2
invoke-direct {p0}, Lcom/tencent/open/yyb/b$b;-><init>()V
return-void
.end method
.method protected varargs a([Landroid/os/Bundle;)Ljava/lang/Void;
.registers 7
const/4 v4, 0x0
if-nez p1, :cond_4
:goto_3
return-object v4
:cond_4
const/4 v0, 0x0
:try_start_5
const-string/jumbo v1, "http://analy.qq.com/cgi-bin/mapp_apptrace"
const-string/jumbo v2, "GET"
const/4 v3, 0x0
aget-object v3, p1, v3
invoke-static {v0, v1, v2, v3}, Lcom/tencent/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/utils/Util$Statistic;
move-result-object v0
iget-object v0, v0, Lcom/tencent/utils/Util$Statistic;->response:Ljava/lang/String;
invoke-static {v0}, Lcom/tencent/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "ret"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
const-string/jumbo v1, "openSDK_LOG"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "-->(ViaAsyncTask)doInBackground : ret = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_39
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_3a
goto :goto_3
:catch_3a
move-exception v0
const-string/jumbo v1, "openSDK_LOG"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "-->(ViaAsyncTask)doInBackground : Exception = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_3
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Landroid/os/Bundle;
invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/b$b;->a([Landroid/os/Bundle;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
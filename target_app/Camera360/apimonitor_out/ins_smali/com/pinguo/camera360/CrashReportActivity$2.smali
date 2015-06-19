.class  Lcom/pinguo/camera360/CrashReportActivity$2;
.super Ljava/lang/Thread;
.source "CrashReportActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/CrashReportActivity;
.method constructor <init>(Lcom/pinguo/camera360/CrashReportActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/CrashReportActivity$2;->this$0:Lcom/pinguo/camera360/CrashReportActivity;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 8
invoke-super {p0}, Ljava/lang/Thread;->run()V
iget-object v3, p0, Lcom/pinguo/camera360/CrashReportActivity$2;->this$0:Lcom/pinguo/camera360/CrashReportActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/CrashReportActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/CrashReportActivity$2;->this$0:Lcom/pinguo/camera360/CrashReportActivity;
#getter for: Lcom/pinguo/camera360/CrashReportActivity;->exception:Ljava/lang/String;
invoke-static {v4}, Lcom/pinguo/camera360/CrashReportActivity;->access$0(Lcom/pinguo/camera360/CrashReportActivity;)Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->reportError(Landroid/content/Context;Ljava/lang/String;)V
:try_start_12
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, p0, Lcom/pinguo/camera360/CrashReportActivity$2;->this$0:Lcom/pinguo/camera360/CrashReportActivity;
iget-object v4, p0, Lcom/pinguo/camera360/CrashReportActivity$2;->this$0:Lcom/pinguo/camera360/CrashReportActivity;
#calls: Lcom/pinguo/camera360/CrashReportActivity;->buildExceptionData()Ljava/util/Map;
invoke-static {v4}, Lcom/pinguo/camera360/CrashReportActivity;->access$1(Lcom/pinguo/camera360/CrashReportActivity;)Ljava/util/Map;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, ".err"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
#calls: Lcom/pinguo/camera360/CrashReportActivity;->store(Ljava/util/Map;Ljava/lang/String;)V
invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/CrashReportActivity;->access$2(Lcom/pinguo/camera360/CrashReportActivity;Ljava/util/Map;Ljava/lang/String;)V
:goto_35
:try_end_35
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_35} :catch_36
return-void
:catch_36
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_35
.end method
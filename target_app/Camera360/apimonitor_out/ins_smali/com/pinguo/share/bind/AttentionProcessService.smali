.class public Lcom/pinguo/share/bind/AttentionProcessService;
.super Landroid/app/IntentService;
.source "AttentionProcessService.java"
.field public static final CALL_ACTION:Ljava/lang/String; = "com.pinguo.camera360.share.bind.AttentionProcessService"
.field public static final CMD:Ljava/lang/String; = "CMD"
.field public static final SITES:Ljava/lang/String; = "SITES"
.field public static final TAG:Ljava/lang/String; = "AttentionProcessService"
.field public static final URL:Ljava/lang/String; = "URL"
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "AttentionProcessService"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 11
const-string/jumbo v6, "data"
invoke-virtual {p1, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v6, "CMD"
invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
packed-switch v0, :pswitch_data_40
:goto_11
return-void
:pswitch_12
const-string/jumbo v6, "URL"
invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "SITES"
invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
:try_start_20
invoke-static {v5, v4}, Lcom/pinguo/share/net/ServiceConnection;->setAttention(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v6, "AttentionProcessService"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "result = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3a} :catch_3b
goto :goto_11
:catch_3b
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_11
:pswitch_data_40
.packed-switch 0x0
:pswitch_12
.end packed-switch
.end method
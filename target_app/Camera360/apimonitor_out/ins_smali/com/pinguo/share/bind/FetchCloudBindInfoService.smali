.class public Lcom/pinguo/share/bind/FetchCloudBindInfoService;
.super Lcom/pinguo/share/util/IntentService;
.source "FetchCloudBindInfoService.java"
.field public static final ACTION_FETCH:I = 0x0
.field public static final CALL_ACTION:Ljava/lang/String; = "com.pinguo.camera360.share.bind.FetchCloudBindInfoService"
.field public static final CMD:Ljava/lang/String; = "CMD"
.field private static final TAG:Ljava/lang/String; = "FetchCloudBindInfoService"
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "FetchCloudBindInfoService"
invoke-direct {p0, v0}, Lcom/pinguo/share/util/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 9
const-string/jumbo v4, "CMD"
const/4 v5, 0x0
invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const-string/jumbo v4, "rannum"
const-wide/16 v5, 0x0
invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v2
packed-switch v0, :pswitch_data_38
const-string/jumbo v4, "FetchCloudBindInfoService"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Invalid cmd:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_2a
return-void
:pswitch_2b
invoke-virtual {p0}, Lcom/pinguo/share/bind/FetchCloudBindInfoService;->getApplicationContext()Landroid/content/Context;
move-result-object v1
new-instance v4, Lcom/pinguo/share/bind/FetchCloudBindInfoService$1;
invoke-direct {v4, p0, v2, v3}, Lcom/pinguo/share/bind/FetchCloudBindInfoService$1;-><init>(Lcom/pinguo/share/bind/FetchCloudBindInfoService;J)V
invoke-static {v1, v4}, Lcom/pinguo/share/bind/BindManager;->syncBindInfosOfCloud(Landroid/content/Context;Lcom/pinguo/share/bind/IBindProcess;)V
goto :goto_2a
:pswitch_data_38
.packed-switch 0x0
:pswitch_2b
.end packed-switch
.end method
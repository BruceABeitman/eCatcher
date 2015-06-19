.class public Lcom/google/analytics/tracking/android/CampaignTrackingService;
.super Landroid/app/IntentService;
.source "CampaignTrackingService.java"
.method public constructor <init>()V
.registers 2
const-string v0, "CampaignIntentService"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public onHandleIntent(Landroid/content/Intent;)V
.registers 5
const-string v0, "referrer"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:try_start_6
const-string v1, "gaInstallData"
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_17
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
const-string v0, "Error storing install campaign."
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
goto :goto_17
.end method
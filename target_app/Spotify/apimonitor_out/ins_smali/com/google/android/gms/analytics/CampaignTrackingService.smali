.class public Lcom/google/android/gms/analytics/CampaignTrackingService;
.super Landroid/app/IntentService;
.method public constructor <init>()V
.registers 2
const-string v0, "CampaignIntentService"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
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
invoke-static {}, Lcom/google/android/gms/analytics/d;->b()V
:try_end_1a
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_1b
:goto_1a
return-void
:catch_1b
move-exception v0
invoke-static {}, Lcom/google/android/gms/analytics/d;->a()V
goto :goto_1a
.end method
.method public onHandleIntent(Landroid/content/Intent;)V
.registers 2
invoke-static {p0, p1}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
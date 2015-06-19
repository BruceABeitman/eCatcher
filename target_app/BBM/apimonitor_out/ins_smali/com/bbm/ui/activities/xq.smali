.class public final Lcom/bbm/ui/activities/xq;
.super Lcom/bbm/ui/activities/ajz;
.source "NFCLifeCycleListener.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V
return-void
.end method
.method public final b(Lcom/bbm/ui/activities/ajy;)V
.registers 5
invoke-virtual {p1}, Lcom/bbm/ui/activities/ajy;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const-string v1, "android.hardware.nfc"
invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
move-result-object v0
if-eqz v0, :cond_c
invoke-static {p1}, Lcom/bbm/ui/eb;->b(Landroid/app/Activity;)Lcom/bbm/ui/eb;
move-result-object v1
const/4 v2, 0x0
new-array v2, v2, [Landroid/app/Activity;
invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
goto :goto_c
.end method
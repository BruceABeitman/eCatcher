.class public Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/service/managers/e;
.field private b:J
.field private c:I
.method public constructor <init>(Lcom/spotify/mobile/android/service/managers/e;)V
.registers 4
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->b:J
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->c:I
iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->a:Lcom/spotify/mobile/android/service/managers/e;
return-void
.end method
.method public static a()Landroid/content/IntentFilter;
.registers 2
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "android.intent.action.BATTERY_CHANGED"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 13
const/4 v2, -0x1
const-string v0, "status"
const/4 v1, 0x1
invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
packed-switch v3, :pswitch_data_62
const-string v0, "unknown"
:goto_d
const-string v1, "plugged"
invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
packed-switch v1, :pswitch_data_6e
const-string v1, "other"
:goto_18
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
iget-wide v6, p0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->b:J
const-wide/32 v8, 0x1d4c0
add-long/2addr v6, v8
cmp-long v4, v4, v6
if-gez v4, :cond_40
iget v4, p0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->c:I
if-ne v3, v4, :cond_40
:goto_2a
return-void
:pswitch_2b
const-string v0, "charging"
goto :goto_d
:pswitch_2e
const-string v0, "discharging"
goto :goto_d
:pswitch_31
const-string v0, "not_charging"
goto :goto_d
:pswitch_34
const-string v0, "full"
goto :goto_d
:pswitch_37
const-string v1, "battery"
goto :goto_18
:pswitch_3a
const-string v1, "ac"
goto :goto_18
:pswitch_3d
const-string v1, "usb"
goto :goto_18
:cond_40
iput v3, p0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->c:I
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
iput-wide v3, p0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->b:J
const-string v3, "level"
invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
const-string v4, "scale"
invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v4
iget-object v5, p0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->a:Lcom/spotify/mobile/android/service/managers/e;
if-ltz v3, :cond_5d
if-lez v4, :cond_5d
mul-int/lit8 v2, v3, 0x64
div-int/2addr v2, v4
:cond_5d
int-to-long v2, v2
invoke-virtual {v5, v0, v1, v2, v3}, Lcom/spotify/mobile/android/service/managers/e;->a(Ljava/lang/String;Ljava/lang/String;J)V
goto :goto_2a
:pswitch_data_62
.packed-switch 0x2
:pswitch_2b
:pswitch_2e
:pswitch_31
:pswitch_34
.end packed-switch
:pswitch_data_6e
.packed-switch 0x0
:pswitch_37
:pswitch_3a
:pswitch_3d
.end packed-switch
.end method
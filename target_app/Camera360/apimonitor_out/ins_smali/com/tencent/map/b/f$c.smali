.class public final Lcom/tencent/map/b/f$c;
.super Landroid/content/BroadcastReceiver;
.field private a:I
.field private b:Ljava/util/List;
.field private c:Z
.field private synthetic d:Lcom/tencent/map/b/f;
.method public constructor <init>(Lcom/tencent/map/b/f;)V
.registers 3
iput-object p1, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
const/4 v0, 0x4
iput v0, p0, Lcom/tencent/map/b/f$c;->a:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/map/b/f$c;->c:Z
return-void
.end method
.method private a(Ljava/util/List;)V
.registers 8
if-nez p1, :cond_3
:cond_2
return-void
:cond_3
iget-boolean v0, p0, Lcom/tencent/map/b/f$c;->c:Z
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
if-nez v0, :cond_12
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
:cond_12
iget-object v0, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1c
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
const/4 v1, 0x0
move v2, v1
:goto_2a
if-ge v2, v3, :cond_43
iget-object v1, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/wifi/ScanResult;
iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_49
iget-object v1, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
:cond_43
iget-object v1, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1c
:cond_49
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_2a
:cond_4d
iget-object v0, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
if-nez v0, :cond_6e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
:goto_58
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_5c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v2, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_5c
:cond_6e
iget-object v0, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
goto :goto_58
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 10
const/4 v3, 0x4
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
const-string/jumbo v0, "wifi_state"
invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/tencent/map/b/f$c;->a:I
iget-object v0, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-static {v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$a;
move-result-object v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-static {v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$a;
move-result-object v0
iget v1, p0, Lcom/tencent/map/b/f$c;->a:I
invoke-interface {v0, v1}, Lcom/tencent/map/b/f$a;->b(I)V
:cond_2a
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_44
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6e
:cond_44
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-static {v1}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;)Landroid/net/wifi/WifiManager;
move-result-object v1
if-eqz v1, :cond_57
iget-object v0, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-static {v0}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;)Landroid/net/wifi/WifiManager;
move-result-object v0
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
move-result-object v0
:cond_57
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6f
if-eqz v0, :cond_6e
if-eqz v0, :cond_6f
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-nez v1, :cond_6f
:goto_6e
:cond_6e
return-void
:cond_6f
iget-boolean v1, p0, Lcom/tencent/map/b/f$c;->c:Z
if-nez v1, :cond_96
iget-object v1, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
if-eqz v1, :cond_96
iget-object v1, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lt v1, v3, :cond_96
if-eqz v0, :cond_96
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
const/4 v2, 0x2
if-gt v1, v2, :cond_96
invoke-direct {p0, v0}, Lcom/tencent/map/b/f$c;->a(Ljava/util/List;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/tencent/map/b/f$c;->c:Z
iget-object v0, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Lcom/tencent/map/b/f;->a(J)V
goto :goto_6e
:cond_96
invoke-direct {p0, v0}, Lcom/tencent/map/b/f$c;->a(Ljava/util/List;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/map/b/f$c;->c:Z
iget-object v6, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
new-instance v0, Lcom/tencent/map/b/f$b;
iget-object v1, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
iget-object v2, p0, Lcom/tencent/map/b/f$c;->b:Ljava/util/List;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget v5, p0, Lcom/tencent/map/b/f$c;->a:I
invoke-direct/range {v0 .. v5}, Lcom/tencent/map/b/f$b;-><init>(Lcom/tencent/map/b/f;Ljava/util/List;JI)V
invoke-static {v6, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/f$b;)Lcom/tencent/map/b/f$b;
iget-object v0, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-static {v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$a;
move-result-object v0
if-eqz v0, :cond_c7
iget-object v0, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-static {v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$a;
move-result-object v0
iget-object v1, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-static {v1}, Lcom/tencent/map/b/f;->d(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/tencent/map/b/f$a;->a(Lcom/tencent/map/b/f$b;)V
:cond_c7
iget-object v0, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
iget-object v1, p0, Lcom/tencent/map/b/f$c;->d:Lcom/tencent/map/b/f;
invoke-static {v1}, Lcom/tencent/map/b/f;->e(Lcom/tencent/map/b/f;)I
move-result v1
int-to-long v1, v1
const-wide/16 v3, 0x4e20
mul-long/2addr v1, v3
invoke-virtual {v0, v1, v2}, Lcom/tencent/map/b/f;->a(J)V
goto :goto_6e
.end method
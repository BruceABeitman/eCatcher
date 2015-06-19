.class final Lcom/spotify/mobile/android/e/n$12;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/n;
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/n$12;->a:Lcom/spotify/mobile/android/e/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$12;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;
move-result-object v0
const-string v1, "wifi"
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
iget-object v1, p0, Lcom/spotify/mobile/android/e/n$12;->a:Lcom/spotify/mobile/android/e/n;
const-string v2, "Spotify Wifi Lock"
invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$12;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->l(Lcom/spotify/mobile/android/e/n;)Landroid/net/wifi/WifiManager$WifiLock;
move-result-object v0
invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$12;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->l(Lcom/spotify/mobile/android/e/n;)Landroid/net/wifi/WifiManager$WifiLock;
move-result-object v0
invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$12;->a:Lcom/spotify/mobile/android/e/n;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
return-void
.end method
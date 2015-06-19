.class  Lcom/lenovo/anyshare/sdk/internal/ck;
.super Ljava/lang/Object;
.source "WifiProfile.java"
.field public a:Ljava/lang/String;
.field public b:I
.field public c:Landroid/net/wifi/WifiConfiguration;
.field public d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
.field public e:Ljava/lang/String;
.field public f:Ljava/lang/String;
.field private final g:Landroid/content/Context;
.field private final h:Landroid/net/wifi/WifiManager;
.method private constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)V
.registers 10
const/4 v6, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v6, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->g:Landroid/content/Context;
const-string/jumbo v4, "wifi"
invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/net/wifi/WifiManager;
iput-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cg;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->a:Ljava/lang/String;
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->a:Ljava/lang/String;
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cg$a;
move-result-object v2
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, v2, Lcom/lenovo/anyshare/sdk/internal/cg$a;->g:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ".1"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->e:Ljava/lang/String;
iget-object v4, v2, Lcom/lenovo/anyshare/sdk/internal/cg$a;->f:Ljava/lang/String;
iput-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->f:Ljava/lang/String;
invoke-direct {p0, p2}, Lcom/lenovo/anyshare/sdk/internal/ck;->a(Landroid/net/wifi/WifiInfo;)I
move-result v4
iput v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
iget v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
if-ne v4, v6, :cond_74
const/4 v4, 0x1
:goto_4d
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Z)V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_5a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_6e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiConfiguration;
iget v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
if-ne v4, v5, :cond_5a
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->c:Landroid/net/wifi/WifiConfiguration;
:cond_6e
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->c:Landroid/net/wifi/WifiConfiguration;
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/Object;)V
return-void
:cond_74
const/4 v4, 0x0
goto :goto_4d
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, -0x1
iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->g:Landroid/content/Context;
const-string/jumbo v1, "wifi"
invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/wifi/WifiManager;
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/cg;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->a:Ljava/lang/String;
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cg$a;
move-result-object v0
const-string/jumbo v1, "WifiProfile"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, ""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->g:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ".1"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->e:Ljava/lang/String;
iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->f:Ljava/lang/String;
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->f:Ljava/lang/String;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/ch$a;
invoke-direct {v1}, Lcom/lenovo/anyshare/sdk/internal/ch$a;-><init>()V
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->g:Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/ck;->a(Ljava/lang/String;)V
return-void
.end method
.method private a(Landroid/net/wifi/WifiInfo;)I
.registers 4
const/4 v1, -0x1
if-nez p1, :cond_4
:goto_3
return v1
:try_start_4
:cond_4
invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
:try_end_7
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9
move-result v1
goto :goto_3
:catch_9
move-exception v0
goto :goto_3
.end method
.method public static a(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)Lcom/lenovo/anyshare/sdk/internal/ck;
.registers 3
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/ck;
invoke-direct {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ck;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)V
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/ck;
.registers 7
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/ck;
invoke-direct {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ck;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/ck;->d()Landroid/net/wifi/WifiConfiguration;
move-result-object v1
if-nez v1, :cond_d
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
iput-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/ck;->c:Landroid/net/wifi/WifiConfiguration;
const-string/jumbo v2, "WifiProfile"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, ""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
.end method
.method public static a(Landroid/net/wifi/WifiConfiguration;)V
.registers 5
const/4 v3, 0x2
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;
invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;
invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;
invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;
invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;
invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;
invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;
invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V
return-void
.end method
.method static a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
.registers 6
const/4 v3, 0x2
const/4 v2, 0x1
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;
invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;
invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;
invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;
invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V
iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;
invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
iput v3, p0, Landroid/net/wifi/WifiConfiguration;->status:I
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 7
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v1
const-wide v3, 0x406f800000000000L
mul-double/2addr v1, v3
const-wide/high16 v3, 0x4000
add-double/2addr v1, v3
double-to-int v0, v1
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/lenovo/anyshare/sdk/internal/ch$a;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
const-string/jumbo v2, "255.255.255.0"
iput-object v2, v1, Lcom/lenovo/anyshare/sdk/internal/ch$a;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".1"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/lenovo/anyshare/sdk/internal/ch$a;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".1"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/lenovo/anyshare/sdk/internal/ch$a;->c:Ljava/lang/String;
return-void
.end method
.method private b(Landroid/net/wifi/WifiConfiguration;)Z
.registers 9
const/4 v3, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z
move-result v1
if-eqz v1, :cond_30
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->g:Landroid/content/Context;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/ch$a;)Z
move-result v0
const-string/jumbo v1, "WifiProfile"
const-string/jumbo v2, "setStaticNetwork with Setting:%s, mIsStaticIp:%b"
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
iget-object v4, v4, Lcom/lenovo/anyshare/sdk/internal/ch$a;->a:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v6
invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
if-nez v0, :cond_2f
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/content/Context;)Z
:goto_2f
:cond_2f
return v0
:cond_30
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
invoke-static {p1, v1}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/net/wifi/WifiConfiguration;Lcom/lenovo/anyshare/sdk/internal/ch$a;)Z
move-result v0
const-string/jumbo v1, "WifiProfile"
const-string/jumbo v2, "setStaticNetwork with WifiConfiguration:%s, mIsStaticIp:%b"
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->d:Lcom/lenovo/anyshare/sdk/internal/ch$a;
iget-object v4, v4, Lcom/lenovo/anyshare/sdk/internal/ch$a;->a:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v6
invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
if-nez v0, :cond_2f
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/net/wifi/WifiConfiguration;)Z
goto :goto_2f
.end method
.method private d()Landroid/net/wifi/WifiConfiguration;
.registers 9
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;
move-result-object v1
if-eqz v1, :cond_25
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_25
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiConfiguration;
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->a:Ljava/lang/String;
iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_e
move-object v3, v0
:cond_25
if-nez v3, :cond_90
new-instance v3, Landroid/net/wifi/WifiConfiguration;
invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "\""
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->a:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "\""
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->f:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_8c
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->f:Ljava/lang/String;
invoke-static {v3, v5}, Lcom/lenovo/anyshare/sdk/internal/ck;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
:goto_58
invoke-direct {p0, v3}, Lcom/lenovo/anyshare/sdk/internal/ck;->b(Landroid/net/wifi/WifiConfiguration;)Z
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I
move-result v5
iput v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
iput v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I
const-string/jumbo v5, "WifiProfile"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget v7, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ") created new network: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_87
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
if-ltz v5, :cond_98
:goto_8b
return-object v3
:cond_8c
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ck;->a(Landroid/net/wifi/WifiConfiguration;)V
goto :goto_58
:cond_90
iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I
iput v5, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
invoke-direct {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/ck;->b(Landroid/net/wifi/WifiConfiguration;)Z
goto :goto_87
:cond_98
move-object v3, v4
goto :goto_8b
.end method
.method public a()Z
.registers 4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
move-result v0
return v0
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->g:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/content/Context;)Z
:cond_19
return-void
.end method
.method public c()Z
.registers 4
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->h:Landroid/net/wifi/WifiManager;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/ck;->a(Landroid/net/wifi/WifiInfo;)I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_13
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
if-ne v0, v2, :cond_13
const/4 v2, 0x1
:goto_12
return v2
:cond_13
const/4 v2, 0x0
goto :goto_12
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "WifiProfile [ssid="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, ", networkId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v1, ", mRemoteIp="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ck;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
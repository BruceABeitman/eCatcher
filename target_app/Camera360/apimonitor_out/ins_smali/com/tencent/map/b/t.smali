.class public final Lcom/tencent/map/b/t;
.super Ljava/lang/Object;
.source "ProGuard"
.field private static b:Lcom/tencent/map/b/t;
.field private a:Landroid/content/Context;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/tencent/map/b/t;
.registers 1
sget-object v0, Lcom/tencent/map/b/t;->b:Lcom/tencent/map/b/t;
if-nez v0, :cond_b
new-instance v0, Lcom/tencent/map/b/t;
invoke-direct {v0}, Lcom/tencent/map/b/t;-><init>()V
sput-object v0, Lcom/tencent/map/b/t;->b:Lcom/tencent/map/b/t;
:cond_b
sget-object v0, Lcom/tencent/map/b/t;->b:Lcom/tencent/map/b/t;
return-object v0
.end method
.method public static b()Landroid/content/Context;
.registers 1
invoke-static {}, Lcom/tencent/map/b/t;->a()Lcom/tencent/map/b/t;
move-result-object v0
iget-object v0, v0, Lcom/tencent/map/b/t;->a:Landroid/content/Context;
return-object v0
.end method
.method public static c()Z
.registers 3
const/4 v1, 0x1
:try_start_1
invoke-static {}, Lcom/tencent/map/b/t;->a()Lcom/tencent/map/b/t;
move-result-object v0
iget-object v0, v0, Lcom/tencent/map/b/t;->a:Landroid/content/Context;
const-string/jumbo v2, "connectivity"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1f
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
:try_end_19
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1e
move-result v0
if-ne v0, v1, :cond_1f
move v0, v1
:goto_1d
return v0
:catch_1e
move-exception v0
:cond_1f
const/4 v0, 0x0
goto :goto_1d
.end method
.method public static d()Z
.registers 2
:try_start_0
invoke-static {}, Lcom/tencent/map/b/t;->a()Lcom/tencent/map/b/t;
move-result-object v0
iget-object v0, v0, Lcom/tencent/map/b/t;->a:Landroid/content/Context;
const-string/jumbo v1, "connectivity"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
:try_end_18
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a
move-result v0
:goto_19
return v0
:catch_1a
move-exception v0
:cond_1b
const/4 v0, 0x0
goto :goto_19
.end method
.method public final a(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/tencent/map/b/t;->a:Landroid/content/Context;
if-nez v0, :cond_a
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/tencent/map/b/t;->a:Landroid/content/Context;
:cond_a
return-void
.end method
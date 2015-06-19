.class  Lcom/umeng/analytics/g;
.super Ljava/lang/Object;
.source "UmengNetworkHelper.java"
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/analytics/g;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/analytics/g;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 6
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_14
move-object v0, v1
:goto_13
return-object v0
:cond_14
:try_start_14
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_25
move-object v0, v1
goto :goto_13
:cond_25
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_2e
move-object v0, v1
goto :goto_13
:cond_2e
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/umeng/analytics/g;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "net type:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
if-nez v0, :cond_4b
move-object v0, v1
goto :goto_13
:cond_4b
const-string/jumbo v2, "cmwap"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_66
const-string/jumbo v2, "3gwap"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_66
const-string/jumbo v2, "uniwap"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_63
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_63} :catch_6a
move-result v0
if-eqz v0, :cond_6e
:cond_66
const-string/jumbo v0, "10.0.0.172"
goto :goto_13
:catch_6a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_6e
move-object v0, v1
goto :goto_13
.end method
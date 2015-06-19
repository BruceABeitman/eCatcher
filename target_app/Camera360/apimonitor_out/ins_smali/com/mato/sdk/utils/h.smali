.class public final Lcom/mato/sdk/utils/h;
.super Ljava/lang/Object;
.field private static a:Landroid/content/Context;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Ljava/lang/String;
.registers 5
const/4 v4, 0x1
const-string/jumbo v2, "Unknown"
sget-object v0, Lcom/mato/sdk/utils/h;->a:Landroid/content/Context;
const-string/jumbo v1, "phone"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
sget-object v1, Lcom/mato/sdk/utils/h;->a:Landroid/content/Context;
const-string/jumbo v3, "connectivity"
invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_4b
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v3
if-eqz v3, :cond_4b
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
move-result v3
if-ne v3, v4, :cond_3c
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v3
if-eqz v3, :cond_3c
sget-object v1, Lcom/mato/sdk/utils/h$a;->c:Lcom/mato/sdk/utils/h$a;
:goto_34
sget-object v3, Lcom/mato/sdk/utils/h$a;->c:Lcom/mato/sdk/utils/h$a;
if-ne v1, v3, :cond_4e
const-string/jumbo v0, "WIFI"
:goto_3b
return-object v0
:cond_3c
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
move-result v3
if-nez v3, :cond_4b
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v1
if-eqz v1, :cond_4b
sget-object v1, Lcom/mato/sdk/utils/h$a;->b:Lcom/mato/sdk/utils/h$a;
goto :goto_34
:cond_4b
sget-object v1, Lcom/mato/sdk/utils/h$a;->a:Lcom/mato/sdk/utils/h$a;
goto :goto_34
:cond_4e
sget-object v3, Lcom/mato/sdk/utils/h$a;->b:Lcom/mato/sdk/utils/h$a;
if-ne v1, v3, :cond_b0
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
move-result v0
const-string/jumbo v1, "MatoUtil"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "NETWORK TYPE"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x2
if-ne v0, v1, :cond_73
const-string/jumbo v0, "EDGE"
goto :goto_3b
:cond_73
if-ne v0, v4, :cond_79
const-string/jumbo v0, "GPRS"
goto :goto_3b
:cond_79
const/4 v1, 0x4
if-eq v0, v1, :cond_7f
const/4 v1, 0x7
if-ne v0, v1, :cond_83
:cond_7f
const-string/jumbo v0, "CDMA"
goto :goto_3b
:cond_83
const/4 v1, 0x5
if-eq v0, v1, :cond_a0
const/4 v1, 0x6
if-eq v0, v1, :cond_a0
const/16 v1, 0xc
if-eq v0, v1, :cond_a0
const/4 v1, 0x3
if-eq v0, v1, :cond_a0
const/16 v1, 0x8
if-eq v0, v1, :cond_a0
const/16 v1, 0x9
if-eq v0, v1, :cond_a0
const/16 v1, 0xa
if-eq v0, v1, :cond_a0
const/16 v1, 0xf
if-ne v0, v1, :cond_a4
:cond_a0
const-string/jumbo v0, "3G"
goto :goto_3b
:cond_a4
const/16 v1, 0xd
if-ne v0, v1, :cond_ac
const-string/jumbo v0, "LTE"
goto :goto_3b
:cond_ac
const-string/jumbo v0, "Unknown"
goto :goto_3b
:cond_b0
move-object v0, v2
goto :goto_3b
.end method
.method public static a(Landroid/content/Context;)V
.registers 1
sput-object p0, Lcom/mato/sdk/utils/h;->a:Landroid/content/Context;
return-void
.end method
.method public static b()Ljava/lang/String;
.registers 3
const-string/jumbo v1, "Unknown"
sget-object v0, Lcom/mato/sdk/utils/h;->a:Landroid/content/Context;
const-string/jumbo v2, "phone"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_48
const-string/jumbo v2, "46000"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2a
const-string/jumbo v2, "46002"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_2e
:cond_2a
const-string/jumbo v0, "\u4e2d\u56fd\u79fb\u52a8"
:goto_2d
return-object v0
:cond_2e
const-string/jumbo v2, "46001"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_3b
const-string/jumbo v0, "\u4e2d\u56fd\u8054\u901a"
goto :goto_2d
:cond_3b
const-string/jumbo v2, "46003"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_48
const-string/jumbo v0, "\u4e2d\u56fd\u7535\u4fe1"
goto :goto_2d
:cond_48
move-object v0, v1
goto :goto_2d
.end method
.method public static b(Landroid/content/Context;)Z
.registers 2
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public static c()Ljava/lang/String;
.registers 3
const-string/jumbo v1, "Unknown"
sget-object v0, Lcom/mato/sdk/utils/h;->a:Landroid/content/Context;
const-string/jumbo v2, "phone"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_1d
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
move-result-object v0
:goto_1c
return-object v0
:cond_1d
move-object v0, v1
goto :goto_1c
.end method
.method private static c(Landroid/content/Context;)Z
.registers 6
const/4 v1, 0x0
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_39
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "MAA"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "the wap is:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/mato/sdk/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_37
const-string/jumbo v2, "3gwap"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_37
const/4 v0, 0x1
:goto_36
return v0
:cond_37
move v0, v1
goto :goto_36
:cond_39
move v0, v1
goto :goto_36
.end method
.method public static d()Ljava/lang/String;
.registers 4
invoke-static {}, Lcom/mato/sdk/utils/h;->b()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/mato/sdk/utils/h;->a()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuffer;
const-string/jumbo v3, "MATO-NET: "
invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "\u4e2d\u56fd\u79fb\u52a8"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_33
const-string/jumbo v0, "CM,"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_1f
const-string/jumbo v0, "WIFI"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5a
const-string/jumbo v0, "WIFI"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_2e
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_33
const-string/jumbo v3, "\u4e2d\u56fd\u7535\u4fe1"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_43
const-string/jumbo v0, "CT,"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1f
:cond_43
const-string/jumbo v3, "\u4e2d\u56fd\u8054\u901a"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_53
const-string/jumbo v0, "CU,"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1f
:cond_53
const-string/jumbo v0, "Unknown,"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1f
:cond_5a
const-string/jumbo v0, "EDGE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6a
const-string/jumbo v0, "EDGE"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2e
:cond_6a
const-string/jumbo v0, "GPRS"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7a
const-string/jumbo v0, "GPRS"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2e
:cond_7a
const-string/jumbo v0, "CDMA"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8a
const-string/jumbo v0, "CDMA"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2e
:cond_8a
const-string/jumbo v0, "3G"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9a
const-string/jumbo v0, "3G"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2e
:cond_9a
const-string/jumbo v0, "LTE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_aa
const-string/jumbo v0, "4G"
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2e
:cond_aa
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2e
.end method
.method public static e()Lcom/mato/sdk/utils/h$b;
.registers 2
invoke-static {}, Lcom/mato/sdk/utils/h;->a()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_9
sget-object v0, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;
:goto_8
return-object v0
:cond_9
const-string/jumbo v1, "3G"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15
sget-object v0, Lcom/mato/sdk/utils/h$b;->d:Lcom/mato/sdk/utils/h$b;
goto :goto_8
:cond_15
const-string/jumbo v1, "EDGE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_30
const-string/jumbo v1, "GPRS"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_30
const-string/jumbo v1, "CDMA"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_33
:cond_30
sget-object v0, Lcom/mato/sdk/utils/h$b;->c:Lcom/mato/sdk/utils/h$b;
goto :goto_8
:cond_33
const-string/jumbo v1, "WIFI"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3f
sget-object v0, Lcom/mato/sdk/utils/h$b;->b:Lcom/mato/sdk/utils/h$b;
goto :goto_8
:cond_3f
const-string/jumbo v1, "LTE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4b
sget-object v0, Lcom/mato/sdk/utils/h$b;->e:Lcom/mato/sdk/utils/h$b;
goto :goto_8
:cond_4b
sget-object v0, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;
goto :goto_8
.end method
.method private static f()Lcom/mato/sdk/utils/h$a;
.registers 3
sget-object v0, Lcom/mato/sdk/utils/h;->a:Landroid/content/Context;
const-string/jumbo v1, "connectivity"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_39
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v1
if-nez v1, :cond_1a
sget-object v0, Lcom/mato/sdk/utils/h$a;->a:Lcom/mato/sdk/utils/h$a;
:goto_19
return-object v0
:cond_1a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_2a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v1
if-eqz v1, :cond_2a
sget-object v0, Lcom/mato/sdk/utils/h$a;->c:Lcom/mato/sdk/utils/h$a;
goto :goto_19
:cond_2a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v1
if-nez v1, :cond_39
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_39
sget-object v0, Lcom/mato/sdk/utils/h$a;->b:Lcom/mato/sdk/utils/h$a;
goto :goto_19
:cond_39
sget-object v0, Lcom/mato/sdk/utils/h$a;->a:Lcom/mato/sdk/utils/h$a;
goto :goto_19
.end method
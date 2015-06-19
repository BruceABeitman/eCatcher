.class public final Lcom/pinguo/lib/network/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"
.field public static final NETWORK_2G:I = 0x2
.field public static final NETWORK_3G:I = 0x4
.field public static final NETWORK_4G:I = 0x8
.field private static final NETWORK_TYPE_2G:Ljava/lang/String; = "2G"
.field private static final NETWORK_TYPE_3G:Ljava/lang/String; = "3G"
.field private static final NETWORK_TYPE_4G:Ljava/lang/String; = "4G"
.field private static final NETWORK_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"
.field private static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "wifi"
.field public static final NETWORK_UNKNOWN:I = 0x10
.field public static final NETWORK_WIFI:I = 0x1
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/lib/network/NetworkUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private NetworkUtils()V
.registers 1
return-void
.end method
.method public static addGetSig(Ljava/lang/String;)Ljava/lang/String;
.registers 13
const/16 v11, 0x3f
sget-object v8, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Add signature for get url: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "?"
invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v8
const/4 v9, -0x1
if-ne v8, v9, :cond_9a
const/4 v1, 0x0
:goto_22
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
if-eqz v1, :cond_a6
invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I
move-result v8
add-int/lit8 v8, v8, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v9
if-ge v8, v9, :cond_a6
invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I
move-result v8
add-int/lit8 v8, v8, 0x1
invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
const-string/jumbo v8, "&"
invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
new-instance v8, Lcom/pinguo/lib/network/NetworkUtils$1;
invoke-direct {v8}, Lcom/pinguo/lib/network/NetworkUtils$1;-><init>()V
invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_5e
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_9c
sget-object v8, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Param sort as : "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "&"
invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_start_83
:goto_83
const-string/jumbo v8, "sig="
invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v8
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/pinguo/share/util/MD5;->pinguoMD5(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_95
.catch Ljava/io/UnsupportedEncodingException; {:try_start_83 .. :try_end_95} :catch_ad
:goto_95
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v8
return-object v8
:cond_9a
const/4 v1, 0x1
goto :goto_22
:cond_9c
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5e
:cond_a6
const-string/jumbo v8, "?"
invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_83
:catch_ad
move-exception v0
sget-object v8, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Add signature for get url fail! Get url: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v8, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
invoke-static {v8, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_95
.end method
.method public static final currentNetType(Landroid/content/Context;)I
.registers 9
const/4 v6, 0x4
const/4 v5, 0x1
const/16 v4, 0x10
const-string/jumbo v7, "connectivity"
invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
if-eqz v1, :cond_15
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v7
if-nez v7, :cond_16
:cond_15
:goto_15
return v4
:cond_16
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_15
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v7
if-ne v7, v5, :cond_24
move v4, v5
goto :goto_15
:cond_24
const-string/jumbo v5, "phone"
invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/telephony/TelephonyManager;
invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I
move-result v5
invoke-static {v5}, Lcom/pinguo/lib/network/NetworkUtils;->getNetworkClass(I)I
move-result v2
if-eq v2, v6, :cond_3b
const/16 v5, 0x8
if-ne v2, v5, :cond_15
:cond_3b
move v4, v6
goto :goto_15
.end method
.method private static getNetworkClass(I)I
.registers 2
packed-switch p0, :pswitch_data_e
const/16 v0, 0x10
:goto_5
return v0
:pswitch_6
const/4 v0, 0x2
goto :goto_5
:pswitch_8
const/4 v0, 0x4
goto :goto_5
:pswitch_a
const/16 v0, 0x8
goto :goto_5
nop
:pswitch_data_e
.packed-switch 0x1
:pswitch_6
:pswitch_6
:pswitch_8
:pswitch_6
:pswitch_8
:pswitch_8
:pswitch_6
:pswitch_8
:pswitch_8
:pswitch_8
:pswitch_6
:pswitch_8
:pswitch_a
:pswitch_8
:pswitch_8
.end packed-switch
.end method
.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string/jumbo v1, "connectivity"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-eqz v0, :cond_1a
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_1a
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
move-result-object v1
:goto_19
return-object v1
:cond_1a
const/4 v1, 0x0
goto :goto_19
.end method
.method public static getNetworkType(Landroid/net/ConnectivityManager;)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_a
const-string/jumbo v3, "unknown"
:goto_9
return-object v3
:cond_a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_15
const-string/jumbo v3, "wifi"
goto :goto_9
:cond_15
if-nez v2, :cond_2e
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I
move-result v1
packed-switch v1, :pswitch_data_32
const-string/jumbo v3, "unknown"
goto :goto_9
:pswitch_22
const-string/jumbo v3, "2G"
goto :goto_9
:pswitch_26
const-string/jumbo v3, "3G"
goto :goto_9
:pswitch_2a
const-string/jumbo v3, "4G"
goto :goto_9
:cond_2e
const-string/jumbo v3, "unknown"
goto :goto_9
:pswitch_data_32
.packed-switch 0x1
:pswitch_22
:pswitch_22
:pswitch_26
:pswitch_22
:pswitch_26
:pswitch_26
:pswitch_22
:pswitch_26
:pswitch_26
:pswitch_26
:pswitch_22
:pswitch_26
:pswitch_2a
:pswitch_26
:pswitch_26
.end packed-switch
.end method
.method public static getSigByParamList(Ljava/util/List;)Ljava/lang/String;
.registers 8
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v4
if-nez v4, :cond_c
:cond_8
const-string/jumbo v3, ""
:goto_b
return-object v3
:cond_c
new-instance v4, Lcom/pinguo/lib/network/NetworkUtils$2;
invoke-direct {v4}, Lcom/pinguo/lib/network/NetworkUtils$2;-><init>()V
invoke-static {p0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_5a
:try_start_23
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/share/util/MD5;->pinguoMD5(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Get signature for : "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " and sig is : "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_4f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_4f} :catch_50
goto :goto_b
:catch_50
move-exception v0
sget-object v4, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const-string/jumbo v3, ""
goto :goto_b
:cond_5a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1d
.end method
.method public static getSigByParamList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
.registers 9
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v4
if-nez v4, :cond_c
:cond_8
const-string/jumbo v3, ""
:goto_b
return-object v3
:cond_c
new-instance v4, Lcom/pinguo/lib/network/NetworkUtils$3;
invoke-direct {v4}, Lcom/pinguo/lib/network/NetworkUtils$3;-><init>()V
invoke-static {p0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_5a
:try_start_23
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4, p1}, Lcom/pinguo/share/util/MD5;->pinguoMD5WithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Get signature for : "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " and sig is : "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_4f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_4f} :catch_50
goto :goto_b
:catch_50
move-exception v0
sget-object v4, Lcom/pinguo/lib/network/NetworkUtils;->TAG:Ljava/lang/String;
invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const-string/jumbo v3, ""
goto :goto_b
:cond_5a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1d
.end method
.method public static getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_18
invoke-static {v1}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamList(Ljava/util/List;)Ljava/lang/String;
move-result-object v2
return-object v2
:cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
new-instance v4, Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "="
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
.end method
.method public static getSigByParamMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_18
invoke-static {v1, p1}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
return-object v2
:cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
new-instance v4, Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "="
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
.end method
.method public static hasInternet(Landroid/content/Context;)Z
.registers 5
const/4 v2, 0x0
const-string/jumbo v3, "connectivity"
invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v3
if-eqz v3, :cond_17
const/4 v2, 0x1
:cond_17
return v2
.end method
.method public static isAvailableNetWork(Landroid/content/Context;)Z
.registers 3
const-string/jumbo v1, "connectivity"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/net/ConnectivityManager;)Z
move-result v1
return v1
.end method
.method public static isAvailableNetWork(Landroid/net/ConnectivityManager;)Z
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_f
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v4
if-eqz v4, :cond_f
:cond_e
:goto_e
return v2
:cond_f
invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v4
if-nez v4, :cond_e
:cond_1b
move v2, v3
goto :goto_e
.end method
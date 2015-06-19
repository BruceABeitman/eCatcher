.class public Lcom/faceplusplus/api/Utils;
.super Ljava/lang/Object;
.source "Utils.java"
.field private static PRE_NAME:Ljava/lang/String;
.field private static offileServer:Ljava/lang/String;
.field private static sdk_name:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "com_megvii_api"
sput-object v0, Lcom/faceplusplus/api/Utils;->PRE_NAME:Ljava/lang/String;
const-string/jumbo v0, "FacePlusPlus Offline SDK (Android-0.9)"
sput-object v0, Lcom/faceplusplus/api/Utils;->sdk_name:Ljava/lang/String;
const-string/jumbo v0, "http://offlinelog.faceplusplus.com/log/newlog"
sput-object v0, Lcom/faceplusplus/api/Utils;->offileServer:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
.registers 10
if-nez p0, :cond_4
const/4 v8, 0x0
:goto_3
return-object v8
:cond_4
const/4 v5, 0x0
:try_start_5
const-string/jumbo v8, "MD5"
invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
:try_end_b
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_29
move-result-object v5
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
array-length v8, v1
new-array v0, v8, [B
const/4 v4, 0x0
:goto_14
array-length v8, v1
if-lt v4, v8, :cond_31
invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v6
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const/4 v4, 0x0
:goto_21
array-length v8, v6
if-lt v4, v8, :cond_39
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v8
goto :goto_3
:catch_29
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v8, ""
goto :goto_3
:cond_31
aget-char v8, v1, v4
int-to-byte v8, v8
aput-byte v8, v0, v4
add-int/lit8 v4, v4, 0x1
goto :goto_14
:cond_39
aget-byte v8, v6, v4
and-int/lit16 v7, v8, 0xff
const/16 v8, 0x10
if-ge v7, v8, :cond_47
const-string/jumbo v8, "0"
invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_47
invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v4, v4, 0x1
goto :goto_21
.end method
.method static synthetic access$0(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/faceplusplus/api/Utils;->getLogString(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/faceplusplus/api/Utils;->offileServer:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.registers 5
invoke-static {p0, p1, p2, p3}, Lcom/faceplusplus/api/Utils;->getSerial(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$3(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
.registers 2
invoke-static {p0}, Lcom/faceplusplus/api/Utils;->getJSONFromHttpEntity(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
move-result-object v0
return-object v0
.end method
.method static synthetic access$4(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lcom/faceplusplus/api/Utils;->clearAll(Landroid/content/Context;)V
return-void
.end method
.method private static clearAll(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
sget-object v2, Lcom/faceplusplus/api/Utils;->PRE_NAME:Ljava/lang/String;
invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v2, "DT"
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "DS"
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "ST"
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "SS"
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "lastupdate"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B
.registers 5
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x50
invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
:try_start_10
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_13
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14
:goto_13
return-object v1
:catch_14
move-exception v2
goto :goto_13
.end method
.method private static getCpuInfo(Landroid/content/Context;)Ljava/lang/String;
.registers 13
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v11, 0x0
sget-object v8, Lcom/faceplusplus/api/Utils;->PRE_NAME:Ljava/lang/String;
invoke-virtual {p0, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v5
const-string/jumbo v8, "cpuinfo"
invoke-interface {v5, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_1d
const-string/jumbo v8, "cpuinfo"
const-string/jumbo v9, ""
invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
:goto_1c
return-object v8
:cond_1d
const-string/jumbo v6, "/proc/cpuinfo"
const-string/jumbo v7, ""
new-array v1, v10, [Ljava/lang/String;
const-string/jumbo v8, ""
aput-object v8, v1, v11
const-string/jumbo v8, ""
aput-object v8, v1, v9
:try_start_2f
new-instance v2, Ljava/io/FileReader;
invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
new-instance v4, Ljava/io/BufferedReader;
const/16 v8, 0x2000
invoke-direct {v4, v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "\\s+"
invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v3, 0x2
:goto_47
array-length v8, v0
if-lt v3, v8, :cond_7c
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "\\s+"
invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v8, 0x1
aget-object v9, v1, v8
new-instance v10, Ljava/lang/StringBuilder;
invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v9, 0x2
aget-object v9, v0, v9
invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
aput-object v9, v1, v8
invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
:try_end_71
.catch Ljava/io/IOException; {:try_start_2f .. :try_end_71} :catch_9f
:goto_71
const-string/jumbo v8, "cpuinfo"
aget-object v9, v1, v11
invoke-static {v5, v8, v9}, Lcom/faceplusplus/api/Utils;->saveString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
aget-object v8, v1, v11
goto :goto_1c
:cond_7c
const/4 v8, 0x0
:try_start_7d
new-instance v9, Ljava/lang/StringBuilder;
const/4 v10, 0x0
aget-object v10, v1, v10
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-object v10, v0, v3
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, " "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
aput-object v9, v1, v8
:try_end_9c
.catch Ljava/io/IOException; {:try_start_7d .. :try_end_9c} :catch_9f
add-int/lit8 v3, v3, 0x1
goto :goto_47
:catch_9f
move-exception v8
goto :goto_71
.end method
.method private static getImei(Landroid/content/Context;)Ljava/lang/String;
.registers 6
sget-object v3, Lcom/faceplusplus/api/Utils;->PRE_NAME:Ljava/lang/String;
const/4 v4, 0x0
invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
const-string/jumbo v3, "imei"
invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_1b
const-string/jumbo v3, "imei"
const-string/jumbo v4, ""
invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
const-string/jumbo v3, "phone"
invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/telephony/TelephonyManager;
invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "imei"
invoke-static {v1, v3, v0}, Lcom/faceplusplus/api/Utils;->saveString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method private static getJSONFromHttpEntity(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
.registers 8
const/4 v0, 0x0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
:try_start_6
new-instance v1, Ljava/io/BufferedReader;
new-instance v5, Ljava/io/InputStreamReader;
invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_start_14
:goto_14
:try_end_14
.catchall {:try_start_6 .. :try_end_14} :catchall_4b
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_58
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_17
.catchall {:try_start_14 .. :try_end_17} :catchall_55
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_40
move-result-object v4
if-nez v4, :cond_28
:try_start_1a
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:try_end_1d
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_50
move-object v0, v1
:goto_1e
new-instance v5, Lorg/json/JSONObject;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
return-object v5
:cond_28
:try_start_28
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "\n"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_3f
.catchall {:try_start_28 .. :try_end_3f} :catchall_55
.catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_40
goto :goto_14
:catch_40
move-exception v2
move-object v0, v1
:goto_42
:try_start_42
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_45
.catchall {:try_start_42 .. :try_end_45} :catchall_4b
:try_start_45
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
:try_end_48
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49
goto :goto_1e
:catch_49
move-exception v5
goto :goto_1e
:catchall_4b
move-exception v5
:goto_4c
:try_start_4c
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
:goto_4f
:try_end_4f
.catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_53
throw v5
:catch_50
move-exception v5
move-object v0, v1
goto :goto_1e
:catch_53
move-exception v6
goto :goto_4f
:catchall_55
move-exception v5
move-object v0, v1
goto :goto_4c
:catch_58
move-exception v2
goto :goto_42
.end method
.method private static getLocalIpAddress()Ljava/lang/String;
.registers 7
:try_start_0
invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
move-result-object v0
:cond_4
invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v5
if-nez v5, :cond_c
:goto_a
const/4 v5, 0x0
:goto_b
return-object v5
:cond_c
invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/net/NetworkInterface;
invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
move-result-object v1
:cond_16
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v5
if-eqz v5, :cond_4
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/net/InetAddress;
invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
move-result v5
if-nez v5, :cond_16
instance-of v5, v3, Ljava/net/Inet4Address;
if-eqz v5, :cond_16
invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
:try_end_2f
.catch Ljava/net/SocketException; {:try_start_0 .. :try_end_2f} :catch_31
move-result-object v5
goto :goto_b
:catch_31
move-exception v2
const-string/jumbo v5, "WifiPreference IpAddress"
invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_a
.end method
.method private static getLogString(Landroid/content/Context;)Ljava/lang/String;
.registers 14
const/4 v12, 0x0
sget-object v7, Lcom/faceplusplus/api/Utils;->PRE_NAME:Ljava/lang/String;
invoke-virtual {p0, v7, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v5
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v7, "app_name"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "sdk_name"
sget-object v8, Lcom/faceplusplus/api/Utils;->sdk_name:Ljava/lang/String;
invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "device_id"
invoke-static {p0}, Lcom/faceplusplus/api/Utils;->getImei(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "mac_addr"
invoke-static {p0}, Lcom/faceplusplus/api/Utils;->getUUID(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v7, "cpu"
invoke-static {p0}, Lcom/faceplusplus/api/Utils;->getCpuInfo(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "os"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "android_"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "device_info"
invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "ip_addr"
invoke-static {}, Lcom/faceplusplus/api/Utils;->getLocalIpAddress()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "timestamp"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
const-wide/16 v10, 0x3e8
div-long/2addr v8, v10
invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
new-instance v6, Lorg/json/JSONObject;
invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v7, "count"
const-string/jumbo v8, "ST"
invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v8
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v7, "success"
const-string/jumbo v8, "SS"
invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v8
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v7, "count"
const-string/jumbo v8, "DT"
invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v8
invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v7, "success"
const-string/jumbo v8, "DS"
invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v8
invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v7, "DT"
invoke-interface {v5, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v7
const-string/jumbo v8, "ST"
invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v8
add-int/2addr v7, v8
if-nez v7, :cond_c7
const/4 v7, 0x0
:goto_c6
return-object v7
:cond_c7
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v7, "detect_static"
invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "detect_dynamic"
invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v7, "method"
invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "call_info"
invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v7
goto :goto_c6
.end method
.method private static getSerial(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/faceplusplus/api/Utils;->MD5(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getUUID(Landroid/content/Context;)Ljava/lang/String;
.registers 5
sget-object v2, Lcom/faceplusplus/api/Utils;->PRE_NAME:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v2, "uuid"
invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1b
const-string/jumbo v2, "uuid"
const-string/jumbo v3, ""
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:goto_1a
return-object v1
:cond_1b
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v2
invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "uuid"
invoke-static {v0, v2, v1}, Lcom/faceplusplus/api/Utils;->saveString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public static declared-synchronized saveLog(Landroid/content/Context;IIII)V
.registers 11
const-class v3, Lcom/faceplusplus/api/Utils;
monitor-enter v3
:try_start_3
sget-object v2, Lcom/faceplusplus/api/Utils;->PRE_NAME:Ljava/lang/String;
const/4 v4, 0x0
invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v2, "DT"
const-string/jumbo v4, "DT"
const/4 v5, 0x0
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v4
add-int/2addr v4, p1
invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "DS"
const-string/jumbo v4, "DS"
const/4 v5, 0x0
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v4
add-int/2addr v4, p2
invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "ST"
const-string/jumbo v4, "ST"
const/4 v5, 0x0
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v4
add-int/2addr v4, p3
invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v2, "SS"
const-string/jumbo v4, "SS"
const/4 v5, 0x0
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v4
add-int/2addr v4, p4
invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_4d
.catchall {:try_start_3 .. :try_end_4d} :catchall_4f
monitor-exit v3
return-void
:catchall_4f
move-exception v2
monitor-exit v3
throw v2
.end method
.method private static saveString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static syncLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/faceplusplus/api/Utils$1;
invoke-direct {v0, p0, p1, p2}, Lcom/faceplusplus/api/Utils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/faceplusplus/api/Utils$1;->start()V
return-void
.end method
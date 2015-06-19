.class public final Ltwitter4j/internal/json/z_T4JInternalParseUtil;
.super Ljava/lang/Object;
.source "z_T4JInternalParseUtil.java"
.field private static final formatMapQueue:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->formatMapQueue:Ljava/util/Map;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
.end method
.method public static getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z
.registers 4
invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e
const-string v1, "null"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
:cond_e
const/4 v1, 0x0
:goto_f
return v1
:cond_10
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
goto :goto_f
.end method
.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
.registers 8
sget-object v3, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->formatMapQueue:Ljava/util/Map;
invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/concurrent/LinkedBlockingQueue;
if-nez v2, :cond_14
new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
sget-object v3, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->formatMapQueue:Ljava/util/Map;
invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/text/SimpleDateFormat;
if-nez v1, :cond_2c
new-instance v1, Ljava/text/SimpleDateFormat;
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v1, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
const-string v3, "UTC"
invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
:try_start_2c
:cond_2c
invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_2f
.catchall {:try_start_2c .. :try_end_2f} :catchall_54
.catch Ljava/text/ParseException; {:try_start_2c .. :try_end_2f} :catch_34
move-result-object v3
:try_start_30
invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
:goto_33
:try_end_33
.catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_59
return-object v3
:catch_34
move-exception v0
:try_start_35
new-instance v3, Ltwitter4j/TwitterException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Unexpected date format("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ") returned from twitter.com"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:catchall_54
:try_end_54
.catchall {:try_start_35 .. :try_end_54} :catchall_54
move-exception v3
:try_start_55
invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
:try_end_58
.catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_5b
:goto_58
throw v3
:catch_59
move-exception v4
goto :goto_33
:catch_5b
move-exception v4
goto :goto_58
.end method
.method public static getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;
.registers 3
const-string v0, "EEE MMM d HH:mm:ss z yyyy"
invoke-static {p0, p1, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public static getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
.registers 5
invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
move-result-object v0
const-string v1, "null"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_e
if-nez v0, :cond_10
:cond_e
const/4 v1, 0x0
:goto_f
return-object v1
:cond_10
invoke-static {v0, p2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
goto :goto_f
.end method
.method public static getDouble(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)D
.registers 5
invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_16
const-string v1, ""
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_16
const-string v1, "null"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_19
:cond_16
const-wide/high16 v1, -0x4010
:goto_18
return-wide v1
:cond_19
invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
goto :goto_18
.end method
.method public static getInt(Ljava/lang/String;)I
.registers 4
const/4 v1, -0x1
if-eqz p0, :cond_13
const-string v2, ""
invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_13
const-string v2, "null"
invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_14
:cond_13
:goto_13
return v1
:cond_14
:try_start_14
invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
:try_end_1b
.catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_1d
move-result v1
goto :goto_13
:catch_1d
move-exception v0
goto :goto_13
.end method
.method public static getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I
.registers 3
invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static getLong(Ljava/lang/String;)J
.registers 5
if-eqz p0, :cond_12
const-string v0, ""
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const-string v0, "null"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
:cond_12
const-wide/16 v0, -0x1
:goto_14
return-wide v0
:cond_15
const-string v0, "+"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_34
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
const-wide/16 v2, 0x1
add-long/2addr v0, v2
goto :goto_14
:cond_34
invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
goto :goto_14
.end method
.method public static getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J
.registers 4
invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public static getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
.registers 5
const/4 v1, 0x0
:try_start_1
invoke-virtual {p1, p0}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_8
:goto_7
return-object v1
:cond_8
invoke-virtual {p1, p0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_b
.catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_b} :catch_d
move-result-object v1
goto :goto_7
:catch_d
move-exception v0
goto :goto_7
.end method
.method static getURLDecodedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
.registers 4
invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_c
:try_start_6
const-string v1, "UTF-8"
invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_b} :catch_d
move-result-object v0
:cond_c
:goto_c
return-object v0
:catch_d
move-exception v1
goto :goto_c
.end method
.method static getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ltwitter4j/internal/json/HTMLEntity;->unescape(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
sparse-switch v1, :sswitch_data_22
const-string v1, "EEE, d MMM yyyy HH:mm:ss z"
invoke-static {p0, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
:goto_d
return-object v0
:sswitch_e
new-instance v0, Ljava/util/Date;
invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v1
const-wide/16 v3, 0x3e8
mul-long/2addr v1, v3
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
goto :goto_d
:sswitch_1b
const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"
invoke-static {p0, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
goto :goto_d
:sswitch_data_22
.sparse-switch
0xa -> :sswitch_e
0x14 -> :sswitch_1b
.end sparse-switch
.end method
.method public static toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I
.registers 4
if-nez p0, :cond_4
const/4 v0, -0x1
:goto_3
return v0
:cond_4
const-string v2, "X-Access-Level"
invoke-virtual {p0, v2}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_e
const/4 v0, 0x0
goto :goto_3
:cond_e
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
sparse-switch v2, :sswitch_data_20
const/4 v0, 0x0
goto :goto_3
:sswitch_17
const/4 v0, 0x1
goto :goto_3
:sswitch_19
const/4 v0, 0x2
goto :goto_3
:sswitch_1b
const/4 v0, 0x3
goto :goto_3
:sswitch_1d
const/4 v0, 0x3
goto :goto_3
nop
:sswitch_data_20
.sparse-switch
0x4 -> :sswitch_17
0xa -> :sswitch_19
0x19 -> :sswitch_1b
0x1a -> :sswitch_1d
.end sparse-switch
.end method
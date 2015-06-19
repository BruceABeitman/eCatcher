.class public final Lcom/bbm/util/ac;
.super Ljava/lang/Object;
.source "ChannelUtil.java"
.field private static a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "bbmpim://channel/ex/"
sput-object v0, Lcom/bbm/util/ac;->a:Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/d/ec;)Ljava/lang/String;
.registers 5
iget-object v0, p1, Lcom/bbm/d/ec;->D:Ljava/util/List;
iget-object v1, p1, Lcom/bbm/d/ec;->F:Ljava/lang/String;
invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v1
iget-boolean v2, p1, Lcom/bbm/d/ec;->E:Z
if-eqz v2, :cond_1c
iget-boolean v2, p1, Lcom/bbm/d/ec;->d:Z
if-eqz v2, :cond_1c
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0186
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_2e
invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Ljava/util/List;Ljava/util/TimeZone;)Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_2e
const/4 v2, 0x0
invoke-static {p0, v0, v1, v2}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/TimeZone;Z)Ljava/lang/String;
move-result-object v0
goto :goto_1b
:cond_2e
const-string v0, ""
goto :goto_1b
.end method
.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/TimeZone;Z)Ljava/lang/String;
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
const-string v0, "available"
invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_16
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0189
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_15
return-object v0
:cond_16
const-string v0, "startTime"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "endTime"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z
move-result v2
if-nez v2, :cond_30
invoke-static {v0}, Lcom/bbm/util/ac;->f(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Lcom/bbm/util/ac;->f(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_30
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
if-eqz p3, :cond_50
const v2, 0x7f0e0187
:goto_39
invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
aput-object v0, v3, v4
aput-object v1, v3, v5
const/4 v0, 0x2
invoke-virtual {p2, v5, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v0
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_15
:cond_50
const v2, 0x7f0e0188
goto :goto_39
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/bbm/util/ac;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const/16 v1, 0x7c
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/util/Locale;)Ljava/lang/String;
.registers 10
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v5, 0x1
const/16 v6, 0x1c
const/4 v0, 0x0
if-nez p0, :cond_b
const-string v0, ""
:goto_a
return-object v0
:cond_b
invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1ae
const-string v3, "en"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_31
if-eqz v2, :cond_2e
const-string v0, "en_GB"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e
const-string v0, "en_GB"
goto :goto_a
:cond_2e
const-string v0, "en_US"
goto :goto_a
:cond_31
const-string v3, "pt"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_49
if-eqz v2, :cond_46
const-string v0, "pt_BR"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_46
const-string v0, "pt_BR"
goto :goto_a
:cond_46
const-string v0, "pt_PT"
goto :goto_a
:cond_49
const-string v3, "zh"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_61
if-eqz v2, :cond_5e
const-string v0, "zh_CN"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5e
const-string v0, "zh_CN"
goto :goto_a
:cond_5e
const-string v0, "zh_TW"
goto :goto_a
:cond_61
new-array v2, v6, [Ljava/lang/String;
const-string v3, "ar"
aput-object v3, v2, v0
const-string v3, "ca"
aput-object v3, v2, v5
const-string v3, "cs"
aput-object v3, v2, v7
const-string v3, "da"
aput-object v3, v2, v8
const/4 v3, 0x4
const-string v4, "de"
aput-object v4, v2, v3
const/4 v3, 0x5
const-string v4, "el"
aput-object v4, v2, v3
const/4 v3, 0x6
const-string v4, "es"
aput-object v4, v2, v3
const/4 v3, 0x7
const-string v4, "eu"
aput-object v4, v2, v3
const/16 v3, 0x8
const-string v4, "fi"
aput-object v4, v2, v3
const/16 v3, 0x9
const-string v4, "fr"
aput-object v4, v2, v3
const/16 v3, 0xa
const-string v4, "gl"
aput-object v4, v2, v3
const/16 v3, 0xb
const-string v4, "iw"
aput-object v4, v2, v3
const/16 v3, 0xc
const-string v4, "hi"
aput-object v4, v2, v3
const/16 v3, 0xd
const-string v4, "hr"
aput-object v4, v2, v3
const/16 v3, 0xe
const-string v4, "hu"
aput-object v4, v2, v3
const/16 v3, 0xf
const-string v4, "in"
aput-object v4, v2, v3
const/16 v3, 0x10
const-string v4, "it"
aput-object v4, v2, v3
const/16 v3, 0x11
const-string v4, "ja"
aput-object v4, v2, v3
const/16 v3, 0x12
const-string v4, "ko"
aput-object v4, v2, v3
const/16 v3, 0x13
const-string v4, "nb"
aput-object v4, v2, v3
const/16 v3, 0x14
const-string v4, "nl"
aput-object v4, v2, v3
const/16 v3, 0x15
const-string v4, "pl"
aput-object v4, v2, v3
const/16 v3, 0x16
const-string v4, "ro"
aput-object v4, v2, v3
const/16 v3, 0x17
const-string v4, "ru"
aput-object v4, v2, v3
const/16 v3, 0x18
const-string v4, "sv"
aput-object v4, v2, v3
const/16 v3, 0x19
const-string v4, "th"
aput-object v4, v2, v3
const/16 v3, 0x1a
const-string v4, "tr"
aput-object v4, v2, v3
const/16 v3, 0x1b
const-string v4, "vi"
aput-object v4, v2, v3
new-array v3, v6, [Ljava/lang/String;
const-string v4, "ar_EG"
aput-object v4, v3, v0
const-string v4, "ca_ES"
aput-object v4, v3, v5
const-string v4, "cs_CZ"
aput-object v4, v3, v7
const-string v4, "da_DK"
aput-object v4, v3, v8
const/4 v4, 0x4
const-string v5, "de_DE"
aput-object v5, v3, v4
const/4 v4, 0x5
const-string v5, "el_GR"
aput-object v5, v3, v4
const/4 v4, 0x6
const-string v5, "es_ES"
aput-object v5, v3, v4
const/4 v4, 0x7
const-string v5, "eu_ES"
aput-object v5, v3, v4
const/16 v4, 0x8
const-string v5, "fi_FI"
aput-object v5, v3, v4
const/16 v4, 0x9
const-string v5, "fr_FR"
aput-object v5, v3, v4
const/16 v4, 0xa
const-string v5, "gl_ES"
aput-object v5, v3, v4
const/16 v4, 0xb
const-string v5, "he_IL"
aput-object v5, v3, v4
const/16 v4, 0xc
const-string v5, "hi_IN"
aput-object v5, v3, v4
const/16 v4, 0xd
const-string v5, "hr_HR"
aput-object v5, v3, v4
const/16 v4, 0xe
const-string v5, "hu_HU"
aput-object v5, v3, v4
const/16 v4, 0xf
const-string v5, "id_ID"
aput-object v5, v3, v4
const/16 v4, 0x10
const-string v5, "it_IT"
aput-object v5, v3, v4
const/16 v4, 0x11
const-string v5, "ja_JP"
aput-object v5, v3, v4
const/16 v4, 0x12
const-string v5, "ko_KR"
aput-object v5, v3, v4
const/16 v4, 0x13
const-string v5, "nb_NO"
aput-object v5, v3, v4
const/16 v4, 0x14
const-string v5, "nl_NL"
aput-object v5, v3, v4
const/16 v4, 0x15
const-string v5, "pl_PL"
aput-object v5, v3, v4
const/16 v4, 0x16
const-string v5, "ro_RO"
aput-object v5, v3, v4
const/16 v4, 0x17
const-string v5, "ru_RU"
aput-object v5, v3, v4
const/16 v4, 0x18
const-string v5, "sv_SE"
aput-object v5, v3, v4
const/16 v4, 0x19
const-string v5, "th_TH"
aput-object v5, v3, v4
const/16 v4, 0x1a
const-string v5, "tr_TR"
aput-object v5, v3, v4
const/16 v4, 0x1b
const-string v5, "vi_VN"
aput-object v5, v3, v4
:goto_19d
if-ge v0, v6, :cond_1ae
aget-object v4, v2, v0
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1ab
aget-object v0, v3, v0
goto/16 :goto_a
:cond_1ab
add-int/lit8 v0, v0, 0x1
goto :goto_19d
:cond_1ae
invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_a
.end method
.method public static a([BLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lcom/bbm/util/ac;->a([BLjava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a([BLjava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/io/File;
invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
const-string v2, "tmp/transfer"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_18
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_18
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:try_start_33
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
move-result v0
if-eqz v0, :cond_40
if-eqz p3, :cond_42
:cond_40
if-eqz p3, :cond_50
:cond_42
new-instance v0, Ljava/io/FileOutputStream;
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
:cond_50
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
:try_end_53
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_53} :catch_55
move-result-object v0
:goto_54
return-object v0
:catch_55
move-exception v0
invoke-static {v0}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_54
.end method
.method public static a(Lcom/bbm/d/fw;Lcom/bbm/d/ec;Ljava/lang/String;)Lorg/json/JSONObject;
.registers 8
const/4 v2, 0x0
:try_start_1
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "channelUri"
iget-object v3, p0, Lcom/bbm/d/fw;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "postId"
iget-object v3, p0, Lcom/bbm/d/fw;->j:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-static {p2}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1f
const-string v1, "sharedText"
invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_1f
const-string v1, "channelDisplayName"
iget-object v3, p1, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "channelBadge"
iget-boolean v3, p1, Lcom/bbm/d/ec;->b:Z
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v1, "postContent"
iget-object v3, p0, Lcom/bbm/d/fw;->d:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
move v1, v2
:goto_3a
iget-object v4, p0, Lcom/bbm/d/fw;->k:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-ge v1, v4, :cond_4e
iget-object v4, p0, Lcom/bbm/d/fw;->k:Ljava/util/List;
invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
add-int/lit8 v1, v1, 0x1
goto :goto_3a
:cond_4e
const-string v1, "postImages"
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "postTitle"
iget-object v3, p0, Lcom/bbm/d/fw;->s:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_5a
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_5a} :catch_5b
:goto_5a
return-object v0
:catch_5b
move-exception v0
const-string v1, "Error sending shared channel post"
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_5a
.end method
.method private static a(Ljava/util/List;I)Lorg/json/JSONObject;
.registers 5
const/4 v0, 0x0
move v1, v0
:goto_2
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_1b
invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
const-string v2, "dayOfWeek"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v2
if-ne p1, v2, :cond_17
:goto_16
return-object v0
:cond_17
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_1b
const/4 v0, 0x0
goto :goto_16
.end method
.method private static a(Ljava/util/List;Ljava/util/TimeZone;)Lorg/json/JSONObject;
.registers 7
invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
move-result-object v0
const/4 v1, 0x7
invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I
move-result v1
add-int/lit8 v1, v1, -0x1
new-instance v2, Ljava/text/SimpleDateFormat;
const-string v3, "HH:mm"
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-static {p0, v1}, Lcom/bbm/util/ac;->a(Ljava/util/List;I)Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_4b
const-string v1, "available"
const/4 v3, 0x0
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_4b
const-string v1, "startTime"
const-string v3, "00:00"
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_4b
const-string v1, "endTime"
const-string v3, "23:59"
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v1
if-gtz v1, :cond_4b
:goto_4a
return-object v0
:cond_4b
const/4 v0, 0x0
goto :goto_4a
.end method
.method public static a(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
.registers 6
const/4 v2, 0x0
const-string v0, "bbmUserPin"
invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
move-result-object v0
invoke-static {p1, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/ClipData;)V
const v0, 0x7f0e01d7
invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object p2, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const/16 v1, 0x10
invoke-static {p0, v0, v2, v1}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;II)V
return-void
.end method
.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
.registers 8
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.bbm.ui.activities.ViewSubscribedChannelActivity.channel_id"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.bbm.ui.activities.ViewSubscribedChannelActivity.post_id"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v0, "com.bbm.selectedcontacts"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v2
invoke-static {v4}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4a
invoke-static {v5}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4a
if-eqz v2, :cond_4a
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_4a
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;
move-result-object v1
new-instance v0, Lcom/bbm/util/av;
move-object v3, p0
invoke-direct/range {v0 .. v5}, Lcom/bbm/util/av;-><init>(Lcom/google/b/f/a/l;Ljava/util/ArrayList;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v2
invoke-interface {v1, v0, v2}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
:cond_4a
return-void
.end method
.method public static a(Landroid/app/Activity;Lcom/bbm/d/el;Lcom/bbm/d/ec;Ljava/lang/String;)V
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e0177
invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v5, [Ljava/lang/Object;
iget-object v3, p1, Lcom/bbm/d/el;->f:Ljava/lang/String;
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e017a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v5, [Ljava/lang/Object;
iget-object v3, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V
const v1, 0x7f0e0171
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V
invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0179
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Ljava/lang/String;)V
new-instance v1, Lcom/bbm/util/ae;
invoke-direct {v1, v0, p2, p1, p3}, Lcom/bbm/util/ae;-><init>(Lcom/bbm/ui/b/o;Lcom/bbm/d/ec;Lcom/bbm/d/el;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/bbm/util/au;
invoke-direct {v0, p1, p0, p2}, Lcom/bbm/util/au;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
return-void
.end method
.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-static {p2}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2b
invoke-static {p4}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2b
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/ChannelPickerActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "title"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "content"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "imagePath"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "postID"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:cond_2b
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 10
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
invoke-static/range {v0 .. v5}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.registers 8
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "bbm_channel_uri"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "PostKey"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "startComment"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "com.bbm.ui.activities.extra_channel_post_preview"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "com.bbm.ui.activities.extra_channel_post_preview_data"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
.registers 4
new-instance v0, Lcom/bbm/util/ad;
invoke-direct {v0, p1, p2, p0}, Lcom/bbm/util/ad;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
return-void
.end method
.method public static a(Landroid/content/Intent;Landroid/content/Context;Lcom/bbm/d/ec;)V
.registers 9
const-string v0, "imagePath"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1f
new-instance v0, Lcom/bbm/util/aj;
move-object v1, p1
move-object v3, p1
move-object v4, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/bbm/util/aj;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/bbm/d/ec;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v3, 0x0
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/bbm/util/ez;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
:goto_1e
return-void
:cond_1f
const/4 v0, 0x0
invoke-static {p0, v0, p2, p1}, Lcom/bbm/util/ac;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/bbm/d/ec;Landroid/content/Context;)V
goto :goto_1e
.end method
.method public static a(Landroid/content/Intent;Ljava/lang/String;Lcom/bbm/d/ec;Landroid/content/Context;)V
.registers 11
const/16 v6, 0x190
const/4 v5, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const v1, 0x7f0e01f3
invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
iget-object v3, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;
aput-object v3, v2, v5
const/4 v3, 0x1
iget-object v4, p2, Lcom/bbm/d/ec;->I:Ljava/lang/String;
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "content"
invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v6, :cond_3b
invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_3b
const-string v1, "title"
invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "picked channel"
invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v0, p1, v2}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const v0, 0x7f0e01f8
invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p3, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static a(Lcom/bbm/d/ec;JZLandroid/widget/ImageView;Landroid/widget/TextView;)V
.registers 10
const/16 v0, 0x8
const/4 v1, 0x0
invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V
iget-boolean v2, p0, Lcom/bbm/d/ec;->t:Z
if-eqz v2, :cond_25
const-wide/16 v2, 0x0
cmp-long v2, p1, v2
if-lez v2, :cond_11
move v0, v1
:cond_11
invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V
const-wide/16 v2, 0x1
cmp-long v0, p1, v2
if-lez v0, :cond_24
invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_24
:cond_24
return-void
:cond_25
if-eqz p3, :cond_2b
:goto_27
invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_24
:cond_2b
move v1, v0
goto :goto_27
.end method
.method public static a(Lcom/bbm/d/ec;Landroid/app/Activity;)V
.registers 5
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e04c6
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e04c8
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V
const v1, 0x7f0e0171
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e04c9
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Ljava/lang/String;)V
new-instance v1, Lcom/bbm/util/ao;
invoke-direct {v1, v0, p0, p1}, Lcom/bbm/util/ao;-><init>(Lcom/bbm/ui/b/o;Lcom/bbm/d/ec;Landroid/app/Activity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e01f0
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e01ef
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
const v1, 0x7f0e01f7
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v1, Lcom/bbm/util/ak;
invoke-direct {v1, p1, v0}, Lcom/bbm/util/ak;-><init>(Ljava/lang/String;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e01f6
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e01f5
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
const v1, 0x7f0e01f7
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v1, Lcom/bbm/util/aw;
invoke-direct {v1, p1, p2, v0}, Lcom/bbm/util/aw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e01e3
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e01e4
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
const v1, 0x7f0e01f7
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v1, Lcom/bbm/util/al;
invoke-direct {v1, p1, p2, p3, v0}, Lcom/bbm/util/al;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Ljava/lang/String;Landroid/app/Activity;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/bbm/ui/b/o;
invoke-direct {v1, p1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v2, 0x7f0e02eb
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->setTitle(I)V
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e02ed
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V
const v2, 0x7f0e0171
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->b(I)V
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e02ea
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->b(Ljava/lang/String;)V
new-instance v2, Lcom/bbm/util/ap;
invoke-direct {v2, v1, p0, v0, p1}, Lcom/bbm/util/ap;-><init>(Lcom/bbm/ui/b/o;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v1}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Ljava/lang/String;Landroid/app/Activity;Lcom/bbm/util/ax;)V
.registers 4
new-instance v0, Lcom/bbm/util/am;
invoke-direct {v0, p0, p2, p1}, Lcom/bbm/util/am;-><init>(Ljava/lang/String;Lcom/bbm/util/ax;Landroid/app/Activity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/activities/cn;)V
.registers 6
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p2}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e02f2
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
invoke-virtual {p2}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e02f4
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V
const v1, 0x7f0e0171
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V
invoke-virtual {p2}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e02ea
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Ljava/lang/String;)V
new-instance v1, Lcom/bbm/util/af;
invoke-direct {v1, v0, p0, p1, p2}, Lcom/bbm/util/af;-><init>(Lcom/bbm/ui/b/o;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/activities/cn;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
iget-object v1, p2, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
new-instance v1, Lcom/bbm/d/ds;
invoke-direct {v1, p0, p1, p2}, Lcom/bbm/d/ds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/activities/cn;)V
.registers 10
new-instance v1, Lcom/bbm/ui/b/o;
invoke-direct {v1, p3}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v0, 0x7f0e02ee
invoke-virtual {v1, v0}, Lcom/bbm/ui/b/o;->setTitle(I)V
invoke-virtual {p3}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0e02f0
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V
const v0, 0x7f0e0171
invoke-virtual {v1, v0}, Lcom/bbm/ui/b/o;->b(I)V
invoke-virtual {p3}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0e02ea
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/b/o;->b(Ljava/lang/String;)V
new-instance v0, Lcom/bbm/util/ah;
move-object v2, p0
move-object v3, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/bbm/util/ah;-><init>(Lcom/bbm/ui/b/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/activities/cn;)V
invoke-virtual {v1, v0}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
iget-object v0, p3, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-virtual {v1}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
const-string v2, "title"
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "content"
const-string v3, "[\n]+$"
const-string v4, ""
invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "channelUri"
invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
if-eqz p2, :cond_30
const-string v2, "imagePath"
invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_30
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v2, "pendingPost"
invoke-static {v1, v2}, Lcom/bbm/d/z;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cy;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:goto_40
:try_end_40
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41
return-void
:catch_41
move-exception v0
invoke-static {v0}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Throwable;)V
goto :goto_40
.end method
.method public static a(Ljava/util/List;)V
.registers 2
new-instance v0, Lcom/bbm/util/as;
invoke-direct {v0}, Lcom/bbm/util/as;-><init>()V
invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
return-void
.end method
.method public static a()Z
.registers 1
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/ct;->a(Landroid/content/Context;)Z
move-result v0
return v0
.end method
.method public static a(Landroid/content/Context;)Z
.registers 2
invoke-static {p0}, Lcom/bbm/util/ct;->a(Landroid/content/Context;)Z
move-result v0
return v0
.end method
.method public static a(Lcom/bbm/d/ec;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/bbm/d/ec;->q:Z
if-eqz v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-boolean v2, p0, Lcom/bbm/d/ec;->E:Z
if-eqz v2, :cond_11
iget-boolean v2, p0, Lcom/bbm/d/ec;->d:Z
if-eqz v2, :cond_11
move v0, v1
goto :goto_6
:cond_11
iget-boolean v2, p0, Lcom/bbm/d/ec;->d:Z
if-eqz v2, :cond_6
iget-object v2, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
iget-object v3, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v3
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v4
if-nez v4, :cond_6
invoke-static {v2, v3}, Lcom/bbm/util/ac;->a(Ljava/util/List;Ljava/util/TimeZone;)Lorg/json/JSONObject;
move-result-object v2
if-eqz v2, :cond_6
move v0, v1
goto :goto_6
.end method
.method public static a(Lcom/bbm/d/es;)Z
.registers 7
iget-boolean v0, p0, Lcom/bbm/d/es;->j:Z
if-eqz v0, :cond_1b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/bbm/d/es;->o:J
const-wide/16 v4, 0x3e8
mul-long/2addr v2, v4
sub-long/2addr v0, v2
iget-boolean v2, p0, Lcom/bbm/d/es;->l:Z
if-eqz v2, :cond_19
const-wide/32 v2, 0xf731400
cmp-long v0, v0, v2
if-lez v0, :cond_1b
:cond_19
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/16 v0, 0x20
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_f
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
:cond_f
return-object p0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
const/4 v0, 0x1
invoke-static {p0, p1, v0}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public static b(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
new-instance v1, Lcom/bbm/d/dr;
invoke-direct {v1, p1, p2}, Lcom/bbm/d/dr;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
return-void
.end method
.method public static b(Ljava/lang/String;Landroid/app/Activity;)V
.registers 3
new-instance v0, Lcom/bbm/util/at;
invoke-direct {v0, p0, p1}, Lcom/bbm/util/at;-><init>(Ljava/lang/String;Landroid/app/Activity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
return-void
.end method
.method public static b()Z
.registers 3
const/4 v0, 0x0
:try_start_1
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;
move-result-object v1
sget-object v2, Lcom/bbm/util/ay;->b:Lcom/bbm/util/ay;
:try_end_b
.catch Lcom/bbm/j/z; {:try_start_1 .. :try_end_b} :catch_f
if-eq v1, v2, :cond_e
const/4 v0, 0x1
:cond_e
:goto_e
return v0
:catch_f
move-exception v1
goto :goto_e
.end method
.method public static b(Lcom/bbm/d/ec;Landroid/app/Activity;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {p0}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;)Z
move-result v2
if-eqz v2, :cond_3a
const-string v2, "Requesting chat with %s"
new-array v3, v0, [Ljava/lang/Object;
iget-object v4, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
aput-object v4, v3, v1
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
invoke-static {}, Lcom/google/b/f/a/r;->a()Lcom/google/b/f/a/r;
move-result-object v3
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->f(Ljava/lang/String;)Lcom/google/b/f/a/l;
move-result-object v4
new-instance v5, Lcom/bbm/d/e;
invoke-direct {v5, v1, v4, v2, v3}, Lcom/bbm/d/e;-><init>(Lcom/bbm/d/a;Lcom/google/b/f/a/l;Ljava/lang/String;Lcom/google/b/f/a/r;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v1
invoke-interface {v4, v5, v1}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
new-instance v1, Lcom/bbm/util/ar;
invoke-direct {v1, v3, p0, p1}, Lcom/bbm/util/ar;-><init>(Lcom/google/b/f/a/l;Lcom/bbm/d/ec;Landroid/app/Activity;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v2
invoke-interface {v3, v1, v2}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
:goto_39
return v0
:cond_3a
move v0, v1
goto :goto_39
.end method
.method public static c(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/16 v3, 0x3f
const/16 v1, 0x2f
const/4 v2, -0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
if-eq v0, v2, :cond_13
invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
:cond_13
const/16 v0, 0x2e
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-eq v0, v2, :cond_3b
const-string v0, "."
invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-eq v1, v2, :cond_3b
const/4 v1, 0x0
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I
move-result v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:goto_3a
return-object v0
:cond_3b
const/4 v0, 0x0
goto :goto_3a
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "bbm_channel_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static d(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
new-instance v1, Lcom/bbm/d/dq;
invoke-direct {v1, p0}, Lcom/bbm/d/dq;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public static e(Ljava/lang/String;)V
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:try_start_5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v2, "id"
invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_12
:try_end_12
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_12} :catch_20
const-string v0, "channelNotification"
invoke-static {v1, v0}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
:catch_20
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method private static f(Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "hh:mm aa"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v1, ":"
invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
aget-object v2, v1, v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
const/4 v3, 0x1
aget-object v1, v1, v3
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
invoke-virtual {v3, v2}, Ljava/util/Date;->setHours(I)V
invoke-virtual {v3, v1}, Ljava/util/Date;->setMinutes(I)V
invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
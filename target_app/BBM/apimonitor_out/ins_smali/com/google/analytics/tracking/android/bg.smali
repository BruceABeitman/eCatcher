.class final Lcom/google/analytics/tracking/android/bg;
.super Ljava/lang/Object;
.source "Utils.java"
.field private static final a:[C
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/google/analytics/tracking/android/bg;->a:[C
return-void
:array_a
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
.end array-data
.end method
.method static a(Ljava/util/Locale;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_39
const-string v1, "-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_39
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public static a(Ljava/lang/String;)Ljava/util/Map;
.registers 9
const/4 v7, 0x1
const/4 v1, 0x0
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const-string v0, "&"
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
array-length v4, v3
move v0, v1
:goto_f
if-ge v0, v4, :cond_38
aget-object v5, v3, v0
const-string v6, "="
invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
array-length v6, v5
if-le v6, v7, :cond_26
aget-object v6, v5, v1
aget-object v5, v5, v7
invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_23
:goto_23
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_26
array-length v6, v5
if-ne v6, v7, :cond_23
aget-object v6, v5, v1
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
if-eqz v6, :cond_23
aget-object v5, v5, v1
const/4 v6, 0x0
invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_23
:cond_38
return-object v2
.end method
.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_9
invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_9
return-void
.end method
.method public static b(Ljava/lang/String;)D
.registers 4
const-wide/high16 v0, 0x4059
if-nez p0, :cond_5
:goto_4
return-wide v0
:try_start_5
:cond_5
invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
:try_end_8
.catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a
move-result-wide v0
goto :goto_4
:catch_a
move-exception v2
goto :goto_4
.end method
.method public static c(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x1
if-eqz p0, :cond_1b
const-string v1, "true"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1b
const-string v1, "yes"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1b
const-string v1, "1"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1c
:cond_1b
:goto_1b
return v0
:cond_1c
const-string v1, "false"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_34
const-string v1, "no"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_34
const-string v1, "0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1b
:cond_34
const/4 v0, 0x0
goto :goto_1b
.end method
.method public static d(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/16 v6, 0x9
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v4, 0x1
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_c
:goto_b
return-object v0
:cond_c
const-string v2, "?"
invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_1f
const-string v2, "[\\?]"
invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
if-le v3, v4, :cond_1f
aget-object p0, v2, v4
:cond_1f
const-string v2, "%3D"
invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_9a
:try_start_27
const-string v2, "UTF-8"
invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_2c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_2c} :catch_aa
move-result-object p0
:cond_2d
invoke-static {p0}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/lang/String;)Ljava/util/Map;
move-result-object v2
new-array v3, v6, [Ljava/lang/String;
const-string v0, "dclid"
aput-object v0, v3, v1
const-string v0, "utm_source"
aput-object v0, v3, v4
const/4 v0, 0x2
const-string v4, "gclid"
aput-object v4, v3, v0
const/4 v0, 0x3
const-string v4, "utm_campaign"
aput-object v4, v3, v0
const/4 v0, 0x4
const-string v4, "utm_medium"
aput-object v4, v3, v0
const/4 v0, 0x5
const-string v4, "utm_term"
aput-object v4, v3, v0
const/4 v0, 0x6
const-string v4, "utm_content"
aput-object v4, v3, v0
const/4 v0, 0x7
const-string v4, "utm_id"
aput-object v4, v3, v0
const/16 v0, 0x8
const-string v4, "gmob_t"
aput-object v4, v3, v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
:goto_64
if-ge v1, v6, :cond_a4
aget-object v0, v3, v1
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_96
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_7f
const-string v0, "&"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_7f
aget-object v0, v3, v1
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "="
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
aget-object v0, v3, v1
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_96
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_64
:cond_9a
const-string v2, "="
invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_2d
goto/16 :goto_b
:cond_a4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_b
:catch_aa
move-exception v1
goto/16 :goto_b
.end method
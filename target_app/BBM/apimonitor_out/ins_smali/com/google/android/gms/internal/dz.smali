.class public Lcom/google/android/gms/internal/dz;
.super Ljava/lang/Object;
.field private static final xE:Lcom/google/android/gms/internal/du;
.field private static final yE:[Ljava/lang/String;
.field private static final yF:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
new-instance v0, Lcom/google/android/gms/internal/du;
const-string v1, "MetadataUtils"
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const-string v1, "Z"
aput-object v1, v0, v3
const/4 v1, 0x1
const-string v2, "+hh"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "+hhmm"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "+hh:mm"
aput-object v2, v0, v1
sput-object v0, Lcom/google/android/gms/internal/dz;->yE:[Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "yyyyMMdd\'T\'HHmmss"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/google/android/gms/internal/dz;->yE:[Ljava/lang/String;
aget-object v1, v1, v3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/dz;->yF:Ljava/lang/String;
return-void
.end method
.method public static V(Ljava/lang/String;)Ljava/util/Calendar;
.registers 7
const/4 v2, 0x0
const/4 v5, 0x0
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v1, "Input string is empty or null"
new-array v3, v5, [Ljava/lang/Object;
invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
move-object v0, v2
:goto_12
return-object v0
:cond_13
invoke-static {p0}, Lcom/google/android/gms/internal/dz;->W(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_28
sget-object v0, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v1, "Invalid date format"
new-array v3, v5, [Ljava/lang/Object;
invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
move-object v0, v2
goto :goto_12
:cond_28
invoke-static {p0}, Lcom/google/android/gms/internal/dz;->X(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v0, "yyyyMMdd"
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_54
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "T"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v0
const/4 v3, 0x6
if-ne v0, v3, :cond_66
const-string v0, "yyyyMMdd\'T\'HHmmss"
:cond_54
:goto_54
invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;
move-result-object v3
:try_start_58
new-instance v4, Ljava/text/SimpleDateFormat;
invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_60
.catch Ljava/text/ParseException; {:try_start_58 .. :try_end_60} :catch_69
move-result-object v0
invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
move-object v0, v3
goto :goto_12
:cond_66
sget-object v0, Lcom/google/android/gms/internal/dz;->yF:Ljava/lang/String;
goto :goto_54
:catch_69
move-exception v0
sget-object v1, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v3, "Error parsing string: %s"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;
move-result-object v0
aput-object v0, v4, v5
invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
move-object v0, v2
goto :goto_12
.end method
.method private static W(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
const/4 v5, 0x0
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_12
sget-object v1, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v2, "Input string is empty or null"
new-array v3, v5, [Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_11
return-object v0
:cond_12
const/4 v1, 0x0
const/16 v2, 0x8
:try_start_15
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
:try_end_18
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_18} :catch_1a
move-result-object v0
goto :goto_11
:catch_1a
move-exception v1
sget-object v2, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v3, "Error extracting the date: %s"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;
move-result-object v1
aput-object v1, v4, v5
invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/du;->c(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_11
.end method
.method private static X(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v4, 0x6
const/4 v0, 0x0
const/4 v5, 0x0
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_13
sget-object v1, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v2, "string is empty or null"
new-array v3, v5, [Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_12
:goto_12
return-object v0
:cond_13
const/16 v1, 0x54
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
add-int/lit8 v2, v1, 0x1
const/16 v3, 0x8
if-eq v1, v3, :cond_29
sget-object v1, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v2, "T delimeter is not found"
new-array v3, v5, [Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_12
:cond_29
:try_start_29
invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
:try_end_2c
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_2c} :catch_35
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-ne v2, v4, :cond_47
move-object v0, v1
goto :goto_12
:catch_35
move-exception v1
sget-object v2, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v3, "Error extracting the time substring: %s"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;
move-result-object v1
aput-object v1, v4, v5
invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_12
:cond_47
invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C
move-result v2
sparse-switch v2, :sswitch_data_8c
goto :goto_12
:sswitch_4f
invoke-static {v1}, Lcom/google/android/gms/internal/dz;->Y(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_12
const-string v0, "([\\+\\-]\\d\\d):(\\d\\d)"
const-string v2, "$1$2"
invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_12
:sswitch_5e
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
sget-object v3, Lcom/google/android/gms/internal/dz;->yE:[Ljava/lang/String;
aget-object v3, v3, v5
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, 0x6
if-ne v2, v3, :cond_12
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "+0000"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_12
:sswitch_data_8c
.sparse-switch
0x2b -> :sswitch_4f
0x2d -> :sswitch_4f
0x5a -> :sswitch_5e
.end sparse-switch
.end method
.method private static Y(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
sget-object v2, Lcom/google/android/gms/internal/dz;->yE:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, 0x6
if-eq v1, v2, :cond_2b
sget-object v2, Lcom/google/android/gms/internal/dz;->yE:[Ljava/lang/String;
const/4 v3, 0x2
aget-object v2, v2, v3
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, 0x6
if-eq v1, v2, :cond_2b
sget-object v2, Lcom/google/android/gms/internal/dz;->yE:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, 0x6
if-ne v1, v2, :cond_2c
:cond_2b
:goto_2b
return v0
:cond_2c
const/4 v0, 0x0
goto :goto_2b
.end method
.method public static a(Ljava/util/Calendar;)Ljava/lang/String;
.registers 5
const/4 v3, 0x0
if-nez p0, :cond_e
sget-object v0, Lcom/google/android/gms/internal/dz;->xE:Lcom/google/android/gms/internal/du;
const-string v1, "Calendar object cannot be null"
new-array v2, v3, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/du;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x0
:goto_d
:cond_d
return-object v0
:cond_e
sget-object v0, Lcom/google/android/gms/internal/dz;->yF:Ljava/lang/String;
const/16 v1, 0xb
invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I
move-result v1
if-nez v1, :cond_2a
const/16 v1, 0xc
invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I
move-result v1
if-nez v1, :cond_2a
const/16 v1, 0xd
invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I
move-result v1
if-nez v1, :cond_2a
const-string v0, "yyyyMMdd"
:cond_2a
new-instance v1, Ljava/text/SimpleDateFormat;
invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
const-string v1, "+0000"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_d
const-string v1, "+0000"
sget-object v2, Lcom/google/android/gms/internal/dz;->yE:[Ljava/lang/String;
aget-object v2, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
goto :goto_d
.end method
.method public static a(Ljava/util/List;Lorg/json/JSONObject;)V
.registers 7
:try_start_0
invoke-interface {p0}, Ljava/util/List;->clear()V
const-string v0, "images"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
const/4 v0, 0x0
:goto_e
if-ge v0, v2, :cond_20
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
:try_end_13
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_1f
move-result-object v3
:try_start_14
new-instance v4, Lcom/google/android/gms/common/images/WebImage;
invoke-direct {v4, v3}, Lcom/google/android/gms/common/images/WebImage;-><init>(Lorg/json/JSONObject;)V
invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_1c
.catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1c} :catch_21
.catch Lorg/json/JSONException; {:try_start_14 .. :try_end_1c} :catch_1f
:goto_1c
add-int/lit8 v0, v0, 0x1
goto :goto_e
:catch_1f
move-exception v0
:cond_20
return-void
:catch_21
move-exception v3
goto :goto_1c
.end method
.method public static a(Lorg/json/JSONObject;Ljava/util/List;)V
.registers 5
if-eqz p1, :cond_2a
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_2a
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/images/WebImage;
invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->cT()Lorg/json/JSONObject;
move-result-object v0
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_11
:cond_25
:try_start_25
const-string v0, "images"
invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_2a
.catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2a} :catch_2b
:goto_2a
:cond_2a
return-void
:catch_2b
move-exception v0
goto :goto_2a
.end method
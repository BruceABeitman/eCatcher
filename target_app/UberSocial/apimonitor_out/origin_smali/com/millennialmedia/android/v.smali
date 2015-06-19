.class Lcom/millennialmedia/android/v;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "addEvent"

.field private static final d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/millennialmedia/android/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/android/v;->e:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/android/v;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_1a

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    const-string v0, "MO"

    goto :goto_4

    :pswitch_8
    const-string v0, "TU"

    goto :goto_4

    :pswitch_b
    const-string v0, "WE"

    goto :goto_4

    :pswitch_e
    const-string v0, "TH"

    goto :goto_4

    :pswitch_11
    const-string v0, "FR"

    goto :goto_4

    :pswitch_14
    const-string v0, "SA"

    goto :goto_4

    :pswitch_17
    const-string v0, "SU"

    goto :goto_4

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    const-string v0, "frequency"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FREQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_61

    :goto_1a
    :try_start_1a
    sget-object v0, Lcom/millennialmedia/android/v;->f:Ljava/text/SimpleDateFormat;

    const-string v2, "expires"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/android/v;->e:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_1a .. :try_end_3b} :catch_6a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_3b} :catch_73

    :goto_3b
    :try_start_3b
    const-string v0, "daysInWeek"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_47
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_7c

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/v;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_5e} :catch_f3

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :catch_61
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event recurrence frequency"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catch_6a
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Error parsing calendar event recurrence expiration date"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :catch_73
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event recurrence expiration date"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_7c
    :try_start_7c
    const-string v0, "BYDAY="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_8b} :catch_f3

    :goto_8b
    :try_start_8b
    const-string v0, "daysInMonth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\["

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BYMONTHDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_b0} :catch_fc

    :goto_b0
    :try_start_b0
    const-string v0, "monthsInYear:"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\["

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_b0 .. :try_end_d5} :catch_105

    :goto_d5
    :try_start_d5
    const-string v0, "daysInYear"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BYYEARDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_ea} :catch_10e

    :goto_ea
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_f3
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get days in week"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :catch_fc
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get days in month"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    :catch_105
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get months in year:"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    :catch_10e
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get days in year"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ea
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "addEvent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/v;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method public a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEvent parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1c5

    if-eqz p1, :cond_1c2

    const-string v0, "parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c2

    :try_start_29
    new-instance v10, Lorg/json/JSONObject;

    const-string v0, "parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_36} :catch_132

    :try_start_36
    const-string v0, "description"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3b} :catch_b9

    move-result-object v0

    move-object v9, v0

    :goto_3d
    :try_start_3d
    const-string v0, "summary"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_42} :catch_c4

    move-result-object v0

    move-object v8, v0

    :goto_44
    :try_start_44
    const-string v0, "transparency"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_49} :catch_cf

    move-result-object v0

    move-object v7, v0

    :goto_4b
    :try_start_4b
    const-string v0, "reminder"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_50} :catch_da

    move-result-object v0

    move-object v6, v0

    :goto_52
    :try_start_52
    const-string v0, "location"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_57} :catch_e5

    move-result-object v0

    move-object v5, v0

    :goto_59
    :try_start_59
    const-string v0, "status"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_5e} :catch_f0

    move-result-object v0

    move-object v4, v0

    :goto_60
    :try_start_60
    const-string v0, "recurrence"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/v;->a(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_69} :catch_fb

    move-result-object v0

    move-object v3, v0

    :goto_6b
    :try_start_6b
    const-string v0, "start"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/millennialmedia/android/v;->e:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_76
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_6b .. :try_end_76} :catch_106
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_76} :catch_111

    move-result-object v0

    move-object v2, v0

    :goto_78
    :try_start_78
    const-string v0, "end"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/millennialmedia/android/v;->e:[Ljava/lang/String;

    invoke-static {v0, v10}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_83
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_78 .. :try_end_83} :catch_11c
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_83} :catch_127

    move-result-object v0

    :goto_84
    :try_start_84
    sget-object v10, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v11, "Creating calendar event: title: %s, location: %s, start: %s, end: %s, status: %s, summary: %s, rrule: %s"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v0, v12, v13

    const/4 v13, 0x4

    aput-object v4, v12, v13

    const/4 v13, 0x5

    aput-object v8, v12, v13

    const/4 v13, 0x6

    aput-object v3, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_a7} :catch_132

    if-eqz v9, :cond_ab

    if-nez v2, :cond_142

    :cond_ab
    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v1, "Description and start must be provided to create calendar event."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Calendar Event Creation Failed.  Minimum parameters not provided"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_b8
    return-object v0

    :catch_b9
    move-exception v0

    :try_start_ba
    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event description"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v1

    goto/16 :goto_3d

    :catch_c4
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event description"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v1

    goto/16 :goto_44

    :catch_cf
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event transparency"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    goto/16 :goto_4b

    :catch_da
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event reminder"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    goto/16 :goto_52

    :catch_e5
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event location"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    goto/16 :goto_59

    :catch_f0
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event status"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    goto/16 :goto_60

    :catch_fb
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event recurrence"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto/16 :goto_6b

    :catch_106
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Error parsing calendar event start date"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto/16 :goto_78

    :catch_111
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Unable to get calendar event start date"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto/16 :goto_78

    :catch_11c
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v10, "Error parsing calendar event end date"

    invoke-static {v0, v10}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_84

    :catch_127
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v10, "Unable to get calendar event end date"

    invoke-static {v0, v10}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catch Lorg/json/JSONException; {:try_start_ba .. :try_end_12f} :catch_132

    move-object v0, v1

    goto/16 :goto_84

    :catch_132
    move-exception v0

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v1, "Unable to parse calendar addEvent parameters"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Calendar Event Creation Failed.  Invalid parameters"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto/16 :goto_b8

    :cond_142
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.INSERT"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v2, :cond_15a

    const-string v11, "beginTime"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_15a
    if-eqz v0, :cond_165

    const-string v2, "endTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_165
    if-eqz v9, :cond_16c

    const-string v0, "title"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16c
    if-eqz v8, :cond_173

    const-string v0, "description"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_173
    if-eqz v5, :cond_17a

    const-string v0, "eventLocation"

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17a
    if-eqz v3, :cond_181

    const-string v0, "rrule"

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_181
    if-eqz v4, :cond_18a

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Calendar addEvent does not support status"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18a
    if-eqz v7, :cond_193

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Calendar addEvent does not support transparency"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_193
    if-eqz v6, :cond_19c

    sget-object v0, Lcom/millennialmedia/android/v;->d:Ljava/lang/String;

    const-string v2, "Calendar addEvent does not support reminder"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19c
    iget-object v0, p0, Lcom/millennialmedia/android/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1c2

    invoke-static {v0, v10}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "PROPERTY_EXPANDING"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/v;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "calendar"

    invoke-static {v0, v3, v1, v2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "Calendar Event Created"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto/16 :goto_b8

    :cond_1c2
    move-object v0, v1

    goto/16 :goto_b8

    :cond_1c5
    const-string v0, "Not supported"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto/16 :goto_b8
.end method

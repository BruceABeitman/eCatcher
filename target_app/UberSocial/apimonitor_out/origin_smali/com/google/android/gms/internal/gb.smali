.class public Lcom/google/android/gms/internal/gb;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/fu;

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/fu;

    const-string v1, "MetadataUtils"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

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

    sput-object v0, Lcom/google/android/gms/internal/gb;->b:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/gb;->b:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gb;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_e

    sget-object v0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v1, "Calendar object cannot be null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/gb;->c:Ljava/lang/String;

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

    sget-object v2, Lcom/google/android/gms/internal/gb;->b:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v1, "Input string is empty or null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    :goto_12
    return-object v0

    :cond_13
    invoke-static {p0}, Lcom/google/android/gms/internal/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v1, "Invalid date format"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_12

    :cond_28
    invoke-static {p0}, Lcom/google/android/gms/internal/gb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "yyyyMMdd"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_59

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

    const-string v3, "HHmmss"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_6b

    const-string v0, "yyyyMMdd\'T\'HHmmss"

    :cond_59
    :goto_59
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    :try_start_5d
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_65
    .catch Ljava/text/ParseException; {:try_start_5d .. :try_end_65} :catch_6e

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v0, v3

    goto :goto_12

    :cond_6b
    sget-object v0, Lcom/google/android/gms/internal/gb;->c:Ljava/lang/String;

    goto :goto_59

    :catch_6e
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v3, "Error parsing string: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_12
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

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    :cond_25
    :try_start_25
    const-string v0, "images"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v2, "Input string is empty or null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_11
    return-object v0

    :cond_12
    const/4 v1, 0x0

    :try_start_13
    const-string v2, "yyyyMMdd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_11

    :catch_1e
    move-exception v1

    sget-object v2, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v3, "Error extracting the date: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/fu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v2, "string is empty or null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    const/16 v1, 0x54

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const-string v3, "yyyyMMdd"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_2c

    sget-object v1, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v2, "T delimeter is not found"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_2c
    :try_start_2c
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c .. :try_end_2f} :catch_3e

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "HHmmss"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_50

    move-object v0, v1

    goto :goto_11

    :catch_3e
    move-exception v1

    sget-object v2, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fu;

    const-string v3, "Error extracting the time substring: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_50
    const-string v2, "HHmmss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_a2

    goto :goto_11

    :sswitch_5e
    invoke-static {v1}, Lcom/google/android/gms/internal/gb;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v0, "([\\+\\-]\\d\\d):(\\d\\d)"

    const-string v2, "$1$2"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :sswitch_6d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "HHmmss"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/gb;->b:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_11

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

    goto/16 :goto_11

    nop

    :sswitch_data_a2
    .sparse-switch
        0x2b -> :sswitch_5e
        0x2d -> :sswitch_5e
        0x5a -> :sswitch_6d
    .end sparse-switch
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "HHmmss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/gb;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-eq v1, v3, :cond_2e

    sget-object v3, Lcom/google/android/gms/internal/gb;->b:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-eq v1, v3, :cond_2e

    sget-object v3, Lcom/google/android/gms/internal/gb;->b:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_2f

    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

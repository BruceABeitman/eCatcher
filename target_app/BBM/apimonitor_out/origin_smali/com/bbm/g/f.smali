.class public final Lcom/bbm/g/f;
.super Ljava/lang/Object;
.source "GroupCalendarManager.java"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field private final b:Landroid/content/ContentResolver;

.field private final c:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/bbm/g/f;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    return-void
.end method

.method private static a(Lcom/bbm/g/b;J)Landroid/content/ContentValues;
    .registers 14

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;

    invoke-virtual {v0}, Lcom/bbm/g/e;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bbm/g/b;->l:J

    mul-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    iget-wide v2, p0, Lcom/bbm/g/b;->c:J

    mul-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    iget-boolean v2, p0, Lcom/bbm/g/b;->a:Z

    if-eqz v2, :cond_dc

    const-string v4, "UTC"

    iput v7, v0, Landroid/text/format/Time;->hour:I

    iput v7, v0, Landroid/text/format/Time;->minute:I

    iput v7, v0, Landroid/text/format/Time;->second:I

    iput-object v4, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iput v7, v1, Landroid/text/format/Time;->hour:I

    iput v7, v1, Landroid/text/format/Time;->minute:I

    iput v7, v1, Landroid/text/format/Time;->second:I

    iput-object v4, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    :goto_3f
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "calendar_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "_sync_id"

    iget-object v9, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "title"

    iget-object v9, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "description"

    iget-object v9, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "dtstart"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "eventTimezone"

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "eventLocation"

    iget-object v3, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "allDay"

    iget-boolean v3, p0, Lcom/bbm/g/b;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "availability"

    iget-object v2, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;

    invoke-virtual {v2}, Lcom/bbm/g/c;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/bbm/g/g;->c:Lcom/bbm/g/g;

    const-string v4, "free"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e6

    sget-object v2, Lcom/bbm/g/g;->b:Lcom/bbm/g/g;

    :goto_96
    invoke-static {v2}, Lcom/bbm/g/g;->a(Lcom/bbm/g/g;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "accessLevel"

    iget-object v2, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;

    sget-object v4, Lcom/bbm/g/d;->a:Lcom/bbm/g/d;

    if-ne v2, v4, :cond_e9

    const/4 v2, 0x2

    :goto_aa
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;

    invoke-virtual {v2}, Lcom/bbm/g/e;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_c3

    const-string v2, "frequency"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_eb

    :cond_c3
    move-object v2, v6

    :goto_c4
    if-nez v2, :cond_1c6

    const-string v2, "duration"

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dtend"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "original_sync_id"

    iget-object v1, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_db
    :goto_db
    return-object v7

    :cond_dc
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto/16 :goto_3f

    :cond_e6
    sget-object v2, Lcom/bbm/g/g;->a:Lcom/bbm/g/g;

    goto :goto_96

    :cond_e9
    const/4 v2, 0x3

    goto :goto_aa

    :cond_eb
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequency"

    invoke-static {v4, v2}, Lcom/bbm/g/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monthly-relative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_193

    const-string v2, "FREQ=MONTHLY"

    move-object v3, v2

    move v2, v5

    :goto_102
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "weekInMonth"

    invoke-static {v4, v3}, Lcom/bbm/g/f;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_119

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x5

    if-ne v5, v10, :cond_119

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_119
    const-string v5, "dayInWeek"

    invoke-static {v4, v5}, Lcom/bbm/g/f;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_136

    const-string v10, ";WKST=SU;BYDAY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_12b

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/bbm/g/n;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_136
    const-string v3, "monthInYear"

    invoke-static {v4, v3}, Lcom/bbm/g/f;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_147

    const-string v5, ";BYMONTH="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_147
    const-string v3, "dayInMonth"

    invoke-static {v4, v3}, Lcom/bbm/g/f;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_158

    const-string v5, ";BYMONTHDAY="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_158
    const-string v3, "interval"

    invoke-static {v4, v3}, Lcom/bbm/g/f;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_16e

    const-string v5, ";INTERVAL="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_16e
    const-string v2, "until"

    invoke-static {v4, v2}, Lcom/bbm/g/f;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "numOccurrences"

    invoke-static {v4, v3}, Lcom/bbm/g/f;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_1ba

    const-string v3, ";UNTIL="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v8}, Lcom/bbm/g/f;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18d
    :goto_18d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c4

    :cond_193
    const-string v3, "yearly-relative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a1

    const-string v3, "FREQ=MONTHLY"

    const/16 v2, 0xc

    goto/16 :goto_102

    :cond_1a1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "FREQ="

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move v2, v5

    goto/16 :goto_102

    :cond_1ba
    if-eqz v3, :cond_18d

    const-string v2, ";COUNT="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_18d

    :cond_1c6
    const-string v0, "duration"

    iget-wide v3, p0, Lcom/bbm/g/b;->l:J

    iget-wide v5, p0, Lcom/bbm/g/b;->c:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "PT"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, v5, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "S"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rrule"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;

    invoke-virtual {v1}, Lcom/bbm/g/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/g/f;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_db

    const-string v1, "exdate"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_db
.end method

.method private a()Landroid/net/Uri;
    .registers 4

    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    iget-object v2, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 12

    const/4 v6, 0x1

    const/16 v7, 0x100

    invoke-direct {p0}, Lcom/bbm/g/f;->a()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/bbm/g/j;

    invoke-direct {v1, p0}, Lcom/bbm/g/j;-><init>(Lcom/bbm/g/f;)V

    iput-object p1, v1, Lcom/bbm/g/j;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/bbm/g/j;->c:Ljava/lang/String;

    iput-object p3, v1, Lcom/bbm/g/j;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "account_name"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "account_type"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    iget-object v5, v1, Lcom/bbm/g/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "calendar_displayName"

    iget-object v5, v1, Lcom/bbm/g/j;->c:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "calendar_access_level"

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ownerAccount"

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sync_events"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "maxReminders"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "calendar_timezone"

    const-string v3, "UTC"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const-string v3, "calendar_color"

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v5, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_sync_id"

    iget-object v1, v1, Lcom/bbm/g/j;->d:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_85
    iget-object v1, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_8a} :catch_8c

    move-result-object v0

    :goto_8b
    return-object v0

    :catch_8c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8b
.end method

.method private static a(JLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    new-instance v4, Ljava/util/Date;

    sub-long/2addr v0, v2

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    sget-object v0, Lcom/bbm/g/f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a(J)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :try_start_a
    iget-object v3, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "event_id = ?"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_13} :catch_19

    move-result v2

    if-lez v2, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    :catch_19
    move-exception v2

    const-string v3, "GroupCalendarManager: removeCalendarEventReminder: IllegalArgumentException when trying to remove calendar event reminder for event with id=%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_16
.end method

.method private a(Lcom/bbm/g/k;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-wide v0, p1, Lcom/bbm/g/k;->a:J

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    iget-object v0, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/bbm/g/m;->f:[Ljava/lang/String;

    const-string v3, "event_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupCalendarManager: createCalendarEventReminder: reminder already exists for event with eventID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/bbm/g/k;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Returning success."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_3d
    return v6

    :cond_3e
    invoke-static {p1}, Lcom/bbm/g/f;->c(Lcom/bbm/g/k;)Landroid/content/ContentValues;

    move-result-object v0

    :try_start_42
    iget-object v1, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_49} :catch_75

    move-result-object v0

    if-eqz v0, :cond_73

    move v0, v6

    :goto_4d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "GroupCalendarManager: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8c

    const-string v1, "Successfully created event reminder"

    :goto_58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for event withId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/bbm/g/k;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v6, v0

    goto :goto_3d

    :cond_73
    move v0, v7

    goto :goto_4d

    :catch_75
    move-exception v0

    const-string v1, "GroupCalendarManager: createCalendarEventReminder: IllegalArgumentException when trying to create calendar event reminder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, " for event withId: %s"

    aput-object v3, v2, v7

    iget-wide v3, p1, Lcom/bbm/g/k;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v7

    goto :goto_4d

    :cond_8c
    const-string v1, "Failed to create event reminder"

    goto :goto_58
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method private b(Lcom/bbm/g/k;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/bbm/g/f;->c(Lcom/bbm/g/k;)Landroid/content/ContentValues;

    move-result-object v3

    new-array v2, v0, [Ljava/lang/String;

    iget-wide v4, p1, Lcom/bbm/g/k;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v4, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    monitor-enter v4

    :try_start_13
    iget-object v5, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "event_id = ?"

    invoke-virtual {v5, v6, v3, v7, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_85
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_1c} :catch_57

    move-result v2

    if-lez v2, :cond_53

    move v2, v0

    :goto_20
    if-nez v2, :cond_8d

    :try_start_22
    iget-object v5, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_85
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_29} :catch_8b

    move-result-object v2

    if-eqz v2, :cond_55

    :goto_2c
    move v2, v0

    :goto_2d
    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_85

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "GroupCalendarManager: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_88

    const-string v0, "Successfully updated "

    :goto_39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "eventReminder for appointment with eventId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p1, Lcom/bbm/g/k;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    return v2

    :cond_53
    move v2, v1

    goto :goto_20

    :cond_55
    move v0, v1

    goto :goto_2c

    :catch_57
    move-exception v0

    move v2, v1

    :goto_59
    :try_start_59
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "GroupCalendarManager: EditGroupCalendarEventReminder: NullPointerExeception for when trying to edit event reminder with id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p1, Lcom/bbm/g/k;->a:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_59 .. :try_end_84} :catchall_85

    goto :goto_2d

    :catchall_85
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_88
    const-string v0, "Failed to update "

    goto :goto_39

    :catch_8b
    move-exception v0

    goto :goto_59

    :cond_8d
    move v0, v2

    goto :goto_2c
.end method

.method private static c(Lcom/bbm/g/k;)Landroid/content/ContentValues;
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "minutes"

    iget-wide v2, p0, Lcom/bbm/g/k;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "event_id"

    iget-wide v2, p0, Lcom/bbm/g/k;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "method"

    iget v2, p0, Lcom/bbm/g/k;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method private d(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    iget-object v0, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    sget-object v2, Lcom/bbm/g/i;->n:[Ljava/lang/String;

    const-string v3, "_sync_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    const-string v1, "exception"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception"

    invoke-static {p0, v1}, Lcom/bbm/g/f;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v1, v2

    :goto_19
    :try_start_19
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_62

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    if-lez v1, :cond_2a

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-static {v5, v6, p1}, Lcom/bbm/g/f;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_31} :catch_34

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :catch_34
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "GroupCalendarManager: Unable to read exceptions for recurrence rule: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " [exceptions: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/g/j;
    .registers 10

    invoke-direct {p0}, Lcom/bbm/g/f;->a()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3d

    const-string v0, "GroupCalendarManager: Unable to get CalendarProvider uri for Calendars."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_3c

    const-string v0, "GroupCalendarManager: Unable to get GroupCalendar [ uri=%s ]. Creating Calendar..."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v0

    if-eqz v0, :cond_d7

    iget-object v4, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;

    iget-object v5, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;

    :goto_2a
    invoke-direct {p0, v4, v5, p1}, Lcom/bbm/g/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_b7

    const-string v0, "GroupCalendarManager: Failed to create calendar for groupUri = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_3c
    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    sget-object v2, Lcom/bbm/g/h;->i:[Ljava/lang/String;

    const-string v3, "_sync_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_5d

    const-string v0, "GroupCalendarManager: Unable to find calendar for group with uri: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_f

    :cond_5d
    const/4 v0, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "GroupCalendarManager: Unable to find calendar for group with uri: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_72
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_f

    :cond_76
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_88

    const-string v0, "GroupCalendarManager: More than one calendar found for group with uri: %s - using first occurence"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_88
    new-instance v0, Lcom/bbm/g/j;

    sget-object v1, Lcom/bbm/g/h;->a:Lcom/bbm/g/h;

    invoke-virtual {v1}, Lcom/bbm/g/h;->ordinal()I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v1, Lcom/bbm/g/h;->c:Lcom/bbm/g/h;

    invoke-virtual {v1}, Lcom/bbm/g/h;->ordinal()I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/bbm/g/h;->d:Lcom/bbm/g/h;

    invoke-virtual {v1}, Lcom/bbm/g/h;->ordinal()I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/bbm/g/h;->b:Lcom/bbm/g/h;

    invoke-virtual {v1}, Lcom/bbm/g/h;->ordinal()I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/bbm/g/j;-><init>(Lcom/bbm/g/f;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_b7
    new-instance v0, Lcom/bbm/g/j;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/bbm/g/j;-><init>(Lcom/bbm/g/f;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GroupCalendarManager: Successfully created calendar for groupUri = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_d7
    move-object v5, p1

    move-object v4, p1

    goto/16 :goto_2a
.end method

.method public final a(Lcom/bbm/k/g;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    if-nez v0, :cond_10

    :cond_8
    const-string v0, "GroupCalendarManager: Received null GroupCalendarAppointment to synchronize. Aborting create..."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_f
    return v6

    :cond_10
    iget-object v0, p1, Lcom/bbm/k/g;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bbm/g/f;->a(Ljava/lang/String;)Lcom/bbm/g/j;

    move-result-object v2

    if-nez v2, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupCalendarManager: Unable to get or create calendar for group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/bbm/k/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Aborting create event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    iget-object v1, v1, Lcom/bbm/g/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_43
    iget-object v8, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    iget-object v0, v8, Lcom/bbm/g/b;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bbm/g/f;->d(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_125

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_76

    move v0, v1

    :goto_54
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_57
    if-eqz v0, :cond_78

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupCalendarManager: Event for appointment with uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/bbm/g/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already exists! Aborting create..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_76
    move v0, v6

    goto :goto_54

    :cond_78
    iget-wide v2, v2, Lcom/bbm/g/j;->a:J

    invoke-static {v8, v2, v3}, Lcom/bbm/g/f;->a(Lcom/bbm/g/b;J)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_7f
    iget-object v3, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/bbm/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_90} :catch_10c

    move-result-object v0

    move-object v2, v0

    :goto_92
    if-eqz v2, :cond_11a

    move v7, v1

    :goto_95
    if-eqz v7, :cond_db

    iget-wide v0, v8, Lcom/bbm/g/b;->j:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-lez v0, :cond_db

    new-instance v0, Lcom/bbm/g/k;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v8, Lcom/bbm/g/b;->j:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bbm/g/k;-><init>(Lcom/bbm/g/f;JJ)V

    invoke-direct {p0, v0}, Lcom/bbm/g/f;->a(Lcom/bbm/g/k;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GroupCalendarManager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_11d

    const-string v0, "Success"

    :goto_c2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adding reminder to event for appointment with uri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/bbm/g/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_db
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "GroupCalendarManager: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_120

    const-string v0, "Successfully created event"

    :goto_e6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for appointment with uri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/bbm/g/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-boolean v0, v8, Lcom/bbm/g/b;->a:Z

    if-eqz v0, :cond_123

    if-eqz v7, :cond_123

    invoke-virtual {p0, p1}, Lcom/bbm/g/f;->b(Lcom/bbm/k/g;)Z

    move-result v0

    :goto_109
    move v6, v0

    goto/16 :goto_f

    :catch_10c
    move-exception v0

    const-string v3, "GroupCalendarManager: createCalendarEvent: IllegalArgumentException when trying to add an event into calendar for appointment with uri %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, v8, Lcom/bbm/g/b;->o:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_92

    :cond_11a
    move v7, v6

    goto/16 :goto_95

    :cond_11d
    const-string v0, "Fail"

    goto :goto_c2

    :cond_120
    const-string v0, "Failed to create event"

    goto :goto_e6

    :cond_123
    move v0, v7

    goto :goto_109

    :cond_125
    move v0, v6

    goto/16 :goto_57
.end method

.method public final b(Lcom/bbm/k/g;)Z
    .registers 13

    iget-object v0, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    iget-object v3, v0, Lcom/bbm/g/b;->o:Ljava/lang/String;

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v3}, Lcom/bbm/g/f;->d(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupCalendarManager: getCalendarEventId(): Event not found for appointment with uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_2d

    iget-boolean v1, v0, Lcom/bbm/g/l;->b:Z

    if-nez v1, :cond_2d

    iget-boolean v1, v0, Lcom/bbm/g/l;->c:Z

    if-nez v1, :cond_e4

    :cond_2d
    const-string v0, "GroupCalendarManager: prvEditGroupCalendarEvent: event exists but has been deleted from the android calendar. Skipping update."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_36
    return v0

    :cond_37
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_ca

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupCalendarManager: More than one event found for uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - using first occurence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_5f
    sget-object v0, Lcom/bbm/g/i;->a:Lcom/bbm/g/i;

    invoke-virtual {v0}, Lcom/bbm/g/i;->ordinal()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    sget-object v0, Lcom/bbm/g/i;->l:Lcom/bbm/g/i;

    invoke-virtual {v0}, Lcom/bbm/g/i;->ordinal()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c8

    const/4 v0, 0x1

    :goto_76
    move-wide v6, v1

    move v8, v0

    :goto_78
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-wide/high16 v1, -0x8000

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    iget-object v0, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    const-string v3, "event_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_e2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e2

    const/4 v5, 0x1

    :goto_bb
    new-instance v0, Lcom/bbm/g/l;

    move-object v1, p0

    move-wide v2, v6

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/bbm/g/l;-><init>(Lcom/bbm/g/f;JZZ)V

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_23

    :cond_c8
    const/4 v0, 0x0

    goto :goto_76

    :cond_ca
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GroupCalendarManager: getCalendarEventId(): Event not found for appointment with uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-wide v6, v0

    move v8, v2

    goto :goto_78

    :cond_e2
    const/4 v5, 0x0

    goto :goto_bb

    :cond_e4
    iget-wide v2, v0, Lcom/bbm/g/l;->a:J

    iget-object v0, p1, Lcom/bbm/k/g;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bbm/g/f;->a(Ljava/lang/String;)Lcom/bbm/g/j;

    move-result-object v0

    iget-object v7, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    iget-object v1, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    iget-wide v4, v0, Lcom/bbm/g/j;->a:J

    invoke-static {v1, v4, v5}, Lcom/bbm/g/f;->a(Lcom/bbm/g/b;J)Landroid/content/ContentValues;

    move-result-object v4

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    monitor-enter v5

    :try_start_fa
    iget-object v0, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/bbm/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_fa .. :try_end_111} :catchall_1a5
    .catch Ljava/lang/NullPointerException; {:try_start_fa .. :try_end_111} :catch_175

    move-result v0

    if-lez v0, :cond_171

    const/4 v0, 0x1

    :goto_115
    if-nez v0, :cond_12c

    :try_start_117
    iget-object v1, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/bbm/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_128
    .catchall {:try_start_117 .. :try_end_128} :catchall_1a5
    .catch Ljava/lang/NullPointerException; {:try_start_117 .. :try_end_128} :catch_1af

    move-result-object v0

    if-eqz v0, :cond_173

    const/4 v0, 0x1

    :cond_12c
    :goto_12c
    move v6, v0

    :goto_12d
    :try_start_12d
    monitor-exit v5
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_1a5

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    iget-wide v4, v1, Lcom/bbm/g/b;->j:J

    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-lez v1, :cond_1a8

    new-instance v0, Lcom/bbm/g/k;

    iget-object v1, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    iget-wide v4, v1, Lcom/bbm/g/b;->j:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bbm/g/k;-><init>(Lcom/bbm/g/f;JJ)V

    invoke-direct {p0, v0}, Lcom/bbm/g/f;->b(Lcom/bbm/g/k;)Z

    move-result v0

    :goto_147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GroupCalendarManager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_1ac

    if-eqz v0, :cond_1ac

    const-string v0, "Successfully updated "

    :goto_154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event for appointment with uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/bbm/g/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v6

    goto/16 :goto_36

    :cond_171
    const/4 v0, 0x0

    goto :goto_115

    :cond_173
    const/4 v0, 0x0

    goto :goto_12c

    :catch_175
    move-exception v0

    :goto_176
    :try_start_176
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "GroupCalendarManager: editGroupCalendarEvent: NullPointerExeception for appointment with uri="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;

    iget-object v6, v6, Lcom/bbm/g/b;->o:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1a3
    .catchall {:try_start_176 .. :try_end_1a3} :catchall_1a5

    move v6, v1

    goto :goto_12d

    :catchall_1a5
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_1a8
    invoke-direct {p0, v2, v3}, Lcom/bbm/g/f;->a(J)Z

    goto :goto_147

    :cond_1ac
    const-string v0, "Failed to update "

    goto :goto_154

    :catch_1af
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_176
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbm/g/f;->a()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v1

    :try_start_a
    iget-object v4, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    const-string v5, "_sync_id = ?"

    invoke-virtual {v4, v2, v5, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_11} :catch_17

    move-result v2

    if-lez v2, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :catch_17
    move-exception v2

    const-string v3, "GroupCalendarManager: removeGroupCalendar: IllegalArgumentException when trying to remove calendar for group with uri=%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_14
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/g/f;->c:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bbm/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v1

    :try_start_12
    iget-object v4, p0, Lcom/bbm/g/f;->b:Landroid/content/ContentResolver;

    const-string v5, "_sync_id = ?"

    invoke-virtual {v4, v2, v5, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1f

    move-result v2

    if-lez v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c

    :catch_1f
    move-exception v2

    const-string v3, "GroupCalendarManager: removeGroupCalendarEvent: IllegalArgumentException when trying to remove event from calendar for event with uri=%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lcom/bbm/x;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1c
.end method

.class Lcom/admarvel/android/ads/AdMarvelActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# instance fields
.field a:Ljava/text/SimpleDateFormat;

.field b:Ljava/lang/Long;

.field c:Ljava/lang/Long;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field private final k:Ljava/lang/ref/WeakReference;

.field private final l:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->b:Ljava/lang/Long;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;

    const/4 v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->j:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->k:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->l:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_48

    :try_start_24
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->b:Ljava/lang/Long;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;

    :cond_48
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->e:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4c} :catch_4d

    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->b:Ljava/lang/Long;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;

    const/4 v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->j:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->k:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->l:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_34

    :try_start_24
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->b:Ljava/lang/Long;

    :cond_34
    if-eqz p8, :cond_55

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;

    :goto_46
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->g:Ljava/lang/String;

    if-gtz p9, :cond_54

    div-int/lit8 v0, p9, 0x3c

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->j:I

    :cond_54
    :goto_54
    return-void

    :cond_55
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_69} :catch_6a

    goto :goto_46

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddhhmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->b:Ljava/lang/Long;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;

    const/4 v1, 0x1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->j:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->k:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->l:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_35

    :try_start_25
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->b:Ljava/lang/Long;

    :cond_35
    if-eqz p8, :cond_64

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;

    :goto_47
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->g:Ljava/lang/String;

    if-gtz p9, :cond_55

    div-int/lit8 v1, p9, 0x3c

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->j:I

    :cond_55
    if-eqz p10, :cond_5f

    invoke-virtual {p10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5f

    iput-object p10, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->h:Ljava/lang/String;

    :cond_5f
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    :goto_63
    return-void

    :cond_64
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_78} :catch_79

    goto :goto_47

    :catch_79
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_b

    const-string v0, "content://com.android.calendar/"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "content://calendar/"

    goto :goto_a
.end method

.method public run()V
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    move-object v1, v0

    :goto_f
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-object v8, v0

    :goto_1c
    if-eqz v1, :cond_20

    if-nez v8, :cond_25

    :cond_20
    :goto_20
    return-void

    :cond_21
    move-object v1, v6

    goto :goto_f

    :cond_23
    move-object v8, v6

    goto :goto_1c

    :cond_25
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "displayname"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1b3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v3, v1, [I

    move v1, v7

    :goto_6d
    array-length v4, v2

    if-ge v1, v4, :cond_84

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_84
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "calendar_id"

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->d:Ljava/lang/String;

    if-eqz v2, :cond_a0

    const-string v2, "title"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->e:Ljava/lang/String;

    if-eqz v2, :cond_ab

    const-string v2, "description"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->f:Ljava/lang/String;

    if-eqz v2, :cond_b6

    const-string v2, "eventLocation"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->b:Ljava/lang/Long;

    if-eqz v2, :cond_c1

    const-string v2, "dtstart"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_c1
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;

    if-eqz v2, :cond_cc

    const-string v2, "dtend"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->c:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_cc
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->g:Ljava/lang/String;

    if-eqz v2, :cond_f6

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ec

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    :cond_ec
    const-string v2, "allDay"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f6
    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->j:I

    if-gtz v2, :cond_104

    const-string v2, "hasAlarm"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_104
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->h:Ljava/lang/String;

    if-eqz v2, :cond_117

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_117

    const-string v2, "eventTimezone"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "reminders"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1ba

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->j:I

    if-gtz v2, :cond_189

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "event_id"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "method"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "minutes"

    iget v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->j:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_189
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"YES\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1b3
    .catchall {:try_start_29 .. :try_end_1b3} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_1b3} :catch_1e5

    :cond_1b3
    :goto_1b3
    if-eqz v6, :cond_20

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20

    :cond_1ba
    :try_start_1ba
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"NO\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1e4
    .catchall {:try_start_1ba .. :try_end_1e4} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1e4} :catch_1e5

    goto :goto_1b3

    :catch_1e5
    move-exception v0

    :try_start_1e6
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    if-eqz v1, :cond_210

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_210

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\"NO\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_213
    .catchall {:try_start_1e6 .. :try_end_213} :catchall_21a

    if-eqz v6, :cond_20

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20

    :catchall_21a
    move-exception v0

    if-eqz v6, :cond_220

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_220
    throw v0
.end method

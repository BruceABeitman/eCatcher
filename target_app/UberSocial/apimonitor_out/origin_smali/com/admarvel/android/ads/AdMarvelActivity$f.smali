.class Lcom/admarvel/android/ads/AdMarvelActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I

.field m:I

.field n:I

.field private final o:Ljava/lang/ref/WeakReference;

.field private final p:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->b:Ljava/lang/Long;

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;

    const/4 v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->l:I

    iput v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->m:I

    iput v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->n:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->o:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->p:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_4d

    :try_start_29
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->b:Ljava/lang/Long;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;

    :cond_4d
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->e:Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_51} :catch_52

    :goto_51
    return-void

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->b:Ljava/lang/Long;

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;

    const/4 v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->l:I

    iput v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->m:I

    iput v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->n:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->o:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->p:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_39

    :try_start_29
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->b:Ljava/lang/Long;

    :cond_39
    if-eqz p8, :cond_5a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;

    :goto_4b
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->g:Ljava/lang/String;

    if-gtz p9, :cond_59

    div-int/lit8 v0, p9, 0x3c

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->l:I

    :cond_59
    :goto_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6e} :catch_6f

    goto :goto_4b

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddhhmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->b:Ljava/lang/Long;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;

    const/4 v1, 0x1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->l:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->m:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->n:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->o:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->p:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_3b

    :try_start_2b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->b:Ljava/lang/Long;

    :cond_3b
    if-eqz p8, :cond_b6

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;

    :goto_4d
    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->g:Ljava/lang/String;

    if-gtz p9, :cond_5b

    div-int/lit8 v1, p9, 0x3c

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->l:I

    :cond_5b
    if-eqz p10, :cond_a1

    invoke-virtual {p10}, Ljava/lang/String;->length()I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_60} :catch_cb

    move-result v1

    if-lez v1, :cond_a1

    const/4 v1, 0x0

    :try_start_64
    const-string v2, ":"

    invoke-virtual {p10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f4

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_8f
    :goto_8f
    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a1

    array-length v2, v1

    if-lez v2, :cond_a1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->h:Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_a1} :catch_130

    :cond_a1
    :goto_a1
    :try_start_a1
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->i:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->j:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    move/from16 v0, p14

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->m:I

    move/from16 v0, p15

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->n:I

    :goto_b5
    return-void

    :cond_b6
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ca} :catch_cb

    goto :goto_4d

    :catch_cb
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b5

    :cond_d0
    const/4 v3, 0x0

    :try_start_d1
    aget-object v3, v2, v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, -0x1

    goto :goto_8f

    :cond_f4
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8f

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_113

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    goto/16 :goto_8f

    :cond_113
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_129} :catch_130

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, -0x1

    goto/16 :goto_8f

    :catch_130
    move-exception v1

    :try_start_131
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_cb

    goto/16 :goto_a1
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    move-object v1, v0

    :goto_f
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->p:Ljava/lang/ref/WeakReference;

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
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "calendar_displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_221

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_221

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v3, v1, [I

    move v1, v7

    :goto_54
    array-length v4, v2

    if-ge v1, v4, :cond_6b

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

    goto :goto_54

    :cond_6b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "calendar_id"

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->d:Ljava/lang/String;

    if-eqz v2, :cond_87

    const-string v2, "title"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->e:Ljava/lang/String;

    if-eqz v2, :cond_92

    const-string v2, "description"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->f:Ljava/lang/String;

    if-eqz v2, :cond_9d

    const-string v2, "eventLocation"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->b:Ljava/lang/Long;

    if-eqz v2, :cond_a8

    const-string v2, "dtstart"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a8
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;

    if-eqz v2, :cond_b3

    const-string v2, "dtend"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->c:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_b3
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->g:Ljava/lang/String;

    if-eqz v2, :cond_dd

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    :cond_d3
    const-string v2, "allDay"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_dd
    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->l:I

    if-gtz v2, :cond_eb

    const-string v2, "hasAlarm"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_eb
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->h:Ljava/lang/String;

    if-eqz v2, :cond_1ab

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1ab

    const-string v2, "eventTimezone"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_fe
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->i:Ljava/lang/String;

    if-eqz v2, :cond_111

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_111

    const-string v2, "rrule"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_111
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->j:Ljava/lang/String;

    if-eqz v2, :cond_124

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_124

    const-string v2, "exdate"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_124
    const-string v2, "eventStatus"

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "availability"

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1ef

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->l:I

    if-gtz v2, :cond_17a

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "event_id"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "method"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "minutes"

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->l:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_17a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"YES\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1a4
    .catchall {:try_start_29 .. :try_end_1a4} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_1a4} :catch_1ba

    :cond_1a4
    :goto_1a4
    if-eqz v6, :cond_20

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20

    :cond_1ab
    :try_start_1ab
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    const-string v3, "eventTimezone"

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b8
    .catchall {:try_start_1ab .. :try_end_1b8} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1b8} :catch_1ba

    goto/16 :goto_fe

    :catch_1ba
    move-exception v0

    :try_start_1bb
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    if-eqz v0, :cond_1e8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"NO\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1e8
    .catchall {:try_start_1bb .. :try_end_1e8} :catchall_21a

    :cond_1e8
    if-eqz v6, :cond_20

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20

    :cond_1ef
    :try_start_1ef
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"NO\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_219
    .catchall {:try_start_1ef .. :try_end_219} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_219} :catch_1ba

    goto :goto_1a4

    :catchall_21a
    move-exception v0

    if-eqz v6, :cond_220

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_220
    throw v0

    :cond_221
    :try_start_221
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"NO\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_24b
    .catchall {:try_start_221 .. :try_end_24b} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_24b} :catch_1ba

    goto/16 :goto_1a4
.end method

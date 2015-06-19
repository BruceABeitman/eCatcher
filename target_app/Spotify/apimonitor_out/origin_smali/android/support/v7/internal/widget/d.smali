.class public Landroid/support/v7/internal/widget/d;
.super Landroid/database/DataSetObservable;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/internal/widget/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private i:Landroid/content/Intent;

.field private j:Landroid/support/v7/internal/widget/f;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/support/v7/internal/widget/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/support/v7/internal/widget/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/d;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/d;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->g:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/support/v7/internal/widget/g;)Z
    .registers 10

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iput-boolean v7, p0, Landroid/support/v7/internal/widget/d;->n:Z

    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->g()V

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/d;->m:Z

    if-nez v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/d;->n:Z

    if-eqz v1, :cond_49

    iput-boolean v6, p0, Landroid/support/v7/internal/widget/d;->n:Z

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_50

    new-instance v1, Landroid/support/v7/internal/widget/i;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/internal/widget/i;-><init>(Landroid/support/v7/internal/widget/d;B)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/widget/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_49
    :goto_49
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/d;->notifyChanged()V

    :cond_4f
    return v0

    :cond_50
    new-instance v1, Landroid/support/v7/internal/widget/i;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/internal/widget/i;-><init>(Landroid/support/v7/internal/widget/d;B)V

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v6

    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_49
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/d;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->l:Z

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/support/v7/internal/widget/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/d;->o:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    if-eqz v0, :cond_5d

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/d;->o:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_22
    if-ge v3, v5, :cond_38

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    new-instance v7, Landroid/support/v7/internal/widget/e;

    invoke-direct {v7, p0, v0}, Landroid/support/v7/internal/widget/e;-><init>(Landroid/support/v7/internal/widget/d;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_22

    :cond_38
    move v0, v1

    :goto_39
    iget-boolean v3, p0, Landroid/support/v7/internal/widget/d;->l:Z

    if-eqz v3, :cond_5f

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/d;->n:Z

    if-eqz v3, :cond_5f

    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5f

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/d;->l:Z

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/d;->m:Z

    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->h()V

    :goto_50
    or-int/2addr v0, v1

    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->g()V

    if-eqz v0, :cond_5c

    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/d;->notifyChanged()V

    :cond_5c
    return-void

    :cond_5d
    move v0, v2

    goto :goto_39

    :cond_5f
    move v1, v2

    goto :goto_50
.end method

.method private f()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->j:Landroid/support/v7/internal/widget/f;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->j:Landroid/support/v7/internal/widget/f;

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private g()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Landroid/support/v7/internal/widget/d;->k:I

    sub-int v2, v0, v2

    if-gtz v2, :cond_e

    :cond_d
    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->n:Z

    move v0, v1

    :goto_12
    if-ge v0, v2, :cond_d

    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private h()V
    .registers 10

    const/4 v8, 0x1

    :try_start_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->g:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_ca

    move-result-object v1

    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_12
    if-eq v0, v8, :cond_1c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_12

    :cond_1c
    const-string v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_30} :catch_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_30} :catch_72

    :catch_30
    move-exception v0

    :try_start_31
    sget-object v2, Landroid/support/v7/internal/widget/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_b7

    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_c6

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_52
    :goto_52
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v8, :cond_be

    const/4 v4, 0x3

    if-eq v3, v4, :cond_52

    const/4 v4, 0x4

    if-eq v3, v4, :cond_52

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_72
    .catchall {:try_start_4d .. :try_end_72} :catchall_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_72} :catch_30
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_72} :catch_72

    :catch_72
    move-exception v0

    :try_start_73
    sget-object v2, Landroid/support/v7/internal/widget/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_73 .. :try_end_89} :catchall_b7

    if-eqz v1, :cond_4c

    :try_start_8b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_4c

    :catch_8f
    move-exception v0

    goto :goto_4c

    :cond_91
    const/4 v3, 0x0

    :try_start_92
    const-string v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "time"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v7, "weight"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    new-instance v7, Landroid/support/v7/internal/widget/g;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/g;-><init>(Ljava/lang/String;JF)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catchall {:try_start_92 .. :try_end_b6} :catchall_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_b6} :catch_30
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_b6} :catch_72

    goto :goto_52

    :catchall_b7
    move-exception v0

    if-eqz v1, :cond_bd

    :try_start_ba
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_c8

    :cond_bd
    :goto_bd
    throw v0

    :cond_be
    if-eqz v1, :cond_4c

    :try_start_c0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_4c

    :catch_c4
    move-exception v0

    goto :goto_4c

    :catch_c6
    move-exception v0

    goto :goto_4c

    :catch_c8
    move-exception v1

    goto :goto_bd

    :catch_ca
    move-exception v0

    goto :goto_4c
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->e()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/content/pm/ResolveInfo;)I
    .registers 7

    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->e()V

    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v4, :cond_1f

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/e;

    iget-object v0, v0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_1c

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_22

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1b

    :catchall_22
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(I)Landroid/content/pm/ResolveInfo;
    .registers 4

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->e()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/e;

    iget-object v0, v0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(I)Landroid/content/Intent;
    .registers 9

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    if-nez v0, :cond_b

    monitor-exit v2

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->e()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/e;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->p:Landroid/support/v7/internal/widget/h;

    if-eqz v4, :cond_45

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->p:Landroid/support/v7/internal/widget/h;

    invoke-interface {v4}, Landroid/support/v7/internal/widget/h;->a()Z

    move-result v4

    if-eqz v4, :cond_45

    monitor-exit v2

    move-object v0, v1

    goto :goto_a

    :cond_45
    new-instance v1, Landroid/support/v7/internal/widget/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v6, 0x3f80

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/g;-><init>(Landroid/content/ComponentName;JF)V

    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/g;)Z

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_55

    goto :goto_a

    :catchall_55
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b()Landroid/content/pm/ResolveInfo;
    .registers 4

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->e()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/e;

    iget-object v0, v0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    :goto_1a
    return-object v0

    :cond_1b
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_1a

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()I
    .registers 3

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->e()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(I)V
    .registers 8

    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->e()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/e;

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/e;

    if-eqz v1, :cond_40

    iget v1, v1, Landroid/support/v7/internal/widget/e;->b:F

    iget v3, v0, Landroid/support/v7/internal/widget/e;->b:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40a0

    add-float/2addr v1, v3

    :goto_21
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v7/internal/widget/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/support/v7/internal/widget/g;-><init>(Landroid/content/ComponentName;JF)V

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/g;)Z

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_43

    return-void

    :cond_40
    const/high16 v1, 0x3f80

    goto :goto_21

    :catchall_43
    move-exception v0

    monitor-exit v2

    throw v0
.end method

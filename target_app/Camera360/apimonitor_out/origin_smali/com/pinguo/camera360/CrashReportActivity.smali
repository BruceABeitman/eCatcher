.class public Lcom/pinguo/camera360/CrashReportActivity;
.super Landroid/app/Activity;
.source "CrashReportActivity.java"


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"


# instance fields
.field private exception:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/CrashReportActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/CrashReportActivity;->exception:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/CrashReportActivity;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/CrashReportActivity;->buildExceptionData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/CrashReportActivity;Ljava/util/Map;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/CrashReportActivity;->store(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private buildExceptionData()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/pinguo/lib/util/Util;->getMyPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_4} :catch_53

    move-result-object v1

    :goto_5
    const-string/jumbo v4, ""

    const-string/jumbo v3, ""

    if-eqz v1, :cond_15

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :cond_15
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "VERSION_NAME"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "VERSION_CODE"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "PHONE_MODEL"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "PHONE_ROM"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "FINGERPRINT"

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "SDK_VERSION"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "STACK_TRACE"

    iget-object v6, p0, Lcom/pinguo/camera360/CrashReportActivity;->exception:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 10

    const/16 v5, 0x20

    const/4 v2, 0x0

    if-nez p3, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_19

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_19

    const-string/jumbo v4, "\\ "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_19
    :goto_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_20

    return-void

    :cond_20
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_82

    :pswitch_27
    const-string/jumbo v4, "\\#!=:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_34

    if-eqz p3, :cond_39

    if-ne v0, v5, :cond_39

    :cond_34
    const/16 v4, 0x5c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_39
    if-lt v0, v5, :cond_61

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_61

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :pswitch_45
    const-string/jumbo v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :pswitch_4c
    const-string/jumbo v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :pswitch_53
    const-string/jumbo v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :pswitch_5a
    const-string/jumbo v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_61
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_6c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-lt v3, v4, :cond_78

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_78
    const-string/jumbo v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    nop

    :pswitch_data_82
    .packed-switch 0x9
        :pswitch_45
        :pswitch_4c
        :pswitch_27
        :pswitch_53
        :pswitch_5a
    .end packed-switch
.end method

.method private static exception(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_9
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1c

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v1
.end method

.method private store(Ljava/util/Map;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/CrashReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_c

    :goto_b
    return-void

    :cond_c
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_12
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_41

    const/4 v7, 0x0

    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0xc8

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string/jumbo v9, "ISO8859_1"

    invoke-direct {v8, v6, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_7f

    :try_start_27
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_43

    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_74

    if-eqz v8, :cond_3d

    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    :cond_3d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_b

    :catch_41
    move-exception v2

    goto :goto_b

    :cond_43
    :try_start_43
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {p0, v0, v5, v9}, Lcom/pinguo/camera360/CrashReportActivity;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v0, v9, v11}, Lcom/pinguo/camera360/CrashReportActivity;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string/jumbo v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_73
    .catchall {:try_start_43 .. :try_end_73} :catchall_74

    goto :goto_2f

    :catchall_74
    move-exception v9

    move-object v7, v8

    :goto_76
    if-eqz v7, :cond_7b

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    :cond_7b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    throw v9

    :catchall_7f
    move-exception v9

    goto :goto_76
.end method

.method private storeException(J)V
    .registers 15

    const-string/jumbo v9, "logcat -v time"

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {p0}, Lcom/pinguo/camera360/CrashReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "_logcat.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v10, 0x400

    new-array v0, v10, [B
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_38} :catch_48

    const/high16 v1, 0x50

    :try_start_3a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_3f
    if-gtz v1, :cond_4d

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_68

    :try_start_44
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_1a

    :catch_48
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    :cond_4d
    const/4 v10, 0x0

    :try_start_4e
    array-length v11, v0

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v6, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_6d

    new-instance v10, Ljava/io/EOFException;

    const-string/jumbo v11, "Unexpected end of data"

    invoke-direct {v10, v11}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v10

    :try_start_64
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v10
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v10

    :try_start_69
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v10
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6d} :catch_48

    :cond_6d
    const/4 v10, 0x0

    :try_start_6e
    invoke-virtual {v5, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_63

    sub-int/2addr v1, v8

    goto :goto_3f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/CrashReportActivity;->requestWindowFeature(I)Z

    const v2, 0x7f030067

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/CrashReportActivity;->setContentView(I)V

    const v2, 0x7f0a0238

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/CrashReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/pinguo/camera360/CrashReportActivity$1;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/CrashReportActivity$1;-><init>(Lcom/pinguo/camera360/CrashReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_1e
    invoke-virtual {p0}, Lcom/pinguo/camera360/CrashReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "Stacktrace"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/pinguo/camera360/CrashReportActivity;->exception(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/CrashReportActivity;->exception:Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_35} :catch_3e

    :goto_35
    new-instance v2, Lcom/pinguo/camera360/CrashReportActivity$2;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/CrashReportActivity$2;-><init>(Lcom/pinguo/camera360/CrashReportActivity;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/CrashReportActivity$2;->start()V

    return-void

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35
.end method

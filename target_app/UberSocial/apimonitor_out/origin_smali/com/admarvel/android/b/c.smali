.class public Lcom/admarvel/android/b/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static k:Z

.field private static l:Z


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/admarvel/android/b/c;->i:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admarvel"

    invoke-virtual {p1, v1, v6}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    const-string v1, "admarvel_preferences"

    invoke-virtual {p1, v1, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "partner_id"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "partner_id"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "Offline SDK:deleting expired packages"

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/admarvel/android/b/d;->a(Ljava/io/File;)V

    :cond_49
    iget-object v2, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    const-string v4, "childDirectory"

    iget-object v5, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "-1"

    iput-object v3, p0, Lcom/admarvel/android/b/c;->f:Ljava/lang/String;

    const-string v3, "download_started"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_7a

    :cond_69
    :goto_69
    :try_start_69
    const-string v1, "partner_id"

    invoke-static {v0, v1, p2}, Lcom/admarvel/android/ads/AdMarvelUtils;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "banner_package"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelUtils;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_a6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_79
    return-object v0

    :cond_7a
    :try_start_7a
    iget-object v2, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "admarvel_current_version"

    const-string v4, "-1"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/admarvel/android/b/c;->f:Ljava/lang/String;

    const-string v2, "admarvel_temp_version"

    const-string v4, "-1"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/b/c;->f:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    const-string v1, "current_version"

    iget-object v2, p0, Lcom/admarvel/android/b/c;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelUtils;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_a5} :catch_a6

    goto :goto_69

    :catch_a6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline SDK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_79

    :cond_c3
    if-eqz v3, :cond_69

    :try_start_c5
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string v2, "current_version"

    invoke-static {v0, v2, v1}, Lcom/admarvel/android/ads/AdMarvelUtils;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d2} :catch_a6

    goto :goto_69
.end method

.method static synthetic a(Lcom/admarvel/android/b/c;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/admarvel/android/b/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/b/c;->j:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    const-string v0, "admarvel_current_version"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Offline SDK:package cannot be downloaded because current version cannot be comitted "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sput-boolean v1, Lcom/admarvel/android/b/c;->k:Z

    sput-boolean v1, Lcom/admarvel/android/b/c;->l:Z

    :cond_19
    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/b/c;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/admarvel/android/b/c;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 16

    if-nez p1, :cond_f

    const-string v0, "Offline SDK:xml Data is null Exception"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "xml Data is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offline SDK:check for Update Response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    if-nez v0, :cond_66

    const/4 v0, 0x1

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelXMLReader;

    invoke-direct {v0}, Lcom/admarvel/android/ads/AdMarvelXMLReader;-><init>()V

    :try_start_31
    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->parseXMLString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_31 .. :try_end_41} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_31 .. :try_end_41} :catch_30f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_3a6

    move-result-object v1

    if-nez v1, :cond_67

    :cond_44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_66
    :goto_66
    return-void

    :cond_67
    :try_start_67
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v0, "action"

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "geoinfo"

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v1, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "admarvel_preferences"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    if-nez v7, :cond_c5

    const-string v0, "Offline SDK:package cannot be downloaded shared preference is null "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z
    :try_end_a2
    .catchall {:try_start_67 .. :try_end_a2} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_67 .. :try_end_a2} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_67 .. :try_end_a2} :catch_30f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_a2} :catch_3a6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_66

    :cond_c5
    :try_start_c5
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v1, "download_started"

    const/4 v2, 0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_da
    :goto_da
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_fd
    .catchall {:try_start_c5 .. :try_end_fd} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c5 .. :try_end_fd} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_c5 .. :try_end_fd} :catch_30f
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_fd} :catch_3a6

    goto :goto_da

    :catch_fe
    move-exception v0

    :try_start_ff
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline SDK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_119
    .catchall {:try_start_ff .. :try_end_119} :catchall_423

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_66

    :cond_13d
    :try_start_13d
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v0, :cond_539

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_539

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_563

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/b/c;->i:I

    const-string v0, "Update Available"

    iput-object v0, p0, Lcom/admarvel/android/b/c;->g:Ljava/lang/String;

    const-string v0, "Offline SDK:Update Available "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const-string v0, "Offline SDK:Admarvel SDK Offline Packager Downloads Started"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_34e

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_17c
    iput-object v0, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    const-string v0, "package"

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-eqz v0, :cond_612

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_612

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/admarvel/android/b/c;->h:Ljava/lang/String;

    if-eqz v8, :cond_1cb

    iget-object v1, p0, Lcom/admarvel/android/b/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_1cb

    const-string v1, "admarvel_temp_version"

    iget-object v2, p0, Lcom/admarvel/android/b/c;->h:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_1cb

    const-string v1, "Offline SDK:package cannot be downloaded because current version cannot be comitted "

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/admarvel/android/b/c;->k:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/admarvel/android/b/c;->l:Z

    const-string v1, "download_started"

    const/4 v2, 0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1cb
    const-string v1, "admarvel_current_version"

    const-string v2, "-1"

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/b/c;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v1

    const-string v0, "download_csv_url"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/admarvel/android/b/c$b;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/b/c$b;-><init>(Lcom/admarvel/android/b/c;Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual {v0}, Lcom/admarvel/android/b/c$b;->run()V

    invoke-virtual {v0}, Lcom/admarvel/android/b/c$b;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_612

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_612

    const-string v0, "Offline SDK: Writing Utility Objects for offline Ads"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_216
    .catchall {:try_start_13d .. :try_end_216} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13d .. :try_end_216} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_13d .. :try_end_216} :catch_30f
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_216} :catch_3a6

    :try_start_216
    iget-object v2, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/admarvel/android/b/a;->b(Ljava/io/File;Ljava/lang/String;)V
    :try_end_222
    .catchall {:try_start_216 .. :try_end_222} :catchall_423
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_222} :catch_351
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_216 .. :try_end_222} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_216 .. :try_end_222} :catch_30f
    .catch Ljava/io/IOException; {:try_start_216 .. :try_end_222} :catch_3a6

    :try_start_222
    iget-object v2, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "Offline SDK: Writing BannerPathMAP for offline Ads"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_233
    .catchall {:try_start_222 .. :try_end_233} :catchall_423
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_233} :catch_38f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_222 .. :try_end_233} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_222 .. :try_end_233} :catch_30f
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_233} :catch_3a6

    :goto_233
    const/4 v0, 0x1

    :try_start_234
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/admarvel/android/b/b;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Lcom/admarvel/android/b/b;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Lcom/admarvel/android/b/b;->c()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_4d6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25d
    :goto_25d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/admarvel/android/b/c;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_25d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_2c0

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    :cond_2c0
    new-instance v11, Lcom/admarvel/android/b/c$b;

    new-instance v12, Ljava/net/URL;

    const/4 v13, 0x2

    aget-object v0, v0, v13

    const-string v13, "UTF-8"

    invoke-static {v0, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "/"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v11, p0, v12, v6, v0}, Lcom/admarvel/android/b/c$b;-><init>(Lcom/admarvel/android/b/c;Ljava/net/URL;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    iget-boolean v0, v11, Lcom/admarvel/android/b/c$b;->a:Z

    if-eqz v0, :cond_25d

    iget v0, p0, Lcom/admarvel/android/b/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admarvel/android/b/c;->i:I
    :try_end_30d
    .catchall {:try_start_234 .. :try_end_30d} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_234 .. :try_end_30d} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_234 .. :try_end_30d} :catch_30f
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_30d} :catch_3a6

    goto/16 :goto_25d

    :catch_30f
    move-exception v0

    :try_start_310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline SDK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_32a
    .catchall {:try_start_310 .. :try_end_32a} :catchall_423

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_66

    :cond_34e
    const/4 v0, 0x0

    goto/16 :goto_17c

    :catch_351
    move-exception v0

    :try_start_352
    const-string v0, "Offline SDK: Exception in Writing Utility Objects for offline Ads"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    const-string v0, "download_started"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "-1"

    invoke-direct {p0, v8, v0}, Lcom/admarvel/android/b/c;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    :try_end_36b
    .catchall {:try_start_352 .. :try_end_36b} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_352 .. :try_end_36b} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_352 .. :try_end_36b} :catch_30f
    .catch Ljava/io/IOException; {:try_start_352 .. :try_end_36b} :catch_3a6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_66

    :catch_38f
    move-exception v0

    :try_start_390
    const-string v0, "Offline SDK:Eror writing BannerPathMAP for offline Ads"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    const-string v0, "download_started"

    const/4 v2, 0x1

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3a4
    .catchall {:try_start_390 .. :try_end_3a4} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_390 .. :try_end_3a4} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_390 .. :try_end_3a4} :catch_30f
    .catch Ljava/io/IOException; {:try_start_390 .. :try_end_3a4} :catch_3a6

    goto/16 :goto_233

    :catch_3a6
    move-exception v0

    :try_start_3a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline SDK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_3c1
    .catchall {:try_start_3a7 .. :try_end_3c1} :catchall_423

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_66

    :cond_3e5
    :try_start_3e5
    invoke-virtual {v2}, Lcom/admarvel/android/b/b;->b()V
    :try_end_3e8
    .catchall {:try_start_3e5 .. :try_end_3e8} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3e5 .. :try_end_3e8} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_3e5 .. :try_end_3e8} :catch_30f
    .catch Ljava/io/IOException; {:try_start_3e5 .. :try_end_3e8} :catch_3a6

    :try_start_3e8
    iget-object v0, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    const-string v2, "/banner_folder_map"

    invoke-static {v0, v4, v2}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3ef
    .catchall {:try_start_3e8 .. :try_end_3ef} :catchall_423
    .catch Ljava/lang/Exception; {:try_start_3e8 .. :try_end_3ef} :catch_448
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3e8 .. :try_end_3ef} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_3e8 .. :try_end_3ef} :catch_30f
    .catch Ljava/io/IOException; {:try_start_3e8 .. :try_end_3ef} :catch_3a6

    :try_start_3ef
    new-instance v2, Lcom/admarvel/android/b/a/b;

    invoke-direct {v2}, Lcom/admarvel/android/b/a/b;-><init>()V

    invoke-virtual {v2, v3}, Lcom/admarvel/android/b/a/b;->a(Ljava/util/ArrayList;)V

    const-string v0, "/previous_banner_packages"

    const-string v3, "NULL"

    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_486

    const-string v0, "/previous_banner_packages"

    const-string v3, "/previous_banner_packages"

    invoke-interface {v8, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    const-string v3, "/previous_banner_packages"

    invoke-static {v0, v2, v3}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_4cf

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "previous banner packages list not added to shared preference"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_423
    .catchall {:try_start_3ef .. :try_end_423} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3ef .. :try_end_423} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_3ef .. :try_end_423} :catch_30f
    .catch Ljava/io/IOException; {:try_start_3ef .. :try_end_423} :catch_3a6

    :catchall_423
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "admarvel_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "download_started"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    throw v1

    :catch_448
    move-exception v0

    :try_start_449
    const-string v0, "Offline SDK: Exception in Writing BANNER_FOLDER_MAP for offline Ads"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    const-string v0, "-1"

    invoke-direct {p0, v8, v0}, Lcom/admarvel/android/b/c;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    const-string v0, "download_started"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_462
    .catchall {:try_start_449 .. :try_end_462} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_449 .. :try_end_462} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_449 .. :try_end_462} :catch_30f
    .catch Ljava/io/IOException; {:try_start_449 .. :try_end_462} :catch_3a6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_66

    :cond_486
    :try_start_486
    const-string v3, "/previous_banner_packages"

    const-string v4, "BannerFolderName"

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v3, v4, v0}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/b/a/b;

    if-eqz v0, :cond_4cf

    invoke-virtual {v0}, Lcom/admarvel/android/b/a/b;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/admarvel/android/b/a/b;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const-string v3, "Offline SDK:Deleting Obsolete Packages"

    invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/b/a/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b2
    :goto_4b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4b2

    invoke-static {v4}, Lcom/admarvel/android/b/d;->a(Ljava/io/File;)V

    goto :goto_4b2

    :cond_4cf
    iget-object v0, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    const-string v3, "/previous_banner_packages"

    invoke-static {v0, v2, v3}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4d6
    if-eqz v1, :cond_4e3

    iget v0, p0, Lcom/admarvel/android/b/c;->i:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_4e3

    invoke-direct {p0}, Lcom/admarvel/android/b/c;->d()V

    :cond_4e3
    move-object v0, v1

    :goto_4e4
    if-eqz v0, :cond_55d

    iget v1, p0, Lcom/admarvel/android/b/c;->i:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_55d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide v2, 0x3e112e0be826d695L

    sub-long/2addr v0, v9

    long-to-double v0, v0

    mul-double/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offline SDK:Admarvel SDK Offline Packager Downloads Completed at ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offline SDK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/admarvel/android/b/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages downloaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/b/c;->h:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/admarvel/android/b/c;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    :try_end_539
    .catchall {:try_start_486 .. :try_end_539} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_486 .. :try_end_539} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_486 .. :try_end_539} :catch_30f
    .catch Ljava/io/IOException; {:try_start_486 .. :try_end_539} :catch_3a6

    :cond_539
    :goto_539
    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_66

    :cond_55d
    :try_start_55d
    const-string v0, "Offline SDK:Admarvel SDK Offline Packager Downloads interupted because of Above erors"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_539

    :cond_563
    const-string v0, "childDirectory"

    const-string v1, "NULL"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "childDirectory"

    const-string v2, "NULL"

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_banners.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5c7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5f4

    :cond_5c7
    const-string v0, "download_csv_url"

    const-string v1, "NULL"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f4

    new-instance v0, Lcom/admarvel/android/b/c$b;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/b/c$b;-><init>(Lcom/admarvel/android/b/c;Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual {v0}, Lcom/admarvel/android/b/c$b;->run()V

    :cond_5f4
    const-string v0, "completed_banners_count"

    const/4 v1, -0x1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v1, -0x1

    if-eq v0, v1, :cond_604

    invoke-direct {p0}, Lcom/admarvel/android/b/c;->c()V

    :cond_604
    const-string v0, "Update Not Available"

    iput-object v0, p0, Lcom/admarvel/android/b/c;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/admarvel/android/b/c;->a()V

    iget-object v0, p0, Lcom/admarvel/android/b/c;->h:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/admarvel/android/b/c;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    :try_end_610
    .catchall {:try_start_55d .. :try_end_610} :catchall_423
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_55d .. :try_end_610} :catch_fe
    .catch Lorg/xml/sax/SAXException; {:try_start_55d .. :try_end_610} :catch_30f
    .catch Ljava/io/IOException; {:try_start_55d .. :try_end_610} :catch_3a6

    goto/16 :goto_539

    :cond_612
    move-object v0, v6

    goto/16 :goto_4e4
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/admarvel/android/b/c;->k:Z

    return p0
.end method

.method private b()Ljava/lang/Void;
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v0, "Offline SDK:checkforUpdate called"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/admarvel/android/b/c;->l:Z

    if-nez v0, :cond_6f

    const-string v0, "Offline SDK:isUpdateProcessStarted"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sput-boolean v2, Lcom/admarvel/android/b/c;->l:Z

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/.admfiles"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {v0}, Lcom/admarvel/android/b/d;->a(Ljava/io/File;)V

    :cond_38
    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_44
    iput-object v0, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    const-string v0, "Offline SDK:check for update for offline package"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Lcom/admarvel/android/b/a;

    invoke-direct {v0}, Lcom/admarvel/android/b/a;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/admarvel/android/b/c;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_72

    :cond_6f
    :goto_6f
    return-object v1

    :cond_70
    move-object v0, v1

    goto :goto_44

    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline SDK:checkforUpdate PostString :- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const-string v2, ""

    :try_start_8a
    new-instance v0, Ljava/net/URL;

    const-string v5, "http://ads.admarvel.com/fam/getOfflineAndroidPackage.php"

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v5, "POST"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    new-instance v5, Lcom/admarvel/android/ads/AdMarvelUtils;

    iget-object v6, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V

    const-string v6, "User-Agent"

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Length"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x7d0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v5, 0x2710

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_137

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x2000

    move v4, v5

    move v6, v3

    :cond_fb
    :goto_fb
    const/4 v8, -0x1

    if-eq v4, v8, :cond_166

    new-array v8, v5, [B

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_fb

    new-instance v9, Lcom/admarvel/android/b/c$a;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/admarvel/android/b/c$a;-><init>(Lcom/admarvel/android/b/c$1;)V

    iput-object v8, v9, Lcom/admarvel/android/b/c$a;->a:[B

    iput v4, v9, Lcom/admarvel/android/b/c$a;->b:I

    add-int/2addr v6, v4

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_115} :catch_116

    goto :goto_fb

    :catch_116
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offline SDK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Exception in checking for Update"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :cond_137
    move-object v0, v2

    :goto_138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6f

    :try_start_13e
    invoke-direct {p0, v0}, Lcom/admarvel/android/b/c;->a(Ljava/lang/String;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_141} :catch_143

    goto/16 :goto_6f

    :catch_143
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offline SDK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Exception in calling creating subdirectories method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_6f

    :cond_166
    :try_start_166
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-lez v6, :cond_137

    new-array v5, v6, [B

    move v4, v3

    :goto_16e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_189

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/b/c$a;

    iget-object v6, v0, Lcom/admarvel/android/b/c$a;->a:[B

    const/4 v8, 0x0

    iget v9, v0, Lcom/admarvel/android/b/c$a;->b:I

    invoke-static {v6, v8, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v0, Lcom/admarvel/android/b/c$a;->b:I

    add-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16e

    :cond_189
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_18e} :catch_116

    goto :goto_138
.end method

.method static synthetic b(Lcom/admarvel/android/b/c;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/b/c;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Z)Z
    .registers 1

    sput-boolean p0, Lcom/admarvel/android/b/c;->l:Z

    return p0
.end method

.method private c()V
    .registers 18

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const-string v1, "Offline SDK:Admarvel Offline SDK download started"

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "admarvel_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_banners.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "completed_banners_count"

    const/4 v3, -0x1

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/admarvel/android/b/c;->i:I

    const/4 v2, 0x0

    :try_start_60
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/admarvel/android/b/b;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Lcom/admarvel/android/b/b;-><init>(Ljava/io/Reader;)V
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_6f} :catch_8d

    move-object v6, v1

    :goto_70
    if-nez v6, :cond_93

    const/4 v1, 0x0

    move-object v5, v1

    :goto_74
    if-eqz v5, :cond_99

    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/b/c;->i:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_99

    const-string v1, "completed_banners_count"

    const/4 v2, -0x1

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct/range {p0 .. p0}, Lcom/admarvel/android/b/c;->d()V

    goto :goto_13

    :catch_8d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v6, v2

    goto :goto_70

    :cond_93
    invoke-virtual {v6}, Lcom/admarvel/android/b/b;->c()Ljava/util/ArrayList;

    move-result-object v1

    move-object v5, v1

    goto :goto_74

    :cond_99
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    if-eqz v5, :cond_1f7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-string v1, "completed_banners_count"

    const/4 v2, -0x1

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/admarvel/android/b/c;->i:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/b/c;->i:I

    move v4, v1

    :goto_b9
    if-ge v4, v13, :cond_1ba

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/admarvel/android/b/c;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_172

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v12, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "/"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_11a

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_11a
    const/4 v3, 0x0

    :try_start_11b
    new-instance v2, Lcom/admarvel/android/b/c$b;

    new-instance v15, Ljava/net/URL;

    const/16 v16, 0x2

    aget-object v1, v1, v16

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15, v14, v1}, Lcom/admarvel/android/b/c$b;-><init>(Lcom/admarvel/android/b/c;Ljava/net/URL;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_162
    .catch Ljava/net/MalformedURLException; {:try_start_11b .. :try_end_162} :catch_180
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11b .. :try_end_162} :catch_19d

    move-object v1, v2

    :goto_163
    if-eqz v1, :cond_172

    invoke-virtual {v1}, Lcom/admarvel/android/b/c$b;->run()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/b/c;->i:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/admarvel/android/b/c;->i:I

    :cond_172
    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/b/c;->i:I

    if-ne v1, v13, :cond_17b

    invoke-direct/range {p0 .. p0}, Lcom/admarvel/android/b/c;->d()V

    :cond_17b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_b9

    :catch_180
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Offline SDK:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_163

    :catch_19d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Offline SDK:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_163

    :cond_1ba
    :try_start_1ba
    invoke-virtual {v6}, Lcom/admarvel/android/b/b;->b()V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1bd} :catch_22d

    :goto_1bd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    const-string v2, "/banner_folder_map"

    invoke-static {v1, v12, v2}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/admarvel/android/b/a/b;

    invoke-direct {v2}, Lcom/admarvel/android/b/a/b;-><init>()V

    invoke-virtual {v2, v11}, Lcom/admarvel/android/b/a/b;->a(Ljava/util/ArrayList;)V

    const-string v1, "/previous_banner_packages"

    const-string v3, "NULL"

    invoke-interface {v9, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NULL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_232

    const-string v1, "/previous_banner_packages"

    const-string v3, "/previous_banner_packages"

    invoke-interface {v10, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    const-string v3, "/previous_banner_packages"

    invoke-static {v1, v2, v3}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1ee
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    const-string v3, "/previous_banner_packages"

    invoke-static {v1, v2, v3}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1f7
    invoke-direct/range {p0 .. p0}, Lcom/admarvel/android/b/c;->d()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide v3, 0x3e112e0be826d695L

    sub-long/2addr v1, v7

    long-to-double v1, v1

    mul-double/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offline SDK:Admarvel Offline SDK download completed at ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/admarvel/android/b/c;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_22d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1bd

    :cond_232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v3, "/previous_banner_packages"

    const-string v4, "BannerFolderName"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v3, v4, v1}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/b/a/b;

    if-eqz v1, :cond_1ee

    invoke-virtual {v1}, Lcom/admarvel/android/b/a/b;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/admarvel/android/b/a/b;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/admarvel/android/b/a/b;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_265
    :goto_265
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_265

    invoke-static {v4}, Lcom/admarvel/android/b/d;->a(Ljava/io/File;)V

    goto :goto_265
.end method

.method private d()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lcom/admarvel/android/b/c;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_36

    const-string v2, "/complete_ad_content_path_list"

    const-string v3, "/complete_ad_content_path_list"

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/admarvel/android/b/c;->j:Ljava/util/ArrayList;

    :cond_36
    iget-object v0, p0, Lcom/admarvel/android/b/c;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_68

    const-string v0, "admarvel_current_version"

    const-string v2, "-1"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/admarvel/android/b/c;->b()Ljava/lang/Void;

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "Admarvel"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Ljava/io/File;

    const-string v2, "/complete_ad_content_path_list"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_68
    iget-object v0, p0, Lcom/admarvel/android/b/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "admarvel_current_version"

    const-string v2, "-1"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/admarvel/android/b/c;->b()Ljava/lang/Void;

    goto :goto_47
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    invoke-direct {p0}, Lcom/admarvel/android/b/c;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 5

    const-string v0, "/site_id_banner_map"

    const-string v1, "/site_id_banner_map"

    iget-object v2, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "/ad_link_object"

    const-string v2, "/ad_link_object"

    iget-object v3, p0, Lcom/admarvel/android/b/c;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".csv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    if-eqz v0, :cond_43

    :cond_41
    if-nez v1, :cond_48

    :cond_43
    iget-object v0, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/admarvel/android/b/a;->b(Ljava/io/File;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/admarvel/android/b/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 6

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_banners.csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/b/c;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_60

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    iget-object v0, p0, Lcom/admarvel/android/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_88

    :cond_81
    const-string v1, "admarvel_current_version"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_88
    const-string v1, "completed_banners_count"

    iget v2, p0, Lcom/admarvel/android/b/c;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/admarvel/android/b/c;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/admarvel/android/b/c;->j:Ljava/util/ArrayList;

    const-string v2, "/complete_ad_content_path_list"

    invoke-static {v0, v1, v2}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5f
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/admarvel/android/b/c;->a(Ljava/lang/Void;)V

    return-void
.end method

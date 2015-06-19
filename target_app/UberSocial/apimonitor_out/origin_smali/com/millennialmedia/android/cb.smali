.class final Lcom/millennialmedia/android/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "installReferrer"

.field private static final b:Ljava/lang/String; = "MMConversionTracker"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/cn;)V
    .registers 15

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    const-class v6, Lcom/millennialmedia/android/cb;

    monitor-enter v6

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f1

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    :goto_10
    monitor-exit v6

    return-void

    :cond_12
    :try_start_12
    const-string v1, "MillennialMediaSettings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firstLaunch_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "installReferrer"

    const/4 v7, 0x0

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    if-eqz p2, :cond_45

    invoke-virtual {p2, v5}, Lcom/millennialmedia/android/cn;->a(Ljava/util/Map;)V

    invoke-static {v5}, Lcom/millennialmedia/android/cn;->c(Ljava/util/Map;)V

    :cond_45
    if-eqz v7, :cond_68

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_4e
    if-ge v0, v8, :cond_68

    aget-object v9, v7, v0

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x2

    if-lt v10, v11, :cond_65

    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x1

    aget-object v9, v9, v11

    invoke-virtual {v5, v10, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_68
    if-eqz v2, :cond_88

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firstLaunch_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_88
    .catchall {:try_start_12 .. :try_end_88} :catchall_f1

    :cond_88
    :try_start_88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_f1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_94} :catch_fe

    move-result-object v0

    :try_start_95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v7, "firstInstallTime"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_a2
    .catchall {:try_start_95 .. :try_end_a2} :catchall_f1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a2} :catch_f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_a2} :catch_fe

    move-result-wide v0

    :goto_a3
    cmp-long v3, v0, v3

    if-lez v3, :cond_110

    :try_start_a7
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    :goto_bc
    invoke-static {p0}, Lcom/millennialmedia/android/co;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_107

    const-string v0, "ua"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "apid"

    sget-object v1, Lcom/millennialmedia/android/as;->a:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v5}, Lcom/millennialmedia/android/co;->a(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v0, Lcom/millennialmedia/android/cb$1;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/cb$1;-><init>(Ljava/lang/String;ZJLjava/util/TreeMap;)V

    invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V
    :try_end_ef
    .catchall {:try_start_a7 .. :try_end_ef} :catchall_f1

    goto/16 :goto_10

    :catchall_f1
    move-exception v0

    monitor-exit v6

    throw v0

    :catch_f4
    move-exception v0

    :try_start_f5
    const-string v1, "MMConversionTracker"

    const-string v7, "Error with firstInstallTime"

    invoke-static {v1, v7, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fc
    .catchall {:try_start_f5 .. :try_end_fc} :catchall_f1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f5 .. :try_end_fc} :catch_fe

    :goto_fc
    move-wide v0, v3

    goto :goto_a3

    :catch_fe
    move-exception v0

    :try_start_ff
    const-string v1, "MMConversionTracker"

    const-string v7, "Can\'t find packagename: "

    invoke-static {v1, v7, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_fc

    :cond_107
    const-string v0, "MMConversionTracker"

    const-string v1, "No network available for conversion tracking."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_ff .. :try_end_10e} :catchall_f1

    goto/16 :goto_10

    :cond_110
    move-wide v3, v0

    goto :goto_bc
.end method

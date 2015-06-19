.class final Lcom/millennialmedia/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static d:Z = false

.field private static final e:Ljava/lang/String; = "ad.dat"

.field private static final f:Ljava/lang/String; = "ad.lock"

.field private static final g:Ljava/lang/String; = "nextCachedAd_"

.field private static final h:Ljava/lang/String; = "incompleteDownload_"

.field private static final i:Ljava/lang/String; = "nextCachedAd_apids"

.field private static final j:Ljava/lang/String; = "AdCache"

.field private static final k:Ljava/lang/String; = ".mmsyscache"

.field private static l:Ljava/util/Set;

.field private static m:Ljava/lang/String;

.field private static n:Z

.field private static o:Ljava/util/Map;

.field private static p:Ljava/util/Set;

.field private static q:Z

.field private static r:Ljava/util/Map;

.field private static s:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/a;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-class v1, Lcom/millennialmedia/android/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/millennialmedia/android/a;->m:Ljava/lang/String;

    if-nez v0, :cond_6f

    sget-boolean v0, Lcom/millennialmedia/android/a;->n:Z

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x2

    new-instance v3, Lcom/millennialmedia/android/a$1;

    invoke-direct {v3, p0, v0}, Lcom/millennialmedia/android/a$1;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-static {p0, v2, v3}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;ILcom/millennialmedia/android/c;)V

    sput-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/a;->n:Z

    :cond_1e
    sget-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_6f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_63

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_60

    goto :goto_35

    :catchall_60
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_63
    :try_start_63
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/a;->m:Ljava/lang/String;

    :cond_6f
    sget-object v0, Lcom/millennialmedia/android/a;->m:Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_60

    monitor-exit v1

    return-object v0
.end method

.method static a(Landroid/content/Context;ILcom/millennialmedia/android/c;)V
    .registers 15

    invoke-static {p0}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_48

    new-instance v1, Lcom/millennialmedia/android/a$2;

    invoke-direct {v1}, Lcom/millennialmedia/android/a$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_48

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v7

    :goto_16
    if-ge v8, v10, :cond_48

    aget-object v11, v9, v8

    if-eqz v11, :cond_22

    :try_start_1c
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_112
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_116

    move-result v1

    if-nez v1, :cond_37

    :cond_22
    if-eqz v0, :cond_118

    :try_start_24
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2d

    const/4 v7, 0x0

    :cond_28
    :goto_28
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v0, v7

    goto :goto_16

    :catch_2d
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v0

    goto :goto_28

    :cond_37
    if-nez p1, :cond_66

    :try_start_39
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/millennialmedia/android/c;->a(Ljava/lang/String;)Z
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_112
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_116

    move-result v1

    if-nez v1, :cond_55

    if-eqz v0, :cond_48

    :try_start_45
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4c

    :cond_48
    :goto_48
    invoke-virtual {p2}, Lcom/millennialmedia/android/c;->a()V

    return-void

    :catch_4c
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Failed to close"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    :cond_55
    if-eqz v0, :cond_118

    :try_start_57
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5c

    const/4 v7, 0x0

    goto :goto_28

    :catch_5c
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v0

    goto :goto_28

    :cond_66
    :try_start_66
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_112
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_70} :catch_116

    :try_start_70
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a5

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/millennialmedia/android/c;->a(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z

    move-result v0

    if-nez v0, :cond_c4

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_95
    .catchall {:try_start_70 .. :try_end_95} :catchall_102
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_95} :catch_d6

    const/4 v0, 0x0

    if-eqz v0, :cond_48

    :try_start_98
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_48

    :catch_9c
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Failed to close"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    :cond_a5
    :try_start_a5
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/ai;

    invoke-virtual {p2, v0}, Lcom/millennialmedia/android/c;->a(Lcom/millennialmedia/android/ai;)Z

    move-result v0

    if-nez v0, :cond_c4

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b4
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_102
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b4} :catch_d6

    const/4 v0, 0x0

    if-eqz v0, :cond_48

    :try_start_b7
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_48

    :catch_bb
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Failed to close"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    :cond_c4
    if-eqz v7, :cond_28

    :try_start_c6
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_cc

    const/4 v7, 0x0

    goto/16 :goto_28

    :catch_cc
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Failed to close"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    :catch_d6
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    :goto_d9
    :try_start_d9
    const-string v2, "AdCache"

    const-string v3, "There was a problem reading the cached ad %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ee
    .catchall {:try_start_d9 .. :try_end_ee} :catchall_112

    if-eqz v0, :cond_f4

    :try_start_f0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f7

    const/4 v0, 0x0

    :cond_f4
    move-object v7, v0

    goto/16 :goto_28

    :catch_f7
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v0

    goto/16 :goto_28

    :catchall_102
    move-exception v0

    :goto_103
    if-eqz v7, :cond_108

    :try_start_105
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    :cond_108
    :goto_108
    throw v0

    :catch_109
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_108

    :catchall_112
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_103

    :catch_116
    move-exception v1

    goto :goto_d9

    :cond_118
    move-object v7, v0

    goto/16 :goto_28
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/millennialmedia/android/a;

    monitor-enter v1

    if-eqz p1, :cond_1f

    :try_start_5
    sget-boolean v0, Lcom/millennialmedia/android/a;->n:Z

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;)Ljava/lang/String;

    :cond_c
    sget-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    :cond_17
    sget-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/a;->m:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/millennialmedia/android/a;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/millennialmedia/android/a;->q:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/millennialmedia/android/a;->j(Landroid/content/Context;)V

    :cond_a
    if-eqz p1, :cond_18

    sget-object v0, Lcom/millennialmedia/android/a;->o:Ljava/util/Map;

    if-nez p2, :cond_12

    const-string p2, ""

    :cond_12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/a;->k(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 7

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_75

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_75

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_75

    sget-object v0, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    const/4 v0, 0x0

    sget-object v1, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    sget-object v0, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/millennialmedia/android/co;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_55
    move-object v0, v1

    :cond_56
    const-string v1, "nextCachedAd_apids"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_76

    const-string v0, ""

    :goto_61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_75
    return-void

    :cond_76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_61
.end method

.method private static a(Landroid/content/SharedPreferences;)V
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    const-string v0, "nextCachedAd_apids"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    sget-object v1, Lcom/millennialmedia/android/co;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    array-length v0, v1

    if-lez v0, :cond_29

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v2, :cond_29

    aget-object v3, v1, v0

    sget-object v4, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_29
    return-void
.end method

.method static a(Ljava/io/File;J)V
    .registers 11

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_48

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-lez v4, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_21
    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_21

    :try_start_2b
    invoke-static {v0, p1, p2}, Lcom/millennialmedia/android/a;->a(Ljava/io/File;J)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_3e} :catch_3f

    goto :goto_21

    :catch_3f
    move-exception v0

    const-string v4, "AdCache"

    const-string v5, "Security Exception cleaning up directory"

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_48
    return-void
.end method

.method static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/millennialmedia/android/a;->d:Z

    return-void
.end method

.method static a()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;Lcom/millennialmedia/android/ai;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/millennialmedia/android/a;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v4, "AdCache"

    const-string v6, "Saving CachedAd %s to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_27
    new-instance v4, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ad.lock"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_de
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_47} :catch_b3

    :try_start_47
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_74

    const-string v1, "AdCache"

    const-string v5, "Could not save the cached ad %s. Ad was locked."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_f5
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_62} :catch_fd

    :try_start_62
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6a} :catch_6b

    goto :goto_6

    :catch_6b
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_74
    :try_start_74
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_f5
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7e} :catch_fd

    :try_start_7e
    invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->c()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p1, Lcom/millennialmedia/android/ai;->f:Ljava/util/Date;

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/millennialmedia/android/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-wide v5, p1, Lcom/millennialmedia/android/ai;->g:J

    invoke-virtual {v3, v5, v6}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_97
    .catchall {:try_start_7e .. :try_end_97} :catchall_f7
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_97} :catch_100

    :try_start_97
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v3, :cond_9f

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9f} :catch_aa

    :cond_9f
    :goto_9f
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/ai;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f2

    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/ai;->c(Landroid/content/Context;)V

    goto/16 :goto_6

    :catch_aa
    move-exception v2

    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9f

    :catch_b3
    move-exception v1

    move-object v3, v2

    :goto_b5
    :try_start_b5
    const-string v4, "AdCache"

    const-string v5, "There was a problem saving the cached ad %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ca
    .catchall {:try_start_b5 .. :try_end_ca} :catchall_fa

    :try_start_ca
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d2} :catch_d4

    goto/16 :goto_6

    :catch_d4
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catchall_de
    move-exception v0

    move-object v4, v2

    :goto_e0
    :try_start_e0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_e8

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e8} :catch_e9

    :cond_e8
    :goto_e8
    throw v0

    :catch_e9
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e8

    :cond_f2
    move v0, v1

    goto/16 :goto_6

    :catchall_f5
    move-exception v0

    goto :goto_e0

    :catchall_f7
    move-exception v0

    move-object v2, v3

    goto :goto_e0

    :catchall_fa
    move-exception v0

    move-object v4, v3

    goto :goto_e0

    :catch_fd
    move-exception v1

    move-object v3, v4

    goto :goto_b5

    :catch_100
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_b5
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)Z
    .registers 5

    invoke-static {}, Lcom/millennialmedia/android/d;->a()Lcom/millennialmedia/android/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/millennialmedia/android/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)Z

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5

    invoke-static {p2}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-static {p0, p1, v0, p2}, Lcom/millennialmedia/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    goto :goto_d
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z
    .registers 12

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "AdCache"

    const-string v1, "No Url ..."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0

    :cond_f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "AdCache"

    const-string v1, "Downloading Component: %s from %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "AdCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not exist and cannot create directory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_e

    :cond_52
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7c

    const-string v0, "AdCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists, skipping..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_e

    :cond_7c
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    :try_start_80
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_9f
    .catchall {:try_start_80 .. :try_end_9f} :catchall_1a8
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9f} :catch_1b0

    move-result-object v3

    :try_start_a0
    const-string v2, "Content-Length"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ac

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_ac
    if-nez v3, :cond_dc

    const-string v0, "AdCache"

    const-string v2, "Connection stream is null downloading %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_a0 .. :try_end_bf} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_bf} :catch_1b3

    const/4 v0, 0x0

    if-eqz v3, :cond_c5

    :try_start_c2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_c5
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_ca} :catch_cc

    goto/16 :goto_e

    :catch_cc
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_d9

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_d9
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_dc
    :try_start_dc
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e1
    .catchall {:try_start_dc .. :try_end_e1} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e1} :catch_1b3

    const/16 v0, 0x1000

    :try_start_e3
    new-array v0, v0, [B

    :goto_e5
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_119

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ef
    .catchall {:try_start_e3 .. :try_end_ef} :catchall_17b
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ef} :catch_f0

    goto :goto_e5

    :catch_f0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_f3
    :try_start_f3
    const-string v3, "AdCache"

    const-string v4, "Exception downloading component %s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_f3 .. :try_end_107} :catchall_1ad

    if-eqz v2, :cond_10c

    :try_start_109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_10c
    if-eqz v1, :cond_111

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_111} :catch_188

    :cond_111
    :goto_111
    if-eqz v6, :cond_116

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_116
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_119
    if-eqz v6, :cond_14d

    :try_start_11b
    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_17b
    .catch Ljava/lang/SecurityException; {:try_start_11b .. :try_end_11e} :catch_168
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_f0

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_129

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_146

    :cond_129
    const/4 v0, 0x1

    if-eqz v3, :cond_12f

    :try_start_12c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_12f
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_134} :catch_136

    goto/16 :goto_e

    :catch_136
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_143

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_143
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_146
    :try_start_146
    const-string v0, "AdCache"

    const-string v1, "Content-Length does not match actual length."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14d
    .catchall {:try_start_146 .. :try_end_14d} :catchall_17b
    .catch Ljava/lang/SecurityException; {:try_start_146 .. :try_end_14d} :catch_168
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_14d} :catch_f0

    :cond_14d
    :goto_14d
    if-eqz v3, :cond_152

    :try_start_14f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_152
    if-eqz v2, :cond_111

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_157} :catch_158

    goto :goto_111

    :catch_158
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_165

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_165
    const/4 v0, 0x0

    goto/16 :goto_e

    :catch_168
    move-exception v0

    :try_start_169
    const-string v1, "AdCache"

    const-string v4, "Exception downloading component %s: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17a
    .catchall {:try_start_169 .. :try_end_17a} :catchall_17b
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_17a} :catch_f0

    goto :goto_14d

    :catchall_17b
    move-exception v0

    move-object v1, v2

    :goto_17d
    if-eqz v3, :cond_182

    :try_start_17f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_182
    if-eqz v1, :cond_187

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_187} :catch_198

    :cond_187
    throw v0

    :catch_188
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_195

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_195
    const/4 v0, 0x0

    goto/16 :goto_e

    :catch_198
    move-exception v0

    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_1a5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_1a5
    const/4 v0, 0x0

    goto/16 :goto_e

    :catchall_1a8
    move-exception v0

    move-object v3, v2

    goto :goto_17d

    :catchall_1ab
    move-exception v0

    goto :goto_17d

    :catchall_1ad
    move-exception v0

    move-object v3, v2

    goto :goto_17d

    :catch_1b0
    move-exception v0

    goto/16 :goto_f3

    :catch_1b3
    move-exception v0

    move-object v2, v3

    goto/16 :goto_f3
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 6

    invoke-static {p3}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p2, v1, p3}, Lcom/millennialmedia/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    goto :goto_d
.end method

.method static b(Landroid/content/Context;)V
    .registers 2

    new-instance v0, Lcom/millennialmedia/android/a$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/a$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/millennialmedia/android/a;

    monitor-enter v1

    if-eqz p1, :cond_18

    :try_start_5
    sget-boolean v0, Lcom/millennialmedia/android/a;->n:Z

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;)Ljava/lang/String;

    :cond_c
    sget-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/a;->m:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/millennialmedia/android/a;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/millennialmedia/android/a;->s:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/millennialmedia/android/a;->k(Landroid/content/Context;)V

    :cond_a
    if-eqz p1, :cond_18

    sget-object v0, Lcom/millennialmedia/android/a;->r:Ljava/util/Map;

    if-nez p2, :cond_12

    const-string p2, ""

    :cond_12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/a;->l(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5

    invoke-static {p2}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-static {p0, p1, v0, p2}, Lcom/millennialmedia/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    goto :goto_d
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    invoke-static {p0}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_23

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_23
    return-object v0
.end method

.method static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/millennialmedia/android/a;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/millennialmedia/android/a;->q:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/millennialmedia/android/a;->j(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18

    :cond_a
    if-nez p1, :cond_f

    const/4 v0, 0x0

    :goto_d
    monitor-exit v1

    return-object v0

    :cond_f
    :try_start_f
    sget-object v0, Lcom/millennialmedia/android/a;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_18

    goto :goto_d

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static c(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    new-instance v1, Lcom/millennialmedia/android/a$4;

    invoke-direct {v1}, Lcom/millennialmedia/android/a$4;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;ILcom/millennialmedia/android/c;)V

    return-void
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
    .registers 4

    invoke-static {p0, p1}, Lcom/millennialmedia/android/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-static {p0, v0}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;

    move-result-object v0

    goto :goto_f
.end method

.method static d(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/millennialmedia/android/a;->l(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/millennialmedia/android/a;->m(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/millennialmedia/android/a;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/millennialmedia/android/a;->s:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/millennialmedia/android/a;->k(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18

    :cond_a
    if-nez p1, :cond_f

    const/4 v0, 0x0

    :goto_d
    monitor-exit v1

    return-object v0

    :cond_f
    :try_start_f
    sget-object v0, Lcom/millennialmedia/android/a;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_18

    goto :goto_d

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static e(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-instance v1, Lcom/millennialmedia/android/a$5;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/a$5;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;ILcom/millennialmedia/android/c;)V

    sput-object v2, Lcom/millennialmedia/android/a;->l:Ljava/util/Set;

    sput-object v2, Lcom/millennialmedia/android/a;->m:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/android/a;->n:Z

    sget-object v0, Lcom/millennialmedia/android/a;->o:Ljava/util/Map;

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/millennialmedia/android/a;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_2f
    sget-object v0, Lcom/millennialmedia/android/a;->r:Ljava/util/Map;

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/millennialmedia/android/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/millennialmedia/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_4d
    return-void
.end method

.method static f(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
    .registers 3

    invoke-static {p0, p1}, Lcom/millennialmedia/android/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0, v0}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;

    move-result-object v0

    goto :goto_7
.end method

.method static f(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method static g(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1a

    new-instance v1, Ljava/io/File;

    const-string v3, ".mmsyscache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    move-object v0, v1

    goto :goto_1a
.end method

.method static g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {p0}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_c
    return-object v0
.end method

.method static h(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".mmsyscache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1d
    move-object v0, v1

    goto :goto_3
.end method

.method static h(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
    .registers 9

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-object v1

    :cond_c
    invoke-static {p0, p1}, Lcom/millennialmedia/android/a;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_12
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_96
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_41
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_72

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/ai;
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_31} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_31} :catch_a9

    if-eqz v2, :cond_36

    :try_start_33
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_38

    :cond_36
    :goto_36
    move-object v1, v0

    goto :goto_b

    :catch_38
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    :catch_41
    move-exception v0

    move-object v2, v1

    :goto_43
    :try_start_43
    const-string v3, "AdCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There was a problem loading up the cached ad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Ad is not on disk."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_a7

    if-eqz v2, :cond_66

    :try_start_63
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_68

    :cond_66
    move-object v0, v1

    goto :goto_36

    :catch_68
    move-exception v0

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_36

    :catch_72
    move-exception v0

    move-object v2, v1

    :goto_74
    :try_start_74
    const-string v3, "AdCache"

    const-string v4, "There was a problem loading up the cached ad %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_85
    .catchall {:try_start_74 .. :try_end_85} :catchall_a7

    if-eqz v2, :cond_8a

    :try_start_87
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8c

    :cond_8a
    move-object v0, v1

    goto :goto_36

    :catch_8c
    move-exception v0

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_36

    :catchall_96
    move-exception v0

    move-object v2, v1

    :goto_98
    if-eqz v2, :cond_9d

    :try_start_9a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    :cond_9d
    :goto_9d
    throw v0

    :catch_9e
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9d

    :catchall_a7
    move-exception v0

    goto :goto_98

    :catch_a9
    move-exception v0

    goto :goto_74

    :catch_ab
    move-exception v0

    goto :goto_43
.end method

.method static i(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/millennialmedia/android/a;->d:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static j(Landroid/content/Context;)V
    .registers 13

    const/16 v11, 0x5f

    const/4 v2, 0x0

    const-string v0, "MillennialMediaSettings"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/a;->o:Ljava/util/Map;

    sget-object v0, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    if-nez v0, :cond_17

    invoke-static {v3}, Lcom/millennialmedia/android/a;->a(Landroid/content/SharedPreferences;)V

    :cond_17
    sget-object v0, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/android/bp;->l()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_2f
    if-ge v1, v6, :cond_1d

    aget-object v7, v5, v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nextCachedAd_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6f

    sget-object v9, Lcom/millennialmedia/android/a;->o:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/a;->q:Z

    return-void
.end method

.method static j(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/millennialmedia/android/a;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static k(Landroid/content/Context;)V
    .registers 13

    const/16 v11, 0x5f

    const/4 v2, 0x0

    const-string v0, "MillennialMediaSettings"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/a;->r:Ljava/util/Map;

    sget-object v0, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    if-nez v0, :cond_17

    invoke-static {v3}, Lcom/millennialmedia/android/a;->a(Landroid/content/SharedPreferences;)V

    :cond_17
    sget-object v0, Lcom/millennialmedia/android/a;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/android/bp;->l()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_2f
    if-ge v1, v6, :cond_1d

    aget-object v7, v5, v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incompleteDownload_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6f

    sget-object v9, Lcom/millennialmedia/android/a;->r:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/a;->s:Z

    return-void
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_31

    const-string v0, "MillennialMediaSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/millennialmedia/android/a;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextCachedAd_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/millennialmedia/android/a;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_31
    return-void
.end method

.method private static l(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v1

    iget-wide v1, v1, Lcom/millennialmedia/android/as;->d:J

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/a;->a(Ljava/io/File;J)V

    goto :goto_6
.end method

.method private static l(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_31

    const-string v0, "MillennialMediaSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/millennialmedia/android/a;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incompleteDownload_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/millennialmedia/android/a;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_31
    return-void
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_70

    :try_start_1e
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_70

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_29
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6e

    :cond_31
    if-nez v2, :cond_6e

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6e

    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".mmsyscache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_60} :catch_65

    move-result v0

    if-eqz v0, :cond_6e

    move-object v0, v2

    :goto_64
    return-object v0

    :catch_65
    move-exception v1

    const-string v2, "AdCache"

    const-string v3, "getCachedAdFile: "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64

    :cond_6e
    move-object v0, v1

    goto :goto_64

    :cond_70
    move-object v1, v0

    goto :goto_29
.end method

.method private static m(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v1

    iget-wide v1, v1, Lcom/millennialmedia/android/as;->d:J

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/a;->a(Ljava/io/File;J)V

    goto :goto_6
.end method

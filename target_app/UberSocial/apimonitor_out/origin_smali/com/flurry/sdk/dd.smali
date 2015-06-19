.class public Lcom/flurry/sdk/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Integer;

.field private static final d:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/dd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dd;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/io/File;)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to delete persistence file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v3, "Deleted persistence file"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_40

    :cond_35
    :goto_35
    monitor-exit p0

    return v0

    :cond_37
    const/4 v1, 0x6

    :try_start_38
    sget-object v2, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v3, "Cannot delete persistence file"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    goto :goto_35

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/List;)Z
    .registers 12

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_14

    const/4 v0, 0x6

    sget-object v2, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v3, "saveToFile(byte[], ID) running on the MAIN thread!"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".FlurrySenderIndex.info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_ae

    move-result-object v0

    const/4 v3, 0x0

    :try_start_34
    invoke-static {v0}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_a8
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_99

    move-result v2

    if-nez v2, :cond_3f

    :try_start_3a
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_ae

    :goto_3d
    monitor-exit p0

    return v1

    :cond_3f
    :try_start_3f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_a8
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_49} :catch_99

    :try_start_49
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v3, v1

    :goto_51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8f

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x4

    sget-object v6, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write iter "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_51

    :cond_8f
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_93
    .catchall {:try_start_49 .. :try_end_93} :catchall_b1
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_93} :catch_b3

    const/4 v0, 0x1

    :try_start_94
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_ae

    :goto_97
    move v1, v0

    goto :goto_3d

    :catch_99
    move-exception v0

    move-object v2, v3

    :goto_9b
    const/4 v3, 0x6

    :try_start_9c
    sget-object v4, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_b1

    :try_start_a3
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_97

    :catchall_a8
    move-exception v0

    move-object v2, v3

    :goto_aa
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_ae
    .catchall {:try_start_a3 .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_b1
    move-exception v0

    goto :goto_aa

    :catch_b3
    move-exception v0

    goto :goto_9b
.end method

.method private declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/dd;->b()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/flurry/sdk/dd;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(Ljava/lang/String;)Ljava/util/List;
    .registers 12

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_14

    const/4 v0, 0x6

    sget-object v2, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v3, "readFromFile(byte[], ID) running on the MAIN thread!"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".FlurrySenderIndex.info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_a9

    move-result v2

    if-eqz v2, :cond_b2

    :try_start_39
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_ac
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_43} :catch_98

    :try_start_43
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_bc
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_be

    move-result v3

    if-nez v3, :cond_4e

    :try_start_49
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_a9

    :goto_4c
    monitor-exit p0

    return-object v1

    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_bc
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_53} :catch_be

    const/4 v1, 0x0

    :goto_54
    if-ge v1, v3, :cond_8d

    :try_start_56
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    const/4 v5, 0x4

    sget-object v6, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read iter "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_8d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_90
    .catchall {:try_start_56 .. :try_end_90} :catchall_bc
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_90} :catch_c3

    move-result v1

    if-nez v1, :cond_93

    :cond_93
    :try_start_93
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_a9

    :goto_96
    move-object v1, v0

    goto :goto_4c

    :catch_98
    move-exception v0

    move-object v2, v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_9d
    const/4 v3, 0x6

    :try_start_9e
    sget-object v4, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v5, "Error when loading persistent file"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_bc

    :try_start_a5
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_96

    :catchall_a9
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_ac
    move-exception v0

    move-object v2, v1

    :goto_ae
    :try_start_ae
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_b2
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v3, "Agent cache file doesn\'t exist."

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_ae .. :try_end_ba} :catchall_a9

    move-object v0, v1

    goto :goto_96

    :catchall_bc
    move-exception v0

    goto :goto_ae

    :catch_be
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_9d

    :catch_c3
    move-exception v1

    goto :goto_9d
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/dc;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_3
    sget-object v2, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v3, "addBlockInfo"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/dc;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_57

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v2, "New Data Key"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_28
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sget-object v3, Lcom/flurry/sdk/dd;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v0, v3, :cond_45

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dd;->b(Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_45
    iget-object v0, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, v2}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;Ljava/util/List;)Z

    if-eqz v1, :cond_52

    invoke-direct {p0}, Lcom/flurry/sdk/dd;->c()V
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_54

    :cond_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_57
    move-object v2, v0

    goto :goto_28
.end method

.method a(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dd;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/flurry/sdk/dd;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dd;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_25

    :cond_24
    return-void

    :cond_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dd;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v3, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dd;->b(Ljava/lang/String;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    :cond_12
    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;Ljava/util/List;)Z

    :goto_22
    return v1

    :cond_23
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/dd;->d(Ljava/lang/String;)Z

    goto :goto_22
.end method

.method b()V
    .registers 4

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".FlurrySenderIndex.info."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dd;->a(Ljava/io/File;)Z

    return-void
.end method

.method b(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Lcom/flurry/sdk/dc;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/dc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/dc;->c()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    const-string v2, "discardOutdatedBlocksForDataKey(ID) running on the MAIN thread!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".FlurrySenderIndex.info."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_83

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discardOutdatedBlocksForDataKey: notSentBlocks = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_57
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_83

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dd;->b(Ljava/lang/String;)Z

    const/4 v4, 0x4

    sget-object v5, Lcom/flurry/sdk/dd;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "discardOutdatedBlocksForDataKey: removed block = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    :cond_83
    iget-object v0, p0, Lcom/flurry/sdk/dd;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/flurry/sdk/dd;->a(Ljava/io/File;)Z

    move-result v0

    invoke-direct {p0}, Lcom/flurry/sdk/dd;->c()V
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_91

    monitor-exit p0

    return v0

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method

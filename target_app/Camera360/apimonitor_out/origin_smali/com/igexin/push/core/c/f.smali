.class public Lcom/igexin/push/core/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/igexin/push/core/c/f;


# instance fields
.field private c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/c/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/f;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/c/f;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/c/f;->b:Lcom/igexin/push/core/c/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/c/f;

    invoke-direct {v0}, Lcom/igexin/push/core/c/f;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/f;->b:Lcom/igexin/push/core/c/f;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/c/f;->b:Lcom/igexin/push/core/c/f;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "runtime"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I[B)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v1, "runtime"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->d()V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;I[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method

.method static synthetic b(Lcom/igexin/push/core/c/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->f()V

    return-void
.end method

.method private d()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/igexin/push/core/g;->Y:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_11
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/igexin/push/core/g;->Y:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_65

    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/igexin/push/core/g;->t:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/g;->D:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5f
    .catchall {:try_start_18 .. :try_end_5f} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5f} :catch_7e

    if-eqz v1, :cond_64

    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_78

    :cond_64
    :goto_64
    return-void

    :catch_65
    move-exception v1

    :goto_66
    if-eqz v0, :cond_64

    :try_start_68
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_64

    :catch_6c
    move-exception v0

    goto :goto_64

    :catchall_6e
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_72
    if-eqz v1, :cond_77

    :try_start_74
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_7a

    :cond_77
    :goto_77
    throw v0

    :catch_78
    move-exception v0

    goto :goto_64

    :catch_7a
    move-exception v1

    goto :goto_77

    :catchall_7c
    move-exception v0

    goto :goto_72

    :catch_7e
    move-exception v0

    move-object v0, v1

    goto :goto_66
.end method

.method private e()J
    .registers 10

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/igexin/push/core/g;->Y:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v2, 0x400

    new-array v5, v2, [B

    :try_start_14
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v2, Lcom/igexin/push/core/g;->Y:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_d3

    :try_start_1b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_ce
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_d7

    :goto_20
    :try_start_20
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_39

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c

    goto :goto_20

    :catch_2c
    move-exception v3

    move-object v3, v4

    :goto_2e
    if-eqz v3, :cond_33

    :try_start_30
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_c4

    :cond_33
    :goto_33
    if-eqz v2, :cond_38

    :try_start_35
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_c7

    :cond_38
    :goto_38
    return-wide v0

    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/igexin/push/core/g;->D:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    if-eqz v6, :cond_93

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "v01"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_a0

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a0

    const/4 v3, 0x7

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_7a
    :goto_7a
    if-eqz v3, :cond_93

    const-string/jumbo v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_8a

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_8a
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8d
    .catchall {:try_start_39 .. :try_end_8d} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_8d} :catch_2c

    move-result-wide v5

    cmp-long v3, v5, v0

    if-eqz v3, :cond_93

    move-wide v0, v5

    :cond_93
    if-eqz v4, :cond_98

    :try_start_95
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_c2

    :cond_98
    :goto_98
    if-eqz v2, :cond_38

    :try_start_9a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_38

    :catch_9e
    move-exception v2

    goto :goto_38

    :cond_a0
    const/4 v7, 0x0

    const/16 v8, 0x14

    :try_start_a3
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    const/16 v3, 0x14

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_b2
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b2} :catch_2c

    move-result-object v3

    goto :goto_7a

    :catchall_b4
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_b7
    if-eqz v4, :cond_bc

    :try_start_b9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_ca

    :cond_bc
    :goto_bc
    if-eqz v2, :cond_c1

    :try_start_be
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_cc

    :cond_c1
    :goto_c1
    throw v0

    :catch_c2
    move-exception v3

    goto :goto_98

    :catch_c4
    move-exception v3

    goto/16 :goto_33

    :catch_c7
    move-exception v2

    goto/16 :goto_38

    :catch_ca
    move-exception v1

    goto :goto_bc

    :catch_cc
    move-exception v1

    goto :goto_c1

    :catchall_ce
    move-exception v0

    move-object v2, v3

    goto :goto_b7

    :catchall_d1
    move-exception v0

    goto :goto_b7

    :catch_d3
    move-exception v2

    move-object v2, v3

    goto/16 :goto_2e

    :catch_d7
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_2e
.end method

.method private f()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/igexin/push/core/g;->Z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_11
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/igexin/push/core/g;->Z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_36

    :try_start_18
    sget-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1a} :catch_4f

    if-nez v0, :cond_22

    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_49

    :cond_21
    :goto_21
    return-void

    :cond_22
    :try_start_22
    sget-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_4f

    if-eqz v1, :cond_21

    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_21

    :catch_34
    move-exception v0

    goto :goto_21

    :catch_36
    move-exception v1

    :goto_37
    if-eqz v0, :cond_21

    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_21

    :catch_3d
    move-exception v0

    goto :goto_21

    :catchall_3f
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_43
    if-eqz v1, :cond_48

    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4b

    :cond_48
    :goto_48
    throw v0

    :catch_49
    move-exception v0

    goto :goto_21

    :catch_4b
    move-exception v1

    goto :goto_48

    :catchall_4d
    move-exception v0

    goto :goto_43

    :catch_4f
    move-exception v0

    move-object v0, v1

    goto :goto_37
.end method

.method private g()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/igexin/push/core/g;->Z:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_78

    const/16 v0, 0x400

    new-array v0, v0, [B

    :try_start_12
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v2, Lcom/igexin/push/core/g;->Z:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_55
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_70

    :try_start_19
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_74

    :goto_1e
    :try_start_1e
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_39

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_1e

    :catch_2a
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    :goto_2d
    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_65

    :cond_32
    :goto_32
    if-eqz v0, :cond_78

    :try_start_34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_52

    move-object v0, v1

    :cond_38
    :goto_38
    return-object v0

    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_45} :catch_2a

    if-eqz v3, :cond_4a

    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_63

    :cond_4a
    :goto_4a
    if-eqz v2, :cond_38

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_38

    :catch_50
    move-exception v1

    goto :goto_38

    :catch_52
    move-exception v0

    move-object v0, v1

    goto :goto_38

    :catchall_55
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_58
    if-eqz v3, :cond_5d

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_67

    :cond_5d
    :goto_5d
    if-eqz v2, :cond_62

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_69

    :cond_62
    :goto_62
    throw v0

    :catch_63
    move-exception v1

    goto :goto_4a

    :catch_65
    move-exception v2

    goto :goto_32

    :catch_67
    move-exception v1

    goto :goto_5d

    :catch_69
    move-exception v1

    goto :goto_62

    :catchall_6b
    move-exception v0

    move-object v2, v1

    goto :goto_58

    :catchall_6e
    move-exception v0

    goto :goto_58

    :catch_70
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_2d

    :catch_74
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_2d

    :cond_78
    move-object v0, v1

    goto :goto_38
.end method

.method private h()Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, ""

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/4 v0, 0x0

    :goto_d
    const/16 v3, 0xf

    if-ge v0, v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2b
    return-object v1
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public a(J)Z
    .registers 7

    const/4 v3, 0x1

    invoke-static {p1, p2}, Lcom/igexin/push/core/g;->a(J)V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/j;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/j;-><init>(Lcom/igexin/push/core/c/f;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return v3
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    sget-object v2, Lcom/igexin/push/core/g;->P:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    sput-object p1, Lcom/igexin/push/core/g;->P:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/p;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/p;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public a(Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/igexin/push/core/g;->Q:Z

    if-eq v2, p1, :cond_15

    sput-boolean p1, Lcom/igexin/push/core/g;->Q:Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/h;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/h;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method public b()V
    .registers 5

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/g;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/g;-><init>(Lcom/igexin/push/core/c/f;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12

    const/16 v8, 0xe

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    :try_start_6
    const-string/jumbo v0, "select id, value from runtime order by id"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_247
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_24a

    move-result-object v0

    if-eqz v0, :cond_240

    :cond_10
    :goto_10
    :try_start_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_240

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eq v7, v6, :cond_20

    if-ne v7, v8, :cond_121

    :cond_20
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    :goto_26
    packed-switch v7, :pswitch_data_24e

    goto :goto_10

    :pswitch_2a
    new-instance v2, Ljava/lang/String;

    sget-object v7, Lcom/igexin/push/core/g;->D:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_13c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_35} :catch_55

    if-eqz v2, :cond_40

    :try_start_37
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    :cond_40
    move-wide v2, v4

    :goto_41
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/igexin/push/core/g;->v:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/push/core/g;->a(J)V
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_13c
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4e} :catch_55

    goto :goto_10

    :catch_4f
    move-exception v2

    const-wide/16 v2, 0x0

    :try_start_52
    sput-wide v2, Lcom/igexin/push/core/g;->t:J
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_13c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_54} :catch_55

    goto :goto_10

    :catch_55
    move-exception v1

    :goto_56
    if-eqz v0, :cond_5b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5b
    :goto_5b
    sget-wide v0, Lcom/igexin/push/core/g;->t:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_85

    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->e()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_85

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/igexin/push/core/g;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/push/core/g;->a(J)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/f/b;->a([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v6, v0}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_85
    sget-object v0, Lcom/igexin/push/core/g;->av:Ljava/lang/String;

    if-eqz v0, :cond_9f

    const-string/jumbo v0, ""

    sget-object v1, Lcom/igexin/push/core/g;->av:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    const-string/jumbo v0, "null"

    sget-object v1, Lcom/igexin/push/core/g;->av:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_9f
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/igexin/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->av:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->av:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/f/b;->a([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v8, v0}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_b4
    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    if-nez v1, :cond_d1

    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_d1

    sput-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    const/4 v0, 0x2

    sget-object v1, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_d1
    sget-object v0, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    if-nez v0, :cond_120

    sget-object v0, Lcom/igexin/push/core/g;->w:Ljava/lang/String;

    if-nez v0, :cond_f1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "A-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    const/4 v0, 0x3

    sget-object v1, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_120
    return-void

    :cond_121
    :try_start_121
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_13c
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_55

    move-result-object v2

    move-object v3, v1

    goto/16 :goto_26

    :cond_128
    :try_start_128
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_13c
    .catch Ljava/lang/NumberFormatException; {:try_start_128 .. :try_end_12b} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_55

    move-result-wide v2

    goto/16 :goto_41

    :pswitch_12e
    :try_start_12e
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_146

    move v2, v6

    :goto_138
    sput-boolean v2, Lcom/igexin/push/core/g;->n:Z
    :try_end_13a
    .catchall {:try_start_12e .. :try_end_13a} :catchall_13c
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_13a} :catch_55

    goto/16 :goto_10

    :catchall_13c
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_140
    if-eqz v1, :cond_145

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_145
    throw v0

    :cond_146
    :try_start_146
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_138

    :pswitch_14b
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_155

    move-object v2, v1

    :cond_155
    sput-object v2, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_159
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_167

    move-wide v2, v4

    :goto_163
    sput-wide v2, Lcom/igexin/push/core/g;->K:J

    goto/16 :goto_10

    :cond_167
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_163

    :pswitch_16c
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17a

    move-wide v2, v4

    :goto_176
    sput-wide v2, Lcom/igexin/push/core/g;->J:J

    goto/16 :goto_10

    :cond_17a
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_176

    :pswitch_17f
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18d

    move-wide v2, v4

    :goto_189
    sput-wide v2, Lcom/igexin/push/core/g;->I:J

    goto/16 :goto_10

    :cond_18d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_189

    :pswitch_192
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a0

    move-wide v2, v4

    :goto_19c
    sput-wide v2, Lcom/igexin/push/core/g;->S:J

    goto/16 :goto_10

    :cond_1a0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_19c

    :pswitch_1a5
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    move-wide v2, v4

    :goto_1af
    sput-wide v2, Lcom/igexin/push/core/g;->T:J

    goto/16 :goto_10

    :cond_1b3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1af

    :pswitch_1b8
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c6

    move-wide v2, v4

    :goto_1c2
    sput-wide v2, Lcom/igexin/push/core/g;->H:J

    goto/16 :goto_10

    :cond_1c6
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1c2

    :pswitch_1cb
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    move-object v2, v1

    :cond_1d5
    sput-object v2, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_1d9
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    move-wide v2, v4

    :goto_1e3
    sput-wide v2, Lcom/igexin/push/core/g;->N:J

    goto/16 :goto_10

    :cond_1e7
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1e3

    :pswitch_1ec
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fa

    move-wide v2, v4

    :goto_1f6
    sput-wide v2, Lcom/igexin/push/core/g;->O:J

    goto/16 :goto_10

    :cond_1fa
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1f6

    :pswitch_1ff
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_209

    move-object v2, v1

    :cond_209
    sput-object v2, Lcom/igexin/push/core/g;->P:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_20d
    new-instance v2, Ljava/lang/String;

    sget-object v7, Lcom/igexin/push/core/g;->D:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/igexin/push/core/g;->av:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_21c
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/core/g;->Q:Z

    goto/16 :goto_10

    :pswitch_22d
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23b

    move-wide v2, v4

    :goto_237
    sput-wide v2, Lcom/igexin/push/core/g;->R:J

    goto/16 :goto_10

    :cond_23b
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_23e
    .catchall {:try_start_146 .. :try_end_23e} :catchall_13c
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_23e} :catch_55

    move-result-wide v2

    goto :goto_237

    :cond_240
    if-eqz v0, :cond_5b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5b

    :catchall_247
    move-exception v0

    goto/16 :goto_140

    :catch_24a
    move-exception v0

    move-object v0, v1

    goto/16 :goto_56

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_14b
        :pswitch_1cb
        :pswitch_12e
        :pswitch_1b8
        :pswitch_17f
        :pswitch_16c
        :pswitch_159
        :pswitch_192
        :pswitch_1a5
        :pswitch_1d9
        :pswitch_1ec
        :pswitch_1ff
        :pswitch_20d
        :pswitch_21c
        :pswitch_22d
    .end packed-switch
.end method

.method public b(J)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->S:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_17

    sput-wide p1, Lcom/igexin/push/core/g;->S:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/k;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/k;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public c()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/c/f;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    sget-wide v0, Lcom/igexin/push/core/g;->t:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    const/4 v0, 0x4

    sget-boolean v1, Lcom/igexin/push/core/g;->n:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x8

    sget-wide v1, Lcom/igexin/push/core/g;->K:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x7

    sget-wide v1, Lcom/igexin/push/core/g;->J:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x6

    sget-wide v1, Lcom/igexin/push/core/g;->I:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x9

    sget-wide v1, Lcom/igexin/push/core/g;->S:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xa

    sget-wide v1, Lcom/igexin/push/core/g;->T:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x5

    sget-wide v1, Lcom/igexin/push/core/g;->H:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xb

    sget-wide v1, Lcom/igexin/push/core/g;->N:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xc

    sget-wide v1, Lcom/igexin/push/core/g;->O:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method

.method public c(J)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->O:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_17

    sput-wide p1, Lcom/igexin/push/core/g;->O:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/l;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/l;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public d(J)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->T:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_17

    sput-wide p1, Lcom/igexin/push/core/g;->T:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/m;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/m;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public e(J)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->J:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_17

    sput-wide p1, Lcom/igexin/push/core/g;->J:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/n;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/n;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public f(J)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->N:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_17

    sput-wide p1, Lcom/igexin/push/core/g;->N:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/o;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/o;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public g(J)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->R:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_17

    sput-wide p1, Lcom/igexin/push/core/g;->R:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/i;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/i;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

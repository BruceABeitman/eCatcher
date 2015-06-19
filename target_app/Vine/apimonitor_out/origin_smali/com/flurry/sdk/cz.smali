.class public Lcom/flurry/sdk/cz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/cz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZJJ",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/do;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/sdk/cz;->b:[B

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_8
    new-instance v7, Lcom/flurry/sdk/ea;

    invoke-direct {v7}, Lcom/flurry/sdk/ea;-><init>()V

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/security/DigestOutputStream;

    invoke-direct {v9, v8, v7}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_3dc
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1c} :catch_3e4

    const/16 v2, 0x1d

    :try_start_1e
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v6, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-wide/from16 v0, p14

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/do;

    iget v3, v3, Lcom/flurry/sdk/do;->d:I

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_7f
    .catchall {:try_start_1e .. :try_end_7f} :catchall_1c1
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_7f} :catch_80

    goto :goto_57

    :catch_80
    move-exception v2

    move-object v3, v6

    :goto_82
    const/4 v4, 0x6

    :try_start_83
    sget-object v6, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    const-string v7, "Error when generating report"

    invoke-static {v4, v6, v7, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_3e0

    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move-object v2, v5

    :goto_8e
    iput-object v2, p0, Lcom/flurry/sdk/cz;->b:[B

    return-void

    :cond_91
    const/4 v2, 0x0

    :try_start_92
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-wide/from16 v0, p7

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v2, 0x6

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, "device.model"

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v2, "build.brand"

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v2, "build.id"

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v2, "version.release"

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v2, "build.device"

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v2, "build.product"

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-eqz p11, :cond_1c6

    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    :goto_10b
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p11, :cond_1c9

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    const-string v4, "sending referrer values because it exists"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_120
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v10, 0x3

    sget-object v11, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Referrer Entry:  "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v10, 0x3

    sget-object v11, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "referrer key is :"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_198
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_120

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v10, 0x3

    sget-object v11, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "referrer value is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v11, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1c0
    .catchall {:try_start_92 .. :try_end_1c0} :catchall_1c1
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_1c0} :catch_80

    goto :goto_198

    :catchall_1c1
    move-exception v2

    :goto_1c2
    invoke-static {v6}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v2

    :cond_1c6
    const/4 v2, 0x0

    goto/16 :goto_10b

    :cond_1c9
    const/4 v2, 0x0

    :try_start_1ca
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz p12, :cond_27a

    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    move v4, v2

    :goto_1d8
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "optionsMapSize is:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p12, :cond_27e

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    const-string v10, "sending launch options"

    invoke-static {v2, v3, v10}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_206
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v11, 0x3

    sget-object v12, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Launch Options Key:  "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v12, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_251
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_206

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v11, 0x3

    sget-object v12, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Launch Options value is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v12, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_251

    :cond_27a
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_1d8

    :cond_27e
    if-eqz p13, :cond_39a

    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    :goto_288
    const/4 v3, 0x3

    sget-object v10, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "numOriginAttributions is:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v10, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p13, :cond_3a3

    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2ae
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v4, 0x3

    sget-object v11, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Origin Atttribute Key:  "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v11, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x3

    sget-object v11, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Origin Attribute Map Size for "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ":  "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v11, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_330
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2ae

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v12, 0x3

    sget-object v13, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Origin Atttribute for "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ":  "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ":"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v13, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_39d

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_387
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3a0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_396
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_330

    :cond_39a
    const/4 v2, 0x0

    goto/16 :goto_288

    :cond_39d
    const-string v4, ""

    goto :goto_387

    :cond_3a0
    const-string v3, ""

    goto :goto_396

    :cond_3a3
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_3ac
    if-ge v3, v4, :cond_3c1

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/de;

    invoke-virtual {v2}, Lcom/flurry/sdk/de;->a()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3ac

    :cond_3c1
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/security/DigestOutputStream;->on(Z)V

    invoke-virtual {v7}, Lcom/flurry/sdk/ea;->a()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3d6
    .catchall {:try_start_1ca .. :try_end_3d6} :catchall_1c1
    .catch Ljava/lang/Throwable; {:try_start_1ca .. :try_end_3d6} :catch_80

    move-result-object v2

    invoke-static {v6}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto/16 :goto_8e

    :catchall_3dc
    move-exception v2

    move-object v6, v3

    goto/16 :goto_1c2

    :catchall_3e0
    move-exception v2

    move-object v6, v3

    goto/16 :goto_1c2

    :catch_3e4
    move-exception v2

    goto/16 :goto_82
.end method


# virtual methods
.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/cz;->b:[B

    return-object v0
.end method

.class public final Lcom/flurry/sdk/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/flurry/sdk/cx;->a:I

    iput-wide p2, p0, Lcom/flurry/sdk/cx;->b:J

    iput-object p4, p0, Lcom/flurry/sdk/cx;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/flurry/sdk/cx;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/flurry/sdk/cx;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-virtual {p0}, Lcom/flurry/sdk/cx;->b()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public b()[B
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_b7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_bc

    :try_start_c
    iget v0, p0, Lcom/flurry/sdk/cx;->a:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v4, p0, Lcom/flurry/sdk/cx;->b:J

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/flurry/sdk/cx;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/cx;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/cx;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/flurry/sdk/cx;->c:Ljava/lang/String;

    const-string v4, "uncaught"

    if-ne v0, v4, :cond_59

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_33
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    :goto_4c
    if-ge v0, v7, :cond_66

    aget-object v8, v6, v0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_59
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_5d
    .catchall {:try_start_c .. :try_end_5d} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_5d} :catch_5e

    goto :goto_33

    :catch_5e
    move-exception v0

    :goto_5f
    const/4 v0, 0x0

    :try_start_60
    new-array v0, v0, [B
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_b2

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    :goto_65
    return-object v0

    :cond_66
    :try_start_66
    iget-object v0, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Caused by: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    :goto_82
    if-ge v0, v7, :cond_8f

    aget-object v2, v6, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_8f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    :goto_9e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_a4
    .catchall {:try_start_66 .. :try_end_a4} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_a4} :catch_5e

    move-result-object v0

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_65

    :cond_a9
    const/4 v0, 0x1

    :try_start_aa
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b1} :catch_5e

    goto :goto_9e

    :catchall_b2
    move-exception v0

    :goto_b3
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_b7
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_b3

    :catch_bc
    move-exception v1

    move-object v1, v0

    goto :goto_5f
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/cx;->c:Ljava/lang/String;

    return-object v0
.end method

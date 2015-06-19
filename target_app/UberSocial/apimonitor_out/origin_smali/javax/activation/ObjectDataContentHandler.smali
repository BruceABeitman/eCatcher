.class Ljavax/activation/ObjectDataContentHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private dch:Ljavax/activation/DataContentHandler;

.field private mimeType:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private transferFlavors:[Lc/a/a/a;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lc/a/a/a;

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    iput-object p2, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    iput-object p3, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getDCH()Ljavax/activation/DataContentHandler;
    .registers 2

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    return-object v0
.end method

.method public getTransferData(Lc/a/a/a;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Lc/a/a/a;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljavax/activation/ObjectDataContentHandler;->getTransferDataFlavors()[Lc/a/a/a;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lc/a/a/a;->equals(Lc/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    goto :goto_a

    :cond_1b
    new-instance v0, Lc/a/a/f;

    invoke-direct {v0, p1}, Lc/a/a/f;-><init>(Lc/a/a/a;)V

    throw v0
.end method

.method public declared-synchronized getTransferDataFlavors()[Lc/a/a/a;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lc/a/a/a;

    if-nez v0, :cond_11

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lc/a/a/a;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lc/a/a/a;

    :cond_11
    :goto_11
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lc/a/a/a;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2f

    monitor-exit p0

    return-object v0

    :cond_15
    const/4 v0, 0x1

    :try_start_16
    new-array v0, v0, [Lc/a/a/a;

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lc/a/a/a;

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lc/a/a/a;

    const/4 v1, 0x0

    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    iget-object v3, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    iget-object v5, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_2f

    goto :goto_11

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 7

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    :goto_9
    return-void

    :cond_a
    instance-of v0, p1, [B

    if-eqz v0, :cond_14

    check-cast p1, [B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_9

    :cond_14
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_26

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_9

    :cond_26
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no object DCH for MIME type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

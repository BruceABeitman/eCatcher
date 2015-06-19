.class public abstract Ljavax/mail/Multipart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected contentType:Ljava/lang/String;

.field protected parent:Ljavax/mail/Part;

.field protected parts:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    const-string v0, "multipart/mixed"

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "No such BodyPart"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_d

    monitor-exit p0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Part;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parent:Ljavax/mail/Part;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBodyPart(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "No such BodyPart"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeBodyPart(Ljavax/mail/BodyPart;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_10

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No such body part"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_d

    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljavax/mail/MultipartDataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/mail/MultipartDataSource;->getCount()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    move-result v1

    const/4 v0, 0x0

    :goto_c
    if-lt v0, v1, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-interface {p1, v0}, Ljavax/mail/MultipartDataSource;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParent(Ljavax/mail/Part;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/Multipart;->parent:Ljavax/mail/Part;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method

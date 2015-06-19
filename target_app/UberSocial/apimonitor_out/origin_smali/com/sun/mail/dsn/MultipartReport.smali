.class public Lcom/sun/mail/dsn/MultipartReport;
.super Ljavax/mail/internet/MimeMultipart;
.source "SourceFile"


# instance fields
.field protected constructed:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const-string v0, "report"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    iput-boolean v2, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V
    .registers 7

    const/4 v3, 0x1

    const-string v0, "report"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "report-type"

    const-string v2, "delivery-status"

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v1, "message/delivery-status"

    invoke-virtual {v0, p2, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    iput-boolean v3, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;Ljavax/mail/internet/InternetHeaders;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V

    if-eqz p3, :cond_18

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    new-instance v1, Lcom/sun/mail/dsn/MessageHeaders;

    invoke-direct {v1, p3}, Lcom/sun/mail/dsn/MessageHeaders;-><init>(Ljavax/mail/internet/InternetHeaders;)V

    const-string v2, "text/rfc822-headers"

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    :cond_18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;Ljavax/mail/internet/MimeMessage;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V

    if-eqz p3, :cond_13

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v1, "message/rfc822"

    invoke-virtual {v0, p3, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    :cond_13
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 3

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->parse()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method private declared-synchronized setBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_17

    invoke-super {p0, p2}, Ljavax/mail/internet/MimeMultipart;->removeBodyPart(I)V

    :cond_17
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t add body parts to multipart/report 1"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t add body parts to multipart/report 2"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeliveryStatus()Lcom/sun/mail/dsn/DeliveryStatus;
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->getCount()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_28

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    const-string v2, "message/delivery-status"

    invoke-virtual {v1, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_28

    move-result v2

    if-eqz v2, :cond_9

    :try_start_18
    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/dsn/DeliveryStatus;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_28
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_9

    :catch_1f
    move-exception v0

    :try_start_20
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException getting DeliveryStatus"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReturnedMessage()Ljavax/mail/internet/MimeMessage;
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->getCount()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_30

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    const/4 v1, 0x2

    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "text/rfc822-headers"

    invoke-virtual {v1, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_30

    move-result v2

    if-eqz v2, :cond_9

    :cond_20
    :try_start_20
    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeMessage;
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_30
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_27

    goto :goto_9

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException getting ReturnedMessage"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getText()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_43

    :goto_15
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    const-string v2, "multipart/alternative"

    invoke-virtual {v0, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Multipart;

    :goto_25
    invoke-virtual {v0}, Ljavax/mail/Multipart;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_15

    :cond_2d
    invoke-virtual {v0, v1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3f} :catch_43

    goto :goto_15

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :catch_43
    move-exception v0

    :try_start_44
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Exception getting text content"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextBodyPart()Ljavax/mail/internet/MimeBodyPart;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBodyPart(I)V
    .registers 4

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t remove body parts from multipart/report"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .registers 4

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t remove body parts from multipart/report"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setDeliveryStatus(Lcom/sun/mail/dsn/DeliveryStatus;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v1, "message/delivery-status"

    invoke-virtual {v0, p1, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "report-type"

    const-string v2, "delivery-status"

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReturnedMessage(Ljavax/mail/internet/MimeMessage;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_12

    :try_start_3
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    const/4 v0, 0x2

    invoke-super {p0, v0}, Ljavax/mail/internet/MimeMultipart;->removeBodyPart(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_25

    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    instance-of v1, p1, Lcom/sun/mail/dsn/MessageHeaders;

    if-eqz v1, :cond_28

    const-string v1, "text/rfc822-headers"

    invoke-virtual {v0, p1, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_20
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_25

    goto :goto_10

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_28
    :try_start_28
    const-string v1, "message/rfc822"

    invoke-virtual {v0, p1, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_25

    goto :goto_20
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t change subtype of MultipartReport"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextBodyPart(Ljavax/mail/internet/MimeBodyPart;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

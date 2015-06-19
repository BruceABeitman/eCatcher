.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "SourceFile"


# static fields
.field private static bmparse:Z

.field private static ignoreMissingBoundaryParameter:Z

.field private static ignoreMissingEndBoundary:Z


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    :try_start_8
    const-string v2, "mail.mime.multipart.ignoremissingendboundary"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    move v2, v0

    :goto_19
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    const-string v2, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_43

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v0

    :goto_2c
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    const-string v2, "mail.mime.multipart.bmparse"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    :goto_3e
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_40} :catch_47

    :goto_40
    return-void

    :cond_41
    move v2, v1

    goto :goto_19

    :cond_43
    move v2, v1

    goto :goto_2c

    :cond_45
    move v0, v1

    goto :goto_3e

    :catch_47
    move-exception v0

    goto :goto_40
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string v2, "multipart"

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    :cond_1f
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_29

    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    :goto_28
    return-void

    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    goto :goto_28
.end method

.method private declared-synchronized parsebm()V
    .registers 28

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7a

    if-eqz v2, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v9, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v3}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    instance-of v3, v6, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_34c

    instance-of v3, v6, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_34c

    instance-of v3, v6, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_34c

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_7d

    :goto_27
    :try_start_27
    instance-of v6, v3, Ljavax/mail/internet/SharedInputStream;

    if-eqz v6, :cond_348

    move-object v0, v3

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v2, v0

    move-object/from16 v17, v2

    :goto_31
    new-instance v2, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "boundary"

    invoke-virtual {v2, v7}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_86

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_27 .. :try_end_51} :catchall_7a

    move-result-object v6

    :cond_52
    :try_start_52
    new-instance v18, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v11, v2

    :cond_5c
    :goto_5c
    invoke-virtual/range {v18 .. v18}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_92

    :cond_62
    :goto_62
    if-nez v2, :cond_ed

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v2, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6c
    .catchall {:try_start_52 .. :try_end_6c} :catchall_75
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_6c} :catch_6c

    :catch_6c
    move-exception v2

    :try_start_6d
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "IO Error"

    invoke-direct {v4, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v2

    :try_start_76
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_32e

    :goto_79
    :try_start_79
    throw v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_7d
    move-exception v2

    :try_start_7e
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "No inputstream from datasource"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :cond_86
    sget-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v2, :cond_52

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Missing boundary parameter"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_7a

    :cond_92
    :try_start_92
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_98
    if-gez v8, :cond_cf

    :cond_9a
    const/4 v12, 0x0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_de

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    :cond_a9
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_ac
    .catchall {:try_start_92 .. :try_end_ac} :catchall_75
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_ac} :catch_6c

    move-result v8

    if-lez v8, :cond_5c

    if-nez v7, :cond_b9

    :try_start_b1
    const-string v7, "line.separator"

    const-string v8, "\n"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_75
    .catch Ljava/lang/SecurityException; {:try_start_b1 .. :try_end_b8} :catch_e9
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b8} :catch_6c

    move-result-object v7

    :cond_b9
    :goto_b9
    if-nez v11, :cond_345

    :try_start_bb
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_c6
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v11, v8

    goto :goto_5c

    :cond_cf
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-eq v12, v13, :cond_db

    const/16 v13, 0x9

    if-ne v12, v13, :cond_9a

    :cond_db
    add-int/lit8 v8, v8, -0x1

    goto :goto_98

    :cond_de
    const-string v8, "--"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    move-object v6, v2

    goto/16 :goto_62

    :catch_e9
    move-exception v7

    const-string v7, "\n"

    goto :goto_b9

    :cond_ed
    if-eqz v11, :cond_f7

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    :cond_f7
    invoke-static {v6}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    const/16 v2, 0x100

    new-array v0, v2, [I

    move-object/from16 v20, v0

    const/4 v2, 0x0

    :goto_107
    move/from16 v0, v16

    if-lt v2, v0, :cond_127

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move/from16 v6, v16

    :goto_113
    if-gtz v6, :cond_130

    add-int/lit8 v2, v16, -0x1

    const/4 v6, 0x1

    aput v6, v21, v2
    :try_end_11a
    .catchall {:try_start_bb .. :try_end_11a} :catchall_75
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_11a} :catch_6c

    const/4 v8, 0x0

    :goto_11b
    if-eqz v8, :cond_14e

    :goto_11d
    :try_start_11d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_331

    :goto_120
    const/4 v2, 0x1

    :try_start_121
    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_125
    .catchall {:try_start_121 .. :try_end_125} :catchall_7a

    goto/16 :goto_7

    :cond_127
    :try_start_127
    aget-byte v6, v19, v2

    add-int/lit8 v7, v2, 0x1

    aput v7, v20, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    :cond_130
    add-int/lit8 v2, v16, -0x1

    :goto_132
    if-ge v2, v6, :cond_13a

    :goto_134
    if-gtz v2, :cond_149

    :cond_136
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    goto :goto_113

    :cond_13a
    aget-byte v7, v19, v2

    sub-int v8, v2, v6

    aget-byte v8, v19, v8

    if-ne v7, v8, :cond_136

    add-int/lit8 v7, v2, -0x1

    aput v6, v21, v7

    add-int/lit8 v2, v2, -0x1

    goto :goto_132

    :cond_149
    add-int/lit8 v2, v2, -0x1

    aput v6, v21, v2

    goto :goto_134

    :cond_14e
    const/4 v2, 0x0

    if-eqz v17, :cond_175

    invoke-interface/range {v17 .. v17}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v4

    :cond_155
    invoke-virtual/range {v18 .. v18}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_161

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_155

    :cond_161
    if-nez v6, :cond_341

    sget-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v2, :cond_16f

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v2, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto :goto_11d

    :cond_175
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v2

    move-object v13, v2

    move-wide v14, v4

    :goto_17d
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_18b

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v4, "Stream doesn\'t support mark"

    invoke-direct {v2, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18b
    const/4 v2, 0x0

    if-nez v17, :cond_1c0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v12, v2

    :goto_194
    move/from16 v0, v16

    new-array v7, v0, [B

    move/from16 v0, v16

    new-array v6, v0, [B

    const/4 v4, 0x0

    const/4 v2, 0x1

    move v11, v4

    move-wide v4, v9

    move v9, v2

    :goto_1a1
    add-int/lit8 v2, v16, 0x4

    add-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    const/4 v10, 0x0

    move/from16 v0, v16

    invoke-static {v3, v7, v10, v0}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v10

    move/from16 v0, v16

    if-ge v10, v0, :cond_1f0

    sget-boolean v8, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v8, :cond_1c6

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v2, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c0
    invoke-interface/range {v17 .. v17}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v9

    move-object v12, v2

    goto :goto_194

    :cond_1c6
    if-eqz v17, :cond_33e

    invoke-interface/range {v17 .. v17}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v8

    :goto_1cc
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v4, 0x1

    :goto_1d2
    if-eqz v17, :cond_30c

    move-object/from16 v0, v17

    invoke-interface {v0, v14, v15, v8, v9}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v2

    :goto_1e0
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move/from16 v24, v4

    move-wide v4, v14

    move-wide/from16 v25, v8

    move-wide/from16 v9, v25

    move/from16 v8, v24

    goto/16 :goto_11b

    :cond_1f0
    add-int/lit8 v2, v16, -0x1

    :goto_1f2
    if-gez v2, :cond_262

    :cond_1f4
    if-gez v2, :cond_33b

    const/4 v2, 0x0

    if-nez v9, :cond_229

    add-int/lit8 v22, v11, -0x1

    aget-byte v22, v6, v22

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_20d

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_229

    :cond_20d
    const/4 v2, 0x1

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_229

    const/16 v22, 0x2

    move/from16 v0, v22

    if-lt v11, v0, :cond_229

    add-int/lit8 v22, v11, -0x2

    aget-byte v22, v6, v22

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_229

    const/4 v2, 0x2

    :cond_229
    if-nez v9, :cond_22d

    if-lez v2, :cond_2aa

    :cond_22d
    if-eqz v17, :cond_23f

    invoke-interface/range {v17 .. v17}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v4, v4, v22

    int-to-long v0, v2

    move-wide/from16 v22, v0

    sub-long v4, v4, v22

    :cond_23f
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_273

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v22

    const/16 v23, 0x2d

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_273

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v8, 0x1

    move/from16 v24, v8

    move-wide v8, v4

    move/from16 v4, v24

    goto/16 :goto_1d2

    :cond_262
    aget-byte v22, v7, v2

    aget-byte v23, v19, v2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1f2

    :cond_26f
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v9

    :cond_273
    const/16 v22, 0x20

    move/from16 v0, v22

    if-eq v9, v0, :cond_26f

    const/16 v22, 0x9

    move/from16 v0, v22

    if-eq v9, v0, :cond_26f

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v9, v0, :cond_28c

    move/from16 v24, v8

    move-wide v8, v4

    move/from16 v4, v24

    goto/16 :goto_1d2

    :cond_28c
    const/16 v22, 0xd

    move/from16 v0, v22

    if-ne v9, v0, :cond_2aa

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v22, 0xa

    move/from16 v0, v22

    if-eq v9, v0, :cond_334

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    move/from16 v24, v8

    move-wide v8, v4

    move/from16 v4, v24

    goto/16 :goto_1d2

    :cond_2aa
    const/4 v2, 0x0

    move-wide v9, v4

    :goto_2ac
    add-int/lit8 v4, v2, 0x1

    aget-byte v5, v7, v2

    and-int/lit8 v5, v5, 0x7f

    aget v5, v20, v5

    sub-int/2addr v4, v5

    aget v2, v21, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2f8

    if-nez v17, :cond_2c9

    const/4 v2, 0x1

    if-le v11, v2, :cond_2c9

    const/4 v2, 0x0

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v12, v6, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2c9
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    const-wide/16 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    const/4 v2, 0x1

    if-lt v11, v2, :cond_2ef

    const/4 v2, 0x0

    add-int/lit8 v4, v11, -0x1

    aget-byte v4, v6, v4

    aput-byte v4, v6, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aget-byte v4, v7, v4

    aput-byte v4, v6, v2

    const/4 v2, 0x2

    move-object v4, v6

    :goto_2e5
    const/4 v5, 0x0

    move v11, v2

    move-object v6, v4

    move/from16 v24, v5

    move-wide v4, v9

    move/from16 v9, v24

    goto/16 :goto_1a1

    :cond_2ef
    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-byte v4, v7, v4

    aput-byte v4, v6, v2

    const/4 v2, 0x1

    move-object v4, v6

    goto :goto_2e5

    :cond_2f8
    if-lez v11, :cond_300

    if-nez v17, :cond_300

    const/4 v4, 0x0

    invoke-virtual {v12, v6, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_300
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    int-to-long v4, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    move-object v4, v7

    move-object v7, v6

    goto :goto_2e5

    :cond_30c
    sub-int v5, v11, v2

    if-lez v5, :cond_316

    const/4 v5, 0x0

    sub-int v2, v11, v2

    invoke-virtual {v12, v6, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_316
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v2, :cond_322

    if-lez v10, :cond_322

    const/4 v2, 0x0

    invoke-virtual {v12, v7, v2, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_322
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_32b
    .catchall {:try_start_127 .. :try_end_32b} :catchall_75
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_32b} :catch_6c

    move-result-object v2

    goto/16 :goto_1e0

    :catch_32e
    move-exception v3

    goto/16 :goto_79

    :catch_331
    move-exception v2

    goto/16 :goto_120

    :cond_334
    move/from16 v24, v8

    move-wide v8, v4

    move/from16 v4, v24

    goto/16 :goto_1d2

    :cond_33b
    move-wide v9, v4

    goto/16 :goto_2ac

    :cond_33e
    move-wide v8, v4

    goto/16 :goto_1cc

    :cond_341
    move-object v13, v2

    move-wide v14, v4

    goto/16 :goto_17d

    :cond_345
    move-object v8, v11

    goto/16 :goto_c6

    :cond_348
    move-object/from16 v17, v2

    goto/16 :goto_31

    :cond_34c
    move-object v3, v6

    goto/16 :goto_27
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_11

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_e

    :goto_a
    if-gtz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_3

    :cond_e
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    :cond_11
    if-gtz p3, :cond_4

    goto :goto_a
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .registers 9

    const-wide/16 v3, 0x0

    :goto_2
    cmp-long v0, p2, v3

    if-gtz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-gtz v2, :cond_17

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "can\'t skip"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    sub-long/2addr p2, v0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .registers 3

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .registers 3

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .registers 4

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_25

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-lt v1, v2, :cond_f

    const/4 v0, 0x0

    :cond_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_25

    move-result v3

    if-nez v3, :cond_d

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result v0

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isComplete()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .registers 21

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-eqz v1, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    sget-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v1, :cond_14

    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_7

    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_14
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v3, 0x0

    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    instance-of v2, v5, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_27b

    instance-of v2, v5, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_27b

    instance-of v2, v5, Ljavax/mail/internet/SharedInputStream;

    if-nez v2, :cond_27b

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_11
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_32} :catch_82

    :goto_32
    :try_start_32
    instance-of v5, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v5, :cond_278

    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v1, v0

    move-object v14, v1

    :goto_3b
    new-instance v1, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v8, "boundary"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "--"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_11

    move-result-object v5

    :cond_5c
    :try_start_5c
    new-instance v15, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v15, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v10, v1

    :cond_64
    :goto_64
    invoke-virtual {v15}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_97

    :cond_6a
    :goto_6a
    if-nez v1, :cond_f2

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v3, "Missing start boundary"

    invoke-direct {v1, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_74} :catch_74

    :catch_74
    move-exception v1

    :try_start_75
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "IO Error"

    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v1

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_11
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_255

    :goto_81
    :try_start_81
    throw v1

    :catch_82
    move-exception v1

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No inputstream from datasource"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_8b
    sget-boolean v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v1, :cond_5c

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_97
    .catchall {:try_start_81 .. :try_end_97} :catchall_11

    :cond_97
    :try_start_97
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_9d
    if-gez v9, :cond_d4

    :cond_9f
    const/4 v11, 0x0

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_e3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6a

    :cond_ae
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_b1} :catch_74

    move-result v9

    if-lez v9, :cond_64

    if-nez v8, :cond_be

    :try_start_b6
    const-string v8, "line.separator"

    const-string v9, "\n"

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_7d
    .catch Ljava/lang/SecurityException; {:try_start_b6 .. :try_end_bd} :catch_ee
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bd} :catch_74

    move-result-object v8

    :cond_be
    :goto_be
    if-nez v10, :cond_275

    :try_start_c0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_cb
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v9

    goto :goto_64

    :cond_d4
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_e0

    const/16 v12, 0x9

    if-ne v11, v12, :cond_9f

    :cond_e0
    add-int/lit8 v9, v9, -0x1

    goto :goto_9d

    :cond_e3
    const-string v9, "--"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ae

    move-object v5, v1

    goto/16 :goto_6a

    :catch_ee
    move-exception v8

    const-string v8, "\n"

    goto :goto_be

    :cond_f2
    if-eqz v10, :cond_fc

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    :cond_fc
    invoke-static {v5}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0
    :try_end_105
    .catchall {:try_start_c0 .. :try_end_105} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_105} :catch_74

    const/4 v5, 0x0

    :goto_106
    if-eqz v5, :cond_112

    :goto_108
    :try_start_108
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_11
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_258

    :goto_10b
    const/4 v1, 0x1

    :try_start_10c
    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_110
    .catchall {:try_start_10c .. :try_end_110} :catchall_11

    goto/16 :goto_7

    :cond_112
    const/4 v1, 0x0

    if-eqz v14, :cond_139

    :try_start_115
    invoke-interface {v14}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v6

    :cond_119
    invoke-virtual {v15}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_125

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_119

    :cond_125
    if-nez v8, :cond_271

    sget-boolean v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v1, :cond_133

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v1, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_133
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto :goto_108

    :cond_139
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v1

    move-object v11, v1

    move-wide v12, v6

    :goto_141
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_14f

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v3, "Stream doesn\'t support mark"

    invoke-direct {v1, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14f
    const/4 v1, 0x0

    if-nez v14, :cond_1a2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_157
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v8, -0x1

    move/from16 v18, v8

    move v8, v7

    move/from16 v19, v6

    move-wide v6, v3

    move/from16 v3, v18

    move/from16 v4, v19

    :goto_164
    if-eqz v8, :cond_26b

    add-int/lit8 v8, v17, 0x4

    add-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v2, v8}, Ljava/io/InputStream;->mark(I)V

    const/4 v8, 0x0

    :goto_16e
    move/from16 v0, v17

    if-lt v8, v0, :cond_1a7

    :cond_172
    move/from16 v0, v17

    if-ne v8, v0, :cond_1db

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1b8

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_1b8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v3, 0x1

    :goto_18c
    if-eqz v14, :cond_249

    invoke-interface {v14, v12, v13, v6, v7}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    :goto_198
    move-object/from16 v0, p0

    invoke-super {v0, v1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move v5, v3

    move-wide v3, v6

    move-wide v6, v12

    goto/16 :goto_106

    :cond_1a2
    invoke-interface {v14}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v3

    goto :goto_157

    :cond_1a7
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    aget-byte v10, v16, v8

    and-int/lit16 v10, v10, 0xff

    if-ne v9, v10, :cond_172

    add-int/lit8 v8, v8, 0x1

    goto :goto_16e

    :cond_1b4
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    :cond_1b8
    const/16 v9, 0x20

    if-eq v8, v9, :cond_1b4

    const/16 v9, 0x9

    if-eq v8, v9, :cond_1b4

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1c6

    move v3, v5

    goto :goto_18c

    :cond_1c6
    const/16 v9, 0xd

    if-ne v8, v9, :cond_1db

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_26e

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    move v3, v5

    goto :goto_18c

    :cond_1db
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    if-eqz v1, :cond_26b

    const/4 v8, -0x1

    if-eq v4, v8, :cond_26b

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1ec

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1ec
    const/4 v3, -0x1

    move v8, v3

    :goto_1ee
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    if-gez v9, :cond_207

    sget-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v3, :cond_200

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v1, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_200
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v3, 0x1

    goto :goto_18c

    :cond_207
    const/16 v4, 0xd

    if-eq v9, v4, :cond_20f

    const/16 v4, 0xa

    if-ne v9, v4, :cond_23b

    :cond_20f
    const/4 v10, 0x1

    if-eqz v14, :cond_269

    invoke-interface {v14}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v3

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    :goto_219
    const/16 v6, 0xd

    if-ne v9, v6, :cond_263

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_232

    move v8, v10

    move/from16 v18, v6

    move-wide v6, v3

    move v4, v9

    move/from16 v3, v18

    goto/16 :goto_164

    :cond_232
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    move-wide v6, v3

    move v4, v9

    move v3, v8

    move v8, v10

    goto/16 :goto_164

    :cond_23b
    const/4 v4, 0x0

    if-eqz v1, :cond_25b

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v18, v8

    move v8, v4

    move v4, v3

    move/from16 v3, v18

    goto/16 :goto_164

    :cond_249
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_252
    .catchall {:try_start_115 .. :try_end_252} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_252} :catch_74

    move-result-object v1

    goto/16 :goto_198

    :catch_255
    move-exception v2

    goto/16 :goto_81

    :catch_258
    move-exception v1

    goto/16 :goto_10b

    :cond_25b
    move/from16 v18, v8

    move v8, v4

    move v4, v3

    move/from16 v3, v18

    goto/16 :goto_164

    :cond_263
    move-wide v6, v3

    move v4, v9

    move v3, v8

    move v8, v10

    goto/16 :goto_164

    :cond_269
    move-wide v3, v6

    goto :goto_219

    :cond_26b
    move v8, v3

    move v3, v4

    goto :goto_1ee

    :cond_26e
    move v3, v5

    goto/16 :goto_18c

    :cond_271
    move-object v11, v1

    move-wide v12, v6

    goto/16 :goto_141

    :cond_275
    move-object v9, v10

    goto/16 :goto_cb

    :cond_278
    move-object v14, v1

    goto/16 :goto_3b

    :cond_27b
    move-object v2, v5

    goto/16 :goto_32
.end method

.method public removeBodyPart(I)V
    .registers 2

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .registers 3

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateHeaders()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v3, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    array-length v1, v0

    if-lez v1, :cond_4a

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_4a

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4a

    invoke-virtual {v3}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    :cond_4a
    const/4 v0, 0x0

    move v1, v0

    :goto_4c
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_81

    monitor-exit p0

    return-void

    :cond_6c
    :try_start_6c
    invoke-virtual {v3, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_7d
    .catchall {:try_start_6c .. :try_end_7d} :catchall_81

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4c

    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0
.end method

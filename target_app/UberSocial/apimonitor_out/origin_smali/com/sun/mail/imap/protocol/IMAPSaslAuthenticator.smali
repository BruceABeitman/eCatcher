.class public Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/mail/imap/protocol/SaslAuthenticator;


# instance fields
.field private debug:Z

.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private props:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/util/Properties;ZLjava/io/PrintStream;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    iput-boolean p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    iput-object p5, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    return-object v0
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-enter v12

    :try_start_5
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: Mechanisms:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_1c
    move-object/from16 v0, p1

    array-length v5, v0

    if-lt v4, v5, :cond_5d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    :cond_28
    new-instance v9, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;-><init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_230

    :try_start_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-static/range {v4 .. v9}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_230
    .catch Ljavax/security/sasl/SaslException; {:try_start_35 .. :try_end_48} :catch_78

    move-result-object v7

    if-nez v7, :cond_98

    :try_start_4b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_5a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: No SASL support"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5a
    monitor-exit v12

    const/4 v4, 0x0

    :goto_5c
    return v4

    :cond_5d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :catch_78
    move-exception v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v5, :cond_95

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IMAP SASL DEBUG: Failed to create SASL client: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_95
    monitor-exit v12

    const/4 v4, 0x0

    goto :goto_5c

    :cond_98
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_b8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IMAP SASL DEBUG: SASL client "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_4b .. :try_end_b8} :catchall_230

    :cond_b8
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTHENTICATE "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_d3
    .catchall {:try_start_b8 .. :try_end_d3} :catchall_230
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_d3} :catch_128

    move-result-object v8

    :try_start_d4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getIMAPOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x2

    new-array v15, v4, [B

    fill-array-data v15, :array_278

    invoke-interface {v7}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XGWTRUSTEDAPP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move v5, v10

    move-object v6, v11

    :goto_f3
    if-eqz v5, :cond_149

    invoke-interface {v7}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_256

    const-string v4, "javax.security.sasl.qop"

    invoke-interface {v7, v4}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_256

    const-string v5, "auth-int"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_115

    const-string v5, "auth-conf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_256

    :cond_115
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_124

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: Mechanism requires integrity or confidentiality"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_124
    monitor-exit v12

    const/4 v4, 0x0

    goto/16 :goto_5c

    :catch_128
    move-exception v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v5, :cond_145

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IMAP SASL DEBUG: AUTHENTICATE Exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_145
    monitor-exit v12
    :try_end_146
    .catchall {:try_start_d4 .. :try_end_146} :catchall_230

    const/4 v4, 0x0

    goto/16 :goto_5c

    :cond_149
    :try_start_149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v4

    if-eqz v4, :cond_233

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-interface {v7}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v10

    if-nez v10, :cond_1a8

    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/mail/iap/ByteArray;->getNewBytes()[B

    move-result-object v4

    array-length v10, v4

    if-lez v10, :cond_16f

    invoke-static {v4}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v4

    :cond_16f
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v10, :cond_1a4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v17, "IMAP SASL DEBUG: challenge: "

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v17, " :"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a4
    invoke-interface {v7, v4}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v4

    :cond_1a8
    if-nez v4, :cond_1d7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_1b9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v10, "IMAP SASL DEBUG: no response"

    invoke-virtual {v4, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b9
    invoke-virtual {v9, v15}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1c2
    .catchall {:try_start_149 .. :try_end_1c2} :catchall_230
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_1c2} :catch_1c4

    goto/16 :goto_f3

    :catch_1c4
    move-exception v4

    :try_start_1c5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v5, :cond_1ce

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1ce
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_1d1
    .catchall {:try_start_1c5 .. :try_end_1d1} :catchall_230

    move-result-object v5

    const/4 v4, 0x1

    move-object v6, v5

    move v5, v4

    goto/16 :goto_f3

    :cond_1d7
    :try_start_1d7
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v10, :cond_20c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v17, "IMAP SASL DEBUG: response: "

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v17, " :"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_20c
    invoke-static {v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v4

    if-eqz v16, :cond_21b

    const-string v10, "XGWTRUSTEDAPP "

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_21b
    invoke-virtual {v14, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_22e
    .catchall {:try_start_1d7 .. :try_end_22e} :catchall_230
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_22e} :catch_1c4

    goto/16 :goto_f3

    :catchall_230
    move-exception v4

    :try_start_231
    monitor-exit v12
    :try_end_232
    .catchall {:try_start_231 .. :try_end_232} :catchall_230

    throw v4

    :cond_233
    :try_start_233
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_247

    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_247

    const/4 v4, 0x1

    move v5, v4

    goto/16 :goto_f3

    :cond_247
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v4

    if-eqz v4, :cond_251

    const/4 v4, 0x1

    move v5, v4

    goto/16 :goto_f3

    :cond_251
    invoke-virtual {v13, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_254
    .catchall {:try_start_233 .. :try_end_254} :catchall_230
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_254} :catch_1c4

    goto/16 :goto_f3

    :cond_256
    :try_start_256
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/iap/Response;

    invoke-virtual {v13, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    monitor-exit v12
    :try_end_275
    .catchall {:try_start_256 .. :try_end_275} :catchall_230

    const/4 v4, 0x1

    goto/16 :goto_5c

    :array_278
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

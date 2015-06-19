.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;
.source "SourceFile"


# instance fields
.field private transportListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .registers 2

    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 2

    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    invoke-static {p0, p1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 16

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v1, "No recipient addresses"

    invoke-direct {v0, v1}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move v2, v3

    :goto_25
    array-length v0, p1

    if-lt v2, v0, :cond_36

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_6b

    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v1, "No recipient addresses"

    invoke-direct {v0, v1}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    aget-object v6, p1, v2

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_53
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    :cond_57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    aget-object v6, p1, v2

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v6, p1, v2

    invoke-virtual {v6}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_6b
    iget-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_84

    iget-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    move-object v6, v0

    :goto_72
    if-ne v2, v5, :cond_93

    aget-object v0, p1, v3

    invoke-virtual {v6, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v1

    :try_start_7a
    invoke-virtual {v1}, Ljavax/mail/Transport;->connect()V

    invoke-virtual {v1, p0, p1}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_8e

    invoke-virtual {v1}, Ljavax/mail/Transport;->close()V

    :cond_83
    return-void

    :cond_84
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, v1}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    move-object v6, v0

    goto :goto_72

    :catchall_8e
    move-exception v0

    invoke-virtual {v1}, Ljavax/mail/Transport;->close()V

    throw v0

    :cond_93
    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v10

    move v4, v3

    move-object v2, v1

    :cond_99
    :goto_99
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_ea

    if-nez v4, :cond_ad

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_83

    :cond_ad
    move-object v0, v1

    check-cast v0, [Ljavax/mail/Address;

    move-object v4, v1

    check-cast v4, [Ljavax/mail/Address;

    check-cast v1, [Ljavax/mail/Address;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_171

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [Ljavax/mail/Address;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_c4
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_d3

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v4, v0, [Ljavax/mail/Address;

    invoke-virtual {v9, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :cond_d3
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_16e

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v5, v0, [Ljavax/mail/Address;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_e2
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v1, "Sending failed"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v0

    :cond_ea
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v11, v11, [Ljavax/mail/Address;

    invoke-virtual {v0, v11}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    aget-object v0, v11, v3

    invoke-virtual {v6, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v12

    if-nez v12, :cond_10d

    move v0, v3

    :goto_102
    array-length v12, v11

    if-ge v0, v12, :cond_99

    aget-object v12, v11, v0

    invoke-virtual {v7, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    :cond_10d
    :try_start_10d
    invoke-virtual {v12}, Ljavax/mail/Transport;->connect()V

    invoke-virtual {v12, p0, v11}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_113
    .catchall {:try_start_10d .. :try_end_113} :catchall_143
    .catch Ljavax/mail/SendFailedException; {:try_start_10d .. :try_end_113} :catch_117
    .catch Ljavax/mail/MessagingException; {:try_start_10d .. :try_end_113} :catch_160

    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V

    goto :goto_99

    :catch_117
    move-exception v0

    if-nez v2, :cond_13f

    move-object v2, v0

    :goto_11b
    :try_start_11b
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v11

    if-eqz v11, :cond_125

    move v4, v3

    :goto_122
    array-length v13, v11

    if-lt v4, v13, :cond_148

    :cond_125
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v11

    if-eqz v11, :cond_12f

    move v4, v3

    :goto_12c
    array-length v13, v11

    if-lt v4, v13, :cond_150

    :cond_12f
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v4

    if-eqz v4, :cond_139

    move v0, v3

    :goto_136
    array-length v11, v4
    :try_end_137
    .catchall {:try_start_11b .. :try_end_137} :catchall_143

    if-lt v0, v11, :cond_158

    :cond_139
    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V

    move v4, v5

    goto/16 :goto_99

    :cond_13f
    :try_start_13f
    invoke-virtual {v2, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_143

    goto :goto_11b

    :catchall_143
    move-exception v0

    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V

    throw v0

    :cond_148
    :try_start_148
    aget-object v13, v11, v4

    invoke-virtual {v7, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_122

    :cond_150
    aget-object v13, v11, v4

    invoke-virtual {v8, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12c

    :cond_158
    aget-object v11, v4, v0

    invoke-virtual {v9, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_15d
    .catchall {:try_start_148 .. :try_end_15d} :catchall_143

    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    :catch_160
    move-exception v0

    if-nez v2, :cond_16a

    move-object v2, v0

    :goto_164
    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V

    move v4, v5

    goto/16 :goto_99

    :cond_16a
    :try_start_16a
    invoke-virtual {v2, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_143

    goto :goto_164

    :cond_16e
    move-object v5, v1

    goto/16 :goto_e2

    :cond_171
    move-object v3, v0

    goto/16 :goto_c4
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .registers 13

    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljavax/mail/event/TransportEvent;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    iget-object v1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_4
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
.end method

.class public Lorg/apache/log4j/g/b;
.super Lorg/apache/log4j/b;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Z

.field r:Ljavax/jms/TopicConnection;

.field s:Ljavax/jms/TopicSession;

.field t:Ljavax/jms/TopicPublisher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-interface {p1, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/g/b;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_44

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Closing appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/g/b;->h:Z
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_44

    :try_start_28
    iget-object v0, p0, Lorg/apache/log4j/g/b;->s:Ljavax/jms/TopicSession;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/apache/log4j/g/b;->s:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->close()V

    :cond_31
    iget-object v0, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;

    invoke-interface {v0}, Ljavax/jms/TopicConnection;->close()V
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_44
    .catch Ljavax/jms/JMSException; {:try_start_28 .. :try_end_3a} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_3a} :catch_67

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    :try_start_3b
    iput-object v0, p0, Lorg/apache/log4j/g/b;->t:Ljavax/jms/TopicPublisher;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/g/b;->s:Ljavax/jms/TopicSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_44

    goto :goto_5

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_47
    move-exception v0

    :try_start_48
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    :catch_67
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_86
    .catchall {:try_start_48 .. :try_end_86} :catchall_44

    goto :goto_3a
.end method

.method public a(Lorg/apache/log4j/k/k;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/log4j/g/b;->n()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Lorg/apache/log4j/g/b;->s:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->createObjectMessage()Ljavax/jms/ObjectMessage;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/log4j/g/b;->q:Z

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;

    :cond_15
    invoke-interface {v0, p1}, Ljavax/jms/ObjectMessage;->setObject(Ljava/io/Serializable;)V

    iget-object v1, p0, Lorg/apache/log4j/g/b;->t:Ljavax/jms/TopicPublisher;

    invoke-interface {v1, v0}, Ljavax/jms/TopicPublisher;->publish(Ljavax/jms/Message;)V
    :try_end_1d
    .catch Ljavax/jms/JMSException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1d} :catch_40

    goto :goto_7

    :catch_1e
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/g/b;->e:Lorg/apache/log4j/k/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not publish message in JMSAppender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_7

    :catch_40
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/g/b;->e:Lorg/apache/log4j/k/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not publish message in JMSAppender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_7
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/g/b;->q:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->n:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->m:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->j:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->l:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->k:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->i:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->a:Ljava/lang/String;

    return-void
.end method

.method public i()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    const-string v0, "Getting initial context."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/g/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_123

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v0, "java.naming.factory.initial"

    iget-object v2, p0, Lorg/apache/log4j/g/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/log4j/g/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_d1

    const-string v0, "java.naming.provider.url"

    iget-object v2, p0, Lorg/apache/log4j/g/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    iget-object v0, p0, Lorg/apache/log4j/g/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const-string v0, "java.naming.factory.url.pkgs"

    iget-object v2, p0, Lorg/apache/log4j/g/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget-object v0, p0, Lorg/apache/log4j/g/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_42

    const-string v0, "java.naming.security.principal"

    iget-object v2, p0, Lorg/apache/log4j/g/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/log4j/g/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_fa

    const-string v0, "java.naming.security.credentials"

    iget-object v2, p0, Lorg/apache/log4j/g/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    :goto_42
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0, v1}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    move-object v1, v0

    :goto_48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Looking up ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/g/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/g/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/g/b;->a(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jms/TopicConnectionFactory;

    const-string v2, "About to create TopicConnection."

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/log4j/g/b;->o:Ljava/lang/String;

    if-eqz v2, :cond_12b

    iget-object v2, p0, Lorg/apache/log4j/g/b;->o:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/log4j/g/b;->p:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;

    :goto_81
    const-string v0, "Creating TopicSession, non-transactional, in AUTO_ACKNOWLEDGE mode."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/b;->s:Ljavax/jms/TopicSession;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Looking up topic name ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/g/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/g/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/g/b;->a(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jms/Topic;

    const-string v2, "Creating TopicPublisher."

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/log4j/g/b;->s:Ljavax/jms/TopicSession;

    invoke-interface {v2, v0}, Ljavax/jms/TopicSession;->createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/b;->t:Ljavax/jms/TopicPublisher;

    const-string v0, "Starting TopicConnection."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;

    invoke-interface {v0}, Ljavax/jms/TopicConnection;->start()V

    invoke-interface {v1}, Ljavax/naming/Context;->close()V

    :goto_d0
    return-void

    :cond_d1
    const-string v0, "You have set InitialContextFactoryName option but not the ProviderURL. This is likely to cause problems."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
    :try_end_d6
    .catch Ljavax/jms/JMSException; {:try_start_1 .. :try_end_d6} :catch_d8
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_d6} :catch_101
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_d6} :catch_133

    goto/16 :goto_21

    :catch_d8
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/g/b;->e:Lorg/apache/log4j/k/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while activating options for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_d0

    :cond_fa
    :try_start_fa
    const-string v0, "You have set SecurityPrincipalName option but not the SecurityCredentials. This is likely to cause problems."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
    :try_end_ff
    .catch Ljavax/jms/JMSException; {:try_start_fa .. :try_end_ff} :catch_d8
    .catch Ljavax/naming/NamingException; {:try_start_fa .. :try_end_ff} :catch_101
    .catch Ljava/lang/RuntimeException; {:try_start_fa .. :try_end_ff} :catch_133

    goto/16 :goto_42

    :catch_101
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/g/b;->e:Lorg/apache/log4j/k/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while activating options for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_d0

    :cond_123
    :try_start_123
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    move-object v1, v0

    goto/16 :goto_48

    :cond_12b
    invoke-interface {v0}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection()Ljavax/jms/TopicConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;
    :try_end_131
    .catch Ljavax/jms/JMSException; {:try_start_123 .. :try_end_131} :catch_d8
    .catch Ljavax/naming/NamingException; {:try_start_123 .. :try_end_131} :catch_101
    .catch Ljava/lang/RuntimeException; {:try_start_123 .. :try_end_131} :catch_133

    goto/16 :goto_81

    :catch_133
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/g/b;->e:Lorg/apache/log4j/k/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while activating options for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_d0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->o:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/g/b;->p:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/g/b;->q:Z

    return v0
.end method

.method protected n()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;

    if-nez v1, :cond_2f

    const-string v0, "No TopicConnection"

    :cond_7
    :goto_7
    if-eqz v0, :cond_3d

    iget-object v1, p0, Lorg/apache/log4j/g/b;->e:Lorg/apache/log4j/k/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " for JMSAppender named ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/g/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    iget-object v1, p0, Lorg/apache/log4j/g/b;->s:Ljavax/jms/TopicSession;

    if-nez v1, :cond_36

    const-string v0, "No TopicSession"

    goto :goto_7

    :cond_36
    iget-object v1, p0, Lorg/apache/log4j/g/b;->t:Ljavax/jms/TopicPublisher;

    if-nez v1, :cond_7

    const-string v0, "No TopicPublisher"

    goto :goto_7

    :cond_3d
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected v()Ljavax/jms/TopicConnection;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->r:Ljavax/jms/TopicConnection;

    return-object v0
.end method

.method protected w()Ljavax/jms/TopicSession;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->s:Ljavax/jms/TopicSession;

    return-object v0
.end method

.method protected x()Ljavax/jms/TopicPublisher;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/g/b;->t:Ljavax/jms/TopicPublisher;

    return-object v0
.end method

.class public Lorg/apache/log4j/g/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/jms/MessageListener;
.field static a:Lorg/apache/log4j/aa;
.field static b:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/g/c;->b:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.g.c"
invoke-static {v0}, Lorg/apache/log4j/g/c;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/c;->b:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/c;->a:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/g/c;->b:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
new-instance v1, Ljavax/naming/InitialContext;
invoke-direct {v1}, Ljavax/naming/InitialContext;-><init>()V
invoke-static {v1, p1}, Lorg/apache/log4j/g/c;->a(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/jms/TopicConnectionFactory;
invoke-interface {v0, p3, p4}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;
move-result-object v0
invoke-interface {v0}, Ljavax/jms/TopicConnection;->start()V
const/4 v2, 0x0
const/4 v3, 0x1
invoke-interface {v0, v2, v3}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;
move-result-object v2
invoke-interface {v1, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/jms/Topic;
invoke-interface {v2, v0}, Ljavax/jms/TopicSession;->createSubscriber(Ljavax/jms/Topic;)Ljavax/jms/TopicSubscriber;
move-result-object v0
invoke-interface {v0, p0}, Ljavax/jms/TopicSubscriber;->setMessageListener(Ljavax/jms/MessageListener;)V
:goto_28
:try_end_28
.catch Ljavax/jms/JMSException; {:try_start_3 .. :try_end_28} :catch_29
.catch Ljavax/naming/NamingException; {:try_start_3 .. :try_end_28} :catch_32
.catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_28} :catch_3b
return-void
:catch_29
move-exception v0
sget-object v1, Lorg/apache/log4j/g/c;->a:Lorg/apache/log4j/aa;
const-string v2, "Could not read JMS message."
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_28
:catch_32
move-exception v0
sget-object v1, Lorg/apache/log4j/g/c;->a:Lorg/apache/log4j/aa;
const-string v2, "Could not read JMS message."
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_28
:catch_3b
move-exception v0
sget-object v1, Lorg/apache/log4j/g/c;->a:Lorg/apache/log4j/aa;
const-string v2, "Could not read JMS message."
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_28
.end method
.method protected static a(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
.registers 6
:try_start_0
invoke-interface {p0, p1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
:try_end_3
.catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
sget-object v1, Lorg/apache/log4j/g/c;->a:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not find name ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;)V
throw v0
.end method
.method static a(Ljava/lang/String;)V
.registers 4
sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Usage: java "
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
sget-object v0, Lorg/apache/log4j/g/c;->b:Ljava/lang/Class;
if-nez v0, :cond_38
const-string v0, "org.apache.log4j.g.c"
invoke-static {v0}, Lorg/apache/log4j/g/c;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/c;->b:Ljava/lang/Class;
:goto_1e
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, " TopicConnectionFactoryBindingName TopicBindingName username password configFile"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/System;->exit(I)V
return-void
:cond_38
sget-object v0, Lorg/apache/log4j/g/c;->b:Ljava/lang/Class;
goto :goto_1e
.end method
.method public static a([Ljava/lang/String;)V
.registers 7
array-length v0, p0
const/4 v1, 0x5
if-eq v0, v1, :cond_9
const-string v0, "Wrong number of arguments."
invoke-static {v0}, Lorg/apache/log4j/g/c;->a(Ljava/lang/String;)V
:cond_9
const/4 v0, 0x0
aget-object v0, p0, v0
const/4 v1, 0x1
aget-object v1, p0, v1
const/4 v2, 0x2
aget-object v2, p0, v2
const/4 v3, 0x3
aget-object v3, p0, v3
const/4 v4, 0x4
aget-object v4, p0, v4
const-string v5, ".xml"
invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_4f
invoke-static {v4}, Lorg/apache/log4j/m/a;->b(Ljava/lang/String;)V
:goto_23
new-instance v4, Lorg/apache/log4j/g/c;
invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/log4j/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/io/BufferedReader;
new-instance v1, Ljava/io/InputStreamReader;
sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;
invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "Type \"exit\" to quit JMSSink."
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_3b
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v1
const-string v2, "exit"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3b
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "Exiting. Kill the application if it does not exit due to daemon threads."
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
return-void
:cond_4f
invoke-static {v4}, Lorg/apache/log4j/ah;->a(Ljava/lang/String;)V
goto :goto_23
.end method
.method static b(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public a(Ljavax/jms/Message;)V
.registers 5
:try_start_0
instance-of v0, p1, Ljavax/jms/ObjectMessage;
if-eqz v0, :cond_18
check-cast p1, Ljavax/jms/ObjectMessage;
invoke-interface {p1}, Ljavax/jms/ObjectMessage;->getObject()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lorg/apache/log4j/k/k;
invoke-virtual {v0}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v1
invoke-virtual {v1, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V
:goto_17
return-void
:cond_18
sget-object v0, Lorg/apache/log4j/g/c;->a:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Received message is of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-interface {p1}, Ljavax/jms/Message;->getJMSType()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, ", was expecting ObjectMessage."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V
:try_end_3a
.catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_3a} :catch_3b
goto :goto_17
:catch_3b
move-exception v0
sget-object v1, Lorg/apache/log4j/g/c;->a:Lorg/apache/log4j/aa;
const-string v2, "Exception thrown while processing incoming message."
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_17
.end method
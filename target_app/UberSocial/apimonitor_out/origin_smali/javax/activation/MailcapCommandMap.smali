.class public Ljavax/activation/MailcapCommandMap;
.super Ljavax/activation/CommandMap;
.source "SourceFile"


# static fields
.field private static final PROG:I

.field private static defDB:Lcom/sun/activation/registries/MailcapFile;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MailcapFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljavax/activation/CommandMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MailcapCommandMap: load HOME"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :try_start_12
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mailcap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_3c} :catch_b5

    :cond_3c
    :goto_3c
    const-string v1, "MailcapCommandMap: load SYS"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :try_start_41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mailcap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v1

    if-eqz v1, :cond_75

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_75} :catch_b3

    :cond_75
    :goto_75
    const-string v1, "MailcapCommandMap: load JAR"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    const-string v1, "mailcap"

    invoke-direct {p0, v0, v1}, Ljavax/activation/MailcapCommandMap;->loadAllResources(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "MailcapCommandMap: load DEF"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    const-class v1, Ljavax/activation/MailcapCommandMap;

    monitor-enter v1

    :try_start_87
    sget-object v2, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    if-nez v2, :cond_93

    const-string v2, "mailcap.default"

    invoke-direct {p0, v2}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v2

    sput-object v2, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    :cond_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_87 .. :try_end_94} :catchall_b0

    sget-object v1, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    if-eqz v1, :cond_9d

    sget-object v1, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    return-void

    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v0

    :catch_b3
    move-exception v1

    goto :goto_75

    :catch_b5
    move-exception v1

    goto :goto_3c
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    const-string v0, "MailcapCommandMap: load PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    if-nez v0, :cond_19

    :try_start_f
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailcapCommandMap: load PROG from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    if-nez v0, :cond_2b

    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    new-instance v1, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v2

    :cond_2b
    return-void
.end method

.method private appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .registers 8

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, v0, v1}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method private appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Ljavax/activation/MailcapCommandMap;->checkForVerb(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljavax/activation/CommandInfo;

    invoke-direct {v3, v0, v1}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private checkForVerb(Ljava/util/List;Ljava/lang/String;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/CommandInfo;

    invoke-virtual {v0}, Ljavax/activation/CommandInfo;->getCommandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_b
.end method

.method private getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .registers 5

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "    got content-handler"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_23
    :try_start_23
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_30} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_30} :catch_5f
    .catch Ljava/lang/InstantiationException; {:try_start_23 .. :try_end_30} :catch_79

    move-result-object v0

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_34} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_34} :catch_5f
    .catch Ljava/lang/InstantiationException; {:try_start_31 .. :try_end_34} :catch_79

    move-result-object v0

    :goto_35
    if-eqz v0, :cond_5d

    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/DataContentHandler;

    :goto_3d
    return-object v0

    :catch_3e
    move-exception v0

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_42} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_42} :catch_5f
    .catch Ljava/lang/InstantiationException; {:try_start_37 .. :try_end_42} :catch_79

    move-result-object v0

    goto :goto_35

    :catch_44
    move-exception v0

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t load DCH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    const/4 v0, 0x0

    goto :goto_3d

    :catch_5f
    move-exception v0

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t load DCH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    :catch_79
    move-exception v0

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t load DCH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d
.end method

.method private loadAllResources(Ljava/util/List;Ljava/lang/String;)V
    .registers 12

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_f
    if-eqz v0, :cond_4d

    invoke-static {v0, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    move-object v4, v0

    :goto_16
    if-eqz v4, :cond_27

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "MailcapCommandMap: getResources"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_23
    move v3, v2

    :goto_24
    array-length v0, v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_10b

    if-lt v3, v0, :cond_53

    :cond_27
    :goto_27
    if-nez v2, :cond_4c

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "MailcapCommandMap: !anyLoaded"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    return-void

    :cond_4d
    :try_start_4d
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    move-object v4, v0

    goto :goto_16

    :cond_53
    aget-object v5, v4, v3

    const/4 v1, 0x0

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "MailcapCommandMap: URL "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6e} :catch_10b

    :cond_6e
    :try_start_6e
    invoke-static {v5}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_104
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_ba
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_71} :catch_df

    move-result-object v1

    if-eqz v1, :cond_a0

    :try_start_74
    new-instance v0, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_142

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "MailcapCommandMap: successfully loaded mailcap file from URL: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_74 .. :try_end_95} :catchall_104
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_95} :catch_13b
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_95} :catch_135

    move v0, v2

    :goto_96
    if-eqz v1, :cond_9b

    :try_start_98
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_128
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_12b

    :cond_9b
    :goto_9b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_24

    :cond_a0
    :try_start_a0
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_142

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "MailcapCommandMap: not loading mailcap file from URL: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_a0 .. :try_end_b8} :catchall_104
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b8} :catch_13b
    .catch Ljava/lang/SecurityException; {:try_start_a0 .. :try_end_b8} :catch_135

    move v0, v2

    goto :goto_96

    :catch_ba
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v8

    :goto_bf
    :try_start_bf
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_d7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MailcapCommandMap: can\'t load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d7
    .catchall {:try_start_bf .. :try_end_d7} :catchall_12f

    :cond_d7
    if-eqz v2, :cond_9b

    :try_start_d9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_12b

    goto :goto_9b

    :catch_dd
    move-exception v1

    goto :goto_9b

    :catch_df
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v8

    :goto_e4
    :try_start_e4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_fc

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MailcapCommandMap: can\'t load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fc
    .catchall {:try_start_e4 .. :try_end_fc} :catchall_12f

    :cond_fc
    if-eqz v2, :cond_9b

    :try_start_fe
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_102
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_101} :catch_12b

    goto :goto_9b

    :catch_102
    move-exception v1

    goto :goto_9b

    :catchall_104
    move-exception v0

    :goto_105
    if-eqz v1, :cond_10a

    :try_start_107
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_126
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10a} :catch_10b

    :cond_10a
    :goto_10a
    :try_start_10a
    throw v0
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10b} :catch_10b

    :catch_10b
    move-exception v0

    :goto_10c
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MailcapCommandMap: can\'t load "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    :catch_126
    move-exception v1

    goto :goto_10a

    :catch_128
    move-exception v1

    goto/16 :goto_9b

    :catch_12b
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_10c

    :catchall_12f
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v8

    goto :goto_105

    :catch_135
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_e4

    :catch_13b
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_bf

    :cond_142
    move v0, v2

    goto/16 :goto_96
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v0, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_7

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_91
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_6f

    move-result-object v2

    if-eqz v2, :cond_2e

    :try_start_b
    new-instance v0, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v0, v2}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_28

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MailcapCommandMap: successfully loaded mailcap file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_a3
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_28} :catch_a1

    :cond_28
    if-eqz v2, :cond_2d

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_99

    :cond_2d
    :goto_2d
    return-object v0

    :cond_2e
    :try_start_2e
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MailcapCommandMap: not loading mailcap file: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_46} :catch_a3
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_46} :catch_a1

    :cond_46
    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_9d

    :cond_4b
    :goto_4b
    move-object v0, v1

    goto :goto_2d

    :catch_4d
    move-exception v0

    move-object v2, v1

    :goto_4f
    :try_start_4f
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MailcapCommandMap: can\'t load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_9f

    :cond_67
    if-eqz v2, :cond_4b

    :try_start_69
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_4b

    :catch_6d
    move-exception v0

    goto :goto_4b

    :catch_6f
    move-exception v0

    move-object v2, v1

    :goto_71
    :try_start_71
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_89

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MailcapCommandMap: can\'t load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_9f

    :cond_89
    if-eqz v2, :cond_4b

    :try_start_8b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_4b

    :catch_8f
    move-exception v0

    goto :goto_4b

    :catchall_91
    move-exception v0

    move-object v2, v1

    :goto_93
    if-eqz v2, :cond_98

    :try_start_95
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9b

    :cond_98
    :goto_98
    throw v0

    :catch_99
    move-exception v1

    goto :goto_2d

    :catch_9b
    move-exception v1

    goto :goto_98

    :catch_9d
    move-exception v0

    goto :goto_4b

    :catchall_9f
    move-exception v0

    goto :goto_93

    :catch_a1
    move-exception v0

    goto :goto_71

    :catch_a3
    move-exception v0

    goto :goto_4f
.end method


# virtual methods
.method public declared-synchronized addMailcap(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "MailcapCommandMap: add to PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_17

    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MailcapFile;-><init>()V

    aput-object v2, v0, v1

    :cond_17
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->appendToMailcap(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .registers 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MailcapCommandMap: createDataContentHandler for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_1a
    if-eqz p1, :cond_22

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_22
    move v2, v1

    :goto_23
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v0, v0

    if-lt v2, v0, :cond_30

    :goto_28
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v0, v0
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_b9

    if-lt v1, v0, :cond_74

    const/4 v0, 0x0

    :goto_2e
    monitor-exit p0

    return-object v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    if-nez v0, :cond_3a

    :cond_36
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    :cond_3a
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  search DB #"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_52
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v3, "content-handler"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_36

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v0

    if-eqz v0, :cond_36

    goto :goto_2e

    :cond_74
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    if-nez v0, :cond_7e

    :cond_7a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_7e
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_96

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  search fallback DB #"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_96
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7a

    const-string v2, "content-handler"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7a

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    :try_end_b4
    .catchall {:try_start_30 .. :try_end_b4} :catchall_b9

    move-result-object v0

    if-eqz v0, :cond_7a

    goto/16 :goto_2e

    :catchall_b9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_f

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_f
    move v1, v0

    :goto_10
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v3, v3

    if-lt v1, v3, :cond_28

    :goto_15
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v1, v1

    if-lt v0, v1, :cond_42

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/activation/CommandInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/activation/CommandInfo;
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_3f

    monitor-exit p0

    return-object v0

    :cond_28
    :try_start_28
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v3, v3, v1

    if-nez v3, :cond_31

    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_31
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-direct {p0, v3, v2}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_3f

    goto :goto_2e

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_42
    :try_start_42
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    if-nez v1, :cond_4b

    :cond_48
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_4b
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-direct {p0, v1, v2}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3f

    goto :goto_48
.end method

.method public declared-synchronized getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_a

    :try_start_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    move v2, v1

    :goto_b
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v0, v0

    if-lt v2, v0, :cond_18

    :goto_10
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v0, v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_70

    if-lt v1, v0, :cond_44

    const/4 v0, 0x0

    :goto_16
    monitor-exit p0

    return-object v0

    :cond_18
    :try_start_18
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    if-nez v0, :cond_22

    :cond_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_22
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1e

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    new-instance v1, Ljavax/activation/CommandInfo;

    invoke-direct {v1, p2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_16

    :cond_44
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    if-nez v0, :cond_4e

    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_4e
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4a

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4a

    new-instance v1, Ljavax/activation/CommandInfo;

    invoke-direct {v1, p2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_18 .. :try_end_6e} :catchall_70

    move-object v0, v1

    goto :goto_16

    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMimeTypes()[Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_8
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v0, v0

    if-lt v2, v0, :cond_1b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_43

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    if-nez v0, :cond_25

    :cond_21
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_25
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sun/activation/registries/MailcapFile;->getMimeTypes()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    move v0, v1

    :goto_30
    array-length v5, v4

    if-ge v0, v5, :cond_21

    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_1b .. :try_end_40} :catchall_43

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_f

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_f
    move v2, v1

    :goto_10
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v0, v0

    if-lt v2, v0, :cond_23

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_4b

    monitor-exit p0

    return-object v0

    :cond_23
    :try_start_23
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    if-nez v0, :cond_2d

    :cond_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_2d
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    move v0, v1

    :goto_38
    array-length v5, v4

    if-ge v0, v5, :cond_29

    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_4b

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_f

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_f
    move v1, v0

    :goto_10
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v3, v3

    if-lt v1, v3, :cond_28

    :goto_15
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v1, v1

    if-lt v0, v1, :cond_42

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/activation/CommandInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/activation/CommandInfo;
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_3f

    monitor-exit p0

    return-object v0

    :cond_28
    :try_start_28
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v3, v3, v1

    if-nez v3, :cond_31

    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_31
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-direct {p0, v3, v2}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_3f

    goto :goto_2e

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_42
    :try_start_42
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    if-nez v1, :cond_4b

    :cond_48
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_4b
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-direct {p0, v1, v2}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3f

    goto :goto_48
.end method

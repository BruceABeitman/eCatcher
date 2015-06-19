.class public final Ljavax/mail/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultSession:Ljavax/mail/Session;


# instance fields
.field private final addressMap:Ljava/util/Properties;

.field private final authTable:Ljava/util/Hashtable;

.field private final authenticator:Ljavax/mail/Authenticator;

.field private debug:Z

.field private out:Ljava/io/PrintStream;

.field private final props:Ljava/util/Properties;

.field private final providers:Ljava/util/Vector;

.field private final providersByClassName:Ljava/util/Hashtable;

.field private final providersByProtocol:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    return-void
.end method

.method private constructor <init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    iput-object p1, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    iput-object p2, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    const-string v0, "mail.debug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    :cond_40
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_49

    const-string v0, "DEBUG: JavaMail version 1.4.1"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    :cond_49
    if-eqz p2, :cond_56

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4f
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadProviders(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadAddressMap(Ljava/lang/Class;)V

    return-void

    :cond_56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4f
.end method

.method static synthetic access$0(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljavax/mail/Session;->loadProvidersFromStream(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$1(Ljavax/mail/Session;)Ljava/util/Properties;
    .registers 2

    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    return-object v0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    new-instance v0, Ljavax/mail/Session$3;

    invoke-direct {v0}, Ljavax/mail/Session$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getDefaultInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .registers 5

    const-class v1, Ljavax/mail/Session;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    if-nez v0, :cond_12

    new-instance v0, Ljavax/mail/Session;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    sput-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    :cond_e
    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3e

    monitor-exit v1

    return-object v0

    :cond_12
    :try_start_12
    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v0, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eq v0, p1, :cond_e

    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v0, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v0, :cond_36

    if-eqz p1, :cond_36

    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v0, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v0, v2, :cond_e

    :cond_36
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Access to default session denied"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .registers 3

    new-instance v0, Ljavax/mail/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .registers 3

    new-instance v0, Ljavax/mail/Session;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method private static getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    :try_start_0
    new-instance v0, Ljavax/mail/Session$4;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
    .registers 3

    new-instance v0, Ljavax/mail/Session$5;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session$5;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    return-object v0
.end method

.method private getService(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljava/lang/Object;
    .registers 10

    const/4 v2, 0x0

    if-nez p1, :cond_b

    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-nez p2, :cond_a2

    new-instance v0, Ljavax/mail/URLName;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    iget-object v1, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_28
    :try_start_28
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_68

    move-result-object v3

    if-eqz v3, :cond_36

    :try_start_2e
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_35} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_68

    move-result-object v2

    :cond_36
    :goto_36
    if-nez v2, :cond_a0

    :try_start_38
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_68

    move-result-object v1

    :goto_40
    const/4 v2, 0x2

    :try_start_41
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljavax/mail/Session;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljavax/mail/URLName;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5d} :catch_88

    move-result-object v0

    return-object v0

    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_28

    :catch_68
    move-exception v1

    :try_start_69
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_72

    move-result-object v1

    goto :goto_40

    :catch_72
    move-exception v0

    iget-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_7e
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_88
    move-exception v0

    iget-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_94

    invoke-virtual {p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_94
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_9e
    move-exception v3

    goto :goto_36

    :cond_a0
    move-object v1, v2

    goto :goto_40

    :cond_a2
    move-object v0, p2

    goto/16 :goto_1a
.end method

.method private getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;
    .registers 5

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v0

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    if-eq v0, v1, :cond_12

    :cond_a
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "invalid provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Store;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "incorrect class"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
    .registers 2

    new-instance v0, Ljavax/mail/Session$6;

    invoke-direct {v0, p0}, Ljavax/mail/Session$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    return-object v0
.end method

.method private getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .registers 5

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v0

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    if-eq v0, v1, :cond_12

    :cond_a
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "invalid provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Transport;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "incorrect class"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadAddressMap(Ljava/lang/Class;)V
    .registers 5

    new-instance v0, Ljavax/mail/Session$2;

    invoke-direct {v0, p0}, Ljavax/mail/Session$2;-><init>(Ljavax/mail/Session;)V

    const-string v1, "/META-INF/javamail.default.address.map"

    invoke-direct {p0, v1, p1, v0}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    const-string v1, "META-INF/javamail.address.map"

    invoke-direct {p0, v1, p1, v0}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    :try_start_f
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

    const-string v2, "javamail.address.map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_3d} :catch_58

    :cond_3d
    :goto_3d
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_4e

    const-string v0, "DEBUG: failed to load address map, using defaults"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    :cond_4e
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    const-string v1, "rfc822"

    const-string v2, "smtp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    return-void

    :catch_58
    move-exception v0

    iget-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: can\'t get java.home: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V
    .registers 12

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_b
    if-eqz v0, :cond_36

    invoke-static {v0, p1}, Ljavax/mail/Session;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    move-object v4, v0

    :goto_12
    if-eqz v4, :cond_18

    move v3, v2

    :goto_15
    array-length v0, v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_e5

    if-lt v3, v0, :cond_3c

    :cond_18
    :goto_18
    if-nez v2, :cond_35

    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_23

    const-string v0, "DEBUG: !anyLoaded"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    :cond_35
    return-void

    :cond_36
    :try_start_36
    invoke-static {p1}, Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    move-object v4, v0

    goto :goto_12

    :cond_3c
    aget-object v0, v4, v3

    const/4 v1, 0x0

    iget-boolean v5, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v5, :cond_55

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: URL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_55} :catch_e5

    :cond_55
    :try_start_55
    invoke-static {v0}, Ljavax/mail/Session;->openStream(Ljava/net/URL;)Ljava/io/InputStream;
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_de
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_98
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_58} :catch_bb

    move-result-object v1

    if-eqz v1, :cond_80

    :try_start_5b
    invoke-interface {p3, v1}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    const/4 v2, 0x1

    iget-boolean v5, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v5, :cond_119

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: successfully loaded resource: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_de
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_75} :catch_113
    .catch Ljava/lang/SecurityException; {:try_start_5b .. :try_end_75} :catch_10d

    move v0, v2

    :goto_76
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_100
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_103

    :cond_7b
    :goto_7b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_15

    :cond_80
    :try_start_80
    iget-boolean v5, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v5, :cond_119

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: not loading resource: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_80 .. :try_end_96} :catchall_de
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_96} :catch_113
    .catch Ljava/lang/SecurityException; {:try_start_80 .. :try_end_96} :catch_10d

    move v0, v2

    goto :goto_76

    :catch_98
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v7

    :goto_9d
    :try_start_9d
    iget-boolean v5, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v5, :cond_b3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_9d .. :try_end_b3} :catchall_107

    :cond_b3
    if-eqz v2, :cond_7b

    :try_start_b5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_103

    goto :goto_7b

    :catch_b9
    move-exception v1

    goto :goto_7b

    :catch_bb
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v7

    :goto_c0
    :try_start_c0
    iget-boolean v5, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v5, :cond_d6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_c0 .. :try_end_d6} :catchall_107

    :cond_d6
    if-eqz v2, :cond_7b

    :try_start_d8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dc
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_103

    goto :goto_7b

    :catch_dc
    move-exception v1

    goto :goto_7b

    :catchall_de
    move-exception v0

    :goto_df
    if-eqz v1, :cond_e4

    :try_start_e1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_e5

    :cond_e4
    :goto_e4
    :try_start_e4
    throw v0
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e5} :catch_e5

    :catch_e5
    move-exception v0

    :goto_e6
    iget-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    goto/16 :goto_18

    :catch_fe
    move-exception v1

    goto :goto_e4

    :catch_100
    move-exception v1

    goto/16 :goto_7b

    :catch_103
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_e6

    :catchall_107
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v7

    goto :goto_df

    :catch_10d
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_c0

    :catch_113
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_9d

    :cond_119
    move v0, v2

    goto/16 :goto_76
.end method

.method private loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_8e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_2a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_5c

    :try_start_b
    invoke-interface {p2, v1}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: successfully loaded file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_9a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_24} :catch_9e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_24} :catch_9c

    :cond_24
    if-eqz v1, :cond_29

    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_98

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    move-object v1, v2

    :goto_2c
    :try_start_2c
    iget-boolean v2, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v2, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: not loading file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_9a

    :cond_54
    if-eqz v1, :cond_29

    :try_start_56
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_29

    :catch_5a
    move-exception v0

    goto :goto_29

    :catch_5c
    move-exception v0

    move-object v1, v2

    :goto_5e
    :try_start_5e
    iget-boolean v2, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v2, :cond_86

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: not loading file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_5e .. :try_end_86} :catchall_9a

    :cond_86
    if-eqz v1, :cond_29

    :try_start_88
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_29

    :catch_8c
    move-exception v0

    goto :goto_29

    :catchall_8e
    move-exception v0

    move-object v1, v2

    :goto_90
    if-eqz v1, :cond_95

    :try_start_92
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    :cond_95
    :goto_95
    throw v0

    :catch_96
    move-exception v1

    goto :goto_95

    :catch_98
    move-exception v0

    goto :goto_29

    :catchall_9a
    move-exception v0

    goto :goto_90

    :catch_9c
    move-exception v0

    goto :goto_5e

    :catch_9e
    move-exception v0

    goto :goto_2c
.end method

.method private loadProviders(Ljava/lang/Class;)V
    .registers 8

    new-instance v1, Ljavax/mail/Session$1;

    invoke-direct {v1, p0}, Ljavax/mail/Session$1;-><init>(Ljavax/mail/Session;)V

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "javamail.providers"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_33} :catch_f4

    :cond_33
    :goto_33
    const-string v0, "META-INF/javamail.providers"

    invoke-direct {p0, v0, p1, v1}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    const-string v0, "/META-INF/javamail.default.providers"

    invoke-direct {p0, v0, p1, v1}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_ba

    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_4e

    const-string v0, "DEBUG: failed to load any providers, using defaults"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    :cond_4e
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v2, "imap"

    const-string v3, "com.sun.mail.imap.IMAPStore"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v2, "imaps"

    const-string v3, "com.sun.mail.imap.IMAPSSLStore"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v2, "pop3"

    const-string v3, "com.sun.mail.pop3.POP3Store"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v2, "pop3s"

    const-string v3, "com.sun.mail.pop3.POP3SSLStore"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    const-string v2, "smtp"

    const-string v3, "com.sun.mail.smtp.SMTPTransport"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    const-string v2, "smtps"

    const-string v3, "com.sun.mail.smtp.SMTPSSLTransport"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    :cond_ba
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_f3

    const-string v0, "DEBUG: Tables of loaded providers"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: Providers Listed By Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: Providers Listed By Protocol: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    :cond_f3
    return-void

    :catch_f4
    move-exception v0

    iget-boolean v2, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: can\'t get java.home: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method private loadProvidersFromStream(Ljava/io/InputStream;)V
    .registers 14

    const/4 v6, 0x0

    if-eqz p1, :cond_e

    new-instance v7, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v7, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_8
    :goto_8
    invoke-virtual {v7}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v8, Ljava/util/StringTokenizer;

    const-string v1, ";"

    invoke-direct {v8, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    move-object v4, v6

    move-object v3, v6

    move-object v2, v6

    move-object v1, v6

    :cond_23
    :goto_23
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-nez v9, :cond_52

    if-eqz v1, :cond_3b

    if-eqz v2, :cond_3b

    if-eqz v3, :cond_3b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_c2

    :cond_3b
    iget-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: Bad provider entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    goto :goto_8

    :cond_52
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "protocol="

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6f

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_6f
    const-string v11, "type="

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_93

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "store"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_88

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    goto :goto_23

    :cond_88
    const-string v10, "transport"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    goto :goto_23

    :cond_93
    const-string v11, "class="

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a2

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    :cond_a2
    const-string v11, "vendor="

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b2

    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_23

    :cond_b2
    const-string v11, "version="

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_23

    :cond_c2
    new-instance v0, Ljavax/mail/Provider;

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    goto/16 :goto_8
.end method

.method private loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p2, p1}, Ljavax/mail/Session;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {p3, v1}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: successfully loaded resource: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_20} :catch_5c

    :cond_20
    :goto_20
    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_84

    :cond_25
    :goto_25
    return-void

    :cond_26
    :try_start_26
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: not loading resource: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_3c} :catch_5c

    goto :goto_20

    :catch_3d
    move-exception v0

    :try_start_3e
    iget-boolean v2, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v2, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_7b

    :cond_54
    if-eqz v1, :cond_25

    :try_start_56
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_25

    :catch_5a
    move-exception v0

    goto :goto_25

    :catch_5c
    move-exception v0

    :try_start_5d
    iget-boolean v2, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v2, :cond_73

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_7b

    :cond_73
    if-eqz v1, :cond_25

    :try_start_75
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_25

    :catch_79
    move-exception v0

    goto :goto_25

    :catchall_7b
    move-exception v0

    if-eqz v1, :cond_81

    :try_start_7e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    :cond_81
    :goto_81
    throw v0

    :catch_82
    move-exception v1

    goto :goto_81

    :catch_84
    move-exception v0

    goto :goto_25
.end method

.method private static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 2

    :try_start_0
    new-instance v0, Ljavax/mail/Session$7;

    invoke-direct {v0, p0}, Ljavax/mail/Session$7;-><init>(Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private pr(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addProvider(Ljavax/mail/Provider;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebug()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebugOut()Ljava/io/PrintStream;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 3

    invoke-virtual {p0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Store;->connect()V

    invoke-virtual {v0, p1}, Ljavax/mail/Store;->getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;
    .registers 3

    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/PasswordAuthentication;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 2

    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProvider(Ljava/lang/String;)Ljavax/mail/Provider;
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_9
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "Invalid protocol: null"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_14
    const/4 v0, 0x0

    :try_start_15
    iget-object v1, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".class property exists and points to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    :cond_52
    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Provider;
    :try_end_5a
    .catchall {:try_start_15 .. :try_end_5a} :catchall_11

    :cond_5a
    if-eqz v0, :cond_5e

    :cond_5c
    :goto_5c
    monitor-exit p0

    return-object v0

    :cond_5e
    :try_start_5e
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Provider;

    if-nez v0, :cond_7d

    new-instance v0, Ljavax/mail/NoSuchProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No provider for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    iget-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: getProvider() returning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/Provider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_5e .. :try_end_97} :catchall_11

    goto :goto_5c
.end method

.method public declared-synchronized getProviders()[Ljavax/mail/Provider;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Provider;

    iget-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStore()Ljavax/mail/Store;
    .registers 2

    const-string v0, "mail.store.protocol"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getStore(Ljava/lang/String;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljava/lang/String;)Ljavax/mail/Store;
    .registers 9

    const/4 v2, 0x0

    new-instance v0, Ljavax/mail/URLName;

    const/4 v3, -0x1

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljavax/mail/Provider;)Ljavax/mail/Store;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;
    .registers 3

    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljavax/mail/Transport;
    .registers 2

    const-string v0, "mail.transport.protocol"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljava/lang/String;)Ljavax/mail/Transport;
    .registers 9

    const/4 v2, 0x0

    new-instance v0, Ljavax/mail/URLName;

    const/4 v3, -0x1

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;
    .registers 5

    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_27

    new-instance v0, Ljavax/mail/NoSuchProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No provider for Address type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/Provider;)Ljavax/mail/Transport;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .registers 3

    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
    .registers 12

    iget-object v0, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/mail/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public declared-synchronized setDebug(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Ljavax/mail/Session;->debug:Z

    if-eqz p1, :cond_a

    const-string v0, "DEBUG: setDebug: JavaMail version 1.4.1"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
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

.method public declared-synchronized setDebugOut(Ljava/io/PrintStream;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V
    .registers 4

    if-nez p2, :cond_8

    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public declared-synchronized setProtocolForAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_a

    :try_start_3
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProvider(Ljavax/mail/Provider;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "Can\'t set null provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_b

    monitor-exit p0

    return-void
.end method

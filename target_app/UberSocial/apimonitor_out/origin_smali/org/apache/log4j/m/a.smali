.class public Lorg/apache/log4j/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/k/b;


# static fields
.field static final A:Ljava/lang/String; = "configDebug"

.field static final B:Ljava/lang/String; = "debug"

.field static final C:Ljava/lang/String; = "renderingClass"

.field static final D:Ljava/lang/String; = "renderedClass"

.field static final E:Ljava/lang/String; = ""

.field static final F:[Ljava/lang/Class; = null

.field static final G:Ljava/lang/String; = "javax.xml.parsers.DocumentBuilderFactory"

.field static L:Ljava/lang/Class; = null

.field static M:Ljava/lang/Class; = null

.field static N:Ljava/lang/Class; = null

.field static O:Ljava/lang/Class; = null

.field private static final P:Ljava/lang/String; = "throwableRenderer"

.field private static final Q:Ljava/lang/String; = "reset"

.field static final a:Ljava/lang/String; = "log4j:configuration"

.field static final b:Ljava/lang/String; = "configuration"

.field static final c:Ljava/lang/String; = "renderer"

.field static final d:Ljava/lang/String; = "appender"

.field static final e:Ljava/lang/String; = "appender-ref"

.field static final f:Ljava/lang/String; = "param"

.field static final g:Ljava/lang/String; = "layout"

.field static final h:Ljava/lang/String; = "category"

.field static final i:Ljava/lang/String; = "logger"

.field static final j:Ljava/lang/String; = "logger-ref"

.field static final k:Ljava/lang/String; = "categoryFactory"

.field static final l:Ljava/lang/String; = "loggerFactory"

.field static final m:Ljava/lang/String; = "name"

.field static final n:Ljava/lang/String; = "class"

.field static final o:Ljava/lang/String; = "value"

.field static final p:Ljava/lang/String; = "root"

.field static final q:Ljava/lang/String; = "root-ref"

.field static final r:Ljava/lang/String; = "level"

.field static final u:Ljava/lang/String; = "priority"

.field static final v:Ljava/lang/String; = "filter"

.field static final w:Ljava/lang/String; = "errorHandler"

.field static final x:Ljava/lang/String; = "ref"

.field static final y:Ljava/lang/String; = "additivity"

.field static final z:Ljava/lang/String; = "threshold"


# instance fields
.field H:Ljava/util/Hashtable;

.field I:Ljava/util/Properties;

.field J:Lorg/apache/log4j/k/j;

.field protected K:Lorg/apache/log4j/k/i;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/log4j/m/a;->L:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/m/a;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/m/a;->L:Ljava/lang/Class;

    :goto_10
    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/log4j/m/a;->F:[Ljava/lang/Class;

    return-void

    :cond_15
    sget-object v0, Lorg/apache/log4j/m/a;->L:Ljava/lang/Class;

    goto :goto_10
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/m/a;->K:Lorg/apache/log4j/k/i;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/m/a;->H:Ljava/util/Hashtable;

    return-void
.end method

.method public static a(Lorg/w3c/dom/Element;Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/log4j/m/a;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_47

    new-instance v3, Lorg/apache/log4j/b/d;

    invoke-direct {v3, v1}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_20
    if-ge v2, v5, :cond_46

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3e

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "param"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-static {v0, v3, p1}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;Ljava/util/Properties;)V

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_20

    :cond_42
    invoke-static {v1, v0, p1}, Lorg/apache/log4j/m/a;->a(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_3e

    :cond_46
    move-object v0, v1

    :cond_47
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/log4j/c/p;->b(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    :goto_4
    return-object p0

    :catch_5
    move-exception v0

    const-string v1, "Could not perform variable substitution."

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static a(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p0, Lorg/apache/log4j/m/j;

    if-eqz v1, :cond_b

    check-cast p0, Lorg/apache/log4j/m/j;

    invoke-interface {p0, p1, p2}, Lorg/apache/log4j/m/j;->a(Lorg/w3c/dom/Element;Ljava/util/Properties;)Z

    move-result v0

    :cond_b
    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unrecognized element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/m/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/m/l;

    invoke-direct {v0, p0}, Lorg/apache/log4j/m/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/m/l;->a(J)V

    invoke-virtual {v0}, Lorg/apache/log4j/m/l;->start()V

    return-void
.end method

.method public static a(Ljava/net/URL;)V
    .registers 3

    new-instance v0, Lorg/apache/log4j/m/a;

    invoke-direct {v0}, Lorg/apache/log4j/m/a;-><init>()V

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/m/a;->a(Ljava/net/URL;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method private final a(Lorg/apache/log4j/m/g;Lorg/apache/log4j/k/j;)V
    .registers 6

    iput-object p2, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    :try_start_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "System property is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "javax.xml.parsers.DocumentBuilderFactory"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const-string v1, "Standard DocumentBuilderFactory search succeded."

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DocumentBuilderFactory is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
    :try_end_46
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_46} :catch_6a

    const/4 v1, 0x1

    :try_start_47
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/apache/log4j/m/i;

    invoke-direct {v1}, Lorg/apache/log4j/m/i;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    new-instance v1, Lorg/apache/log4j/m/h;

    invoke-direct {v1}, Lorg/apache/log4j/m/h;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {p1, v0}, Lorg/apache/log4j/m/g;->a(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->j(Lorg/w3c/dom/Element;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_69} :catch_75

    :goto_69
    return-void

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v1

    const-string v2, "Could not instantiate a DocumentBuilderFactory."

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_75
    move-exception v0

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_7e

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_85

    :cond_7e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_85
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69
.end method

.method public static a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;Ljava/util/Properties;)V
    .registers 5

    const-string v0, "name"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/log4j/m/a;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/log4j/m/a;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/log4j/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    .registers 5

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/log4j/m/a;->a(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_d

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_14

    :cond_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_14
    const-string v1, "Error in extension content: "

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/apache/log4j/m/a;

    invoke-direct {v0}, Lorg/apache/log4j/m/a;-><init>()V

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/m/a;->a(Ljava/lang/String;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method static d(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static i(Lorg/w3c/dom/Element;)V
    .registers 3

    new-instance v0, Lorg/apache/log4j/m/a;

    invoke-direct {v0}, Lorg/apache/log4j/m/a;-><init>()V

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/k/j;)V

    return-void
.end method


# virtual methods
.method protected a(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/a;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/log4j/m/a;->H:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/a;

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const-string v0, "appender"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_64

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_34
    if-nez v0, :cond_58

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] could be found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_b

    :cond_54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_58
    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->b(Lorg/w3c/dom/Element;)Lorg/apache/log4j/a;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/log4j/m/a;->H:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_64
    move-object v0, v2

    goto :goto_34
.end method

.method protected a(Lorg/w3c/dom/Element;)Lorg/apache/log4j/a;
    .registers 4

    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Lorg/apache/log4j/k/j;)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/m/d;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/m/d;-><init>(Lorg/apache/log4j/m/a;Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/m/a;->a(Lorg/apache/log4j/m/g;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method public a(Ljava/io/Reader;Lorg/apache/log4j/k/j;)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/m/e;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/m/e;-><init>(Lorg/apache/log4j/m/a;Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/m/a;->a(Lorg/apache/log4j/m/g;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/apache/log4j/k/j;)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/m/b;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/m/b;-><init>(Lorg/apache/log4j/m/a;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/m/a;->a(Lorg/apache/log4j/m/g;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method public a(Ljava/net/URL;Lorg/apache/log4j/k/j;)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/m/c;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/m/c;-><init>(Lorg/apache/log4j/m/a;Ljava/net/URL;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/m/a;->a(Lorg/apache/log4j/m/g;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method protected a(Lorg/w3c/dom/Element;Lorg/apache/log4j/a;)V
    .registers 11

    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lorg/apache/log4j/m/a;->M:Ljava/lang/Class;

    if-nez v0, :cond_53

    const-string v0, "org.apache.log4j.k.e"

    invoke-static {v0}, Lorg/apache/log4j/m/a;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/m/a;->M:Ljava/lang/Class;

    :goto_16
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/k/e;

    if-eqz v0, :cond_a9

    invoke-interface {v0, p2}, Lorg/apache/log4j/k/e;->a(Lorg/apache/log4j/a;)V

    new-instance v3, Lorg/apache/log4j/b/d;

    invoke-direct {v3, v0}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_31
    if-ge v2, v5, :cond_a3

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4f

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "param"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-virtual {p0, v1, v3}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;)V

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_31

    :cond_53
    sget-object v0, Lorg/apache/log4j/m/a;->M:Ljava/lang/Class;

    goto :goto_16

    :cond_56
    const-string v7, "appender-ref"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-virtual {p0, v1}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;)Lorg/apache/log4j/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/e;->b(Lorg/apache/log4j/a;)V

    goto :goto_4f

    :cond_66
    const-string v7, "logger-ref"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    const-string v6, "ref"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/log4j/m/a;->K:Lorg/apache/log4j/k/i;

    if-nez v6, :cond_82

    iget-object v6, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    invoke-interface {v6, v1}, Lorg/apache/log4j/k/j;->c(Ljava/lang/String;)Lorg/apache/log4j/aa;

    move-result-object v1

    :goto_7e
    invoke-interface {v0, v1}, Lorg/apache/log4j/k/e;->a(Lorg/apache/log4j/aa;)V

    goto :goto_4f

    :cond_82
    iget-object v6, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    iget-object v7, p0, Lorg/apache/log4j/m/a;->K:Lorg/apache/log4j/k/i;

    invoke-interface {v6, v1, v7}, Lorg/apache/log4j/k/j;->a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;

    move-result-object v1

    goto :goto_7e

    :cond_8b
    const-string v7, "root-ref"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    iget-object v1, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    invoke-interface {v1}, Lorg/apache/log4j/k/j;->f()Lorg/apache/log4j/aa;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/e;->a(Lorg/apache/log4j/aa;)V

    goto :goto_4f

    :cond_9d
    iget-object v6, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {v0, v1, v6}, Lorg/apache/log4j/m/a;->b(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_4f

    :cond_a3
    invoke-virtual {v3}, Lorg/apache/log4j/b/d;->b()V

    invoke-interface {p2, v0}, Lorg/apache/log4j/a;->a(Lorg/apache/log4j/k/e;)V

    :cond_a9
    return-void
.end method

.method protected a(Lorg/w3c/dom/Element;Lorg/apache/log4j/aa;Z)V
    .registers 12

    new-instance v3, Lorg/apache/log4j/b/d;

    invoke-direct {v3, p2}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/apache/log4j/aa;->m()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-ge v2, v5, :cond_b8

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6d

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "appender-ref"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;)Lorg/apache/log4j/a;

    move-result-object v0

    const-string v6, "ref"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_71

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Adding appender named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "] to category ["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "]."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :goto_6a
    invoke-virtual {p2, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/a;)V

    :cond_6d
    :goto_6d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_71
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Appender named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "] not found."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto :goto_6a

    :cond_8e
    const-string v1, "level"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/log4j/m/a;->b(Lorg/w3c/dom/Element;Lorg/apache/log4j/aa;Z)V

    goto :goto_6d

    :cond_9a
    const-string v1, "priority"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/log4j/m/a;->b(Lorg/w3c/dom/Element;Lorg/apache/log4j/aa;Z)V

    goto :goto_6d

    :cond_a6
    const-string v1, "param"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-virtual {p0, v0, v3}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;)V

    goto :goto_6d

    :cond_b2
    iget-object v1, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {p2, v0, v1}, Lorg/apache/log4j/m/a;->b(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_6d

    :cond_b8
    invoke-virtual {v3}, Lorg/apache/log4j/b/d;->b()V

    return-void
.end method

.method protected a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;)V
    .registers 5

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/log4j/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/w3c/dom/Element;Lorg/apache/log4j/k/j;)V
    .registers 3

    iput-object p2, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/m/a;->j(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method protected a(Lorg/xml/sax/InputSource;Lorg/apache/log4j/k/j;)V
    .registers 4

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "dummy://log4j.dtd"

    invoke-virtual {p1, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    :cond_b
    new-instance v0, Lorg/apache/log4j/m/f;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/m/f;-><init>(Lorg/apache/log4j/m/a;Lorg/xml/sax/InputSource;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/m/a;->a(Lorg/apache/log4j/m/g;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method protected b(Lorg/w3c/dom/Element;)Lorg/apache/log4j/a;
    .registers 14

    const-string v1, "class"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Class name: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :try_start_26
    invoke-static {v1}, Lorg/apache/log4j/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/log4j/a;

    move-object v1, v0

    new-instance v6, Lorg/apache/log4j/b/d;

    invoke-direct {v6, v1}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    const-string v3, "name"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/log4j/a;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    const/4 v3, 0x0

    move v5, v3

    :goto_4e
    if-ge v5, v8, :cond_13f

    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_6c

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "param"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {p0, v3, v6}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;)V

    :cond_6c
    :goto_6c
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4e

    :cond_70
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "layout"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-virtual {p0, v3}, Lorg/apache/log4j/m/a;->f(Lorg/w3c/dom/Element;)Lorg/apache/log4j/u;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/log4j/a;->b(Lorg/apache/log4j/u;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_83} :catch_84

    goto :goto_6c

    :catch_84
    move-exception v1

    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-nez v2, :cond_8d

    instance-of v2, v1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_94

    :cond_8d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_94
    const-string v2, "Could not create an Appender. Reported error follows."

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_9a
    return-object v1

    :cond_9b
    :try_start_9b
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "filter"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-virtual {p0, v3, v1}, Lorg/apache/log4j/m/a;->b(Lorg/w3c/dom/Element;Lorg/apache/log4j/a;)V

    goto :goto_6c

    :cond_ab
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "errorHandler"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-virtual {p0, v3, v1}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/a;)V

    goto :goto_6c

    :cond_bb
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "appender-ref"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_138

    const-string v4, "ref"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    instance-of v4, v1, Lorg/apache/log4j/k/a;

    if-eqz v4, :cond_10c

    move-object v0, v1

    check-cast v0, Lorg/apache/log4j/k/a;

    move-object v4, v0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Attaching appender named ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "] to appender named ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-interface {v1}, Lorg/apache/log4j/a;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;)Lorg/apache/log4j/a;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/log4j/k/a;->a(Lorg/apache/log4j/a;)V

    goto/16 :goto_6c

    :cond_10c
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Requesting attachment of appender named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] to appender named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/log4j/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] which does not implement org.apache.log4j.spi.AppenderAttachable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    goto/16 :goto_6c

    :cond_138
    iget-object v4, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {v2, v3, v4}, Lorg/apache/log4j/m/a;->a(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto/16 :goto_6c

    :cond_13f
    invoke-virtual {v6}, Lorg/apache/log4j/b/d;->b()V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_142} :catch_84

    goto/16 :goto_9a
.end method

.method protected b(Lorg/w3c/dom/Element;Lorg/apache/log4j/a;)V
    .registers 11

    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lorg/apache/log4j/m/a;->N:Ljava/lang/Class;

    if-nez v0, :cond_50

    const-string v0, "org.apache.log4j.k.f"

    invoke-static {v0}, Lorg/apache/log4j/m/a;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/m/a;->N:Ljava/lang/Class;

    :goto_16
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/k/f;

    if-eqz v0, :cond_8d

    new-instance v3, Lorg/apache/log4j/b/d;

    invoke-direct {v3, v0}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    if-ge v2, v5, :cond_59

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4c

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "param"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {p0, v1, v3}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;)V

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2e

    :cond_50
    sget-object v0, Lorg/apache/log4j/m/a;->N:Ljava/lang/Class;

    goto :goto_16

    :cond_53
    iget-object v6, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {v0, v1, v6}, Lorg/apache/log4j/m/a;->b(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_4c

    :cond_59
    invoke-virtual {v3}, Lorg/apache/log4j/b/d;->b()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Adding filter of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] to appender named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/log4j/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lorg/apache/log4j/a;->a(Lorg/apache/log4j/k/f;)V

    :cond_8d
    return-void
.end method

.method protected b(Lorg/w3c/dom/Element;Lorg/apache/log4j/aa;Z)V
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p2}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_f7

    const-string v0, "root"

    move-object v1, v0

    :goto_a
    const-string v0, "value"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Level value for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " is  ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "]."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    const-string v0, "inherited"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_4a
    if-eqz p3, :cond_70

    const-string v0, "Root level cannot be inherited. Ignoring directive."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    :goto_51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " level set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/log4j/aa;->l()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :goto_6f
    return-void

    :cond_70
    invoke-virtual {p2, v4}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V

    goto :goto_51

    :cond_74
    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {v2, v0}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V

    goto :goto_51

    :cond_90
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Desired Level sub-class: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :try_start_ac
    invoke-static {v0}, Lorg/apache/log4j/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "toLevel"

    sget-object v4, Lorg/apache/log4j/m/a;->F:[Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/v;

    invoke-virtual {p2, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c8} :catch_c9

    goto :goto_51

    :catch_c9
    move-exception v0

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_d2

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_d9

    :cond_d2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_d9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not create level ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]. Reported error follows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f

    :cond_f7
    move-object v1, v0

    goto/16 :goto_a
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/log4j/m/a;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lorg/w3c/dom/Element;)V
    .registers 7

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v0, "Retreiving an instance of org.apache.log4j.Logger."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/m/a;->K:Lorg/apache/log4j/k/i;

    if-nez v0, :cond_6e

    iget-object v0, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->c(Ljava/lang/String;)Lorg/apache/log4j/aa;

    move-result-object v0

    :goto_2b
    monitor-enter v0

    :try_start_2c
    const-string v1, "additivity"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Setting ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] additivity to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/aa;Z)V

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_2c .. :try_end_6d} :catchall_102

    :goto_6d
    return-void

    :cond_6e
    iget-object v0, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    iget-object v2, p0, Lorg/apache/log4j/m/a;->K:Lorg/apache/log4j/k/i;

    invoke-interface {v0, v1, v2}, Lorg/apache/log4j/k/j;->a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;

    move-result-object v0

    goto :goto_2b

    :cond_77
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Desired logger sub-class: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :try_start_93
    invoke-static {v0}, Lorg/apache/log4j/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getLogger"

    sget-object v3, Lorg/apache/log4j/m/a;->F:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/aa;
    :try_end_ac
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_93 .. :try_end_ac} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_ac} :catch_e3

    goto/16 :goto_2b

    :catch_ae
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-nez v2, :cond_bf

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_c6

    :cond_bf
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_c6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not retrieve category ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]. Reported error follows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6d

    :catch_e3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not retrieve category ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]. Reported error follows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    :catchall_102
    move-exception v1

    :try_start_103
    monitor-exit v0
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    throw v1
.end method

.method protected d(Lorg/w3c/dom/Element;)V
    .registers 10

    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "Category Factory tag class attribute not found."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    const-string v0, "No Category Factory configured."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :cond_1c
    return-void

    :cond_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Desired category factory: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/log4j/m/a;->O:Ljava/lang/Class;

    if-nez v0, :cond_84

    const-string v0, "org.apache.log4j.k.i"

    invoke-static {v0}, Lorg/apache/log4j/m/a;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/m/a;->O:Ljava/lang/Class;

    :goto_45
    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lorg/apache/log4j/k/i;

    if-eqz v0, :cond_87

    move-object v0, v1

    check-cast v0, Lorg/apache/log4j/k/i;

    iput-object v0, p0, Lorg/apache/log4j/m/a;->K:Lorg/apache/log4j/k/i;

    :goto_53
    new-instance v3, Lorg/apache/log4j/b/d;

    invoke-direct {v3, v1}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_62
    if-ge v2, v5, :cond_1c

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_80

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "param"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    invoke-virtual {p0, v0, v3}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;)V

    :cond_80
    :goto_80
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_62

    :cond_84
    sget-object v0, Lorg/apache/log4j/m/a;->O:Ljava/lang/Class;

    goto :goto_45

    :cond_87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Category Factory class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " does not implement org.apache.log4j.LoggerFactory"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    goto :goto_53

    :cond_a4
    iget-object v6, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {v1, v0, v6}, Lorg/apache/log4j/m/a;->b(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_80
.end method

.method protected e(Lorg/w3c/dom/Element;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    invoke-interface {v0}, Lorg/apache/log4j/k/j;->f()Lorg/apache/log4j/aa;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/aa;Z)V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected f(Lorg/w3c/dom/Element;)Lorg/apache/log4j/u;
    .registers 12

    const-string v1, "class"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing layout of class: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :try_start_26
    invoke-static {v1}, Lorg/apache/log4j/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/log4j/u;

    move-object v1, v0

    new-instance v5, Lorg/apache/log4j/b/d;

    invoke-direct {v5, v1}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v3, 0x0

    move v4, v3

    :goto_41
    if-ge v4, v7, :cond_80

    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5f

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-virtual {p0, v3, v5}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;)V

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_41

    :cond_63
    iget-object v8, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {v2, v3, v8}, Lorg/apache/log4j/m/a;->a(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_68} :catch_69

    goto :goto_5f

    :catch_69
    move-exception v1

    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-nez v2, :cond_72

    instance-of v2, v1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_79

    :cond_72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_79
    const-string v2, "Could not create the Layout. Reported error follows."

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_7f
    return-object v1

    :cond_80
    :try_start_80
    invoke-virtual {v5}, Lorg/apache/log4j/b/d;->b()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_69

    goto :goto_7f
.end method

.method protected g(Lorg/w3c/dom/Element;)V
    .registers 5

    const-string v0, "renderingClass"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "renderedClass"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    instance-of v0, v0, Lorg/apache/log4j/k/p;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    check-cast v0, Lorg/apache/log4j/k/p;

    invoke-static {v0, v2, v1}, Lorg/apache/log4j/h/c;->a(Lorg/apache/log4j/k/p;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method protected h(Lorg/w3c/dom/Element;)Lorg/apache/log4j/k/u;
    .registers 12

    const-string v1, "class"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing throwableRenderer of class: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :try_start_26
    invoke-static {v1}, Lorg/apache/log4j/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/log4j/k/u;

    move-object v1, v0

    new-instance v5, Lorg/apache/log4j/b/d;

    invoke-direct {v5, v1}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v3, 0x0

    move v4, v3

    :goto_41
    if-ge v4, v7, :cond_80

    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5f

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-virtual {p0, v3, v5}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Lorg/apache/log4j/b/d;)V

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_41

    :cond_63
    iget-object v8, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {v2, v3, v8}, Lorg/apache/log4j/m/a;->a(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_68} :catch_69

    goto :goto_5f

    :catch_69
    move-exception v1

    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-nez v2, :cond_72

    instance-of v2, v1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_79

    :cond_72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_79
    const-string v2, "Could not create the ThrowableRenderer. Reported error follows."

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_7f
    return-object v1

    :cond_80
    :try_start_80
    invoke-virtual {v5}, Lorg/apache/log4j/b/d;->b()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_69

    goto :goto_7f
.end method

.method protected j(Lorg/w3c/dom/Element;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "log4j:configuration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    const-string v0, "The <configuration> element has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    const-string v0, "Use the <log4j:configuration> element instead."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    :cond_20
    const-string v0, "debug"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "debug attribute= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_134

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_134

    invoke-static {v0, v7}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Z)V

    :goto_5d
    const-string v0, "reset"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "reset attribute= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    invoke-interface {v0}, Lorg/apache/log4j/k/j;->g()V

    :cond_96
    const-string v0, "configDebug"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "The \"configDebug\" attribute is deprecated."

    invoke-static {v2}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    const-string v2, "Use the \"debug\" attribute instead."

    invoke-static {v2}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    invoke-static {v0, v7}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Z)V

    :cond_c1
    const-string v0, "threshold"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Threshold =\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fc

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fc

    iget-object v2, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    invoke-interface {v2, v0}, Lorg/apache/log4j/k/j;->b(Ljava/lang/String;)V

    :cond_fc
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move v2, v1

    :goto_105
    if-ge v2, v4, :cond_13b

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_12a

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "categoryFactory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_127

    const-string v6, "loggerFactory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12a

    :cond_127
    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->d(Lorg/w3c/dom/Element;)V

    :cond_12a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_105

    :cond_12e
    const-string v0, "DOM element is - not a <log4j:configuration> element."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    :cond_133
    return-void

    :cond_134
    const-string v0, "Ignoring debug attribute."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto/16 :goto_5d

    :cond_13b
    :goto_13b
    if-ge v1, v4, :cond_133

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v7, :cond_160

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "category"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15d

    const-string v5, "logger"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_164

    :cond_15d
    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->c(Lorg/w3c/dom/Element;)V

    :cond_160
    :goto_160
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13b

    :cond_164
    const-string v5, "root"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_170

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->e(Lorg/w3c/dom/Element;)V

    goto :goto_160

    :cond_170
    const-string v5, "renderer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17c

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->g(Lorg/w3c/dom/Element;)V

    goto :goto_160

    :cond_17c
    const-string v5, "throwableRenderer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    iget-object v2, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    instance-of v2, v2, Lorg/apache/log4j/k/v;

    if-eqz v2, :cond_160

    invoke-virtual {p0, v0}, Lorg/apache/log4j/m/a;->h(Lorg/w3c/dom/Element;)Lorg/apache/log4j/k/u;

    move-result-object v2

    if-eqz v2, :cond_160

    iget-object v0, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    check-cast v0, Lorg/apache/log4j/k/v;

    invoke-interface {v0, v2}, Lorg/apache/log4j/k/v;->a(Lorg/apache/log4j/k/u;)V

    goto :goto_160

    :cond_198
    const-string v5, "appender"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_160

    const-string v5, "categoryFactory"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_160

    const-string v5, "loggerFactory"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_160

    iget-object v2, p0, Lorg/apache/log4j/m/a;->J:Lorg/apache/log4j/k/j;

    iget-object v5, p0, Lorg/apache/log4j/m/a;->I:Ljava/util/Properties;

    invoke-static {v2, v0, v5}, Lorg/apache/log4j/m/a;->b(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_160
.end method

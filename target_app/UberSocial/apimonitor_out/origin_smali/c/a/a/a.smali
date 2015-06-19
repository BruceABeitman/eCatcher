.class public Lc/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final javaFileListFlavor:Lc/a/a/a; = null

.field public static final javaJVMLocalObjectMimeType:Ljava/lang/String; = "application/x-java-jvm-local-objectref"

.field public static final javaRemoteObjectMimeType:Ljava/lang/String; = "application/x-java-remote-object"

.field public static final javaSerializedObjectMimeType:Ljava/lang/String; = "application/x-java-serialized-object"

.field public static final plainTextFlavor:Lc/a/a/a; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static plainUnicodeFlavor:Lc/a/a/a; = null

.field private static final serialVersionUID:J = 0x741da5db78a37333L

.field private static final sortedTextFlavors:[Ljava/lang/String;

.field public static final stringFlavor:Lc/a/a/a;


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeInfo:Lc/a/a/c;

.field private representationClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lc/a/a/a;

    const-string v1, "text/plain; charset=unicode; class=java.io.InputStream"

    const-string v2, "Plain Text"

    invoke-direct {v0, v1, v2}, Lc/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lc/a/a/a;->plainTextFlavor:Lc/a/a/a;

    new-instance v0, Lc/a/a/a;

    const-string v1, "application/x-java-serialized-object; class=java.lang.String"

    const-string v2, "Unicode String"

    invoke-direct {v0, v1, v2}, Lc/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lc/a/a/a;->stringFlavor:Lc/a/a/a;

    new-instance v0, Lc/a/a/a;

    const-string v1, "application/x-java-file-list; class=java.util.List"

    const-string v2, "application/x-java-file-list"

    invoke-direct {v0, v1, v2}, Lc/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lc/a/a/a;->javaFileListFlavor:Lc/a/a/a;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/sgml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "text/rtf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/enriched"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text/richtext"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text/uri-list"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/tab-separated-values"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/t140"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text/rfc822-headers"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "text/parityfec"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "text/directory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "text/css"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "text/calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "application/x-java-serialized-object"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    sput-object v0, Lc/a/a/a;->sortedTextFlavors:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lc/a/a/a;->plainUnicodeFlavor:Lc/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    iput-object v0, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/c;

    const-string v1, "application"

    const-string v2, "x-java-serialized-object"

    invoke-direct {v0, v1, v2}, Lc/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz p2, :cond_20

    iput-object p2, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    :goto_12
    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    return-void

    :cond_20
    const-string v0, "application/x-java-serialized-object"

    iput-object v0, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    goto :goto_12
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0, v0}, Lc/a/a/a;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, v0}, Lc/a/a/a;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "awt.16C"

    iget-object v3, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    const-string v4, "class"

    invoke-virtual {v3, v4}, Lc/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lc/a/a/a;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static fetchTextFlavors(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 6

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    :goto_16
    return-object v0

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    invoke-virtual {v0}, Lc/a/a/a;->isFlavorTextType()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, v0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v3}, Lc/a/a/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_40
    move-object v0, v1

    goto :goto_16
.end method

.method private getCharset()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lc/a/a/a;->isCharsetRedundant()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    const-string v0, ""

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    const-string v1, "charset"

    invoke-virtual {v0, v1}, Lc/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lc/a/a/a;->isCharsetRequired()Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2c

    :cond_23
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_2c
    if-nez v0, :cond_c

    const-string v0, ""

    goto :goto_c
.end method

.method private static getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 6

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x0

    :cond_16
    return-object p0

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    iget-object v3, v0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private static getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .registers 9

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x0

    :cond_16
    return-object p0

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    invoke-direct {v0}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/a;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    array-length v4, p1

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v4, :cond_9

    aget-object v5, p1, v1

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v0}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_45
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private getKeyInfo()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v1}, Lc/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v1}, Lc/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-direct {p0}, Lc/a/a/a;->isUnicodeFlavor()Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_37
    :goto_37
    return-object v0

    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";charset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method public static final getTextPlainUnicodeFlavor()Lc/a/a/a;
    .registers 3

    sget-object v0, Lc/a/a/a;->plainUnicodeFlavor:Lc/a/a/a;

    if-nez v0, :cond_2a

    new-instance v0, Lc/a/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text/plain; charset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; class=java.io.InputStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Plain Text"

    invoke-direct {v0, v1, v2}, Lc/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lc/a/a/a;->plainUnicodeFlavor:Lc/a/a/a;

    :cond_2a
    sget-object v0, Lc/a/a/a;->plainUnicodeFlavor:Lc/a/a/a;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 7

    :try_start_0
    invoke-static {p1}, Lc/a/a/b;->a(Ljava/lang/String;)Lc/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_26

    if-eqz p2, :cond_33

    iput-object p2, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    :goto_a
    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lc/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string v0, "java.io.InputStream"

    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    const-string v2, "class"

    invoke-virtual {v1, v2, v0}, Lc/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    if-nez p3, :cond_59

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    return-void

    :catch_26
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.16D"

    invoke-static {v1, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v1}, Lc/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v1}, Lc/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    goto :goto_a

    :cond_59
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_23
.end method

.method private isByteCodeFlavor()Z
    .registers 3

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    const-class v1, [B

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private isCharsetRedundant()Z
    .registers 3

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/rtf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "text/tab-separated-values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "text/t140"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "text/rfc822-headers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "text/parityfec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method private isCharsetRequired()Z
    .registers 3

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/sgml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/enriched"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/richtext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/uri-list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "application/x-java-serialized-object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x0

    :goto_5f
    return v0

    :cond_60
    const/4 v0, 0x1

    goto :goto_5f
.end method

.method private static isCharsetSupported(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private isUnicodeFlavor()Z
    .registers 3

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    const-class v1, [C

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private static selectBestByAlphabet(Ljava/util/List;)Ljava/util/List;
    .registers 8

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move v1, v2

    :goto_d
    array-length v0, v4

    if-lt v1, v0, :cond_27

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x0

    :goto_26
    return-object v0

    :cond_27
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    invoke-direct {v0}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    aget-object v5, v4, v2

    invoke-direct {v0}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_4d
    move-object v0, v3

    goto :goto_26
.end method

.method private static selectBestByCharset(Ljava/util/List;)Lc/a/a/a;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UTF-16"

    aput-object v1, v0, v3

    const-string v1, "UTF-8"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "UTF-16BE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3f

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3f

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "US-ASCII"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3f

    invoke-static {p0}, Lc/a/a/a;->selectBestByAlphabet(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_3f
    if-eqz v0, :cond_53

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_4e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    :goto_4d
    return-object v0

    :cond_4e
    invoke-static {v0}, Lc/a/a/a;->selectBestFlavorWOCharset(Ljava/util/List;)Lc/a/a/a;

    move-result-object v0

    goto :goto_4d

    :cond_53
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method private static selectBestFlavorWCharset(Ljava/util/List;)Lc/a/a/a;
    .registers 3

    const/4 v1, 0x0

    const-class v0, Ljava/io/Reader;

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    :goto_f
    return-object v0

    :cond_10
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    goto :goto_f

    :cond_1f
    const-class v0, Ljava/nio/CharBuffer;

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    goto :goto_f

    :cond_2e
    const-class v0, [C

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    goto :goto_f

    :cond_3d
    invoke-static {p0}, Lc/a/a/a;->selectBestByCharset(Ljava/util/List;)Lc/a/a/a;

    move-result-object v0

    goto :goto_f
.end method

.method private static selectBestFlavorWOCharset(Ljava/util/List;)Lc/a/a/a;
    .registers 3

    const/4 v1, 0x0

    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    :goto_f
    return-object v0

    :cond_10
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    goto :goto_f

    :cond_1f
    const-class v0, [B

    invoke-static {p0, v0}, Lc/a/a/a;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    goto :goto_f

    :cond_2e
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    goto :goto_f
.end method

.method public static final selectBestTextFlavor([Lc/a/a/a;)Lc/a/a/a;
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    new-instance v1, Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lc/a/a/a;->sortTextFlavorsByType(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a;

    goto :goto_4

    :cond_2c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/a;

    invoke-direct {v1}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_41

    invoke-static {v0}, Lc/a/a/a;->selectBestFlavorWOCharset(Ljava/util/List;)Lc/a/a/a;

    move-result-object v0

    goto :goto_4

    :cond_41
    invoke-static {v0}, Lc/a/a/a;->selectBestFlavorWCharset(Ljava/util/List;)Lc/a/a/a;

    move-result-object v0

    goto :goto_4
.end method

.method private static sortTextFlavorsByType(Ljava/util/List;)Ljava/util/List;
    .registers 6

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, Lc/a/a/a;->sortedTextFlavors:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v3, :cond_15

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_14
    return-object v1

    :cond_15
    aget-object v4, v2, v0

    invoke-static {p0, v4}, Lc/a/a/a;->fetchTextFlavors(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method protected static final tryToLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    :try_start_6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_4

    :catch_f
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_1a
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_4

    :catch_1f
    move-exception v0

    :cond_20
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v1, Lc/a/a/a;

    invoke-direct {v1}, Lc/a/a/a;-><init>()V

    iget-object v0, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    iput-object v0, v1, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    iput-object v0, v1, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/c;

    :goto_19
    iput-object v0, v1, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    return-object v1

    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public equals(Lc/a/a/a;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-nez v2, :cond_13

    iget-object v2, p1, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_13
    iget-object v2, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    iget-object v3, p1, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v2, v3}, Lc/a/a/c;->a(Lc/a/a/c;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    iget-object v3, p1, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_27
    move v0, v1

    goto :goto_4

    :cond_29
    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v1}, Lc/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lc/a/a/a;->isUnicodeFlavor()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lc/a/a/a;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {v1}, Lc/a/a/a;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    :cond_51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :cond_56
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_6

    instance-of v0, p1, Lc/a/a/a;

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    check-cast p1, Lc/a/a/a;

    invoke-virtual {p0, p1}, Lc/a/a/a;->equals(Lc/a/a/a;)Z

    move-result v0

    goto :goto_7
.end method

.method public equals(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lc/a/a/a;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public final getDefaultRepresentationClass()Ljava/lang/Class;
    .registers 2

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final getDefaultRepresentationClassAsString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lc/a/a/a;->getDefaultRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    return-object v0
.end method

.method getMimeInfo()Lc/a/a/c;
    .registers 2

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-static {v0}, Lc/a/a/b;->a(Lc/a/a/c;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "humanpresentablename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v1, v0}, Lc/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getPrimaryType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getReaderForText(Lc/a/a/e;)Ljava/io/Reader;
    .registers 5

    invoke-interface {p1, p0}, Lc/a/a/e;->getTransferData(Lc/a/a/a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.16E"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    instance-of v1, v0, Ljava/io/Reader;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    :goto_1b
    return-object v0

    :cond_1c
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_29

    new-instance v1, Ljava/io/StringReader;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1b

    :cond_29
    instance-of v1, v0, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_3a

    new-instance v1, Ljava/io/CharArrayReader;

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    move-object v0, v1

    goto :goto_1b

    :cond_3a
    instance-of v1, v0, [C

    if-eqz v1, :cond_47

    new-instance v1, Ljava/io/CharArrayReader;

    check-cast v0, [C

    invoke-direct {v1, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    move-object v0, v1

    goto :goto_1b

    :cond_47
    invoke-direct {p0}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v2

    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_61

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :goto_54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8b

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_1b

    :cond_61
    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_72

    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    goto :goto_54

    :cond_72
    instance-of v1, v0, [B

    if-eqz v1, :cond_7f

    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    goto :goto_54

    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.16F"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1b
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    invoke-direct {p0}, Lc/a/a/a;->getKeyInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFlavorJavaFileListType()Z
    .registers 3

    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lc/a/a/a;->javaFileListFlavor:Lc/a/a/a;

    invoke-virtual {p0, v0}, Lc/a/a/a;->isMimeTypeEqual(Lc/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isFlavorRemoteObjectType()Z
    .registers 2

    const-string v0, "application/x-java-remote-object"

    invoke-virtual {p0, v0}, Lc/a/a/a;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lc/a/a/a;->isRepresentationClassRemote()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isFlavorSerializedObjectType()Z
    .registers 2

    invoke-virtual {p0}, Lc/a/a/a;->isMimeTypeSerializedObject()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lc/a/a/a;->isRepresentationClassSerializable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFlavorTextType()Z
    .registers 4

    const/4 v0, 0x1

    sget-object v1, Lc/a/a/a;->stringFlavor:Lc/a/a/a;

    invoke-virtual {p0, v1}, Lc/a/a/a;->equals(Lc/a/a/a;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lc/a/a/a;->plainTextFlavor:Lc/a/a/a;

    invoke-virtual {p0, v1}, Lc/a/a/a;->equals(Lc/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v1}, Lc/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v0, 0x0

    goto :goto_11

    :cond_26
    invoke-direct {p0}, Lc/a/a/a;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lc/a/a/a;->isByteCodeFlavor()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1}, Lc/a/a/a;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v0

    goto :goto_11

    :cond_3b
    invoke-direct {p0}, Lc/a/a/a;->isUnicodeFlavor()Z

    move-result v0

    goto :goto_11
.end method

.method public final isMimeTypeEqual(Lc/a/a/a;)Z
    .registers 4

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    iget-object v1, p1, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-virtual {v0, v1}, Lc/a/a/c;->a(Lc/a/a/c;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p1, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-static {p1}, Lc/a/a/b;->a(Ljava/lang/String;)Lc/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/c;->a(Lc/a/a/c;)Z
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isMimeTypeSerializedObject()Z
    .registers 2

    const-string v0, "application/x-java-serialized-object"

    invoke-virtual {p0, v0}, Lc/a/a/a;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassByteBuffer()Z
    .registers 3

    const-class v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassCharBuffer()Z
    .registers 3

    const-class v0, Ljava/nio/CharBuffer;

    iget-object v1, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassInputStream()Z
    .registers 3

    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassReader()Z
    .registers 3

    const-class v0, Ljava/io/Reader;

    iget-object v1, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassRemote()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRepresentationClassSerializable()Z
    .registers 3

    const-class v0, Ljava/io/Serializable;

    iget-object v1, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public match(Lc/a/a/a;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lc/a/a/a;->equals(Lc/a/a/a;)Z

    move-result v0

    return v0
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p2
.end method

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/c;

    iput-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lc/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_21
    iput-object v0, p0, Lc/a/a/a;->representationClass:Ljava/lang/Class;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_27

    monitor-exit p0

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_21

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[MimeType=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/a;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");humanPresentableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/a;->humanPresentableName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/a;->mimeInfo:Lc/a/a/c;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

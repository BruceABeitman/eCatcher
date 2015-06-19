.class public Lorg/apache/log4j/f/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "lf5_configuration.xml"

.field private static final b:Ljava/lang/String; = "name"

.field private static final c:Ljava/lang/String; = "path"

.field private static final d:Ljava/lang/String; = "selected"

.field private static final e:Ljava/lang/String; = "expanded"

.field private static final f:Ljava/lang/String; = "category"

.field private static final g:Ljava/lang/String; = "Categories"

.field private static final h:Ljava/lang/String; = "level"

.field private static final i:Ljava/lang/String; = "colorlevel"

.field private static final j:Ljava/lang/String; = "red"

.field private static final k:Ljava/lang/String; = "green"

.field private static final l:Ljava/lang/String; = "blue"

.field private static final m:Ljava/lang/String; = "column"

.field private static final n:Ljava/lang/String; = "searchtext"


# instance fields
.field private o:Lorg/apache/log4j/f/b/d;

.field private p:Lorg/apache/log4j/f/b/at;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/f/b/d;Lorg/apache/log4j/f/b/at;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    iput-object v0, p0, Lorg/apache/log4j/f/b/b/a;->p:Lorg/apache/log4j/f/b/at;

    iput-object p1, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    iput-object p2, p0, Lorg/apache/log4j/f/b/b/a;->p:Lorg/apache/log4j/f/b/at;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->c()V

    return-void
.end method

.method public static a(Ljavax/swing/tree/TreePath;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljavax/swing/tree/TreePath;->getPath()[Ljava/lang/Object;

    move-result-object v4

    move v1, v2

    :goto_b
    array-length v0, v4

    if-ge v1, v0, :cond_24

    aget-object v0, v4, v1

    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    if-le v1, v2, :cond_19

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_24
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/awt/Color;Ljava/lang/StringBuffer;)V
    .registers 6

    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "colorlevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "red"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "green"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "blue"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 5

    const-string v0, "\t<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "searchtext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "/>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .registers 6

    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "selected"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(Ljava/lang/StringBuffer;)V
    .registers 3

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .registers 6

    const-string v0, "\t<logtablecolumns>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/av;

    iget-object v2, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/av;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lorg/apache/log4j/f/b/b/a;->b(Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_9

    :cond_27
    const-string v0, "\t</logtablecolumns>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/StringBuffer;)V
    .registers 6

    const-string v0, "\t<loglevels>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v0}, Lorg/apache/log4j/f/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/log4j/f/b/b/a;->a(Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_d

    :cond_2b
    const-string v0, "\t</loglevels>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuffer;)V
    .registers 7

    const-string v0, "\t<loglevelcolors>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Color;

    invoke-virtual {v0}, Lorg/apache/log4j/f/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/log4j/f/b/b/a;->a(Ljava/lang/String;Ljava/awt/Color;Ljava/lang/StringBuffer;)V

    goto :goto_d

    :cond_27
    const-string v0, "\t</loglevelcolors>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(Lorg/apache/log4j/f/b/a/i;Ljava/lang/StringBuffer;)V
    .registers 7

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->i()Lorg/apache/log4j/f/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/a/d;->a(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/tree/TreePath;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/apache/log4j/f/b/a/i;Ljavax/swing/tree/TreePath;Ljava/lang/StringBuffer;)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method private a(Lorg/apache/log4j/f/b/a/i;Ljavax/swing/tree/TreePath;Ljava/lang/StringBuffer;)V
    .registers 7

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->i()Lorg/apache/log4j/f/b/a/f;

    move-result-object v0

    const-string v1, "\t<"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "name"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "path"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/log4j/f/b/b/a;->a(Ljavax/swing/tree/TreePath;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "expanded"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, p2}, Lorg/apache/log4j/f/b/a/f;->isExpanded(Ljavax/swing/tree/TreePath;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "selected"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"/>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private b(Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .registers 6

    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "column"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "selected"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private b(Ljava/lang/StringBuffer;)V
    .registers 3

    const-string v0, "<configuration>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private c(Ljava/lang/StringBuffer;)V
    .registers 3

    const-string v0, "</configuration>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method protected a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->i()Lorg/apache/log4j/f/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/d;->a()Lorg/apache/log4j/f/b/a/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/f/b/b/a;->a(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/f/b/b/a;->b(Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v2}, Lorg/apache/log4j/f/b/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/f/b/b/a;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v2}, Lorg/apache/log4j/f/b/d;->g()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/f/b/b/a;->a(Ljava/util/Map;Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v2}, Lorg/apache/log4j/f/b/d;->g()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lorg/apache/log4j/f/e;->f()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lorg/apache/log4j/f/b/b/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuffer;)V

    invoke-static {}, Lorg/apache/log4j/f/b/av;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/f/b/b/a;->a(Ljava/util/List;Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/apache/log4j/f/b/a/i;Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/f/b/b/a;->c(Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method protected a(Lorg/w3c/dom/Document;)V
    .registers 4

    const-string v0, "searchtext"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/d;->b(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->f()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->d()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->e()V

    return-void
.end method

.method protected b(Lorg/w3c/dom/Document;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->i()Lorg/apache/log4j/f/b/a/f;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;

    move-result-object v6

    const-string v0, "category"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v3, "name"

    invoke-virtual {p0, v0, v3}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Categories"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    move v0, v1

    :goto_29
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_30
    if-lt v4, v0, :cond_78

    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    new-instance v3, Lorg/apache/log4j/f/b/a/u;

    const-string v9, "path"

    invoke-virtual {p0, v8, v9}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/log4j/f/b/a/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lorg/apache/log4j/f/b/a/d;->c(Lorg/apache/log4j/f/b/a/u;)Lorg/apache/log4j/f/b/a/i;

    move-result-object v9

    const-string v3, "selected"

    invoke-virtual {p0, v8, v3}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "true"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    move v3, v1

    :goto_58
    invoke-virtual {v9, v3}, Lorg/apache/log4j/f/b/a/i;->a(Z)V

    const-string v3, "expanded"

    invoke-virtual {p0, v8, v3}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "true"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    :cond_69
    invoke-virtual {v6, v9}, Lorg/apache/log4j/f/b/a/d;->a(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/tree/TreePath;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/apache/log4j/f/b/a/f;->expandPath(Ljavax/swing/tree/TreePath;)V

    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_30

    :cond_74
    move v0, v2

    goto :goto_29

    :cond_76
    move v3, v2

    goto :goto_58

    :cond_78
    return-void
.end method

.method protected c()V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    :try_start_f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/a;->b(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/a;->c(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/a;->d(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/b/a;->e(Lorg/w3c/dom/Document;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable process configuration file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". Error Message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method protected c(Lorg/w3c/dom/Document;)V
    .registers 8

    const-string v0, "level"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->g()Ljava/util/Map;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_3f

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v0, "name"

    invoke-virtual {p0, v4, v0}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_22
    invoke-static {v0}, Lorg/apache/log4j/f/e;->a(Ljava/lang/String;)Lorg/apache/log4j/f/e;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    const-string v5, "selected"

    invoke-virtual {p0, v4, v5}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V
    :try_end_3b
    .catch Lorg/apache/log4j/f/f; {:try_start_22 .. :try_end_3b} :catch_40

    :goto_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_3f
    return-void

    :catch_40
    move-exception v0

    goto :goto_3b
.end method

.method protected d()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->i()Lorg/apache/log4j/f/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/f;->getRowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-lez v0, :cond_14

    invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/a/f;->collapseRow(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_14
    return-void
.end method

.method protected d(Lorg/w3c/dom/Document;)V
    .registers 9

    const-string v0, "colorlevel"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {}, Lorg/apache/log4j/f/e;->f()Ljava/util/Map;

    const/4 v0, 0x0

    :goto_a
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_16

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_17

    :cond_16
    return-void

    :cond_17
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_21
    invoke-static {v3}, Lorg/apache/log4j/f/e;->a(Ljava/lang/String;)Lorg/apache/log4j/f/e;

    move-result-object v3

    const-string v4, "red"

    invoke-virtual {p0, v2, v4}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "green"

    invoke-virtual {p0, v2, v5}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "blue"

    invoke-virtual {p0, v2, v6}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v6, Ljava/awt/Color;

    invoke-direct {v6, v4, v5, v2}, Ljava/awt/Color;-><init>(III)V

    if-eqz v3, :cond_4d

    invoke-virtual {v3, v3, v6}, Lorg/apache/log4j/f/e;->a(Lorg/apache/log4j/f/e;Ljava/awt/Color;)V
    :try_end_4d
    .catch Lorg/apache/log4j/f/f; {:try_start_21 .. :try_end_4d} :catch_50

    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_50
    move-exception v2

    goto :goto_4d
.end method

.method protected e()V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->i()Lorg/apache/log4j/f/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/d;->a()Lorg/apache/log4j/f/b/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/log4j/f/b/a/i;->a(Z)V

    goto :goto_12

    :cond_23
    return-void
.end method

.method protected e(Lorg/w3c/dom/Document;)V
    .registers 10

    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->o:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->h()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_1f
    return-void

    :cond_20
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v0, "name"

    invoke-virtual {p0, v5, v0}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_2a
    invoke-static {v0}, Lorg/apache/log4j/f/b/av;->a(Ljava/lang/String;)Lorg/apache/log4j/f/b/av;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    const-string v7, "selected"

    invoke-virtual {p0, v5, v7}, Lorg/apache/log4j/f/b/b/a;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    invoke-virtual {v0}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Lorg/apache/log4j/f/b/aw; {:try_start_2a .. :try_end_4c} :catch_61

    :cond_4c
    :goto_4c
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->p:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->d()V

    :goto_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_5b
    iget-object v0, p0, Lorg/apache/log4j/f/b/b/a;->p:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0, v4}, Lorg/apache/log4j/f/b/at;->a(Ljava/util/List;)V

    goto :goto_57

    :catch_61
    move-exception v0

    goto :goto_4c
.end method

.method protected f()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " because a security violation occured."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12
.end method

.method protected g()Ljava/lang/String;
    .registers 4

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "lf5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lf5_configuration.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

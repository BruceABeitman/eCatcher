.class public Lorg/apache/log4j/f/b/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/a/u;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0x2e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/a/u;->a:Ljava/util/LinkedList;

    if-nez p1, :cond_10

    const-string p1, "Debug"

    :cond_10
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/log4j/f/b/a/b;

    invoke-direct {v2, v0}, Lorg/apache/log4j/f/b/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/log4j/f/b/a/u;->a(Lorg/apache/log4j/f/b/a/b;)V

    goto :goto_23

    :cond_36
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/u;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lorg/apache/log4j/f/b/a/b;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/u;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/a/b;

    return-object v0
.end method

.method public a(Lorg/apache/log4j/f/b/a/b;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/u;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/u;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/u;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "===========================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "CategoryPath:                   \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "---------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\nCategoryPath:\n\t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/u;->a()I

    move-result v0

    if-lez v0, :cond_40

    const/4 v0, 0x0

    :goto_27
    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/u;->a()I

    move-result v2

    if-ge v0, v2, :cond_45

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/u;->a(I)Lorg/apache/log4j/f/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_40
    const-string v0, "<<NONE>>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_45
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "===========================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

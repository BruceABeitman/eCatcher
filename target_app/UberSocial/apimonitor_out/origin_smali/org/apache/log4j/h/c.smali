.class public Lorg/apache/log4j/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static b:Lorg/apache/log4j/h/b;

.field static c:Ljava/lang/Class;


# instance fields
.field a:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/log4j/h/a;

    invoke-direct {v0}, Lorg/apache/log4j/h/a;-><init>()V

    sput-object v0, Lorg/apache/log4j/h/c;->b:Lorg/apache/log4j/h/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/h/c;->a:Ljava/util/Hashtable;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static a(Lorg/apache/log4j/k/p;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Rendering class: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "], Rendered class: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/log4j/h/c;->c:Ljava/lang/Class;

    if-nez v0, :cond_58

    const-string v0, "org.apache.log4j.h.b"

    invoke-static {v0}, Lorg/apache/log4j/h/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/h/c;->c:Ljava/lang/Class;

    :goto_32
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/h/b;

    if-nez v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not instantiate renderer ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    :goto_57
    return-void

    :cond_58
    sget-object v0, Lorg/apache/log4j/h/c;->c:Ljava/lang/Class;

    goto :goto_32

    :cond_5b
    :try_start_5b
    invoke-static {p1}, Lorg/apache/log4j/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lorg/apache/log4j/k/p;->b(Ljava/lang/Class;Lorg/apache/log4j/h/b;)V
    :try_end_62
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_62} :catch_63

    goto :goto_57

    :catch_63
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/h/c;->a(Ljava/lang/Class;)Lorg/apache/log4j/h/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/log4j/h/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public a()Lorg/apache/log4j/h/b;
    .registers 2

    sget-object v0, Lorg/apache/log4j/h/c;->b:Lorg/apache/log4j/h/b;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lorg/apache/log4j/h/b;
    .registers 3

    :goto_0
    if-eqz p1, :cond_18

    iget-object v0, p0, Lorg/apache/log4j/h/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/h/b;

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/log4j/h/c;->b(Ljava/lang/Class;)Lorg/apache/log4j/h/b;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_18
    sget-object v0, Lorg/apache/log4j/h/c;->b:Lorg/apache/log4j/h/b;

    goto :goto_c
.end method

.method public a(Ljava/lang/Class;Lorg/apache/log4j/h/b;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/h/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method b(Ljava/lang/Class;)Lorg/apache/log4j/h/b;
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/h/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/h/b;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x0

    :goto_10
    array-length v1, v2

    if-ge v0, v1, :cond_20

    aget-object v1, v2, v0

    invoke-virtual {p0, v1}, Lorg/apache/log4j/h/c;->b(Ljava/lang/Class;)Lorg/apache/log4j/h/b;

    move-result-object v1

    if-eqz v1, :cond_1d

    move-object v0, v1

    goto :goto_a

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(Ljava/lang/Object;)Lorg/apache/log4j/h/b;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/h/c;->a(Ljava/lang/Class;)Lorg/apache/log4j/h/b;

    move-result-object v0

    goto :goto_3
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/h/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.class public Lorg/apache/b/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/c/l;


# static fields
.field private static a:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/b/a/c/e;->g:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.b.a.c.f"

    invoke-static {v0}, Lorg/apache/b/a/c/e;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/c/e;->g:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/c/f;->a:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/b/a/c/e;->g:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/c/k;
    .registers 15

    const/4 v0, 0x0

    const-string v1, ""

    new-instance v2, Lorg/apache/b/a/c/b/a/a;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/b/a/c/b/a/a;-><init>(Ljava/io/Reader;)V

    :try_start_d
    invoke-virtual {v2}, Lorg/apache/b/a/c/b/a/a;->f()V
    :try_end_10
    .catch Lorg/apache/b/a/c/b/a/d; {:try_start_d .. :try_end_10} :catch_83
    .catch Lorg/apache/b/a/c/b/a/g; {:try_start_d .. :try_end_10} :catch_b4

    move-object v6, v0

    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v2}, Lorg/apache/b/a/c/b/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/b/a/c/b/a/a;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_ee

    if-eqz v4, :cond_ee

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/b/a/c/b/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/b/a/c/b/a/a;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/b/a/c/b/a/a;->d()Ljava/util/ArrayList;
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_43} :catch_f9

    move-result-object v4

    if-eqz v3, :cond_ee

    if-eqz v4, :cond_ee

    const/4 v2, 0x0

    :goto_49
    :try_start_49
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_ee

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_ee

    if-nez v0, :cond_104

    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x3ff4cccccccccccdL

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v7, v9

    double-to-int v7, v7

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V
    :try_end_6b
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_6b} :catch_100

    :goto_6b
    :try_start_6b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_7e} :catch_fd

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v5

    goto :goto_49

    :catch_83
    move-exception v6

    sget-object v3, Lorg/apache/b/a/c/f;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lorg/apache/b/a/c/f;->a:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parsing value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v6}, Lorg/apache/b/a/c/b/a/d;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_11

    :catch_b4
    move-exception v3

    sget-object v4, Lorg/apache/b/a/c/f;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_e3

    sget-object v4, Lorg/apache/b/a/c/f;->a:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Parsing value \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/b/a/c/b/a/g;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_e3
    new-instance v6, Lorg/apache/b/a/c/b/a/d;

    invoke-virtual {v3}, Lorg/apache/b/a/c/b/a/g;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/apache/b/a/c/b/a/d;-><init>(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_ee
    move-object v5, v0

    move-object v4, v1

    :goto_f0
    new-instance v0, Lorg/apache/b/a/c/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/b/a/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/b/a/c/b/a/d;)V

    return-object v0

    :catch_f9
    move-exception v2

    move-object v5, v0

    move-object v4, v1

    goto :goto_f0

    :catch_fd
    move-exception v0

    move-object v4, v1

    goto :goto_f0

    :catch_100
    move-exception v2

    move-object v5, v0

    move-object v4, v1

    goto :goto_f0

    :cond_104
    move-object v5, v0

    goto/16 :goto_6b
.end method

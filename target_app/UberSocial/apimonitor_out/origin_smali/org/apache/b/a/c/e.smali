.class public Lorg/apache/b/a/c/e;
.super Lorg/apache/b/a/c/k;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "multipart/"

.field public static final b:Ljava/lang/String; = "multipart/digest"

.field public static final c:Ljava/lang/String; = "text/plain"

.field public static final d:Ljava/lang/String; = "message/rfc822"

.field public static final e:Ljava/lang/String; = "boundary"

.field public static final f:Ljava/lang/String; = "charset"

.field static g:Ljava/lang/Class;


# instance fields
.field private x:Ljava/lang/String;

.field private y:Ljava/util/Map;

.field private z:Lorg/apache/b/a/c/b/a/d;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/b/a/c/b/a/d;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/b/a/c/e;->x:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/b/a/c/e;->y:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/b/a/c/e;->x:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/b/a/c/e;->y:Ljava/util/Map;

    iput-object p6, p0, Lorg/apache/b/a/c/e;->z:Lorg/apache/b/a/c/b/a/d;

    return-void
.end method

.method public static a(Lorg/apache/b/a/c/e;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lorg/apache/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lorg/apache/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lorg/apache/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, "us-ascii"

    goto :goto_16
.end method

.method public static a(Lorg/apache/b/a/c/e;Lorg/apache/b/a/c/e;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lorg/apache/b/a/c/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/apache/b/a/c/e;->f()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lorg/apache/b/a/c/e;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    :cond_18
    if-eqz p1, :cond_25

    const-string v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lorg/apache/b/a/c/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "message/rfc822"

    :goto_24
    return-object v0

    :cond_25
    const-string v0, "text/plain"

    goto :goto_24

    :cond_28
    invoke-virtual {p0}, Lorg/apache/b/a/c/e;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method static c(Ljava/lang/String;)Ljava/lang/Class;
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


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/c/e;->y:Ljava/util/Map;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/b/a/c/e;->y:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public a()Lorg/apache/b/a/c/b/a/d;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/c/e;->z:Lorg/apache/b/a/c/b/a/d;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/c/e;->x:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/c/e;->x:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/c/e;->y:Ljava/util/Map;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/b/a/c/e;->y:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_a
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "boundary"

    invoke-virtual {p0, v0}, Lorg/apache/b/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lorg/apache/b/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/c/e;->x:Ljava/lang/String;

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

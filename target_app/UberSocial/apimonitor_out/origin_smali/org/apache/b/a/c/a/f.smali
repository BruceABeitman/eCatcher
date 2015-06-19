.class public Lorg/apache/b/a/c/a/f;
.super Lorg/apache/b/a/c/a/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/apache/b/a/c/a/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/b/a/c/a/h;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/b/a/c/a/a;-><init>()V

    iput-object p1, p0, Lorg/apache/b/a/c/a/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/b/a/c/a/f;->b:Lorg/apache/b/a/c/a/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/c/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/apache/b/a/c/a/h;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/c/a/f;->b:Lorg/apache/b/a/c/a/h;

    return-object v0
.end method

.method protected b(Ljava/util/ArrayList;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/b/a/c/a/f;->b:Lorg/apache/b/a/c/a/h;

    invoke-virtual {v1}, Lorg/apache/b/a/c/a/h;->a()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lorg/apache/b/a/c/a/f;->b:Lorg/apache/b/a/c/a/h;

    invoke-virtual {v1, v0}, Lorg/apache/b/a/c/a/h;->a(I)Lorg/apache/b/a/c/a/g;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/apache/b/a/c/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_10
    iget-object v2, p0, Lorg/apache/b/a/c/a/f;->b:Lorg/apache/b/a/c/a/h;

    invoke-virtual {v2}, Lorg/apache/b/a/c/a/h;->a()I

    move-result v2

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Lorg/apache/b/a/c/a/f;->b:Lorg/apache/b/a/c/a/h;

    invoke-virtual {v2, v0}, Lorg/apache/b/a/c/a/h;->a(I)Lorg/apache/b/a/c/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/b/a/c/a/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/b/a/c/a/f;->b:Lorg/apache/b/a/c/a/h;

    invoke-virtual {v3}, Lorg/apache/b/a/c/a/h;->a()I

    move-result v3

    if-ge v2, v3, :cond_34

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_37
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

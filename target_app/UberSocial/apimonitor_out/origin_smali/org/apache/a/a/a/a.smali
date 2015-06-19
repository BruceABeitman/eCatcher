.class public Lorg/apache/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/a/a/a/b;

.field private final c:Lorg/apache/a/a/a/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lorg/apache/a/a/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/a/a/a/a;->c:Lorg/apache/a/a/a/a/c;

    new-instance v0, Lorg/apache/a/a/a/b;

    invoke-direct {v0}, Lorg/apache/a/a/a/b;-><init>()V

    iput-object v0, p0, Lorg/apache/a/a/a/a;->b:Lorg/apache/a/a/a/b;

    invoke-virtual {p0, p2}, Lorg/apache/a/a/a/a;->a(Lorg/apache/a/a/a/a/c;)V

    invoke-virtual {p0, p2}, Lorg/apache/a/a/a/a;->b(Lorg/apache/a/a/a/a/c;)V

    invoke-virtual {p0, p2}, Lorg/apache/a/a/a/a;->c(Lorg/apache/a/a/a/a/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/apache/a/a/a/a;->b:Lorg/apache/a/a/a/b;

    new-instance v1, Lorg/apache/a/a/a/f;

    invoke-direct {v1, p1, p2}, Lorg/apache/a/a/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/a/a/a/b;->a(Lorg/apache/a/a/a/f;)V

    return-void
.end method

.method protected a(Lorg/apache/a/a/a/a/c;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lorg/apache/a/a/a/a/c;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/a;->c:Lorg/apache/a/a/a/a/c;

    return-object v0
.end method

.method protected b(Lorg/apache/a/a/a/a/c;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/a/a/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/a/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/a/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Lorg/apache/a/a/a/b;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/a;->b:Lorg/apache/a/a/a/b;

    return-object v0
.end method

.method protected c(Lorg/apache/a/a/a/a/c;)V
    .registers 4

    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lorg/apache/a/a/a/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

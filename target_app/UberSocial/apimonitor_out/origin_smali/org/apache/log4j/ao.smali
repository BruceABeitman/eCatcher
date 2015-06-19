.class public Lorg/apache/log4j/ao;
.super Lorg/apache/log4j/c/f;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/StringBuffer;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/apache/log4j/c/f;-><init>()V

    iput-boolean v0, p0, Lorg/apache/log4j/ao;->k:Z

    iput-boolean v0, p0, Lorg/apache/log4j/ao;->l:Z

    iput-boolean v0, p0, Lorg/apache/log4j/ao;->m:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    const-string v0, "RELATIVE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/ao;->a(Ljava/lang/String;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/apache/log4j/c/f;-><init>()V

    iput-boolean v0, p0, Lorg/apache/log4j/ao;->k:Z

    iput-boolean v0, p0, Lorg/apache/log4j/ao;->l:Z

    iput-boolean v0, p0, Lorg/apache/log4j/ao;->m:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/ao;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x20

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/ao;->a(Ljava/lang/StringBuffer;Lorg/apache/log4j/k/k;)V

    iget-boolean v0, p0, Lorg/apache/log4j/ao;->k:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lorg/apache/log4j/ao;->l:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4c
    iget-boolean v0, p0, Lorg/apache/log4j/ao;->m:Z

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v1, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_60
    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/log4j/ao;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/ao;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/ao;->k:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/ao;->k:Z

    return v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/ao;->l:Z

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/ao;->m:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/ao;->l:Z

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/ao;->m:Z

    return v0
.end method

.class public Lorg/apache/log4j/l/k;
.super Lorg/apache/log4j/k/f;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String; = "StringToMatch"

.field public static final f:Ljava/lang/String; = "AcceptOnMatch"


# instance fields
.field g:Z

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/log4j/k/f;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/l/k;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, p0, Lorg/apache/log4j/l/k;->h:Ljava/lang/String;

    if-nez v3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget-object v3, p0, Lorg/apache/log4j/l/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_c

    iget-boolean v0, p0, Lorg/apache/log4j/l/k;->g:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_c

    :cond_1b
    move v0, v1

    goto :goto_c
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/l/k;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "StringToMatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object p2, p0, Lorg/apache/log4j/l/k;->h:Ljava/lang/String;

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "AcceptOnMatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/log4j/l/k;->g:Z

    invoke-static {p2, v0}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/log4j/l/k;->g:Z

    goto :goto_a
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/l/k;->g:Z

    return-void
.end method

.method public b()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "StringToMatch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AcceptOnMatch"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/l/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/l/k;->g:Z

    return v0
.end method

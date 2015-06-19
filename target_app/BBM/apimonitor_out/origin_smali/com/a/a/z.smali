.class Lcom/a/a/z;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/a/a/aa;

.field protected final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/x;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    sget v0, Lcom/a/a/c;->b:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/z;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/z;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/z;->f:Ljava/util/Set;

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/a/a/z;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(Lcom/a/a/ae;)V
    .registers 11

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/a/a/ae;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/a/a/ae;->d:Ljava/lang/String;

    const-string v0, "CHARSET"

    invoke-virtual {p1, v0}, Lcom/a/a/ae;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_211

    const-string v0, "UTF-8"

    move-object v2, v0

    :goto_28
    const-string v0, "ADR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "ORG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "N"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    :cond_40
    const-string v1, "ISO-8859-1"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    const-string v5, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-direct {p0, v3}, Lcom/a/a/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/a/a/ae;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/z;->c()I

    move-result v3

    invoke-static {v0, v3}, Lcom/a/a/ag;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/a/a/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_77
    move-object v0, v1

    goto :goto_1f

    :cond_79
    invoke-direct {p0, v3}, Lcom/a/a/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/z;->c()I

    move-result v3

    invoke-static {v0, v3}, Lcom/a/a/ag;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/a/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    :cond_9d
    iput-object v4, p1, Lcom/a/a/ae;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0, p1}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    goto :goto_a5

    :cond_b5
    iget-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    const-string v5, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    const-string v0, "FN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    const-string v0, "ENCODING"

    invoke-virtual {p1, v0}, Lcom/a/a/ae;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_101

    invoke-static {v3}, Lcom/a/a/ag;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    :cond_d5
    invoke-direct {p0, v3}, Lcom/a/a/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-static {v0, v1, v2}, Lcom/a/a/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v0, p1, Lcom/a/a/ae;->d:Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/a/a/ae;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0, p1}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    goto :goto_f1

    :cond_101
    iget-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    const-string v4, "BASE64"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_115

    iget-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    const-string v4, "B"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    :cond_115
    :try_start_115
    invoke-virtual {p0, v3}, Lcom/a/a/z;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/OutOfMemoryError; {:try_start_115 .. :try_end_118} :catch_136

    move-result-object v0

    const/4 v1, 0x0

    :try_start_11a
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p1, Lcom/a/a/ae;->f:[B
    :try_end_120
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11a .. :try_end_120} :catch_154
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11a .. :try_end_120} :catch_136

    :try_start_120
    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_126
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0, p1}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V
    :try_end_135
    .catch Ljava/lang/OutOfMemoryError; {:try_start_120 .. :try_end_135} :catch_136

    goto :goto_126

    :catch_136
    move-exception v0

    const-string v0, "vCard"

    const-string v1, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_144
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0, p1}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    goto :goto_144

    :catch_154
    move-exception v0

    :try_start_155
    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decode error on base64 photo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_155 .. :try_end_16a} :catch_136

    :cond_16a
    iget-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    const-string v4, "7BIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a0

    iget-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    const-string v4, "8BIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a0

    iget-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    const-string v4, "X-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a0

    const-string v0, "vCard"

    const-string v4, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/a/a/z;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a0
    invoke-virtual {p0}, Lcom/a/a/z;->c()I

    move-result v0

    if-nez v0, :cond_20f

    move-object v0, v1

    :goto_1a7
    iget-object v1, p0, Lcom/a/a/z;->d:Lcom/a/a/aa;

    invoke-virtual {v1}, Lcom/a/a/aa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1de

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1de

    const-string v4, "END:VCARD"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1de

    invoke-virtual {p0}, Lcom/a/a/z;->a()Ljava/lang/String;

    if-nez v0, :cond_1d6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d6
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a7

    :cond_1de
    if-eqz v0, :cond_20f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/a/a/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ISO-8859-1"

    invoke-static {v0, v3, v2}, Lcom/a/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p1, Lcom/a/a/ae;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1fe
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0, p1}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    goto :goto_1fe

    :cond_20e
    return-void

    :cond_20f
    move-object v0, v3

    goto :goto_1e4

    :cond_211
    move-object v2, v0

    goto/16 :goto_28
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x3d

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2e
    invoke-virtual {p0}, Lcom/a/a/z;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    new-instance v0, Lcom/a/a/a/b;

    const-string v1, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_4e
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4e

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6a
    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    iget-object v1, p0, Lcom/a/a/z;->d:Lcom/a/a/aa;

    invoke-virtual {v1}, Lcom/a/a/aa;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v1}, Lcom/a/a/z;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    invoke-virtual {p0}, Lcom/a/a/z;->a()Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/a/a/ae;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_26

    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Language: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v0

    :goto_2d
    if-ge v1, v4, :cond_57

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/a/a/z;->a(C)Z

    move-result v5

    if-nez v5, :cond_54

    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Language: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_57
    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_5e
    if-ge v0, v2, :cond_88

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/a/a/z;->a(C)Z

    move-result v3

    if-nez v3, :cond_85

    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Language: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_88
    const-string v0, "LANGUAGE"

    invoke-virtual {p0, v0, p1}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, -0x1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_24

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v2, :cond_1d

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    if-eq v0, v2, :cond_26

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11

    :cond_24
    const/4 v0, 0x0

    goto :goto_1c

    :cond_26
    move v0, v1

    goto :goto_11
.end method

.method private f()Z
    .registers 3

    const/4 v0, 0x0

    const-string v1, "8BIT"

    iput-object v1, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/a/a/z;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/a/a/z;->a(Z)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0}, Lcom/a/a/x;->c()V

    goto :goto_16

    :cond_26
    invoke-direct {p0}, Lcom/a/a/z;->g()V

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0}, Lcom/a/a/x;->d()V

    goto :goto_2f

    :cond_3f
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private g()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/a/a/z;->h()Z
    :try_end_4
    .catch Lcom/a/a/a/c; {:try_start_1 .. :try_end_4} :catch_c

    move-result v0

    :goto_5
    if-nez v0, :cond_1e

    :try_start_7
    invoke-direct {p0}, Lcom/a/a/z;->h()Z
    :try_end_a
    .catch Lcom/a/a/a/c; {:try_start_7 .. :try_end_a} :catch_15

    move-result v0

    goto :goto_5

    :catch_c
    move-exception v1

    const-string v1, "vCard"

    const-string v2, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_15
    move-exception v1

    const-string v1, "vCard"

    const-string v2, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_1e
    return-void
.end method

.method private h()Z
    .registers 14

    const/16 v12, 0x3b

    const/16 v11, 0x3a

    const/16 v10, 0x22

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/z;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lcom/a/a/ae;

    invoke-direct {v3}, Lcom/a/a/ae;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_29

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_29

    new-instance v0, Lcom/a/a/a/c;

    invoke-direct {v0}, Lcom/a/a/a/c;-><init>()V

    throw v0

    :cond_29
    move v5, v4

    move v0, v4

    move v1, v4

    :goto_2c
    if-ge v5, v7, :cond_fc

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    packed-switch v1, :pswitch_data_1d4

    :cond_35
    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :pswitch_38
    if-ne v8, v11, :cond_70

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/ae;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v7, -0x1

    if-ge v5, v0, :cond_6d

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    iput-object v0, v3, Lcom/a/a/ae;->d:Ljava/lang/String;

    move-object v0, v3

    :goto_4e
    iget-object v1, v0, Lcom/a/a/ae;->a:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/a/a/ae;->d:Ljava/lang/String;

    const-string v5, "BEGIN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12c

    const-string v0, "VCARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-direct {p0}, Lcom/a/a/z;->i()V

    :goto_6b
    move v2, v4

    :cond_6c
    return v2

    :cond_6d
    const-string v0, ""

    goto :goto_4b

    :cond_70
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_99

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_88

    const-string v0, "vCard"

    const-string v8, "Empty group found. Ignoring."

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    add-int/lit8 v0, v5, 0x1

    goto :goto_35

    :cond_88
    iget-object v8, v3, Lcom/a/a/ae;->b:Ljava/util/List;

    if-nez v8, :cond_93

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, Lcom/a/a/ae;->b:Ljava/util/List;

    :cond_93
    iget-object v8, v3, Lcom/a/a/ae;->b:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_99
    if-ne v8, v12, :cond_35

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/ae;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v5, 0x1

    :cond_a4
    :goto_a4
    move v1, v2

    goto :goto_35

    :pswitch_a6
    if-ne v8, v10, :cond_be

    const-string v1, "2.1"

    invoke-virtual {p0}, Lcom/a/a/z;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const-string v1, "vCard"

    const-string v8, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    const/4 v1, 0x2

    goto/16 :goto_35

    :cond_be
    if-ne v8, v12, :cond_cb

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/a/a/z;->a(Lcom/a/a/ae;Ljava/lang/String;)V

    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_35

    :cond_cb
    if-ne v8, v11, :cond_35

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/a/a/z;->a(Lcom/a/a/ae;Ljava/lang/String;)V

    add-int/lit8 v0, v7, -0x1

    if-ge v5, v0, :cond_e3

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_de
    iput-object v0, v3, Lcom/a/a/ae;->d:Ljava/lang/String;

    move-object v0, v3

    goto/16 :goto_4e

    :cond_e3
    const-string v0, ""

    goto :goto_de

    :pswitch_e6
    if-ne v8, v10, :cond_35

    const-string v1, "2.1"

    invoke-virtual {p0}, Lcom/a/a/z;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    const-string v1, "vCard"

    const-string v8, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :cond_fc
    new-instance v0, Lcom/a/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid line: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_117
    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown BEGIN type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12c
    const-string v5, "END"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_151

    const-string v0, "VCARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown END type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_151
    iget-object v2, v0, Lcom/a/a/ae;->d:Ljava/lang/String;

    const-string v3, "AGENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_160

    invoke-virtual {p0, v0}, Lcom/a/a/z;->a(Lcom/a/a/ae;)V

    goto/16 :goto_6b

    :cond_160
    invoke-virtual {p0}, Lcom/a/a/z;->e()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_199

    const-string v3, "X-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_199

    iget-object v3, p0, Lcom/a/a/z;->e:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_199

    iget-object v3, p0, Lcom/a/a/z;->e:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Property name unsupported by vCard 2.1: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_199
    const-string v3, "VERSION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ce

    invoke-virtual {p0}, Lcom/a/a/z;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ce

    new-instance v0, Lcom/a/a/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Incompatible version: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/z;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ce
    invoke-direct {p0, v0}, Lcom/a/a/z;->b(Lcom/a/a/ae;)V

    goto/16 :goto_6b

    nop

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_38
        :pswitch_a6
        :pswitch_e6
    .end packed-switch
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0}, Lcom/a/a/x;->c()V

    goto :goto_6

    :cond_16
    invoke-direct {p0}, Lcom/a/a/z;->g()V

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0}, Lcom/a/a/x;->d()V

    goto :goto_1f

    :cond_2f
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/a/z;->d:Lcom/a/a/aa;

    invoke-virtual {v0}, Lcom/a/a/aa;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    iget-object v1, p0, Lcom/a/a/z;->d:Lcom/a/a/aa;

    invoke-virtual {v1}, Lcom/a/a/aa;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    new-instance v0, Lcom/a/a/a/b;

    const-string v1, "File ended during parsing BASE64 binary"

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-static {v1}, Lcom/a/a/z;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/a/z;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "vCard"

    const-string v3, "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "vCard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problematic line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    invoke-virtual {p0}, Lcom/a/a/z;->a()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method protected a(Lcom/a/a/ae;)V
    .registers 4

    iget-object v0, p1, Lcom/a/a/ae;->d:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0, p1}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    goto :goto_16

    :cond_26
    new-instance v0, Lcom/a/a/a/a;

    const-string v1, "AGENT Property is not supported now."

    invoke-direct {v0, v1}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    return-void
.end method

.method protected a(Lcom/a/a/ae;Ljava/lang/String;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-string v0, "="

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v3, :cond_fb

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p0, p1, v0}, Lcom/a/a/z;->c(Lcom/a/a/ae;Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    const-string v2, "VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    sget-object v1, Lcom/a/a/ac;->c:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/a/a/z;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/a/a/z;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "vCard"

    const-string v2, "The value unsupported by TYPE of %s: "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/a/a/z;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    const-string v1, "VALUE"

    invoke-virtual {p1, v1, v0}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_74
    const-string v2, "ENCODING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    sget-object v1, Lcom/a/a/ac;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    :cond_8c
    const-string v1, "ENCODING"

    invoke-virtual {p1, v1, v0}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/z;->b:Ljava/lang/String;

    goto :goto_29

    :cond_9a
    new-instance v1, Lcom/a/a/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown encoding \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b5
    const-string v2, "CHARSET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iput-object v0, p0, Lcom/a/a/z;->c:Ljava/lang/String;

    const-string v1, "CHARSET"

    invoke-virtual {p1, v1, v0}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_c6
    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-static {p1, v0}, Lcom/a/a/z;->d(Lcom/a/a/ae;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_d3
    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-virtual {p0, p1, v1, v0}, Lcom/a/a/z;->a(Lcom/a/a/ae;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_e0
    new-instance v0, Lcom/a/a/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fb
    aget-object v0, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/a/a/z;->b(Lcom/a/a/ae;Ljava/lang/String;)V

    goto/16 :goto_29
.end method

.method protected a(Lcom/a/a/ae;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/a/a/x;)V
    .registers 3

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/a/a/z;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/a/a/aa;

    invoke-direct {v1, v0}, Lcom/a/a/aa;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/a/a/z;->d:Lcom/a/a/aa;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0}, Lcom/a/a/x;->a()V

    goto :goto_21

    :cond_31
    monitor-enter p0

    :try_start_32
    iget-boolean v0, p0, Lcom/a/a/z;->h:Z

    if-eqz v0, :cond_54

    const-string v0, "vCard"

    const-string v1, "Cancel request has come. exitting parse operation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_5c

    :goto_3e
    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    invoke-interface {v0}, Lcom/a/a/x;->b()V

    goto :goto_44

    :cond_54
    monitor-exit p0

    invoke-direct {p0}, Lcom/a/a/z;->f()Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_3e

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5f
    return-void
.end method

.method protected a(Z)Z
    .registers 9

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p0}, Lcom/a/a/z;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    :goto_9
    return v0

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, ":"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v6, :cond_3b

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BEGIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move v0, v1

    goto :goto_9

    :cond_3b
    if-nez p1, :cond_58

    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" came)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    if-nez p1, :cond_3

    new-instance v0, Lcom/a/a/a/b;

    const-string v1, "Reached where must not be reached."

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b()Ljava/lang/String;
    .registers 3

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/z;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/a/a/a/b;

    const-string v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method protected b(Lcom/a/a/ae;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/a/z;->c(Lcom/a/a/ae;Ljava/lang/String;)V

    return-void
.end method

.method protected c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Lcom/a/a/ae;Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/a/a/ac;->b:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/a/a/z;->e:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/a/a/z;->e:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "vCard"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/a/a/z;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const-string v0, "TYPE"

    invoke-virtual {p1, v0, p2}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "2.1"

    return-object v0
.end method

.method protected e()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/ac;->a:Ljava/util/Set;

    return-object v0
.end method

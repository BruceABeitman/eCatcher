.class public Lcom/admarvel/android/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/BufferedReader;

.field private b:Z

.field private c:C

.field private d:C

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5

    const/16 v0, 0x2c

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/admarvel/android/b/b;-><init>(Ljava/io/Reader;CCI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/b/b;->b:Z

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/admarvel/android/b/b;->a:Ljava/io/BufferedReader;

    iput-char p2, p0, Lcom/admarvel/android/b/b;->c:C

    iput-char p3, p0, Lcom/admarvel/android/b/b;->d:C

    iput p4, p0, Lcom/admarvel/android/b/b;->e:I

    return-void
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    move-object v0, p1

    :goto_11
    if-eqz v1, :cond_30

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/admarvel/android/b/b;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    :goto_1e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_4

    :cond_30
    move-object v4, v3

    move v3, v1

    move v1, v2

    :goto_33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_a2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-char v7, p0, Lcom/admarvel/android/b/b;->d:C

    if-ne v6, v7, :cond_8b

    if-eqz v3, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    if-le v7, v8, :cond_63

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v8, p0, Lcom/admarvel/android/b/b;->d:C

    if-ne v7, v8, :cond_63

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    :cond_60
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_63
    if-nez v3, :cond_89

    const/4 v3, 0x1

    :goto_66
    const/4 v7, 0x2

    if-le v1, v7, :cond_60

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v8, p0, Lcom/admarvel/android/b/b;->c:C

    if-eq v7, v8, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    if-le v7, v8, :cond_60

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v8, p0, Lcom/admarvel/android/b/b;->c:C

    if-eq v7, v8, :cond_60

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_60

    :cond_89
    move v3, v2

    goto :goto_66

    :cond_8b
    iget-char v7, p0, Lcom/admarvel/android/b/b;->c:C

    if-ne v6, v7, :cond_9e

    if-nez v3, :cond_9e

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_60

    :cond_9e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_60

    :cond_a2
    if-nez v3, :cond_a7

    move-object v3, v4

    goto/16 :goto_1e

    :cond_a7
    move v1, v3

    move-object v3, v4

    goto/16 :goto_11
.end method

.method private d()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/admarvel/android/b/b;->f:Z

    if-nez v0, :cond_15

    move v0, v1

    :goto_6
    iget v2, p0, Lcom/admarvel/android/b/b;->e:I

    if-ge v0, v2, :cond_12

    iget-object v2, p0, Lcom/admarvel/android/b/b;->a:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/b/b;->f:Z

    :cond_15
    iget-object v0, p0, Lcom/admarvel/android/b/b;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    iput-boolean v1, p0, Lcom/admarvel/android/b/b;->b:Z

    :cond_1f
    iget-boolean v1, p0, Lcom/admarvel/android/b/b;->b:Z

    if-eqz v1, :cond_24

    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/admarvel/android/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/admarvel/android/b/b;->b:Z

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/admarvel/android/b/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/b/b;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lcom/admarvel/android/b/b;->a()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_8

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_17
    return-object v0
.end method

.class public final Lcom/instagram/common/i/a/b;
.super Ljava/lang/Object;
.source "Joiner.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/common/i/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/instagram/common/i/a/b;
    .registers 2

    new-instance v0, Lcom/instagram/common/i/a/b;

    const-string v1, ","

    invoke-direct {v0, v1}, Lcom/instagram/common/i/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/instagram/common/i/a/b;
    .registers 2

    new-instance v0, Lcom/instagram/common/i/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/common/i/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator",
            "<*>;)TA;"
        }
    .end annotation

    invoke-static {p1}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/instagram/common/i/a/b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_14

    :cond_2b
    return-object p1
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    check-cast p0, Ljava/lang/CharSequence;

    :goto_9
    return-object p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method static synthetic a(Lcom/instagram/common/i/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/i/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-object p1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/i/a/b;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/common/i/a/c;
    .registers 4

    new-instance v0, Lcom/instagram/common/i/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/i/a/c;-><init>(Lcom/instagram/common/i/a/b;Ljava/lang/String;B)V

    return-object v0
.end method

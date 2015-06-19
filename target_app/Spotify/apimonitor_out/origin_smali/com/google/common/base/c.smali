.class public Lcom/google/common/base/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/base/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/c;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/base/c;-><init>(Lcom/google/common/base/c;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/common/base/c;
    .registers 2

    new-instance v0, Lcom/google/common/base/c;

    invoke-direct {v0, p0}, Lcom/google/common/base/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/CharSequence;

    :goto_9
    return-object p1

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
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
    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/c;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/common/base/c;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/c;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_14

    :catch_2b
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_32
    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/google/common/base/c;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/c$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/common/base/c$1;-><init>(Lcom/google/common/base/c;Lcom/google/common/base/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/common/base/d;
    .registers 4

    new-instance v0, Lcom/google/common/base/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/d;-><init>(Lcom/google/common/base/c;Ljava/lang/String;B)V

    return-object v0
.end method

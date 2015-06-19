.class Lcom/glympse/android/hal/as;
.super Ljava/lang/Object;
.source "LocalContactsProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/glympse/android/lib/GPerson;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/hal/ao$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/hal/as;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/glympse/android/lib/GPerson;Lcom/glympse/android/lib/GPerson;)I
    .registers 5

    invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getNormalizedName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/lib/GPerson;->getNormalizedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    if-nez v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/hal/as;->b(Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/glympse/android/hal/as;->b(Ljava/lang/Class;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_16
.end method

.method b(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/glympse/android/lib/GPerson;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lcom/glympse/android/lib/PersonLocal;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/glympse/android/lib/GPerson;

    check-cast p2, Lcom/glympse/android/lib/GPerson;

    invoke-virtual {p0, p1, p2}, Lcom/glympse/android/hal/as;->a(Lcom/glympse/android/lib/GPerson;Lcom/glympse/android/lib/GPerson;)I

    move-result v0

    return v0
.end method

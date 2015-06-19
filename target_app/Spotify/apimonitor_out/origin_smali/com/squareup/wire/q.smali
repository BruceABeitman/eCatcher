.class final Lcom/squareup/wire/q;
.super Lcom/squareup/wire/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/wire/o",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/squareup/wire/o;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/squareup/wire/q;->b:Ljava/util/Map;

    return-void
.end method

.method public static b(Ljava/util/Map;)Lcom/squareup/wire/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;)",
            "Lcom/squareup/wire/q",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/wire/q;

    invoke-direct {v0, p0}, Lcom/squareup/wire/q;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/q;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Z
    .registers 4

    iget-object v0, p0, Lcom/squareup/wire/q;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

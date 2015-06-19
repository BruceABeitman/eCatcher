.class final Lcom/squareup/wire/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/squareup/wire/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/squareup/wire/m;

    check-cast p2, Lcom/squareup/wire/m;

    invoke-interface {p1}, Lcom/squareup/wire/m;->a()I

    move-result v0

    invoke-interface {p2}, Lcom/squareup/wire/m;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

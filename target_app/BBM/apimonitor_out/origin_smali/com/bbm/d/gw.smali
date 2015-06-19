.class final Lcom/bbm/d/gw;
.super Ljava/lang/Object;
.source "UserSortUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/text/CollationKey;


# direct methods
.method constructor <init>([Ljava/text/CollationKey;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/gw;->a:[Ljava/text/CollationKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/bbm/d/gw;->a:[Ljava/text/CollationKey;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/bbm/d/gw;->a:[Ljava/text/CollationKey;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

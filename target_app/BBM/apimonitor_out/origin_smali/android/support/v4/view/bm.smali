.class final Landroid/support/v4/view/bm;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/view/bq;",
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
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Landroid/support/v4/view/bq;

    check-cast p2, Landroid/support/v4/view/bq;

    iget v0, p1, Landroid/support/v4/view/bq;->b:I

    iget v1, p2, Landroid/support/v4/view/bq;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

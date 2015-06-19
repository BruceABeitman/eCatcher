.class final Landroid/support/v4/view/be;
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
        "Landroid/support/v4/view/bi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/support/v4/view/bi;Landroid/support/v4/view/bi;)I
    .registers 4

    iget v0, p0, Landroid/support/v4/view/bi;->b:I

    iget v1, p1, Landroid/support/v4/view/bi;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/support/v4/view/bi;

    check-cast p2, Landroid/support/v4/view/bi;

    invoke-static {p1, p2}, Landroid/support/v4/view/be;->a(Landroid/support/v4/view/bi;Landroid/support/v4/view/bi;)I

    move-result v0

    return v0
.end method

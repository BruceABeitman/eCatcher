.class public abstract Landroid/support/v4/app/ac;
.super Landroid/support/v4/view/ae;
.source "FragmentPagerAdapter.java"


# instance fields
.field private final a:Landroid/support/v4/app/s;

.field private b:Landroid/support/v4/app/ag;

.field private c:Landroid/support/v4/app/Fragment;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/s;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/ae;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    iput-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)J
    .registers 3

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public abstract a(I)Landroid/support/v4/app/Fragment;
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    :cond_d
    invoke-static {p2}, Landroid/support/v4/app/ac;->b(I)J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/ac;->a(IJ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v1, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    :goto_26
    iget-object v1, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    if-eqz v1, :cond_55

    const/4 v1, 0x1

    :goto_2b
    if-eqz v1, :cond_32

    iget-object v3, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v3, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    if-eq v0, v3, :cond_3e

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->b(Z)V

    if-nez v1, :cond_3e

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->c_(Z)V

    :cond_3e
    return-object v0

    :cond_3f
    invoke-virtual {p0, p2}, Landroid/support/v4/app/ac;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v3, v4}, Landroid/support/v4/app/ac;->a(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v0, v3}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    goto :goto_26

    :cond_55
    move v1, v2

    goto :goto_2b
.end method

.method public final a()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ag;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->D()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final b()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    if-eq v0, v2, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->c_(Z)V

    goto :goto_b

    :cond_20
    iput-object v3, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->c()I

    iput-object v3, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()Z

    :cond_32
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p1, Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->c_(Z)V

    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->b(Z)V

    :cond_16
    if-eqz p1, :cond_1e

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->c_(Z)V

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->b(Z)V

    :cond_1e
    iput-object p1, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    :cond_20
    return-void
.end method

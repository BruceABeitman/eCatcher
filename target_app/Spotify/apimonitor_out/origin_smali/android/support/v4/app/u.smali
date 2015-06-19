.class public abstract Landroid/support/v4/app/u;
.super Landroid/support/v4/view/ah;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/r;

.field private b:Landroid/support/v4/app/w;

.field private c:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/r;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    iput-object v0, p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/r;

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


# virtual methods
.method public final a()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(I)Landroid/support/v4/app/Fragment;
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    :cond_d
    int-to-long v1, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/u;->a(IJ)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/r;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/w;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;

    :goto_23
    iget-object v1, p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_2d

    invoke-virtual {v0, v6}, Landroid/support/v4/app/Fragment;->b(Z)V

    invoke-virtual {v0, v6}, Landroid/support/v4/app/Fragment;->c(Z)V

    :cond_2d
    return-object v0

    :cond_2e
    invoke-virtual {p0, p2}, Landroid/support/v4/app/u;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5, v1, v2}, Landroid/support/v4/app/u;->a(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v0, v1}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    goto :goto_23
.end method

.method public final a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/w;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Landroid/support/v4/app/Fragment;

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b(Landroid/view/ViewGroup;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->c()I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/w;

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Z

    :cond_11
    return-void
.end method

.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p3, Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/Fragment;

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->b(Z)V

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->c(Z)V

    :cond_16
    if-eqz p3, :cond_1e

    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->b(Z)V

    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->c(Z)V

    :cond_1e
    iput-object p3, p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/Fragment;

    :cond_20
    return-void
.end method

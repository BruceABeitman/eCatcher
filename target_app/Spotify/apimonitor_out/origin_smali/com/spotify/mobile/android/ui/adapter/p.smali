.class final Lcom/spotify/mobile/android/ui/adapter/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ListAdapter;

.field public b:Ljava/lang/String;

.field public final c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Z

.field public l:Z


# direct methods
.method private constructor <init>(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;)V
    .registers 7

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/adapter/p;->h:I

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/p;->b:Ljava/lang/String;

    iput p3, p0, Lcom/spotify/mobile/android/ui/adapter/p;->c:I

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/p;->i:Landroid/view/View;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/adapter/p;->j:Landroid/view/View;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/adapter/p;->k:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/adapter/p;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;B)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/ui/adapter/p;-><init>(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->b()I

    move-result v0

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b()I
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b(I)Z
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->b()I

    move-result v0

    if-lt p1, v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final c()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/p;->i:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/adapter/p;->l:Z

    if-eqz v2, :cond_e

    move v2, v0

    :goto_b
    if-eqz v2, :cond_10

    :goto_d
    return v0

    :cond_e
    move v2, v1

    goto :goto_b

    :cond_10
    move v0, v1

    goto :goto_d
.end method

.method public final c(I)Z
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->d()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2b

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_2b

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public final d()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/p;->j:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/adapter/p;->k:Z

    if-eqz v2, :cond_e

    move v2, v0

    :goto_b
    if-eqz v2, :cond_10

    :goto_d
    return v0

    :cond_e
    move v2, v1

    goto :goto_b

    :cond_10
    move v0, v1

    goto :goto_d
.end method

.method public final d(I)I
    .registers 6

    iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/p;->f:I

    sub-int v1, p1, v0

    if-ltz v1, :cond_31

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->b()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->c()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->d()I

    move-result v2

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_31

    const/4 v0, 0x1

    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "global position out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    return v1

    :cond_31
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public final e(I)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/adapter/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should not find title at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1f
    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/adapter/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should not find header at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3a
    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/adapter/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_55

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should not find footer at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_55
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->b()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/p;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

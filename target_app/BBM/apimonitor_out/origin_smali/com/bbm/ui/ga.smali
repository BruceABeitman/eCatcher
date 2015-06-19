.class public abstract Lcom/bbm/ui/ga;
.super Lcom/bbm/ui/dy;
.source "SparseListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lcom/bbm/j/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bbm/ui/dy",
        "<TT;>;",
        "Landroid/widget/ListAdapter;",
        "Lcom/bbm/j/h;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/bbm/j/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/x",
            "<TT;>;"
        }
    .end annotation
.end field

.field public c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/bbm/j/x;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/x",
            "<TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/bbm/ui/dy;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/ui/ga;->c:Z

    iput-boolean v0, p0, Lcom/bbm/ui/ga;->g:Z

    iput-object p1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    iget-object v0, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v0, p0}, Lcom/bbm/j/x;->a(Lcom/bbm/j/h;)V

    iput p2, p0, Lcom/bbm/ui/ga;->e:I

    :try_start_11
    iget-object v0, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v0}, Lcom/bbm/j/x;->g()I

    move-result v0

    if-nez v0, :cond_28

    iget v0, p0, Lcom/bbm/ui/ga;->e:I

    :goto_1b
    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/bbm/j/x;->a(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/ga;->f:Z

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v0}, Lcom/bbm/j/x;->g()I
    :try_end_2d
    .catch Lcom/bbm/j/z; {:try_start_11 .. :try_end_2d} :catch_2f

    move-result v0

    goto :goto_1b

    :catch_2f
    move-exception v0

    goto :goto_27
.end method


# virtual methods
.method public final a()V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/bbm/ui/ga;->f:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v1}, Lcom/bbm/j/x;->g()I

    move-result v1

    if-lez v1, :cond_42

    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v3}, Lcom/bbm/j/x;->g()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/bbm/j/x;->a(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    :cond_21
    :goto_21
    iget-boolean v1, p0, Lcom/bbm/ui/ga;->h:Z

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_52

    iget-object v0, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v0}, Lcom/bbm/j/x;->g()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v1}, Lcom/bbm/j/x;->c()I

    move-result v1

    if-lt v0, v1, :cond_52

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/ga;->g:Z

    :goto_3e
    invoke-virtual {p0}, Lcom/bbm/ui/ga;->notifyDataSetChanged()V

    :cond_41
    :goto_41
    return-void

    :cond_42
    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v1}, Lcom/bbm/j/x;->g()I

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_21

    :catch_50
    move-exception v0

    goto :goto_41

    :cond_52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/ga;->g:Z
    :try_end_55
    .catch Lcom/bbm/j/z; {:try_start_0 .. :try_end_55} :catch_50

    goto :goto_3e
.end method

.method public final b()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/dy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/ga;->f:Z

    return-void
.end method

.method public final c()V
    .registers 5

    :try_start_0
    invoke-super {p0}, Lcom/bbm/ui/dy;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/ga;->f:Z

    iget-object v0, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    const/4 v1, 0x0

    iget v2, p0, Lcom/bbm/ui/ga;->e:I

    iget-object v3, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v3}, Lcom/bbm/j/x;->g()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bbm/j/x;->a(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;
    :try_end_1b
    .catch Lcom/bbm/j/z; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2e

    iget-boolean v1, p0, Lcom/bbm/ui/ga;->c:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/bbm/ui/ga;->g:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v1}, Lcom/bbm/j/x;->b()Z

    move-result v1

    if-nez v1, :cond_27

    add-int/lit8 v1, v0, -0xa

    if-ne p1, v1, :cond_27

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bbm/ui/ga;->h:Z

    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    iget v2, p0, Lcom/bbm/ui/ga;->e:I

    add-int/2addr v2, v0

    invoke-interface {v1, v0, v2}, Lcom/bbm/j/x;->a(II)Ljava/util/List;

    :cond_27
    iget-object v0, p0, Lcom/bbm/ui/ga;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    iget-boolean v1, p0, Lcom/bbm/ui/ga;->c:Z

    if-eqz v1, :cond_49

    iget-boolean v1, p0, Lcom/bbm/ui/ga;->g:Z

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    invoke-interface {v1}, Lcom/bbm/j/x;->b()Z

    move-result v1

    if-nez v1, :cond_49

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bbm/ui/ga;->h:Z

    iget-object v1, p0, Lcom/bbm/ui/ga;->b:Lcom/bbm/j/x;

    iget v2, p0, Lcom/bbm/ui/ga;->e:I

    add-int/2addr v2, v0

    invoke-interface {v1, v0, v2}, Lcom/bbm/j/x;->a(II)Ljava/util/List;
    :try_end_49
    .catch Lcom/bbm/j/z; {:try_start_0 .. :try_end_49} :catch_4b

    :cond_49
    :goto_49
    const/4 v0, 0x0

    goto :goto_2d

    :catch_4b
    move-exception v0

    goto :goto_49
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

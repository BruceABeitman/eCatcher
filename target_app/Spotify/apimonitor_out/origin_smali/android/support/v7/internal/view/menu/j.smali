.class abstract Landroid/support/v7/internal/view/menu/j;
.super Landroid/support/v7/internal/view/menu/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/internal/view/menu/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Landroid/support/v4/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/k;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/support/v4/a/a/b;
    .registers 4

    if-eqz p1, :cond_3a

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/a/b;

    if-nez v0, :cond_27

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_28

    new-instance v0, Landroid/support/v7/internal/view/menu/w;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/w;-><init>(Landroid/view/MenuItem;)V

    :goto_22
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-object v0

    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_34

    new-instance v0, Landroid/support/v7/internal/view/menu/s;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/view/MenuItem;)V

    goto :goto_22

    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_27
.end method

.method final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .registers 4

    if-eqz p1, :cond_2e

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->c:Ljava/util/HashMap;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/j;->c:Ljava/util/HashMap;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_27

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_28

    new-instance v0, Landroid/support/v7/internal/view/menu/ah;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/ah;-><init>(Landroid/view/SubMenu;)V

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_27
.end method

.method final a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_9
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_12
    return-void
.end method

.method final a(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    if-ne p1, v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f
.end method

.method final b(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne p1, v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4
.end method

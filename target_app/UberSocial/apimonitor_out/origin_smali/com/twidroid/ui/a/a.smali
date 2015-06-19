.class public abstract Lcom/twidroid/ui/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ListAdapter;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:I

.field private c:Z

.field private d:Z

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/LayoutInflater;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/ui/a/a;->h:Z

    iput-object p1, p0, Lcom/twidroid/ui/a/a;->e:Landroid/content/Context;

    if-eqz p1, :cond_1b

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Lcom/twidroid/ui/a/a;->f:Landroid/view/LayoutInflater;

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/twidroid/ui/a/a;->b:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/a/a;->h:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/a/a;->h:Z

    return v0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/a;->e:Landroid/content/Context;

    return-object v0
.end method

.method protected b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/a/a;->d:Z

    return-void
.end method

.method public c()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/a;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/a/a;->c:Z

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/a/a;->g:Z

    return-void
.end method

.method protected d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/a/a;->d:Z

    return v0
.end method

.method protected e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/a/a;->c:Z

    return v0
.end method

.method protected f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/a/a;->g:Z

    return v0
.end method

.method protected g()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/a/a;->b:I

    return v0
.end method

.method protected h()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

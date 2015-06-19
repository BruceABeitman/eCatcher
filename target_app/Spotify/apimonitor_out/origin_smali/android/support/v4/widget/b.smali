.class public abstract Landroid/support/v4/widget/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/e;
.implements Landroid/widget/Filterable;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/database/Cursor;

.field protected d:Landroid/content/Context;

.field protected e:I

.field protected f:Landroid/support/v4/widget/c;

.field protected g:Landroid/database/DataSetObserver;

.field protected h:Landroid/support/v4/widget/d;

.field protected i:Landroid/widget/FilterQueryProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v0, p0, Landroid/support/v4/widget/b;->b:Z

    iput-object v1, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    iput-boolean v0, p0, Landroid/support/v4/widget/b;->a:Z

    iput-object p1, p0, Landroid/support/v4/widget/b;->d:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/b;->e:I

    iput-object v1, p0, Landroid/support/v4/widget/b;->f:Landroid/support/v4/widget/c;

    iput-object v1, p0, Landroid/support/v4/widget/b;->g:Landroid/database/DataSetObserver;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/b;->i:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/widget/b;->i:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    goto :goto_a
.end method

.method public abstract a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void
.end method

.method public abstract a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public final b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/support/v4/widget/b;->f:Landroid/support/v4/widget/c;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/support/v4/widget/b;->f:Landroid/support/v4/widget/c;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_13
    iget-object v1, p0, Landroid/support/v4/widget/b;->g:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/support/v4/widget/b;->g:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1c
    iput-object p1, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    if-eqz p1, :cond_41

    iget-object v1, p0, Landroid/support/v4/widget/b;->f:Landroid/support/v4/widget/c;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/support/v4/widget/b;->f:Landroid/support/v4/widget/c;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_29
    iget-object v1, p0, Landroid/support/v4/widget/b;->g:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/support/v4/widget/b;->g:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_32
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/b;->e:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/b;->a:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/b;->notifyDataSetChanged()V

    goto :goto_5

    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/b;->e:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/b;->a:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/b;->notifyDataSetInvalidated()V

    goto :goto_5
.end method

.method public b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/b;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/widget/b;->b:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/widget/b;->a:Z

    :cond_18
    return-void
.end method

.method public c(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3

    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-boolean v0, p0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p2, :cond_13

    iget-object v0, p0, Landroid/support/v4/widget/b;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/widget/b;->b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_13
    iget-object v0, p0, Landroid/support/v4/widget/b;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Landroid/support/v4/widget/b;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    :goto_1a
    return-object p2

    :cond_1b
    const/4 p2, 0x0

    goto :goto_1a
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/b;->h:Landroid/support/v4/widget/d;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/widget/d;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/d;-><init>(Landroid/support/v4/widget/e;)V

    iput-object v0, p0, Landroid/support/v4/widget/b;->h:Landroid/support/v4/widget/d;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/b;->h:Landroid/support/v4/widget/d;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 5

    const-wide/16 v0, 0x0

    iget-boolean v2, p0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    iget v1, p0, Landroid/support/v4/widget/b;->e:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_1a
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-boolean v0, p0, Landroid/support/v4/widget/b;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t move cursor to position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    if-nez p2, :cond_33

    iget-object v0, p0, Landroid/support/v4/widget/b;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/widget/b;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_33
    iget-object v0, p0, Landroid/support/v4/widget/b;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/b;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Landroid/support/v4/widget/b;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

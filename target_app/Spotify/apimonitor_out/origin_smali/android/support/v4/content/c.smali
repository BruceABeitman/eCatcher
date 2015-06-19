.class public final Landroid/support/v4/content/c;
.super Landroid/support/v4/content/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/a",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Landroid/support/v4/content/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">.android/support/v4/content/l;"
        }
    .end annotation
.end field

.field g:Landroid/net/Uri;

.field h:[Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:[Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/support/v4/content/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/content/l;

    invoke-direct {v0, p0}, Landroid/support/v4/content/l;-><init>(Landroid/support/v4/content/k;)V

    iput-object v0, p0, Landroid/support/v4/content/c;->f:Landroid/support/v4/content/l;

    iput-object p2, p0, Landroid/support/v4/content/c;->g:Landroid/net/Uri;

    iput-object p3, p0, Landroid/support/v4/content/c;->h:[Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/content/c;->i:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/content/c;->j:[Ljava/lang/String;

    iput-object p6, p0, Landroid/support/v4/content/c;->k:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/content/k;->r:Z

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    iput-object p1, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    iget-boolean v1, p0, Landroid/support/v4/content/k;->p:Z

    if-eqz v1, :cond_15

    invoke-super {p0, p1}, Landroid/support/v4/content/a;->b(Ljava/lang/Object;)V

    :cond_15
    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_9
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/c;->g:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/c;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/c;->i:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/c;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/c;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/c;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Landroid/support/v4/content/c;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Landroid/support/v4/content/k;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/content/c;->g:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/content/c;->h:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/content/c;->i:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/content/c;->j:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/content/c;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    iget-object v1, p0, Landroid/support/v4/content/c;->f:Landroid/support/v4/content/l;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_1e
    return-object v0
.end method

.method protected final e()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Landroid/support/v4/content/c;->a(Landroid/database/Cursor;)V

    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/content/c;->q()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    if-nez v0, :cond_16

    :cond_13
    invoke-virtual {p0}, Landroid/support/v4/content/c;->m()V

    :cond_16
    return-void
.end method

.method protected final f()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/content/c;->b()Z

    return-void
.end method

.method protected final g()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/content/a;->g()V

    invoke-virtual {p0}, Landroid/support/v4/content/c;->b()Z

    iget-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/c;->l:Landroid/database/Cursor;

    return-void
.end method

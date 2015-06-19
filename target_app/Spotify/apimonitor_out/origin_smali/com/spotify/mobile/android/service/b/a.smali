.class public abstract Lcom/spotify/mobile/android/service/b/a;
.super Lcom/spotify/mobile/android/service/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/spotify/mobile/android/service/b/d",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private g:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/b/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
.end method

.method public abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TD;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_11
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/b/d;->b(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public final d()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/a;->s()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/service/b/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    if-eq v0, v1, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_23
    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/b/a;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/b/d;->g()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/b/a;->g:Landroid/database/Cursor;

    return-void
.end method

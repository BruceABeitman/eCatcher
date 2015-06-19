.class public abstract Lcom/spotify/mobile/android/service/b/d;
.super Landroid/support/v4/content/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final g:Landroid/support/v4/content/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/k",
            "<TT;>.android/support/v4/content/l;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/content/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/content/l;

    invoke-direct {v0, p0}, Landroid/support/v4/content/l;-><init>(Landroid/support/v4/content/k;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/b/d;->g:Landroid/support/v4/content/l;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v4/content/a;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/b/d;->f:Ljava/lang/Object;

    return-void
.end method

.method protected e()V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/d;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/d;->s()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/service/b/d;->g:Landroid/support/v4/content/l;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/d;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/d;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/b/d;->b(Ljava/lang/Object;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/d;->q()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/d;->f:Ljava/lang/Object;

    if-nez v0, :cond_28

    :cond_25
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/d;->m()V

    :cond_28
    return-void
.end method

.method protected f()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/d;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/b/d;->g:Landroid/support/v4/content/l;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/d;->b()Z

    return-void
.end method

.method protected g()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/content/a;->g()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/b/d;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/b/d;->f:Ljava/lang/Object;

    return-void
.end method

.method protected abstract s()Landroid/net/Uri;
.end method

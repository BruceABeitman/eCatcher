.class public abstract Lco/vine/android/BaseCursorAdapterFragment;
.super Lco/vine/android/BaseAdapterFragment;
.source "BaseCursorAdapterFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/BaseAdapterFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field protected static final LOADER_ID_DEFAULT:I = 0x0

.field protected static final PROGRESS_FIRST_USER:I = 0x6

.field protected static final PROGRESS_LOAD_DATA:I = 0x5

.field protected static final PROGRESS_LOAD_DATA_OLDER:I = 0x7


# instance fields
.field protected mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

.field protected mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mLoaderId:I

.field protected mRefreshing:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/BaseAdapterFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/BaseCursorAdapterFragment;->mLoaderId:I

    return-void
.end method


# virtual methods
.method protected abstract handleContentChanged()V
.end method

.method protected initLoader()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseCursorAdapterFragment;->initLoader(I)V

    return-void
.end method

.method protected final initLoader(I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/BaseCursorAdapterFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    if-nez v0, :cond_f

    new-instance v0, Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;-><init>(Lco/vine/android/BaseCursorAdapterFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lco/vine/android/BaseCursorAdapterFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    iput p1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mLoaderId:I

    :cond_f
    invoke-virtual {p0}, Lco/vine/android/BaseCursorAdapterFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method protected loadCursor(Z)V
    .registers 2

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 5

    iget-object v2, p0, Lco/vine/android/BaseCursorAdapterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lco/vine/android/BaseCursorAdapterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v2, p0, Lco/vine/android/BaseCursorAdapterFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    if-eqz v2, :cond_16

    :try_start_11
    iget-object v2, p0, Lco/vine/android/BaseCursorAdapterFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_16} :catch_1a

    :cond_16
    :goto_16
    invoke-super {p0}, Lco/vine/android/BaseAdapterFragment;->onDestroy()V

    return-void

    :catch_1a
    move-exception v1

    const-string v2, "This is ok, because this cursor probably didn\'t need a change observer."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d
    if-eqz p2, :cond_14

    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_14
    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/BaseCursorAdapterFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_11
    iget-object v1, p0, Lco/vine/android/BaseCursorAdapterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_17
    return-void
.end method

.method protected restartLoader()Z
    .registers 2

    iget v0, p0, Lco/vine/android/BaseCursorAdapterFragment;->mLoaderId:I

    invoke-virtual {p0, v0}, Lco/vine/android/BaseCursorAdapterFragment;->restartLoader(I)Z

    move-result v0

    return v0
.end method

.method protected restartLoader(I)Z
    .registers 4

    iget-object v0, p0, Lco/vine/android/BaseCursorAdapterFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lco/vine/android/BaseCursorAdapterFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    const/4 v0, 0x1

    goto :goto_5
.end method

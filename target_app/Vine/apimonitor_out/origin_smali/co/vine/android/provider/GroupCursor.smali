.class public abstract Lco/vine/android/provider/GroupCursor;
.super Landroid/database/CursorWrapper;
.source "GroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/provider/GroupCursor$LocalContentObserver;,
        Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;,
        Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/CursorWrapper;"
    }
.end annotation


# static fields
.field public static final LIMIT_DEFAULT:I = 0x14


# instance fields
.field private final mContentObservable:Landroid/database/ContentObservable;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorPosition:I

.field protected mLimit:I

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/provider/GroupCursor",
            "<TT;>.",
            "LocalDataSetObservable;"
        }
    .end annotation
.end field

.field volatile mNeedsDispatchChange:Z

.field volatile mPreparing:Z

.field volatile mSelfChange:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lco/vine/android/provider/GroupCursor;-><init>(Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    new-instance v0, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-direct {v0, p0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;-><init>(Lco/vine/android/provider/GroupCursor;)V

    iput-object v0, p0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    iput-object p1, p0, Lco/vine/android/provider/GroupCursor;->mCursor:Landroid/database/Cursor;

    if-gtz p2, :cond_35

    const/16 v0, 0x14

    iput v0, p0, Lco/vine/android/provider/GroupCursor;->mLimit:I

    :goto_1c
    if-eqz p1, :cond_34

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;

    invoke-direct {v0, p0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;-><init>(Lco/vine/android/provider/GroupCursor;)V

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    new-instance v0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;

    invoke-direct {v0, p0}, Lco/vine/android/provider/GroupCursor$LocalContentObserver;-><init>(Lco/vine/android/provider/GroupCursor;)V

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_34
    return-void

    :cond_35
    iput p2, p0, Lco/vine/android/provider/GroupCursor;->mLimit:I

    goto :goto_1c
.end method

.method static synthetic access$000(Lco/vine/android/provider/GroupCursor;)Landroid/database/ContentObservable;
    .registers 2

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/provider/GroupCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lco/vine/android/provider/GroupCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    iget v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/provider/GroupCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lco/vine/android/provider/GroupCursor;->getCount()I

    move-result v0

    if-gt p1, v2, :cond_b

    iput v2, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    :goto_a
    return v1

    :cond_b
    if-lt p1, v0, :cond_10

    iput v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    goto :goto_a

    :cond_10
    iput p1, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    const/4 v1, 0x1

    goto :goto_a
.end method

.method public moveToPrevious()Z
    .registers 2

    iget v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lco/vine/android/provider/GroupCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public abstract onPrepare()V
.end method

.method public final prepare()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/provider/GroupCursor;->mPreparing:Z

    invoke-virtual {p0}, Lco/vine/android/provider/GroupCursor;->onPrepare()V

    iput-boolean v1, p0, Lco/vine/android/provider/GroupCursor;->mPreparing:Z

    iget-boolean v0, p0, Lco/vine/android/provider/GroupCursor;->mNeedsDispatchChange:Z

    if-eqz v0, :cond_16

    iput-boolean v1, p0, Lco/vine/android/provider/GroupCursor;->mNeedsDispatchChange:Z

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    iget-boolean v1, p0, Lco/vine/android/provider/GroupCursor;->mSelfChange:Z

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    :cond_16
    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    :cond_7
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-virtual {v0, p1}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->registerObserver(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public requery()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-virtual {v0, v1}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->setNotifyOnChange(Z)V

    iget-object v3, p0, Lco/vine/android/provider/GroupCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lco/vine/android/provider/GroupCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-eqz v3, :cond_18

    move v1, v2

    :cond_18
    invoke-virtual {p0}, Lco/vine/android/provider/GroupCursor;->prepare()V

    invoke-virtual {v0, v2}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->setNotifyOnChange(Z)V

    invoke-virtual {v0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->notifyChanged()V

    return v1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-virtual {v0, p1}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

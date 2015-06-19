.class public Lco/vine/android/recorder/SegmentEditorAdapter;
.super Landroid/widget/BaseAdapter;
.source "SegmentEditorAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lco/vine/android/dragsort/DragSortWidget$RemoveListener;
.implements Lco/vine/android/dragsort/DragSortWidget$DragListener;


# static fields
.field private static final NO_LAST_DELETION:I = -0x1


# instance fields
.field public hasInitialized:Z

.field private mContext:Landroid/content/Context;

.field private final mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDeletedIndex:I

.field private final mMargin:I

.field private final mSize:I


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/SegmentEditorAdapter;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    iget-object v0, p1, Lco/vine/android/recorder/SegmentEditorAdapter;->mDeleted:Ljava/util/ArrayList;

    iput-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mDeleted:Ljava/util/ArrayList;

    iget-object v0, p1, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    iput-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    iget-object v0, p1, Lco/vine/android/recorder/SegmentEditorAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mContext:Landroid/content/Context;

    iget v0, p1, Lco/vine/android/recorder/SegmentEditorAdapter;->mMargin:I

    iput v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mMargin:I

    iget v0, p1, Lco/vine/android/recorder/SegmentEditorAdapter;->mSize:I

    iput v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mSize:I

    iget v0, p1, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    iput v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;F)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;",
            "Landroid/content/Context;",
            "F)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mDeleted:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/RecordSegment;

    iget-boolean v2, v1, Lco/vine/android/recorder/RecordSegment;->removed:Z

    if-nez v2, :cond_18

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2e
    const/4 v2, 0x1

    iput-boolean v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->hasInitialized:Z

    iput-object p2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4000

    mul-float/2addr v2, p3

    float-to-int v2, v2

    iput v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mMargin:I

    const/high16 v2, 0x4280

    mul-float/2addr v2, p3

    float-to-int v2, v2

    iput v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mSize:I

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canUndoDelete()Z
    .registers 3

    iget v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public commitDelete()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    return-void
.end method

.method public compareTo(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_b

    iget-object v4, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    if-nez v4, :cond_9

    :cond_8
    :goto_8
    return v2

    :cond_9
    move v2, v3

    goto :goto_8

    :cond_b
    iget-object v4, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mDeleted:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_21

    :cond_1f
    move v2, v3

    goto :goto_8

    :cond_21
    iget-object v4, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v1, :cond_8

    iget-object v4, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_38

    move v2, v3

    goto :goto_8

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method

.method public drag(II)V
    .registers 6

    if-eq p1, p2, :cond_1d

    iget-object v1, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/RecordSegment;

    iget-object v1, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lco/vine/android/recorder/SegmentEditorAdapter;->notifyDataSetChanged()V

    :cond_1d
    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeleted()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mDeleted:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_58

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mContext:Landroid/content/Context;

    if-nez v2, :cond_c

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mContext:Landroid/content/Context;

    :cond_c
    new-instance p2, Landroid/view/View;

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mSize:I

    iget v3, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    :goto_1c
    invoke-virtual {p0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_5f

    const/4 v2, 0x0

    :goto_25
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/RecordSegment;

    iget-object v2, v0, Lco/vine/android/recorder/RecordSegment;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4a

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSegment;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSegment;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/BitmapDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lco/vine/android/recorder/RecordSegment;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_4a
    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/recorder/RecordSegment;

    iget-object v2, v2, Lco/vine/android/recorder/RecordSegment;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, v2}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_58
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1c

    :cond_5f
    iget v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mMargin:I

    goto :goto_25
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEnabled(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_5
    return-void
.end method

.method public remove(I)V
    .registers 4

    iput p1, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    iget-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mDeleted:Ljava/util/ArrayList;

    iget-object v1, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lco/vine/android/recorder/SegmentEditorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reverse()V
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_13
    if-ltz v0, :cond_21

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_21
    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lco/vine/android/recorder/SegmentEditorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public undoDelete()V
    .registers 5

    iget v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    if-ltz v0, :cond_1f

    iget-object v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    iget-object v2, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mDeleted:Ljava/util/ArrayList;

    iget-object v3, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mDeleted:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/SegmentEditorAdapter;->mLastDeletedIndex:I

    invoke-virtual {p0}, Lco/vine/android/recorder/SegmentEditorAdapter;->notifyDataSetChanged()V

    :cond_1f
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_5
    return-void
.end method

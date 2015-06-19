.class Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinnerICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/AbsSpinnerICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/internal/widget/AbsSpinnerICS;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->this$0:Landroid/support/v7/internal/widget/AbsSpinnerICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 7

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_17

    iget-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->this$0:Landroid/support/v7/internal/widget/AbsSpinnerICS;

    const/4 v5, 0x1

    #calls: Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->access$100(Landroid/support/v7/internal/widget/AbsSpinnerICS;Landroid/view/View;Z)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method get(I)Landroid/view/View;
    .registers 4

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_f
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.class public abstract Landroid/support/v4/view/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ah;->a:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public a()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ah;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public abstract b()I
.end method

.method public b(I)Ljava/lang/CharSequence;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ah;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public c(I)F
    .registers 3

    const/high16 v0, 0x3f80

    return v0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ah;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

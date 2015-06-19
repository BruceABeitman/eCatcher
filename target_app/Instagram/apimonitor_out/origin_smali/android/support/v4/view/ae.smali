.class public abstract Landroid/support/v4/view/ae;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field private a:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ae;->a:Landroid/database/DataSetObservable;

    return-void
.end method

.method private static c()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Landroid/support/v4/view/ae;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ae;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    invoke-static {}, Landroid/support/v4/view/ae;->d()V

    return-void
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public final b(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ae;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

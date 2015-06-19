.class public final Lcom/bbm/ui/u;
.super Ljava/lang/Object;
.source "CellRecycler.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/bbm/ui/v;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/u;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(IJLandroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/bbm/ui/u;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/v;

    :goto_10
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4b

    :cond_18
    new-instance v0, Lcom/bbm/ui/v;

    invoke-direct {v0}, Lcom/bbm/ui/v;-><init>()V

    iget-object v1, p0, Lcom/bbm/ui/u;->a:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_27
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_39

    iget-object v1, v0, Lcom/bbm/ui/v;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_39
    iget-object v0, v0, Lcom/bbm/ui/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3e
    return-void

    :cond_3f
    const/4 v1, 0x0

    goto :goto_10

    :cond_41
    iget-object v0, v0, Lcom/bbm/ui/v;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_4b
    move-object v0, v1

    goto :goto_27
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public final onLowMemory()V
    .registers 1

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 3

    sparse-switch p1, :sswitch_data_a

    :goto_3
    return-void

    :sswitch_4
    iget-object v0, p0, Lcom/bbm/ui/u;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_3

    :sswitch_data_a
    .sparse-switch
        0xf -> :sswitch_4
        0x14 -> :sswitch_4
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

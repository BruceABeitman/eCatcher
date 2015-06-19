.class final Lcom/bbm/iceberg/r;
.super Landroid/database/ContentObserver;
.source "LocalContactList.java"


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bbm/iceberg/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/bbm/iceberg/n;Landroid/content/ContentResolver;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/iceberg/r;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/bbm/iceberg/r;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/iceberg/r;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/bbm/iceberg/r;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/iceberg/n;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/bbm/iceberg/r;->a()V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/bbm/iceberg/n;->b()V

    goto :goto_10
.end method

.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->c:Landroid/support/v4/view/br;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Landroid/support/v4/view/br;->a(I)V

    goto :goto_d
.end method

.class final Lcom/instagram/android/fragment/an;
.super Landroid/os/Handler;
.source "EditProfileFragment.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/instagram/android/fragment/ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/ab;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/an;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/an;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/ab;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->l()Landroid/support/v4/app/k;

    move-result-object v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    invoke-static {v0}, Lcom/instagram/android/fragment/ab;->b(Lcom/instagram/android/fragment/ab;)V

    goto :goto_13
.end method

.class Lcom/google/android/gms/tagmanager/dj$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/dj;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/dj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/dj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dj$2;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_44

    invoke-static {}, Lcom/google/android/gms/tagmanager/dj;->e()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj$2;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dj;->d()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj$2;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dj;->b(Lcom/google/android/gms/tagmanager/dj;)I

    move-result v0

    if-lez v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj$2;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dj;->c(Lcom/google/android/gms/tagmanager/dj;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj$2;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dj;->d(Lcom/google/android/gms/tagmanager/dj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/dj$2;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dj;->d(Lcom/google/android/gms/tagmanager/dj;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/tagmanager/dj;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/dj$2;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dj;->b(Lcom/google/android/gms/tagmanager/dj;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_44
    return v4
.end method

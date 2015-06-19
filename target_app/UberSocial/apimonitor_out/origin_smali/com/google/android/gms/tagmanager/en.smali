.class Lcom/google/android/gms/tagmanager/en;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/el;

.field private final b:Lcom/google/android/gms/tagmanager/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/el;Lcom/google/android/gms/tagmanager/g;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/en;->a:Lcom/google/android/gms/tagmanager/el;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/en;->b:Lcom/google/android/gms/tagmanager/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/en;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/en;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/en;->b:Lcom/google/android/gms/tagmanager/g;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/en;->a:Lcom/google/android/gms/tagmanager/el;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/tagmanager/g;->a(Lcom/google/android/gms/tagmanager/f;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    const-string v0, "Don\'t know how to handle this message."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    :goto_a
    return-void

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/en;->b(Ljava/lang/String;)V

    goto :goto_a

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

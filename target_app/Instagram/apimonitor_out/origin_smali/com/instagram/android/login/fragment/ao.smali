.class final Lcom/instagram/android/login/fragment/ao;
.super Landroid/os/Handler;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/ao;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ao;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ao;->a:Lcom/instagram/android/login/fragment/an;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ao;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

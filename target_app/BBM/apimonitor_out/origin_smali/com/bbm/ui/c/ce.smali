.class final Lcom/bbm/ui/c/ce;
.super Ljava/lang/Object;
.source "DiscoverChannelsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/cd;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ce;->a:Lcom/bbm/ui/c/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bbm/ui/c/ce;->a:Lcom/bbm/ui/c/cd;

    invoke-virtual {v2}, Lcom/bbm/ui/c/cd;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object v3, v2

    :goto_f
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    :goto_16
    if-eqz v3, :cond_34

    if-eqz v2, :cond_34

    const-string v0, "input_method"

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_36

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    :goto_2c
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :goto_2f
    return v0

    :cond_30
    move-object v3, v0

    goto :goto_f

    :cond_32
    move-object v2, v0

    goto :goto_16

    :cond_34
    move v0, v1

    goto :goto_2f

    :cond_36
    move v0, v1

    goto :goto_2c
.end method

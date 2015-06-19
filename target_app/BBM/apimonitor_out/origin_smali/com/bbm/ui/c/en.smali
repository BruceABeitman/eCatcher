.class final Lcom/bbm/ui/c/en;
.super Ljava/lang/Object;
.source "OwnProfileDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ej;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ej;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/en;->a:Lcom/bbm/ui/c/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v2, 0x0

    const-string v0, "onKeyListener"

    const-class v1, Lcom/bbm/ui/c/ej;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/c/en;->a:Lcom/bbm/ui/c/ej;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_2b
    return v2
.end method

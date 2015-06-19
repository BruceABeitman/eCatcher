.class final Lcom/bbm/ui/activities/vt;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/vt;->b:Lcom/bbm/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/vt;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "cancel Clicked"

    const-class v1, Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/vt;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/vt;->b:Lcom/bbm/ui/activities/MainActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/bbm/ui/activities/vt;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/vt;->b:Lcom/bbm/ui/activities/MainActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/vt;->b:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/MainActivity;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;I)V

    return-void
.end method

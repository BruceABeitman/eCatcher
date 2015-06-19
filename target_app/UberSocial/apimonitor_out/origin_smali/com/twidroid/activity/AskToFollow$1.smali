.class Lcom/twidroid/activity/AskToFollow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/AskToFollow;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/AskToFollow;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/AskToFollow;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/AskToFollow$1;->a:Lcom/twidroid/activity/AskToFollow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lcom/twidroid/activity/b;

    iget-object v1, p0, Lcom/twidroid/activity/AskToFollow$1;->a:Lcom/twidroid/activity/AskToFollow;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twidroid/activity/b;-><init>(Lcom/twidroid/activity/AskToFollow;Lcom/twidroid/activity/AskToFollow$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/b;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    iget-object v0, p0, Lcom/twidroid/activity/AskToFollow$1;->a:Lcom/twidroid/activity/AskToFollow;

    invoke-static {v0}, Lcom/twidroid/activity/AskToFollow;->a(Lcom/twidroid/activity/AskToFollow;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/twidroid/activity/AskToFollow$1;->a:Lcom/twidroid/activity/AskToFollow;

    invoke-virtual {v0}, Lcom/twidroid/activity/AskToFollow;->finish()V

    return-void
.end method

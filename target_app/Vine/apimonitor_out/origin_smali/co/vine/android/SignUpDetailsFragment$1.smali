.class Lco/vine/android/SignUpDetailsFragment$1;
.super Ljava/lang/Object;
.source "SignUpDetailsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/SignUpDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SignUpDetailsFragment;


# direct methods
.method constructor <init>(Lco/vine/android/SignUpDetailsFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpDetailsFragment$1;->this$0:Lco/vine/android/SignUpDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v2, 0x6

    if-ne p2, v2, :cond_34

    iget-object v2, p0, Lco/vine/android/SignUpDetailsFragment$1;->this$0:Lco/vine/android/SignUpDetailsFragment;

    #calls: Lco/vine/android/SignUpDetailsFragment;->validate()Z
    invoke-static {v2}, Lco/vine/android/SignUpDetailsFragment;->access$000(Lco/vine/android/SignUpDetailsFragment;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lco/vine/android/SignUpDetailsFragment$1;->this$0:Lco/vine/android/SignUpDetailsFragment;

    invoke-virtual {v2}, Lco/vine/android/SignUpDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v2, p0, Lco/vine/android/SignUpDetailsFragment$1;->this$0:Lco/vine/android/SignUpDetailsFragment;

    invoke-virtual {v2}, Lco/vine/android/SignUpDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lco/vine/android/SignUpDetailsFragment$1;->this$0:Lco/vine/android/SignUpDetailsFragment;

    #getter for: Lco/vine/android/SignUpDetailsFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v2}, Lco/vine/android/SignUpDetailsFragment;->access$100(Lco/vine/android/SignUpDetailsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lco/vine/android/SignUpDetailsFragment$1;->this$0:Lco/vine/android/SignUpDetailsFragment;

    #calls: Lco/vine/android/SignUpDetailsFragment;->onNextClicked()Z
    invoke-static {v2}, Lco/vine/android/SignUpDetailsFragment;->access$200(Lco/vine/android/SignUpDetailsFragment;)Z

    :cond_34
    const/4 v2, 0x1

    return v2
.end method

.class final Lcom/bbm/ui/activities/so;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Lcom/bbm/ui/activities/GroupPictureUploadActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;Landroid/view/inputmethod/InputMethodManager;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/so;->b:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/so;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "mGroupImageToUpload Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/so;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/bbm/ui/activities/so;->b:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

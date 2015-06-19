.class Lcom/facebook/katana/PhotoFeedbackActivity$1;
.super Ljava/lang/Object;
.source "PhotoFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/PhotoFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PhotoFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/PhotoFeedbackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$1;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$1;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_50

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$1;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->showDialog(I)V

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$1;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity$1;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    #getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$14(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/PhotoFeedbackActivity$1;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    iget-object v5, p0, Lcom/facebook/katana/PhotoFeedbackActivity$1;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    #getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
    invoke-static {v5}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$10(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPhoto;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/facebook/katana/binding/AppSession;->photoAddComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$15(Lcom/facebook/katana/PhotoFeedbackActivity;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$1;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_50
    return-void
.end method

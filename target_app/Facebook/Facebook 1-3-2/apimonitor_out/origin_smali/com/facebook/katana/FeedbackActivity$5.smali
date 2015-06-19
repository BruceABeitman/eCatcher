.class Lcom/facebook/katana/FeedbackActivity$5;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/FeedbackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_56

    iget-object v7, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    #getter for: Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$15(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    #getter for: Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
    invoke-static {v2}, Lcom/facebook/katana/FeedbackActivity;->access$16(Lcom/facebook/katana/FeedbackActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    #getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
    invoke-static {v4}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->streamAddComment(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/facebook/katana/FeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/facebook/katana/FeedbackActivity;->access$13(Lcom/facebook/katana/FeedbackActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$5;->this$0:Lcom/facebook/katana/FeedbackActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_56
    return-void
.end method

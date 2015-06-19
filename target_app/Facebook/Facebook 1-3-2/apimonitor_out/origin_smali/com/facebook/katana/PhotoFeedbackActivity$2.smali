.class Lcom/facebook/katana/PhotoFeedbackActivity$2;
.super Ljava/lang/Object;
.source "PhotoFeedbackActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$2;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 9

    const/16 v1, 0x65

    if-ne p2, v1, :cond_42

    iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$2;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_42

    iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$2;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PhotoFeedbackActivity;->showDialog(I)V

    iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$2;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$2;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    #getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v2}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$14(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity$2;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    iget-object v4, p0, Lcom/facebook/katana/PhotoFeedbackActivity$2;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;

    #getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
    invoke-static {v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$10(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/facebook/katana/binding/AppSession;->photoAddComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$15(Lcom/facebook/katana/PhotoFeedbackActivity;Ljava/lang/String;)V

    :cond_42
    const/4 v1, 0x0

    return v1
.end method

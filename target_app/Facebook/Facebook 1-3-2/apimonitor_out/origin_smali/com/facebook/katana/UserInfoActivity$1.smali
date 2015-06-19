.class Lcom/facebook/katana/UserInfoActivity$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/UserInfoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/UserInfoActivity;

.field private final synthetic val$textInput:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UserInfoActivity;Landroid/widget/TextView;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$1;->this$0:Lcom/facebook/katana/UserInfoActivity;

    iput-object p2, p0, Lcom/facebook/katana/UserInfoActivity$1;->val$textInput:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 10

    const/16 v1, 0x66

    if-ne p2, v1, :cond_36

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$1;->val$textInput:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$1;->this$0:Lcom/facebook/katana/UserInfoActivity;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoActivity$1;->this$0:Lcom/facebook/katana/UserInfoActivity;

    #getter for: Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v2}, Lcom/facebook/katana/UserInfoActivity;->access$15(Lcom/facebook/katana/UserInfoActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/UserInfoActivity$1;->this$0:Lcom/facebook/katana/UserInfoActivity;

    iget-object v4, p0, Lcom/facebook/katana/UserInfoActivity$1;->this$0:Lcom/facebook/katana/UserInfoActivity;

    #getter for: Lcom/facebook/katana/UserInfoActivity;->mUserId:J
    invoke-static {v4}, Lcom/facebook/katana/UserInfoActivity;->access$10(Lcom/facebook/katana/UserInfoActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/facebook/katana/binding/AppSession;->friendsAddFriend(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/facebook/katana/UserInfoActivity;->mReqId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/facebook/katana/UserInfoActivity;->access$13(Lcom/facebook/katana/UserInfoActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$1;->this$0:Lcom/facebook/katana/UserInfoActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/UserInfoActivity;->showDialog(I)V

    :cond_36
    const/4 v1, 0x0

    return v1
.end method

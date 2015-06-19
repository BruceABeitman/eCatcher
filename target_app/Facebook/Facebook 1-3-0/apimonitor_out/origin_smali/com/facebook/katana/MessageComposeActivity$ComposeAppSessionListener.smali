.class Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "MessageComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/MessageComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MessageComposeActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/MessageComposeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;-><init>(Lcom/facebook/katana/MessageComposeActivity;)V

    return-void
.end method


# virtual methods
.method public onMailboxSendComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 10

    iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/katana/MessageComposeActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    const/4 v2, 0x0

    #setter for: Lcom/facebook/katana/MessageComposeActivity;->mSendReqId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/facebook/katana/MessageComposeActivity;->access$9(Lcom/facebook/katana/MessageComposeActivity;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_16

    iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/MessageComposeActivity;->finish()V

    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    iget-object v2, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Lcom/facebook/katana/MessageComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_15
.end method

.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 9

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_12

    iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    #getter for: Lcom/facebook/katana/MessageComposeActivity;->mDropdownAdapter:Lcom/facebook/katana/DropdownFriendsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/MessageComposeActivity;->access$10(Lcom/facebook/katana/MessageComposeActivity;)Lcom/facebook/katana/DropdownFriendsAdapter;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/facebook/katana/DropdownFriendsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    #calls: Lcom/facebook/katana/MessageComposeActivity;->updateUserViewImage(Lcom/facebook/katana/binding/UserImage;)V
    invoke-static {v0, p6}, Lcom/facebook/katana/MessageComposeActivity;->access$11(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/binding/UserImage;)V

    :cond_12
    return-void
.end method

.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    #getter for: Lcom/facebook/katana/MessageComposeActivity;->mDropdownAdapter:Lcom/facebook/katana/DropdownFriendsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/MessageComposeActivity;->access$10(Lcom/facebook/katana/MessageComposeActivity;)Lcom/facebook/katana/DropdownFriendsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/katana/DropdownFriendsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    #calls: Lcom/facebook/katana/MessageComposeActivity;->updateUserViewImage(Lcom/facebook/katana/binding/UserImage;)V
    invoke-static {v0, p2}, Lcom/facebook/katana/MessageComposeActivity;->access$11(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/binding/UserImage;)V

    return-void
.end method

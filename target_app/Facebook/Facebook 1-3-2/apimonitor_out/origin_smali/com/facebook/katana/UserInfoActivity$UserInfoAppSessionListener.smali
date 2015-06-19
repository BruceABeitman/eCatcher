.class Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserInfoAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/UserInfoActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/UserInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/UserInfoActivity;Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;-><init>(Lcom/facebook/katana/UserInfoActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    if-eqz p7, :cond_b

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    #getter for: Lcom/facebook/katana/UserInfoActivity;->mAdapter:Lcom/facebook/katana/UserInfoAdapter;
    invoke-static {v0}, Lcom/facebook/katana/UserInfoActivity;->access$14(Lcom/facebook/katana/UserInfoActivity;)Lcom/facebook/katana/UserInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/UserInfoAdapter;->updatePhoto()V

    :cond_b
    return-void
.end method

.method public onFriendsAddFriendComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/UserInfoActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/katana/UserInfoActivity;->mReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/katana/UserInfoActivity;->access$13(Lcom/facebook/katana/UserInfoActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    #getter for: Lcom/facebook/katana/UserInfoActivity;->mAdapter:Lcom/facebook/katana/UserInfoAdapter;
    invoke-static {v0}, Lcom/facebook/katana/UserInfoActivity;->access$14(Lcom/facebook/katana/UserInfoActivity;)Lcom/facebook/katana/UserInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/UserInfoAdapter;->updatePhoto()V

    return-void
.end method

.method public onUsersGetInfoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/service/api/FacebookUserFull;Z)V
    .registers 15

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    #getter for: Lcom/facebook/katana/UserInfoActivity;->mUserId:J
    invoke-static {v0}, Lcom/facebook/katana/UserInfoActivity;->access$10(Lcom/facebook/katana/UserInfoActivity;)J

    move-result-wide v0

    cmp-long v0, p6, v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    #calls: Lcom/facebook/katana/UserInfoActivity;->showProgress(Z)V
    invoke-static {v0, v4}, Lcom/facebook/katana/UserInfoActivity;->access$11(Lcom/facebook/katana/UserInfoActivity;Z)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_34

    if-eqz p8, :cond_1c

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    #calls: Lcom/facebook/katana/UserInfoActivity;->handleInfo(Lcom/facebook/katana/service/api/FacebookUserFull;Z)V
    invoke-static {v0, p8, p9}, Lcom/facebook/katana/UserInfoActivity;->access$12(Lcom/facebook/katana/UserInfoActivity;Lcom/facebook/katana/service/api/FacebookUserFull;Z)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    const v2, 0x7f0800ed

    invoke-virtual {v1, v2}, Lcom/facebook/katana/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/UserInfoActivity;->finish()V

    goto :goto_1b

    :cond_34
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->this$0:Lcom/facebook/katana/UserInfoActivity;

    const v3, 0x7f0800e4

    invoke-virtual {v2, v3}, Lcom/facebook/katana/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b
.end method

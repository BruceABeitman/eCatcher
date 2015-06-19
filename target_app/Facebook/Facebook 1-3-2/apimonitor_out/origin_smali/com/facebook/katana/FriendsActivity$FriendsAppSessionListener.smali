.class Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/FriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/FriendsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/FriendsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/FriendsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/FriendsActivity;Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;-><init>(Lcom/facebook/katana/FriendsActivity;)V

    return-void
.end method


# virtual methods
.method public onFriendsSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 11

    iget-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/FriendsActivity;

    const/4 v3, 0x2

    const/4 v4, 0x0

    #calls: Lcom/facebook/katana/FriendsActivity;->showProgress(IZ)V
    invoke-static {v2, v3, v4}, Lcom/facebook/katana/FriendsActivity;->access$0(Lcom/facebook/katana/FriendsActivity;IZ)V

    const/16 v2, 0xc8

    if-ne p3, v2, :cond_1b

    iget-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
    invoke-static {v2}, Lcom/facebook/katana/FriendsActivity;->access$1(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/FriendsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/FriendsActivity;

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/FriendsActivity;

    const v4, 0x7f080059

    invoke-virtual {v3, v4}, Lcom/facebook/katana/FriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/FriendsActivity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1a
.end method

.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 9

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->access$1(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/facebook/katana/FriendsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    :cond_d
    return-void
.end method

.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->access$1(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/katana/FriendsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    return-void
.end method

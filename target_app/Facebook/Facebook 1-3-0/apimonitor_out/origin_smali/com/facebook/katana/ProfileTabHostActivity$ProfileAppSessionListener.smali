.class Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ProfileTabHostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/ProfileTabHostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/ProfileTabHostActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;)V

    return-void
.end method


# virtual methods
.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 16

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_3c

    invoke-virtual {p6}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
    invoke-static {v2}, Lcom/facebook/katana/ProfileTabHostActivity;->access$12(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->access$12(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v1}, Lcom/facebook/katana/ProfileTabHostActivity;->access$13(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v1

    #setter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
    invoke-static {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->access$10(Lcom/facebook/katana/ProfileTabHostActivity;Lcom/facebook/katana/service/api/FacebookUser;)V

    :goto_37
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #calls: Lcom/facebook/katana/ProfileTabHostActivity;->updateFatTitleBar()V
    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->access$11(Lcom/facebook/katana/ProfileTabHostActivity;)V

    :cond_3c
    return-void

    :cond_3d
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->access$14(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v7, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    new-instance v0, Lcom/facebook/katana/service/api/FacebookUser;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
    invoke-static {v1}, Lcom/facebook/katana/ProfileTabHostActivity;->access$12(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
    invoke-static {v3}, Lcom/facebook/katana/ProfileTabHostActivity;->access$14(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
    invoke-static {v4}, Lcom/facebook/katana/ProfileTabHostActivity;->access$14(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
    invoke-static {v5}, Lcom/facebook/katana/ProfileTabHostActivity;->access$14(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p6}, Lcom/facebook/katana/binding/UserImage;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
    invoke-static {v7, v0}, Lcom/facebook/katana/ProfileTabHostActivity;->access$10(Lcom/facebook/katana/ProfileTabHostActivity;Lcom/facebook/katana/service/api/FacebookUser;)V

    goto :goto_37
.end method

.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
    .registers 7

    invoke-virtual {p2}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #getter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
    invoke-static {v2}, Lcom/facebook/katana/ProfileTabHostActivity;->access$12(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #calls: Lcom/facebook/katana/ProfileTabHostActivity;->updateFatTitleBar()V
    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->access$11(Lcom/facebook/katana/ProfileTabHostActivity;)V

    :cond_13
    return-void
.end method

.method public onUsersGetInfoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/service/api/FacebookUser;Z)V
    .registers 18

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_29

    if-eqz p8, :cond_29

    iget-object v7, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    new-instance v0, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual/range {p8 .. p8}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v1

    invoke-virtual/range {p8 .. p8}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p8 .. p8}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p8 .. p8}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
    invoke-static {v7, v0}, Lcom/facebook/katana/ProfileTabHostActivity;->access$10(Lcom/facebook/katana/ProfileTabHostActivity;Lcom/facebook/katana/service/api/FacebookUser;)V

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;

    #calls: Lcom/facebook/katana/ProfileTabHostActivity;->updateFatTitleBar()V
    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->access$11(Lcom/facebook/katana/ProfileTabHostActivity;)V

    :cond_29
    return-void
.end method

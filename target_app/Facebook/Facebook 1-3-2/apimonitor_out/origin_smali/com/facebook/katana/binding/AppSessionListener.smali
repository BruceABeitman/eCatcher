.class public Lcom/facebook/katana/binding/AppSessionListener;
.super Ljava/lang/Object;
.source "AppSessionListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadAlbumThumbnailComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public onDownloadPhotoFullComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    return-void
.end method

.method public onDownloadPhotoThumbnailComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    return-void
.end method

.method public onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    return-void
.end method

.method public onEventGetMembersComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLjava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "J",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onEventRsvpComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JZ)V
    .registers 9

    return-void
.end method

.method public onFriendRequestRespondComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JZ)V
    .registers 9

    return-void
.end method

.method public onFriendRequestsMutualFriendsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onFriendsAddFriendComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J)V
    .registers 8

    return-void
.end method

.method public onFriendsSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    return-void
.end method

.method public onGetNotificationHistoryComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    return-void
.end method

.method public onHomeStreamUpdated(Lcom/facebook/katana/binding/AppSession;)V
    .registers 2

    return-void
.end method

.method public onLoginComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    return-void
.end method

.method public onLogoutComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    return-void
.end method

.method public onMailboxDeleteThreadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[J)V
    .registers 7

    return-void
.end method

.method public onMailboxGetThreadMessagesComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;IJ)V
    .registers 9

    return-void
.end method

.method public onMailboxMarkThreadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[JZ)V
    .registers 8

    return-void
.end method

.method public onMailboxReplyComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J)V
    .registers 8

    return-void
.end method

.method public onMailboxSendComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    return-void
.end method

.method public onMailboxSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;I)V
    .registers 7

    return-void
.end method

.method public onPhotoAddCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookPhotoComment;)V
    .registers 8

    return-void
.end method

.method public onPhotoAddTagsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhotoTag;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPhotoCreateAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/api/FacebookAlbum;)V
    .registers 7

    return-void
.end method

.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onPhotoDeleteAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public onPhotoDeletePhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    return-void
.end method

.method public onPhotoEditAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public onPhotoEditPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    return-void
.end method

.method public onPhotoGetAlbumsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V
    .registers 9

    return-void
.end method

.method public onPhotoGetCommentsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhotoComment;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public onPhotoGetPhotosComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 10

    return-void
.end method

.method public onPhotoGetTagsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhotoTag;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPhotoUploadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/api/FacebookPhoto;Ljava/lang/String;)V
    .registers 8

    return-void
.end method

.method public onStreamAddCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookPost$Comment;)V
    .registers 8

    return-void
.end method

.method public onStreamAddLikeComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public onStreamGetCommentsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public onStreamGetComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J[JJJIILjava/util/List;Lcom/facebook/katana/binding/FacebookStreamContainer;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "J[JJJII",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;",
            "Lcom/facebook/katana/binding/FacebookStreamContainer;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onStreamPublishComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/api/FacebookPost;)V
    .registers 7

    return-void
.end method

.method public onStreamRemoveCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public onStreamRemoveLikeComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public onStreamRemovePostComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    return-void
.end method

.method public onUserGetEventsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookEvent;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserGetFriendRequestsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 8

    return-void
.end method

.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
    .registers 3

    return-void
.end method

.method public onUsersGetInfoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/service/api/FacebookUser;Z)V
    .registers 10

    return-void
.end method

.method public onUsersGetInfoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/service/api/FacebookUserFull;Z)V
    .registers 10

    return-void
.end method

.method public onUsersSearchComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;II)V
    .registers 8

    return-void
.end method

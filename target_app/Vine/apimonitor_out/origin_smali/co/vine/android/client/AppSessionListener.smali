.class public abstract Lco/vine/android/client/AppSessionListener;
.super Ljava/lang/Object;
.source "AppSessionListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortAllRequestsComplete()V
    .registers 1

    return-void
.end method

.method public onBlockUserComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onBulkFollowComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onCaptchaRequired(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/service/PendingAction;)V
    .registers 4

    return-void
.end method

.method public onCheckTwitterComplete(Ljava/lang/String;ILjava/lang/String;IZLco/vine/android/api/VineUser;Lco/vine/android/api/VineLogin;)V
    .registers 8

    return-void
.end method

.method public onClearCacheComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onConnectFacebookComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    return-void
.end method

.method public onDeactivateAccountComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onDeleteCommentComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onDeleteConversationComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onDeletePostComplete(Ljava/lang/String;JILjava/lang/String;)V
    .registers 6

    return-void
.end method

.method public onDisableUserRepostsComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onDisconnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onEnableUserRepostsComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onFacebookSessionChanged(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method public onFetchClientFlagsComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineClientFlags;Z)V
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    return-void
.end method

.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onGcmRegistrationComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onGetActivityComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VinePagedData;Lco/vine/android/api/VinePagedData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lco/vine/android/api/VinePagedData",
            "<",
            "Lco/vine/android/api/VineEverydayNotification;",
            ">;",
            "Lco/vine/android/api/VinePagedData",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetActivityCountComplete(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6

    return-void
.end method

.method public onGetAddressFriendsComplete(Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetBlockedUsersComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetChannelsComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineChannel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;IJLjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetConversationComplete(Ljava/lang/String;ILjava/lang/String;JIZ)V
    .registers 8

    return-void
.end method

.method public onGetConversationRemoteIdComplete(J)V
    .registers 3

    return-void
.end method

.method public onGetConversationRowIdComplete(JJLjava/lang/String;Z)V
    .registers 7

    return-void
.end method

.method public onGetEditionsComplete(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetFriendsTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetMessageCountComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public onGetMessageInboxComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public onGetNotificationSettingsComplete(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineNotificationSetting;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetPendingNotificationCountComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public onGetPostIdComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onGetSinglePostComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VinePost;)V
    .registers 5

    return-void
.end method

.method public onGetTagTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineTag;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;IIZLjava/util/ArrayList;Ljava/lang/String;IIIJZILjava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;",
            "Ljava/lang/String;",
            "IIIJZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onGetTwitterAuthUrlComplete(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onGetTwitterFriendsComplete(Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetTwitterUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)V
    .registers 6

    return-void
.end method

.method public onGetUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineUser;)V
    .registers 5

    return-void
.end method

.method public onGetUserIdComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onGetUserTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetUsersComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;IIJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/client/Session;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;IIJ)V"
        }
    .end annotation

    return-void
.end method

.method public onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V
    .registers 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    return-void
.end method

.method public onIgnoreConversationComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onLikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILco/vine/android/api/VineLogin;)V
    .registers 7

    return-void
.end method

.method public onLogoutComplete(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public onMergeNotificationComplete(Lco/vine/android/api/VineSingleNotification;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/api/VineSingleNotification;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMobileDataNetworkActivated()V
    .registers 1

    return-void
.end method

.method public onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .registers 3

    return-void
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPostCommentComplete(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Lco/vine/android/api/VineComment;)V
    .registers 8

    return-void
.end method

.method public onPostVideoComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onProfilePhotoUpdatedComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onReceiveRTCMessage(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineRTCConversation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRemoveUsersComplete(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onReportPostComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onReportUserComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onRequestEmailVerificationComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onRequestPhoneVerificationComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onResetPasswordComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onRespondFollowRequestComplete(Ljava/lang/String;ILjava/lang/String;ZJ)V
    .registers 7

    return-void
.end method

.method public onRevine(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineRepost;)V
    .registers 7

    return-void
.end method

.method public onSaveNotificationSettingsComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onSharePostComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onSignUpComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    return-void
.end method

.method public onSubscribeConversationComplete()V
    .registers 1

    return-void
.end method

.method public onTagSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    return-void
.end method

.method public onTwitterxAuthComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V
    .registers 5

    return-void
.end method

.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onUnblockUserComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onUnrevine(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public onUpdateAcceptOonComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onUpdateDiscoverability(Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 6

    return-void
.end method

.method public onUpdateEditionComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onUpdateEnableAddressBookComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onUpdateExplicitComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onUpdateFollowEditorsPicksComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onUpdatePrivateComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onUpdateProfileComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onUpdateTypingStateComplete(Z)V
    .registers 2

    return-void
.end method

.method public onUserSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7

    return-void
.end method

.method public onVerifyEmailComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onVerifyPhoneNumberComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .registers 3

    return-void
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onWebSocketConnectComplete()V
    .registers 1

    return-void
.end method

.method public onWebSocketDisconnected()V
    .registers 1

    return-void
.end method

.method public onWebSocketError()V
    .registers 1

    return-void
.end method

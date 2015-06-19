.class public Lcom/glympse/android/rpc/RpcMethods;
.super Ljava/lang/Object;
.source "RpcMethods.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissNotification(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GGlympse;ILjava/lang/String;)V
    .registers 7

    const-string v0, "dismiss_notification"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(J)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/glympse/android/rpc/GRpcComponent;->invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static expireTicket(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GTicket;)V
    .registers 4

    const-string v0, "expire_ticket"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-static {p0, v1, v0}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void

    :cond_d
    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    goto :goto_9
.end method

.method public static getCalendarEvents(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_calendar_events"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getCallLog(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_call_log"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getDestinations(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_destinations"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getFavorites(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_favorites"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getInviteAvatar(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GInvite;)V
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-interface {p0, v2}, Lcom/glympse/android/rpc/GRpcComponent;->getObjectCache(Lcom/glympse/android/rpc/GConnection;)Lcom/glympse/android/lib/GMemoryCache;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/rpc/ad;->d(Lcom/glympse/android/api/GInvite;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GMemoryCache;->extract(Ljava/lang/String;)Lcom/glympse/android/core/GCommon;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GImage;

    if-eqz v0, :cond_21

    move-object v1, p1

    check-cast v1, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setAvatar(Lcom/glympse/android/api/GImage;)V

    const/4 v0, 0x2

    const/16 v1, 0x20

    invoke-interface {p0, v2, v0, v1, p1}, Lcom/glympse/android/rpc/GRpcComponent;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_3

    :cond_21
    const-string v0, "get_invite_avatar"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    goto :goto_3
.end method

.method public static getPendingNotifications(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_pending_notifications"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getPhoneFavorites(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_phone_favorites"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getRecentTickets(Lcom/glympse/android/rpc/GRpcComponent;ZZ)V
    .registers 6

    const-string v0, "get_recent_tickets"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Z)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-static {p2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Z)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getSharingState(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_sharing_state"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getSocialTokens(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_social_tokens"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getSystemHealth(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "get_system_health"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getUserAvatar(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GUser;)V
    .registers 4

    const-string v0, "get_user_avatar"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getUserSnapshot(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GUser;IILjava/lang/String;)V
    .registers 10

    const-string v0, "get_user_snapshot"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(J)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    int-to-long v3, p3

    invoke-static {v3, v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(J)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-static {p4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static getUsers(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 4

    const-string v0, "get_users"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "standalone"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Z)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/rpc/GRpcComponent;",
            "Ljava/lang/String;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-interface {p0, p1, p2}, Lcom/glympse/android/rpc/GRpcComponent;->invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    goto :goto_2
.end method

.method public static modifyTicket(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GTicket;J)V
    .registers 6

    const-string v0, "modify_ticket"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(J)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static notifyOnRequestInvite(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/api/GUserTicket;)V
    .registers 6

    const-string v0, "request_invite"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lcom/glympse/android/rpc/GRpcComponent;->invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static notifyOnTicketInvite(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/api/GUserTicket;)V
    .registers 6

    const-string v0, "ticket_invite"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lcom/glympse/android/rpc/GRpcComponent;->invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static responseToRequestInvite(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GUserTicket;Z)V
    .registers 6

    invoke-interface {p1}, Lcom/glympse/android/api/GUserTicket;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    const-string v1, "request_invite_response"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Z)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static responseToTicketInvite(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GUserTicket;Z)V
    .registers 6

    const-string v0, "ticket_invite_response"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/api/GUserTicket;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Z)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static sendErrorResponse(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/rpc/GRpcComponent;",
            "Lcom/glympse/android/rpc/GConnection;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "error_response"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/glympse/android/rpc/GRpcComponent;->invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static sendFavoritesList(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/rpc/GConnection;)V
    .registers 5

    const-string v0, "favorites_list"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-interface {p0, p2, v0, v1}, Lcom/glympse/android/rpc/GRpcComponent;->invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static sendInviteAvatar(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/api/GInvite;)V
    .registers 6

    const-string v0, "invite_avatar"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-interface {p0, p2, v0, v1}, Lcom/glympse/android/rpc/GRpcComponent;->invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static sendRequest(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GTicket;)V
    .registers 4

    const-string v0, "send_request"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static sendSocialTokens(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/rpc/GRpcComponent;",
            "Lcom/glympse/android/rpc/GConnection;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "social_tokens_list"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/glympse/android/rpc/GRpcComponent;->invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static sendTicket(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GTicket;)V
    .registers 4

    const-string v0, "send_ticket"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static setBatteryForce(Lcom/glympse/android/rpc/GRpcComponent;)V
    .registers 3

    const-string v0, "set_battery_force"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public static stopWatchingUser(Lcom/glympse/android/rpc/GRpcComponent;Lcom/glympse/android/api/GUser;)V
    .registers 4

    const-string v0, "stop_watching_user"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/glympse/android/rpc/RpcMethods;->invoke(Lcom/glympse/android/rpc/GRpcComponent;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.class Lcom/glympse/android/rpc/d;
.super Ljava/lang/Object;
.source "MessageTicket.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/glympse/android/lib/GInvitePrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
    .registers 4

    const-string v0, "type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "name"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "address"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_24
    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_INVITE()Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const-string v0, "type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/api/GlympseTools;->inviteTypeStringToEnum(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setType(I)V

    const-string v0, "subtype"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setSubtype(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setName(Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setAddress(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "code"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setCode(Ljava/lang/String;)V

    :cond_7a
    const-string v0, "viewers"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    const-string v0, "viewers"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setViewers(I)V

    :cond_94
    const-string v0, "viewing"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "viewing"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setViewing(I)V

    :cond_ae
    const-string v0, "last_view"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string v0, "last_view"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setLastViewTime(J)V

    :cond_c7
    const/4 v0, 0x0

    goto/16 :goto_28
.end method

.method public static a(Lcom/glympse/android/lib/GPlacePrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
    .registers 6

    const-string v0, "lat"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "lon"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "name"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_24
    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_DESTINATION()Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const-string v0, "lat"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "lon"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/GPlacePrivate;->setLocation(DD)V

    const-string v0, "name"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GPlacePrivate;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
    .registers 10

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-string v0, "code"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "code"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/lib/TicketCode;->base32ToLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_28

    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_CODE()Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    const-string v0, "source"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "source"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->isString()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_SOURCE()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_49
    const-string v0, "message"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "message"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->isString()Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_MESSAGE()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_6a
    const-string v0, "name"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setName(Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setDuration(I)V

    const-string v0, "message"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setMessage(Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    if-eqz v2, :cond_ad

    invoke-static {v6, v7, v6, v7, v1}, Lcom/glympse/android/api/GlympseFactory;->createPlace(DDLjava/lang/String;)Lcom/glympse/android/api/GPlace;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GPlacePrivate;

    invoke-static {v0, v2}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GPlacePrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d9

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setDestination(Lcom/glympse/android/api/GPlace;)V

    :cond_ad
    const-string v0, "invites"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    if-eqz v3, :cond_e5

    invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_bf
    if-ge v2, v4, :cond_eb

    invoke-interface {v3, v2}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v5

    const/4 v0, 0x6

    invoke-static {v0, v1, v1}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-static {v0, v5}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GInvitePrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_df

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->addInvite(Lcom/glympse/android/api/GInvite;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_bf

    :cond_d9
    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_DESTINATION()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    :cond_df
    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_INVITE()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    :cond_e5
    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_INVITES()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    :cond_eb
    const-string v0, "state"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setId(Ljava/lang/String;)V

    const-string v0, "start_time"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setStartTime(J)V

    const-string v0, "end_time"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {p0, v2, v3, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V

    const-string v0, "source"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setSource(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setRequestCode(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_27
.end method

.method public static a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/api/GGlympse;)Ljava/lang/String;
    .registers 7

    const-string v0, "duration"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "duration"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->isLong()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "duration"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_43

    const-string v0, "duration"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {p2}, Lcom/glympse/android/api/GGlympse;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/api/GConfig;->getMaximumTicketDuration()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_48

    :cond_43
    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_DURATION()Ljava/lang/String;

    move-result-object v0

    :goto_47
    return-object v0

    :cond_48
    invoke-static {p0, p1}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47
.end method

.method public static a(Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GPrimitive;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GPrimitive;Z)V

    return-void
.end method

.method public static a(Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GPrimitive;Z)V
    .registers 6

    const-string v0, "type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/glympse/android/api/GlympseTools;->inviteTypeEnumToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "subtype"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "address"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    if-eqz p2, :cond_88

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "code"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    const-string v0, "viewers"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getViewers()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "viewing"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getViewing()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "last_view"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getLastViewTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_88
    return-void
.end method

.method public static a(Lcom/glympse/android/api/GPlace;Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    const-string v0, "lat"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getLatitude()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "lon"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getLongitude()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public static a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;Z)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;ZJ)V

    return-void
.end method

.method public static a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;ZJ)V
    .registers 12

    const/4 v6, 0x2

    const-string v0, "duration"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    move-object v0, p0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "message"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getDestination()Lcom/glympse/android/api/GPlace;

    move-result-object v0

    if-eqz v0, :cond_4f

    new-instance v1, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v1, v6}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    invoke-static {v0, v1}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GPlace;Lcom/glympse/android/core/GPrimitive;)V

    const-string v0, "destination"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_4f
    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_62

    const-string v1, "id"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_71

    const-string v0, "extend_for"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p3, p4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_71
    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v3

    if-lez v3, :cond_a3

    new-instance v4, Lcom/glympse/android/lib/Primitive;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_83
    if-ge v1, v3, :cond_9a

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    new-instance v5, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v5, v6}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    invoke-static {v0, v5, p2}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GPrimitive;Z)V

    invoke-interface {v4, v5}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_83

    :cond_9a
    const-string v0, "invites"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_a3
    if-eqz p2, :cond_105

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->isActive()Z

    move-result v0

    if-eqz v0, :cond_105

    const-string v0, "state"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "active"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "start_time"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getStartTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "end_time"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getExpireTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :goto_e1
    move-object v0, p0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f3

    const-string v1, "source"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f3
    check-cast p0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {p0}, Lcom/glympse/android/lib/GTicketPrivate;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_104

    const-string v1, "code"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_104
    return-void

    :cond_105
    const-string v0, "state"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expired"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e1
.end method

.method public static a(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GTicket;",
            ">;",
            "Lcom/glympse/android/core/GPrimitive;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;ZZ)V

    return-void
.end method

.method public static a(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;ZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GTicket;",
            ">;",
            "Lcom/glympse/android/core/GPrimitive;",
            "ZZ)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_25

    invoke-interface {p0, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    if-nez p2, :cond_16

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isActive()Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_16
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-static {v0, v3, p3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;Z)V

    invoke-interface {p1, v3}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_25
    return-void
.end method

.method public static a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GTicket;",
            ">;",
            "Lcom/glympse/android/core/GPrimitive;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v2

    move v0, v1

    :goto_9
    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-static {v1}, Lcom/glympse/android/lib/LibFactory;->createTicket(Z)Lcom/glympse/android/lib/GTicketPrivate;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static b(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;Z)V

    return-void
.end method

.class Lcom/glympse/android/rdbg/a;
.super Ljava/lang/Object;
.source "ObjectEncoders.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GPrimitive;ZZ)V
    .registers 9

    if-eqz p3, :cond_8c

    const-string v0, "type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/glympse/android/api/GlympseTools;->inviteTypeEnumToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :goto_16
    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz p3, :cond_9f

    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    if-eqz p3, :cond_a9

    const-string v1, "address"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_46
    :goto_46
    if-eqz p2, :cond_8b

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    if-eqz p3, :cond_b3

    const-string v1, "code"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_60
    :goto_60
    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getViewers()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getLastViewTime()J

    move-result-wide v2

    if-eqz p3, :cond_bd

    const-string v4, "viewers"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "last_view"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    const-string v0, "type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/glympse/android/api/GlympseTools;->inviteTypeEnumToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_9f
    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_a9
    const-string v1, "address"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_b3
    const-string v1, "code"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_bd
    const-string v4, "viewers"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "last_view"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    goto :goto_8b
.end method

.method public static a(Lcom/glympse/android/api/GPlace;Lcom/glympse/android/core/GPrimitive;Z)V
    .registers 6

    const/4 v2, 0x6

    if-eqz p2, :cond_5c

    const-string v0, "lat"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "lon"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :goto_2b
    invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    if-eqz p2, :cond_77

    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_43
    :goto_43
    invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    if-eqz p2, :cond_81

    const-string v1, "address"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
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

    goto :goto_2b

    :cond_77
    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_81
    const-string v1, "address"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method public static a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;ZZ)V
    .registers 7

    if-eqz p3, :cond_9f

    const-string v0, "duration"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :goto_17
    move-object v0, p0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    if-eqz p3, :cond_af

    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_32
    :goto_32
    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    if-eqz p3, :cond_ba

    const-string v1, "message"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    if-eqz p2, :cond_fb

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->isActive()Z

    move-result v0

    if-eqz v0, :cond_fb

    if-eqz p3, :cond_c4

    const-string v0, "state"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "active"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "start_time"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "end_time"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getExpireTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :goto_9e
    return-void

    :cond_9f
    const-string v0, "duration"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    goto/16 :goto_17

    :cond_af
    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_ba
    const-string v1, "message"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_c4
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

    goto :goto_9e

    :cond_fb
    if-eqz p3, :cond_110

    const-string v0, "state"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "expired"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    goto :goto_9e

    :cond_110
    const-string v0, "state"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expired"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9e
.end method

.method public static a(Lcom/glympse/android/api/GUser;Lcom/glympse/android/core/GPrimitive;Z)V
    .registers 5

    invoke-interface {p0}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz p2, :cond_31

    const-string v1, "id"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_18
    :goto_18
    invoke-interface {p0}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    if-eqz p2, :cond_3b

    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    const-string v1, "id"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_3b
    const-string v1, "name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public static a(Lcom/glympse/android/api/GUserTicket;Lcom/glympse/android/core/GPrimitive;ZZ)V
    .registers 8

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GUserTicket;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/api/GUser;Lcom/glympse/android/core/GPrimitive;Z)V

    if-eqz p3, :cond_59

    const-string v1, "from"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :goto_1a
    invoke-interface {p0}, Lcom/glympse/android/api/GUserTicket;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const-string v2, "code"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_63

    const-string v0, "invite"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_3f
    :goto_3f
    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GUserTicket;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v1

    invoke-static {v1, v0, p2, p3}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;ZZ)V

    if-eqz p3, :cond_6d

    const-string v1, "ticket"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :goto_58
    return-void

    :cond_59
    const-string v1, "from"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_1a

    :cond_63
    const-string v0, "invite"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_3f

    :cond_6d
    const-string v1, "ticket"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_58
.end method

.method public static a(Lcom/glympse/android/core/GLocation;Lcom/glympse/android/core/GPrimitive;Z)V
    .registers 7

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-eqz p2, :cond_f7

    const-string v0, "lat"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "lon"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :goto_2c
    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_49

    if-eqz p2, :cond_113

    const-string v0, "provider"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getProvider()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_49
    :goto_49
    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_66

    if-eqz p2, :cond_123

    const-string v0, "altitude"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getAltitude()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v3}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_66
    :goto_66
    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_83

    if-eqz p2, :cond_133

    const-string v0, "bearing"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getBearing()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v3}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_83
    :goto_83
    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_a0

    if-eqz p2, :cond_143

    const-string v0, "speed"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v3}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->hasHAccuracy()Z

    move-result v0

    if-eqz v0, :cond_bd

    if-eqz p2, :cond_153

    const-string v0, "h_accuracy"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getHAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v3}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_bd
    :goto_bd
    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->hasVAccuracy()Z

    move-result v0

    if-eqz v0, :cond_da

    if-eqz p2, :cond_163

    const-string v0, "v_accuracy"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getVAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v3}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_da
    :goto_da
    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_f6

    if-eqz p2, :cond_173

    const-string v0, "time"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_f6
    :goto_f6
    return-void

    :cond_f7
    const-string v0, "lat"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getLatitude()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    const-string v0, "lon"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getLongitude()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    goto/16 :goto_2c

    :cond_113
    const-string v0, "provider"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getProvider()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    goto/16 :goto_49

    :cond_123
    const-string v0, "altitude"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getAltitude()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    goto/16 :goto_66

    :cond_133
    const-string v0, "bearing"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getBearing()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    goto/16 :goto_83

    :cond_143
    const-string v0, "speed"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    goto/16 :goto_a0

    :cond_153
    const-string v0, "h_accuracy"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getHAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    goto/16 :goto_bd

    :cond_163
    const-string v0, "v_accuracy"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getVAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V

    goto/16 :goto_da

    :cond_173
    const-string v0, "time"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/core/GLocation;->getTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    goto/16 :goto_f6
.end method

.method public static a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;Z)V
    .registers 6

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz p2, :cond_4b

    const-string v1, "baseUrl"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_18
    :goto_18
    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    if-eqz p2, :cond_55

    const-string v1, "apiKey"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :cond_30
    :goto_30
    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->isAccountSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-wide/16 v0, 0x1

    :goto_38
    if-eqz p2, :cond_62

    const-string v2, "isAccountSharingEnabled"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    :goto_4a
    return-void

    :cond_4b
    const-string v1, "baseUrl"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_55
    const-string v1, "apiKey"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_5f
    const-wide/16 v0, 0x0

    goto :goto_38

    :cond_62
    const-string v2, "isAccountSharingEnabled"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    goto :goto_4a
.end method

.method public static b(Lcom/glympse/android/api/GUserTicket;Lcom/glympse/android/core/GPrimitive;ZZ)V
    .registers 8

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GUserTicket;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/api/GUser;Lcom/glympse/android/core/GPrimitive;Z)V

    if-eqz p3, :cond_5c

    const-string v1, "from"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :goto_1a
    invoke-interface {p0}, Lcom/glympse/android/api/GUserTicket;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz p3, :cond_66

    const-string v2, "code"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    const-string v0, "invite"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_42
    :goto_42
    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/api/GUserTicket;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v1

    invoke-static {v1, v0, p2, p3}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;ZZ)V

    if-eqz p3, :cond_79

    const-string v1, "request"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :goto_5b
    return-void

    :cond_5c
    const-string v1, "from"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_1a

    :cond_66
    const-string v2, "code"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "invite"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_42

    :cond_79
    const-string v1, "request"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_5b
.end method

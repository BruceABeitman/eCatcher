.class Lcom/glympse/android/rdbg/e;
.super Ljava/lang/Object;
.source "RDbgDomNode.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glympse/android/rdbg/e;->b(Lcom/glympse/android/core/GPrimitive;I)V

    return-object v0
.end method

.method public static a(Lcom/glympse/android/lib/GGlympsePrivate;ZZ)Lcom/glympse/android/core/GPrimitive;
    .registers 22

    const-string v3, "recent_tickets"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v6

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v8

    invoke-interface {v8}, Lcom/glympse/android/core/GArray;->length()I

    move-result v9

    const/4 v3, 0x0

    move v5, v3

    :goto_1d
    if-ge v5, v9, :cond_c4

    invoke-interface {v8, v5}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glympse/android/api/GTicket;

    if-nez p1, :cond_2d

    invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->isActive()Z

    move-result v4

    if-eqz v4, :cond_bf

    :cond_2d
    const-string v4, "ticket"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v10

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v4

    const/4 v11, 0x1

    move/from16 v0, p2

    invoke-static {v3, v4, v0, v11}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;ZZ)V

    invoke-static {v10, v4}, Lcom/glympse/android/rdbg/e;->b(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v11

    invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->getDestination()Lcom/glympse/android/api/GPlace;

    move-result-object v4

    if-eqz v4, :cond_69

    const-string v12, "destination"

    invoke-static {v12}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v4, v13, v14}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/api/GPlace;Lcom/glympse/android/core/GPrimitive;Z)V

    invoke-static {v12, v13}, Lcom/glympse/android/rdbg/e;->b(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v11, v12}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_69
    invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v12

    invoke-interface {v12}, Lcom/glympse/android/core/GArray;->length()I

    move-result v13

    if-lez v13, :cond_b9

    const-string v3, "recipients_list"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v14

    new-instance v15, Lcom/glympse/android/lib/Primitive;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_85
    if-ge v4, v13, :cond_b3

    invoke-interface {v12, v4}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glympse/android/api/GInvite;

    const-string v16, "invite"

    invoke-static/range {v16 .. v16}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v16

    new-instance v17, Lcom/glympse/android/lib/Primitive;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v3, v0, v1, v2}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GPrimitive;ZZ)V

    invoke-static/range {v16 .. v17}, Lcom/glympse/android/rdbg/e;->b(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface/range {v15 .. v16}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_85

    :cond_b3
    invoke-static {v14, v15}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v11, v14}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_b9
    invoke-static {v10, v11}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v7, v10}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_bf
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_1d

    :cond_c4
    invoke-static {v6, v7}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V

    return-object v6
.end method

.method public static a(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 5

    const-string v0, "nodeId"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {p0, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    const-string v0, "children"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    const-string v0, "childNodeCount"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p0, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
    .registers 3

    const-string v0, "nodeName"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 5

    const-string v0, "nodeType"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {p0, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
    .registers 3

    const-string v0, "attributes"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public static h(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
    .registers 7

    const/4 v5, 0x1

    const-string v0, "platform_properties"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {v5}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-static {p0, v1, v5}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;Z)V

    const-string v2, "attributes"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-static {v5}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-interface {v2}, Lcom/glympse/android/api/GLocationManager;->getLocation()Lcom/glympse/android/core/GLocation;

    move-result-object v2

    if-eqz v2, :cond_48

    const-string v3, "lastKnownLocation"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-static {v5}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v4

    invoke-static {v2, v4, v5}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/core/GLocation;Lcom/glympse/android/core/GPrimitive;Z)V

    const-string v2, "attributes"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v1, v3}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_48
    invoke-static {v0, v1}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V

    return-object v0
.end method

.method public static i(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
    .registers 10

    const/4 v8, 0x1

    const-string v0, "users_list"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    invoke-static {v8}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getStandaloneUsers()Lcom/glympse/android/core/GArray;

    move-result-object v4

    invoke-interface {v4}, Lcom/glympse/android/core/GArray;->length()I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v5, :cond_46

    invoke-interface {v4, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    const-string v6, "user"

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glympse/android/rdbg/e;->N(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v6

    invoke-static {v8}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v7

    invoke-static {v0, v7, v8}, Lcom/glympse/android/rdbg/a;->a(Lcom/glympse/android/api/GUser;Lcom/glympse/android/core/GPrimitive;Z)V

    const-string v0, "attributes"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v7}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v3, v6}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_46
    invoke-static {v2, v3}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V

    return-object v2
.end method

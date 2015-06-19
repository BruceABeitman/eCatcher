.class public Lcom/glympse/android/lib/di;
.super Ljava/lang/Object;
.source "GroupMember.java"

# interfaces
.implements Lcom/glympse/android/lib/dh;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/glympse/android/api/GGroupMember;Lcom/glympse/android/api/GGroupMember;)I
    .registers 11

    const/16 v7, 0x10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/glympse/android/api/GGroupMember;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v3

    :cond_10
    :goto_10
    return v1

    :cond_11
    invoke-interface {p2}, Lcom/glympse/android/api/GGroupMember;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->isSelf()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p1}, Lcom/glympse/android/api/GGroupMember;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v5

    invoke-interface {p2}, Lcom/glympse/android/api/GGroupMember;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v6

    if-nez v5, :cond_29

    if-nez v6, :cond_10

    move v1, v2

    goto :goto_10

    :cond_29
    if-nez v6, :cond_2d

    move v1, v3

    goto :goto_10

    :cond_2d
    invoke-interface {v5}, Lcom/glympse/android/api/GTicket;->getState()I

    move-result v0

    if-ne v0, v7, :cond_41

    move v0, v1

    :goto_34
    invoke-interface {v6}, Lcom/glympse/android/api/GTicket;->getState()I

    move-result v4

    if-ne v4, v7, :cond_43

    move v4, v1

    :goto_3b
    if-eq v0, v4, :cond_45

    if-eqz v0, :cond_10

    move v1, v3

    goto :goto_10

    :cond_41
    move v0, v2

    goto :goto_34

    :cond_43
    move v4, v2

    goto :goto_3b

    :cond_45
    invoke-interface {v5}, Lcom/glympse/android/api/GTicket;->getStartTime()J

    move-result-wide v4

    invoke-interface {v6}, Lcom/glympse/android/api/GTicket;->getStartTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_53

    move v1, v3

    goto :goto_10

    :cond_53
    cmp-long v0, v4, v6

    if-ltz v0, :cond_10

    move v1, v2

    goto :goto_10
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/glympse/android/api/GGroupMember;

    check-cast p2, Lcom/glympse/android/api/GGroupMember;

    invoke-virtual {p0, p1, p2}, Lcom/glympse/android/lib/di;->a(Lcom/glympse/android/api/GGroupMember;Lcom/glympse/android/api/GGroupMember;)I

    move-result v0

    return v0
.end method

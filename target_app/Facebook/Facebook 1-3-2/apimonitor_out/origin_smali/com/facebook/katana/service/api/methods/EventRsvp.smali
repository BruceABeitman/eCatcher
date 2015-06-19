.class public Lcom/facebook/katana/service/api/methods/EventRsvp;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "EventRsvp.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventId:J

.field private mNewStatus:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;JLcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)V
    .registers 14

    const-string v2, "POST"

    const-string v3, "events.rsvp"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mParams:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mParams:Ljava/util/Map;

    const-string v1, "eid"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mParams:Ljava/util/Map;

    const-string v1, "rsvp_status"

    invoke-static {p7}, Lcom/facebook/katana/service/api/FacebookEvent;->getRsvpStatusString(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mContext:Landroid/content/Context;

    iput-wide p5, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mEventId:J

    iput-object p7, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mNewStatus:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mSuccess:Z

    return-void
.end method


# virtual methods
.method public getEventId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mEventId:J

    return-wide v0
.end method

.method public getSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mSuccess:Z

    return v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v4, :cond_37

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mSuccess:Z

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "rsvp_status"

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mNewStatus:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;

    iget-object v5, v5, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/facebook/katana/provider/EventsProvider;->EVENT_EID_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mEventId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/EventRsvp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_37
    return-void
.end method

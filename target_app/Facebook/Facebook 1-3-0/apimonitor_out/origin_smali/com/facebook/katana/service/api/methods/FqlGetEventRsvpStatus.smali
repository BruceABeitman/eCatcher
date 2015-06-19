.class Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlGetEvents.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "FqlGetEventRsvpStatus"


# instance fields
.field private final mRsvpStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;JLjava/lang/String;)V
    .registers 9

    invoke-static {p5, p6, p7}, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;->buildQuery(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;->mRsvpStatus:Ljava/util/Map;

    return-void
.end method

.method protected static buildQuery(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT eid, rsvp_status FROM event_member WHERE uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND eid IN (SELECT eid FROM #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getEventRsvpStatus(J)Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;->mRsvpStatus:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;

    return-object p0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_c

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V

    :cond_b
    return-void

    :cond_c
    sget-boolean v1, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;->$assertionsDisabled:Z

    if-nez v1, :cond_1a

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1a

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1a
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_1e
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_b

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_30

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;->mRsvpStatus:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/facebook/katana/service/api/FacebookEvent;->parseRsvpStatus(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;)V

    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1e

    :cond_30
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2b

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V

    goto :goto_2b
.end method
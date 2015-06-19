.class public abstract Lcom/instagram/realtimeclient/RealtimeEvent;
.super Ljava/lang/Object;
.source "RealtimeEvent.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonSubTypes;
    value = {
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "subscribed"
            value = Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "unsubscribed"
            value = Lcom/instagram/realtimeclient/RealtimeUnsubscribedEvent;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "keepalive"
            value = Lcom/instagram/realtimeclient/RealtimeKeepaliveEvent;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "patch"
            value = Lcom/instagram/realtimeclient/RealtimePatchEvent;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "error"
            value = Lcom/instagram/realtimeclient/RealtimeErrorEvent;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    property = "event"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

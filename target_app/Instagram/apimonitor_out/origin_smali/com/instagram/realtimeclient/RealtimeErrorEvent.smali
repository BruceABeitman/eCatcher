.class public Lcom/instagram/realtimeclient/RealtimeErrorEvent;
.super Lcom/instagram/realtimeclient/RealtimeEvent;
.source "RealtimeErrorEvent.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public code:Ljava/lang/Integer;

.field public message:Ljava/lang/String;

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeEvent;-><init>()V

    return-void
.end method

.class public Lcom/instagram/realtimeclient/RealtimeKeepaliveEvent;
.super Lcom/instagram/realtimeclient/RealtimeEvent;
.source "RealtimeKeepaliveEvent.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public interval:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeEvent;-><init>()V

    return-void
.end method

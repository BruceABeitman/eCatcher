.class public Lcom/instagram/realtimeclient/RealtimeOperation;
.super Ljava/lang/Object;
.source "RealtimeOperation.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

.field public path:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ts"
    .end annotation
.end field

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

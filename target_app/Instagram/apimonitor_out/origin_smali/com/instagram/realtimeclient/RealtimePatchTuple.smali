.class public Lcom/instagram/realtimeclient/RealtimePatchTuple;
.super Ljava/lang/Object;
.source "RealtimePatchTuple.java"


# instance fields
.field final isTombstone:Z

.field final timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/instagram/realtimeclient/RealtimePatchTuple;->isTombstone:Z

    iput-object p2, p0, Lcom/instagram/realtimeclient/RealtimePatchTuple;->timestamp:Ljava/lang/String;

    return-void
.end method

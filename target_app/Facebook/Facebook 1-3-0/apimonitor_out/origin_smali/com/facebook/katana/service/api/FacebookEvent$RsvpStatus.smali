.class public Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
.super Ljava/lang/Object;
.source "FacebookEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RsvpStatus"
.end annotation


# instance fields
.field public final status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    return-void
.end method

.class public abstract Ljavax/mail/event/TransportAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/mail/event/TransportListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageDelivered(Ljavax/mail/event/TransportEvent;)V
    .registers 2

    return-void
.end method

.method public messageNotDelivered(Ljavax/mail/event/TransportEvent;)V
    .registers 2

    return-void
.end method

.method public messagePartiallyDelivered(Ljavax/mail/event/TransportEvent;)V
    .registers 2

    return-void
.end method

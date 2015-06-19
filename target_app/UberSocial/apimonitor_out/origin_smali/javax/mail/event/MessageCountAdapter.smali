.class public abstract Ljavax/mail/event/MessageCountAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/mail/event/MessageCountListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messagesAdded(Ljavax/mail/event/MessageCountEvent;)V
    .registers 2

    return-void
.end method

.method public messagesRemoved(Ljavax/mail/event/MessageCountEvent;)V
    .registers 2

    return-void
.end method

.class public final Lde/greenrobot/event/NoSubscriberEvent;
.super Ljava/lang/Object;
.source "NoSubscriberEvent.java"
.field public final eventBus:Lde/greenrobot/event/EventBus;
.field public final originalEvent:Ljava/lang/Object;
.method public constructor <init>(Lde/greenrobot/event/EventBus;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lde/greenrobot/event/NoSubscriberEvent;->eventBus:Lde/greenrobot/event/EventBus;
iput-object p2, p0, Lde/greenrobot/event/NoSubscriberEvent;->originalEvent:Ljava/lang/Object;
return-void
.end method
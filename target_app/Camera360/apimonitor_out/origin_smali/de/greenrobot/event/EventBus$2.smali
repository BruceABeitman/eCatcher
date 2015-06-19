.class Lde/greenrobot/event/EventBus$2;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lde/greenrobot/event/EventBus$BooleanWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/greenrobot/event/EventBus;


# direct methods
.method constructor <init>(Lde/greenrobot/event/EventBus;)V
    .registers 2

    iput-object p1, p0, Lde/greenrobot/event/EventBus$2;->this$0:Lde/greenrobot/event/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lde/greenrobot/event/EventBus$BooleanWrapper;
    .registers 2

    new-instance v0, Lde/greenrobot/event/EventBus$BooleanWrapper;

    invoke-direct {v0}, Lde/greenrobot/event/EventBus$BooleanWrapper;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lde/greenrobot/event/EventBus$2;->initialValue()Lde/greenrobot/event/EventBus$BooleanWrapper;

    move-result-object v0

    return-object v0
.end method

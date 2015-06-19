.class final Lcom/spotify/mobile/android/service/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/ae;->a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/ae;-><init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ae;->a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->b()V

    return-void
.end method

.class final Lcom/facebook/AppEventsLogger$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/facebook/AppEventsLogger;->a()Lcom/facebook/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushBehavior;->b:Lcom/facebook/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->b:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->a(Lcom/facebook/AppEventsLogger$FlushReason;)V

    :cond_d
    return-void
.end method

.class final Lcom/facebook/AppEventsLogger$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AppEventsLogger$FlushReason;


# direct methods
.method constructor <init>(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/AppEventsLogger$4;->a:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/AppEventsLogger$4;->a:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->a(Lcom/facebook/AppEventsLogger$FlushReason;)V

    return-void
.end method

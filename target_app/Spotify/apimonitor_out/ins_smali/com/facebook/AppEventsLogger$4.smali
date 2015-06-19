.class final Lcom/facebook/AppEventsLogger$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/facebook/AppEventsLogger$FlushReason;
.method constructor <init>(Lcom/facebook/AppEventsLogger$FlushReason;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AppEventsLogger$4;->a:Lcom/facebook/AppEventsLogger$FlushReason;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/facebook/AppEventsLogger$4;->a:Lcom/facebook/AppEventsLogger$FlushReason;
invoke-static {v0}, Lcom/facebook/AppEventsLogger;->a(Lcom/facebook/AppEventsLogger$FlushReason;)V
return-void
.end method
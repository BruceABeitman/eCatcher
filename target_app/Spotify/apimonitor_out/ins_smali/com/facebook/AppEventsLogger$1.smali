.class final Lcom/facebook/AppEventsLogger$1;
.super Ljava/util/HashMap;
.source "SourceFile"
.method constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/util/HashMap;-><init>()V
const-string v0, "fb_mobile_activate_app"
new-instance v1, Lcom/facebook/a;
sget-object v2, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->b:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
invoke-direct {v1, v2}, Lcom/facebook/a;-><init>(Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;)V
invoke-virtual {p0, v0, v1}, Lcom/facebook/AppEventsLogger$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
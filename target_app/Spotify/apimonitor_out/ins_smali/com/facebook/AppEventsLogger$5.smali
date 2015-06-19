.class final Lcom/facebook/AppEventsLogger$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/p;
.field final synthetic a:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
.field final synthetic b:Lcom/facebook/Request;
.field final synthetic c:Lcom/facebook/d;
.field final synthetic d:Lcom/facebook/b;
.method constructor <init>(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/d;Lcom/facebook/b;)V
.registers 5
iput-object p1, p0, Lcom/facebook/AppEventsLogger$5;->a:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
iput-object p2, p0, Lcom/facebook/AppEventsLogger$5;->b:Lcom/facebook/Request;
iput-object p3, p0, Lcom/facebook/AppEventsLogger$5;->c:Lcom/facebook/d;
iput-object p4, p0, Lcom/facebook/AppEventsLogger$5;->d:Lcom/facebook/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/aa;)V
.registers 5
iget-object v0, p0, Lcom/facebook/AppEventsLogger$5;->a:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
iget-object v1, p0, Lcom/facebook/AppEventsLogger$5;->b:Lcom/facebook/Request;
iget-object v1, p0, Lcom/facebook/AppEventsLogger$5;->c:Lcom/facebook/d;
iget-object v2, p0, Lcom/facebook/AppEventsLogger$5;->d:Lcom/facebook/b;
invoke-static {v0, p1, v1, v2}, Lcom/facebook/AppEventsLogger;->a(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/aa;Lcom/facebook/d;Lcom/facebook/b;)V
return-void
.end method
.class final Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/b;
.field final synthetic b:Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;Lcom/spotify/mobile/android/service/flow/logic/b;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$1;->b:Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$1;->a:Lcom/spotify/mobile/android/service/flow/logic/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$1;->a:Lcom/spotify/mobile/android/service/flow/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/b;->a()V
return-void
.end method
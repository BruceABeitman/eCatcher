.class public final Lcom/spotify/mobile/android/spotlets/browse/b/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
.field private final b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private final c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
.method public constructor <init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "Don\'t create LogInfo with null subEvent"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Don\'t create LogInfo with null viewUri"
invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Don\'t create LogInfo with null subView"
invoke-static {p3, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/b/d;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/b/d;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/b/d;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/d;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
return-object v0
.end method
.method public final b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/d;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method public final c()Lcom/spotify/mobile/android/util/ViewUri$SubView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/d;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-object v0
.end method
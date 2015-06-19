.class public final Lcom/spotify/mobile/android/util/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/ui/actions/a;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/util/b;->a:Lcom/spotify/mobile/android/ui/actions/a;
return-void
.end method
.method public final a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
.registers 7
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aL:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v1, "adId"
invoke-virtual {v0, v1, p3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iget-object v1, p0, Lcom/spotify/mobile/android/util/b;->a:Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {p1, p2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
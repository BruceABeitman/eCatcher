.class final Lcom/spotify/music/b;
.super Lcom/spotify/mobile/android/util/s;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/music/MainActivity;
.field private final b:Lcom/spotify/mobile/android/ui/f;
.method public constructor <init>(Lcom/spotify/music/MainActivity;Lcom/spotify/mobile/android/ui/f;)V
.registers 3
iput-object p1, p0, Lcom/spotify/music/b;->a:Lcom/spotify/music/MainActivity;
invoke-direct {p0}, Lcom/spotify/mobile/android/util/s;-><init>()V
iput-object p2, p0, Lcom/spotify/music/b;->b:Lcom/spotify/mobile/android/ui/f;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/b;->b:Lcom/spotify/mobile/android/ui/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
const-string v0, "Fragment navigation stack"
return-object v0
.end method
.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/io/IOException;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;Ljava/io/IOException;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$2;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$2;->a:Ljava/io/IOException;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$2;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$2;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->d:Lcom/spotify/mobile/android/spotlets/common/persistence/f;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->d(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$2;->a:Ljava/io/IOException;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/c;->a()V
return-void
.end method
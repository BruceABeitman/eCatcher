.class final Lcom/spotify/mobile/android/util/cs$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/util/cs;
.method constructor <init>(Lcom/spotify/mobile/android/util/cs;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/util/cs$1;->a:Lcom/spotify/mobile/android/util/cs;
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method public final onChange(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs$1;->a:Lcom/spotify/mobile/android/util/cs;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->a()V
return-void
.end method
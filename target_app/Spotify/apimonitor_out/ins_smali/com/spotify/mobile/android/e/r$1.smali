.class final Lcom/spotify/mobile/android/e/r$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/x;
.field final synthetic a:Lcom/spotify/mobile/android/e/r;
.method constructor <init>(Lcom/spotify/mobile/android/e/r;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/r$1;->a:Lcom/spotify/mobile/android/e/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(ZZ)V
.registers 4
if-eqz p1, :cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/e/r$1;->a:Lcom/spotify/mobile/android/e/r;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/r;->b()V
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/e/r$1;->a:Lcom/spotify/mobile/android/e/r;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/r;->c()V
goto :goto_7
.end method
.method public final b()V
.registers 1
return-void
.end method
.method public final c()V
.registers 1
return-void
.end method
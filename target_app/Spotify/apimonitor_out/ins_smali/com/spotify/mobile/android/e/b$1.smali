.class final Lcom/spotify/mobile/android/e/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/x;
.field final synthetic a:Lcom/spotify/mobile/android/e/b;
.method constructor <init>(Lcom/spotify/mobile/android/e/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/b$1;->a:Lcom/spotify/mobile/android/e/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(ZZ)V
.registers 4
if-eqz p1, :cond_4
if-nez p2, :cond_9
:cond_4
iget-object v0, p0, Lcom/spotify/mobile/android/e/b$1;->a:Lcom/spotify/mobile/android/e/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/b;->c()V
:cond_9
return-void
.end method
.method public final b()V
.registers 1
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/b$1;->a:Lcom/spotify/mobile/android/e/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/b;->b()V
return-void
.end method
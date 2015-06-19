.class final Lcom/spotify/mobile/android/ui/fragments/x$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/x;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/x$2;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$2;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->b(Lcom/spotify/mobile/android/ui/fragments/x;)I
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$2;->a:Lcom/spotify/mobile/android/ui/fragments/x;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;I)V
:cond_e
return-void
.end method
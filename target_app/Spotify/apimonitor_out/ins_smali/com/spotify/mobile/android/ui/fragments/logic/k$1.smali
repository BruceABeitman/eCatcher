.class final Lcom/spotify/mobile/android/ui/fragments/logic/k$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/k;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/k;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/k$1$1;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/k;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/k;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/k$1$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/k$1;Landroid/content/Context;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final bridge synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 4
check-cast p2, Lcom/spotify/mobile/android/ui/fragments/logic/l;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/k;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/fragments/logic/k;->a(Lcom/spotify/mobile/android/ui/fragments/logic/k;Lcom/spotify/mobile/android/ui/fragments/logic/l;)V
return-void
.end method
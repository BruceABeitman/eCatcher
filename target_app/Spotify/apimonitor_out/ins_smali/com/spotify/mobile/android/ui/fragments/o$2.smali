.class final Lcom/spotify/mobile/android/ui/fragments/o$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/o;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/o;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/o$2;->a:Lcom/spotify/mobile/android/ui/fragments/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o$2;->a:Lcom/spotify/mobile/android/ui/fragments/o;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/o;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0187
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/o$2;->a:Lcom/spotify/mobile/android/ui/fragments/o;
iget-object v3, v3, Lcom/spotify/mobile/android/ui/fragments/o;->a:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/a$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/g;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/actions/c;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/provider/c;->c(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-static {v0, v1, p1}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Landroid/net/Uri;Z)V
return-void
.end method
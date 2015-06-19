.class final Lcom/spotify/mobile/android/ui/fragments/x$4;
.super Lcom/spotify/mobile/android/util/webview/action/b;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/x;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/x;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/x$4;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/util/webview/action/b;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$4;->b:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
return-void
.end method
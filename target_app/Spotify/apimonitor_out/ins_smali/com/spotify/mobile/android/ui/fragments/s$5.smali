.class final Lcom/spotify/mobile/android/ui/fragments/s$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/s;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/s;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/s$5;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
invoke-static {}, Lcom/spotify/mobile/android/provider/t;->a()Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s$5;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v3, Lcom/spotify/mobile/android/model/g;->a:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$5;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->b(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/adapter/n;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/n;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 5
check-cast p2, Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$5;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->b(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/adapter/n;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/adapter/n;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$5;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->c(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/adapter/o;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
return-void
.end method
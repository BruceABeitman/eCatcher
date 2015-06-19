.class final Lcom/spotify/mobile/android/ui/fragments/p$11;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$11;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v5, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$11;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/u;->a:Landroid/net/Uri;
sget-object v3, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->d:[Ljava/lang/String;
const-string v4, "limit=101"
move-object v6, v5
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$11;->a:Lcom/spotify/mobile/android/ui/fragments/p;
const/4 v1, 0x0
iput-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 5
check-cast p2, Landroid/database/Cursor;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$11;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
iput-object v0, v1, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$11;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->J(Lcom/spotify/mobile/android/ui/fragments/p;)V
return-void
.end method
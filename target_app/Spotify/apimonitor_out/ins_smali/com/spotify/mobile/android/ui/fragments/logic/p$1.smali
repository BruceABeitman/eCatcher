.class final Lcom/spotify/mobile/android/ui/fragments/logic/p$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/p;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/p;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "trial_active"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "hide_trial"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p$1;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/p;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/aa;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/p$1;->b:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 5
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_15
const/4 v0, 0x0
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
const/4 v1, 0x1
invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->a(ZZ)V
:cond_15
return-void
.end method
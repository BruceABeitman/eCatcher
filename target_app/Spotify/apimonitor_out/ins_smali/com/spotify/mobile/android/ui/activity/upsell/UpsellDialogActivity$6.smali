.class final Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "current_user"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;->b:[Ljava/lang/String;
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
if-eqz v0, :cond_24
const/4 v0, 0x0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->b(Ljava/lang/String;)I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->e()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a014e
invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V
:cond_24
return-void
.end method
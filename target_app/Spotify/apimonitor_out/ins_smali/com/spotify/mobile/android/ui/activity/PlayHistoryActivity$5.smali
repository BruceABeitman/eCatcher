.class final Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
sget-object v2, Lcom/spotify/mobile/android/provider/l;->a:Landroid/net/Uri;
sget-object v3, Lcom/spotify/mobile/android/model/h;->a:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->b(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)Lcom/spotify/mobile/android/ui/adapter/ab;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/ab;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 4
check-cast p2, Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->b(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)Lcom/spotify/mobile/android/ui/adapter/ab;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/adapter/ab;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
return-void
.end method
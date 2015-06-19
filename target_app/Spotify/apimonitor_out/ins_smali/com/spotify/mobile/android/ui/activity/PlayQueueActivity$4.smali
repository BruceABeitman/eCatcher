.class final Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "is_radio"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$4;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;
sget-object v2, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$4;->b:[Ljava/lang/String;
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
.registers 8
const/4 v0, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_1b
invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-eqz v1, :cond_14
const/4 v0, 0x1
:cond_14
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->finish()V
:cond_1b
return-void
.end method
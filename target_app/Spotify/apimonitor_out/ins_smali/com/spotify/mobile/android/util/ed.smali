.class final Lcom/spotify/mobile/android/util/ed;
.super Lcom/spotify/mobile/android/util/ec;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field private a:Landroid/app/Activity;
.field private b:Landroid/support/v4/app/y;
.method private constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/y;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/ec;-><init>(B)V
iput-object p1, p0, Lcom/spotify/mobile/android/util/ed;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/spotify/mobile/android/util/ed;->b:Landroid/support/v4/app/y;
return-void
.end method
.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/y;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/ed;-><init>(Landroid/app/Activity;Landroid/support/v4/app/y;)V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/util/ed;->a:Landroid/app/Activity;
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/ed;->c()Landroid/net/Uri;
move-result-object v2
invoke-static {}, Lcom/spotify/mobile/android/util/ec;->d()[Ljava/lang/String;
move-result-object v3
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final bridge synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/database/Cursor;
invoke-virtual {p0, p2}, Lcom/spotify/mobile/android/util/ed;->a(Landroid/database/Cursor;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/util/ec;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/ed;->a:Landroid/app/Activity;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/util/ed;->b:Landroid/support/v4/app/y;
const v1, 0x7f0a01b8
const/4 v2, 0x0
invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
:cond_10
return-void
.end method
.method public final b()V
.registers 3
invoke-super {p0}, Lcom/spotify/mobile/android/util/ec;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/util/ed;->b:Landroid/support/v4/app/y;
const v1, 0x7f0a01b8
invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/ed;->a:Landroid/app/Activity;
return-void
.end method
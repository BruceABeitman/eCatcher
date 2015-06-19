.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/as;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/os/Parcelable;
:cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/ui/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/l;->c()Z
move-result v0
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/support/v4/widget/b;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/widget/b;->a()Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_54
invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I
move-result v1
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_54
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/ui/l;
move-result-object v2
const/4 v3, 0x3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z
:cond_54
return-void
.end method
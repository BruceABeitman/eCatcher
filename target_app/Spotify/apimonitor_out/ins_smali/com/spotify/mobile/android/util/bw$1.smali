.class final Lcom/spotify/mobile/android/util/bw$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ct;
.field final synthetic a:Lcom/spotify/mobile/android/util/bw;
.method constructor <init>(Lcom/spotify/mobile/android/util/bw;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/bw$1;->a:Lcom/spotify/mobile/android/util/bw;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-nez v2, :cond_9
:goto_8
return-void
:cond_9
iget-object v2, p0, Lcom/spotify/mobile/android/util/bw$1;->a:Lcom/spotify/mobile/android/util/bw;
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v3
if-eqz v3, :cond_12
move v0, v1
:cond_12
invoke-static {v2, v0}, Lcom/spotify/mobile/android/util/bw;->a(Lcom/spotify/mobile/android/util/bw;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/bw$1;->a:Lcom/spotify/mobile/android/util/bw;
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bw;->a(Lcom/spotify/mobile/android/util/bw;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bw$1;->a:Lcom/spotify/mobile/android/util/bw;
const/4 v1, 0x2
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bw;->b(Lcom/spotify/mobile/android/util/bw;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bw$1;->a:Lcom/spotify/mobile/android/util/bw;
const/4 v1, 0x3
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bw;->c(Lcom/spotify/mobile/android/util/bw;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bw$1;->a:Lcom/spotify/mobile/android/util/bw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/bw;->f()V
goto :goto_8
.end method
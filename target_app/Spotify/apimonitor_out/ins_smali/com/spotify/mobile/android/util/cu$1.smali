.class final Lcom/spotify/mobile/android/util/cu$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ct;
.field final synthetic a:Lcom/spotify/mobile/android/util/cu;
.method constructor <init>(Lcom/spotify/mobile/android/util/cu;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/cu$1;->a:Lcom/spotify/mobile/android/util/cu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 8
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/util/cu$1;->a:Lcom/spotify/mobile/android/util/cu;
const/4 v1, 0x0
const-string v2, ""
invoke-static {p2, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x2
invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
const/4 v4, 0x3
invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cu;->a([Ljava/lang/String;Ljava/lang/String;IZ)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/cu$1;->a:Lcom/spotify/mobile/android/util/cu;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cu;->a()V
goto :goto_6
.end method
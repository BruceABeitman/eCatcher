.class public final Lcom/spotify/mobile/android/model/f;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/j;
.field public static final a:[Ljava/lang/String;
.field private b:J
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Z
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:Z
.field private l:Z
.field private m:Z
.field private n:Z
.field private o:Z
.field private p:Z
.field private q:Z
.field private r:Z
.field private s:Z
.field private t:I
.field private u:I
.field private v:I
.field private w:I
.field private x:I
.field private y:I
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x18
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "item_count"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "uri"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "owner_name"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "is_own"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_subscribed"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_collaborative"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "offline_state"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "sync_progress"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "subscriber_count"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_published"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "is_starred"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "is_toptracks"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "is_available"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "is_loaded"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "is_loadable"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "is_folder"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "folder_count"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "is_radio_available"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "is_playing"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "is_paused"
aput-object v2, v0, v1
const/16 v1, 0x16
const-string v2, "image_uri"
aput-object v2, v0, v1
const/16 v1, 0x17
const-string v2, "lookup_included"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/model/f;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/f;->d:Ljava/lang/String;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->k:Z
if-eqz v0, :cond_c
const v0, 0x7f0f02e8
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->l:Z
if-eqz v0, :cond_18
const v0, 0x7f0f02e9
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_b
:cond_18
invoke-virtual {p0}, Lcom/spotify/mobile/android/model/f;->b()Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method
.method public final a(Landroid/database/Cursor;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
int-to-long v0, v0
iput-wide v0, p0, Lcom/spotify/mobile/android/model/f;->b:J
const/4 v0, 0x1
invoke-static {p1, v0, p2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/f;->c:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/f;->d:Ljava/lang/String;
const/4 v0, 0x4
const-string v1, ""
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/f;->e:Ljava/lang/String;
const/16 v0, 0x16
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/f;->f:Ljava/lang/String;
const/4 v0, 0x5
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->g:Z
const/4 v0, 0x6
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->h:Z
const/4 v0, 0x7
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->i:Z
const/16 v0, 0xb
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->j:Z
const/16 v0, 0xc
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->k:Z
const/16 v0, 0xd
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->l:Z
const/16 v0, 0xe
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->m:Z
const/16 v0, 0x13
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->n:Z
const/16 v0, 0x11
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->o:Z
const/16 v0, 0x14
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->p:Z
const/16 v0, 0x15
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->q:Z
const/16 v0, 0xf
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->r:Z
const/16 v0, 0x10
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->s:Z
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/f;->t:I
const/16 v0, 0xa
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/f;->u:I
const/16 v0, 0x12
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/f;->v:I
const/16 v0, 0x8
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/f;->w:I
const/16 v0, 0x9
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/f;->x:I
const/16 v0, 0x17
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/f;->y:I
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->k:Z
const-string v1, "Call getDisplayName instead"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(ZLjava/lang/String;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->l:Z
const-string v1, "Call getDisplayName instead"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(ZLjava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/model/f;->c:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/f;->e:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/f;->f:Ljava/lang/String;
return-object v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/f;->t:I
return v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/f;->v:I
return v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/f;->w:I
return v0
.end method
.method public final h()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/f;->x:I
return v0
.end method
.method public final i()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/f;->y:I
return v0
.end method
.method public final j()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/model/f;->b:J
return-wide v0
.end method
.method public final k()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->p:Z
return v0
.end method
.method public final l()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->h:Z
return v0
.end method
.method public final m()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->o:Z
return v0
.end method
.method public final n()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->g:Z
return v0
.end method
.method public final o()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->k:Z
return v0
.end method
.method public final p()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->l:Z
return v0
.end method
.method public final q()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->g:Z
if-nez v0, :cond_8
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->h:Z
if-eqz v0, :cond_e
:cond_8
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->o:Z
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final r()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->n:Z
return v0
.end method
.method public final s()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->i:Z
return v0
.end method
.method public final t()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->j:Z
return v0
.end method
.method public final u()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/f;->s:Z
return v0
.end method
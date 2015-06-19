.class public final Lcom/spotify/mobile/android/service/session/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:[Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Z
.field private final e:Z
.field private final f:Z
.field private final g:Z
.field private final h:I
.field private final i:Ljava/lang/String;
.field private final j:Z
.field private final k:Z
.field private final l:Z
.field private final m:Z
.field private final n:Z
.field private final o:Ljava/lang/String;
.field private final p:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xf
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "current_user"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "can_sync"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "logged_in"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "logging_in"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "current_account_type"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "country_code"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "logging_out"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "current_user_name"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "connected"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "can_connect"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "can_stream"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "streaming_rule_dmca"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "streaming_rule_wifi"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "payment_state"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "product_type"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/service/session/a;->a:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/service/session/a;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/service/session/a;->c:Ljava/lang/String;
iput-boolean p3, p0, Lcom/spotify/mobile/android/service/session/a;->d:Z
iput-boolean p4, p0, Lcom/spotify/mobile/android/service/session/a;->e:Z
iput-boolean p5, p0, Lcom/spotify/mobile/android/service/session/a;->f:Z
iput-boolean p6, p0, Lcom/spotify/mobile/android/service/session/a;->g:Z
iput p7, p0, Lcom/spotify/mobile/android/service/session/a;->h:I
iput-object p8, p0, Lcom/spotify/mobile/android/service/session/a;->i:Ljava/lang/String;
iput-boolean p9, p0, Lcom/spotify/mobile/android/service/session/a;->j:Z
iput-boolean p10, p0, Lcom/spotify/mobile/android/service/session/a;->k:Z
iput-boolean p11, p0, Lcom/spotify/mobile/android/service/session/a;->l:Z
iput-boolean p12, p0, Lcom/spotify/mobile/android/service/session/a;->m:Z
iput-boolean p13, p0, Lcom/spotify/mobile/android/service/session/a;->n:Z
iput-object p14, p0, Lcom/spotify/mobile/android/service/session/a;->o:Ljava/lang/String;
iput-object p15, p0, Lcom/spotify/mobile/android/service/session/a;->p:Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/service/session/a;
.registers 19
const/4 v2, 0x0
const-string v3, ""
move-object/from16 v0, p0
invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v3
const/4 v2, 0x7
const-string v4, ""
move-object/from16 v0, p0
invoke-static {v0, v2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v4
const/4 v2, 0x1
move-object/from16 v0, p0
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v5
const/4 v2, 0x2
move-object/from16 v0, p0
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v2
if-eqz v2, :cond_8b
const/4 v6, 0x1
:goto_23
const/4 v2, 0x3
move-object/from16 v0, p0
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v2
if-eqz v2, :cond_8d
const/4 v7, 0x1
:goto_2d
const/4 v2, 0x6
move-object/from16 v0, p0
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v2
if-eqz v2, :cond_8f
const/4 v8, 0x1
:goto_37
const/4 v2, 0x4
move-object/from16 v0, p0
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v9
const/4 v2, 0x5
move-object/from16 v0, p0
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
const/16 v2, 0x8
move-object/from16 v0, p0
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v11
const/16 v2, 0x9
move-object/from16 v0, p0
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v12
const/16 v2, 0xa
move-object/from16 v0, p0
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v13
const/16 v2, 0xb
move-object/from16 v0, p0
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v14
const/16 v2, 0xc
move-object/from16 v0, p0
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v15
const/16 v2, 0xd
const-string v16, ""
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v16
const/16 v2, 0xe
const-string v17, ""
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v17
new-instance v2, Lcom/spotify/mobile/android/service/session/a;
invoke-direct/range {v2 .. v17}, Lcom/spotify/mobile/android/service/session/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;)V
return-object v2
:cond_8b
const/4 v6, 0x0
goto :goto_23
:cond_8d
const/4 v7, 0x0
goto :goto_2d
:cond_8f
const/4 v8, 0x0
goto :goto_37
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/session/a;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/session/a;->d:Z
return v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/session/a;->e:Z
return v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/session/a;->f:Z
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/session/a;->g:Z
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/mobile/android/service/session/a;
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->d:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->d:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/session/a;->b:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/session/a;->c:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->i:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/session/a;->i:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget v2, p0, Lcom/spotify/mobile/android/service/session/a;->h:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget v3, p1, Lcom/spotify/mobile/android/service/session/a;->h:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->e:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->e:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->f:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->f:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->j:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->j:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->k:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->k:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->l:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->l:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->m:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->m:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->n:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->n:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->o:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/session/a;->o:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->p:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/session/a;->p:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->g:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/session/a;->g:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_fb
move v0, v1
goto/16 :goto_4
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/service/session/a;->h:I
return v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/session/a;->i:Ljava/lang/String;
return-object v0
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/session/a;->j:Z
return v0
.end method
.method public final hashCode()I
.registers 4
const/16 v0, 0xf
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->c:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->d:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->i:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x4
iget v2, p0, Lcom/spotify/mobile/android/service/session/a;->h:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->e:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->f:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->j:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->k:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x9
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->l:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xa
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->m:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xb
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->n:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xc
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->o:Ljava/lang/String;
aput-object v2, v0, v1
const/16 v1, 0xd
iget-object v2, p0, Lcom/spotify/mobile/android/service/session/a;->p:Ljava/lang/String;
aput-object v2, v0, v1
const/16 v1, 0xe
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/session/a;->g:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
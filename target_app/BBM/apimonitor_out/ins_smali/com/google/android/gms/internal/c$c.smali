.class public final Lcom/google/android/gms/internal/c$c;
.super Lcom/google/android/gms/internal/ka;
.field private static volatile eW:[Lcom/google/android/gms/internal/c$c;
.field public eX:Ljava/lang/String;
.field public eY:J
.field public eZ:J
.field public fa:Z
.field public fb:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/c$c;->g()Lcom/google/android/gms/internal/c$c;
return-void
.end method
.method public static f()[Lcom/google/android/gms/internal/c$c;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/c$c;->eW:[Lcom/google/android/gms/internal/c$c;
if-nez v0, :cond_11
sget-object v1, Lcom/google/android/gms/internal/kc;->aah:Ljava/lang/Object;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/google/android/gms/internal/c$c;->eW:[Lcom/google/android/gms/internal/c$c;
if-nez v0, :cond_10
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/android/gms/internal/c$c;
sput-object v0, Lcom/google/android/gms/internal/c$c;->eW:[Lcom/google/android/gms/internal/c$c;
:cond_10
monitor-exit v1
:try_end_11
.catchall {:try_start_7 .. :try_end_11} :catchall_14
:cond_11
sget-object v0, Lcom/google/android/gms/internal/c$c;->eW:[Lcom/google/android/gms/internal/c$c;
return-object v0
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/jz;)V
.registers 8
const-wide/16 v4, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V
:cond_12
iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eY:J
cmp-long v0, v0, v4
if-eqz v0, :cond_1e
const/4 v0, 0x2
iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eY:J
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jz;->b(IJ)V
:cond_1e
iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
const-wide/32 v2, 0x7fffffff
cmp-long v0, v0, v2
if-eqz v0, :cond_2d
const/4 v0, 0x3
iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jz;->b(IJ)V
:cond_2d
iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->fa:Z
if-eqz v0, :cond_37
const/4 v0, 0x4
iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->fa:Z
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->a(IZ)V
:cond_37
iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fb:J
cmp-long v0, v0, v4
if-eqz v0, :cond_43
const/4 v0, 0x5
iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fb:J
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jz;->b(IJ)V
:cond_43
invoke-super {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/jz;)V
return-void
.end method
.method public final synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$c;->d(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$c;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 8
const-wide/16 v5, 0x0
invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_18
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(ILjava/lang/String;)I
move-result v1
add-int/2addr v0, v1
:cond_18
iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eY:J
cmp-long v1, v1, v5
if-eqz v1, :cond_26
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eY:J
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/jz;->d(IJ)I
move-result v1
add-int/2addr v0, v1
:cond_26
iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
const-wide/32 v3, 0x7fffffff
cmp-long v1, v1, v3
if-eqz v1, :cond_37
const/4 v1, 0x3
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/jz;->d(IJ)I
move-result v1
add-int/2addr v0, v1
:cond_37
iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->fa:Z
if-eqz v1, :cond_43
const/4 v1, 0x4
iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->fa:Z
invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->b(IZ)I
move-result v1
add-int/2addr v0, v1
:cond_43
iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fb:J
cmp-long v1, v1, v5
if-eqz v1, :cond_51
const/4 v1, 0x5
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fb:J
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/jz;->d(IJ)I
move-result v1
add-int/2addr v0, v1
:cond_51
iput v0, p0, Lcom/google/android/gms/internal/c$c;->DY:I
return v0
.end method
.method public final d(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$c;
.registers 4
:goto_0
:cond_0
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
move-result v0
sparse-switch v0, :sswitch_data_32
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$c;->a(Lcom/google/android/gms/internal/jy;I)Z
move-result v0
if-nez v0, :cond_0
:sswitch_d
return-object p0
:sswitch_e
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
goto :goto_0
:sswitch_15
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kA()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eY:J
goto :goto_0
:sswitch_1c
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kA()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
goto :goto_0
:sswitch_23
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kC()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->fa:Z
goto :goto_0
:sswitch_2a
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kA()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fb:J
goto :goto_0
nop
:sswitch_data_32
.sparse-switch
0x0 -> :sswitch_d
0xa -> :sswitch_e
0x10 -> :sswitch_15
0x18 -> :sswitch_1c
0x20 -> :sswitch_23
0x28 -> :sswitch_2a
.end sparse-switch
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/internal/c$c;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/internal/c$c;
iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
if-nez v2, :cond_17
iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
if-eqz v2, :cond_23
move v0, v1
goto :goto_4
:cond_17
iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_23
move v0, v1
goto :goto_4
:cond_23
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eY:J
iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->eY:J
cmp-long v2, v2, v4
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->eZ:J
cmp-long v2, v2, v4
if-eqz v2, :cond_37
move v0, v1
goto :goto_4
:cond_37
iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->fa:Z
iget-boolean v3, p1, Lcom/google/android/gms/internal/c$c;->fa:Z
if-eq v2, v3, :cond_3f
move v0, v1
goto :goto_4
:cond_3f
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fb:J
iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->fb:J
cmp-long v2, v2, v4
if-eqz v2, :cond_49
move v0, v1
goto :goto_4
:cond_49
iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
if-eqz v2, :cond_55
iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_63
:cond_55
iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
if-eqz v2, :cond_4
iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
:cond_63
iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public final g()Lcom/google/android/gms/internal/c$c;
.registers 5
const-wide/16 v2, 0x0
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eY:J
const-wide/32 v0, 0x7fffffff
iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->fa:Z
iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fb:J
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/c$c;->DY:I
return-object p0
.end method
.method public final hashCode()I
.registers 8
const/4 v1, 0x0
const/16 v6, 0x20
iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
if-nez v0, :cond_41
move v0, v1
:goto_8
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eY:J
iget-wide v4, p0, Lcom/google/android/gms/internal/c$c;->eY:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
iget-wide v4, p0, Lcom/google/android/gms/internal/c$c;->eZ:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->fa:Z
if-eqz v0, :cond_48
const/16 v0, 0x4cf
:goto_26
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fb:J
iget-wide v4, p0, Lcom/google/android/gms/internal/c$c;->fb:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
if-eqz v2, :cond_3f
iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_4b
:goto_3f
:cond_3f
add-int/2addr v0, v1
return v0
:cond_41
iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eX:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_8
:cond_48
const/16 v0, 0x4d5
goto :goto_26
:cond_4b
iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->aae:Ljava/util/List;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_3f
.end method
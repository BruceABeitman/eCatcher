.class final Lcom/c/a/bb;
.super Ljava/lang/Object;
.field static final synthetic a:Z
.field private static final i:Ljava/lang/String;
.field private final b:Lcom/c/bp;
.field private final c:Lcom/c/a/j;
.field private final d:J
.field private final e:Lcom/c/a/bo;
.field private volatile f:Z
.field private g:Lcom/c/a/ai;
.field private h:Lcom/c/a/ai;
.method static constructor <clinit>()V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
const-string v2, "+9P\u001eN#5X"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_4e
move v4, v1
:cond_c
move-object v5, v2
move v6, v4
move v9, v3
move-object v3, v2
move v2, v9
:goto_11
aget-char v8, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_50
const/16 v7, 0x3a
:goto_1a
xor-int/2addr v7, v8
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_26
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_11
:cond_26
move v3, v2
move-object v2, v5
:goto_28
if-gt v3, v4, :cond_c
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
sput-object v2, Lcom/c/a/bb;->i:Ljava/lang/String;
const-class v2, Lcom/c/a/bb;
invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v2
if-nez v2, :cond_40
:goto_3d
sput-boolean v0, Lcom/c/a/bb;->a:Z
return-void
:cond_40
move v0, v1
goto :goto_3d
:pswitch_42
const/16 v7, 0x4a
goto :goto_1a
:pswitch_45
const/16 v7, 0x5b
goto :goto_1a
:pswitch_48
const/16 v7, 0x3f
goto :goto_1a
:pswitch_4b
const/16 v7, 0x6c
goto :goto_1a
:cond_4e
move v4, v1
goto :goto_28
:pswitch_data_50
.packed-switch 0x0
:pswitch_42
:pswitch_45
:pswitch_48
:pswitch_4b
.end packed-switch
.end method
.method constructor <init>(Lcom/c/a/j;JLcom/c/a/bo;)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/c/a/bb;->f:Z
iput-object v1, p0, Lcom/c/a/bb;->g:Lcom/c/a/ai;
iput-object v1, p0, Lcom/c/a/bb;->h:Lcom/c/a/ai;
const-class v0, Lcom/c/a/bb;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
iput-object v0, p0, Lcom/c/a/bb;->b:Lcom/c/bp;
iput-object p1, p0, Lcom/c/a/bb;->c:Lcom/c/a/j;
iput-wide p2, p0, Lcom/c/a/bb;->d:J
iput-object p4, p0, Lcom/c/a/bb;->e:Lcom/c/a/bo;
return-void
.end method
.method  a()V
.registers 7
const/4 v4, 0x1
const/4 v1, 0x0
sget v2, Lcom/c/a/bs;->b:I
iget-object v0, p0, Lcom/c/a/bb;->b:Lcom/c/bp;
sget-object v3, Lcom/c/a/bb;->i:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/c/bp;->c(Ljava/lang/String;)V
iput-boolean v4, p0, Lcom/c/a/bb;->f:Z
const/4 v0, 0x2
new-array v3, v0, [Lcom/c/a/ai;
monitor-enter p0
const/4 v0, 0x0
:try_start_12
iget-object v4, p0, Lcom/c/a/bb;->g:Lcom/c/a/ai;
aput-object v4, v3, v0
const/4 v0, 0x1
iget-object v4, p0, Lcom/c/a/bb;->h:Lcom/c/a/ai;
aput-object v4, v3, v0
monitor-exit p0
:try_end_1c
.catchall {:try_start_12 .. :try_end_1c} :catchall_45
array-length v4, v3
move v0, v1
:cond_1e
if-ge v0, v4, :cond_2b
aget-object v5, v3, v0
if-eqz v5, :cond_27
invoke-virtual {v5}, Lcom/c/a/ai;->a()V
:cond_27
add-int/lit8 v0, v0, 0x1
if-eqz v2, :cond_1e
:cond_2b
array-length v4, v3
move v0, v1
:cond_2d
if-ge v0, v4, :cond_3a
aget-object v5, v3, v0
if-eqz v5, :cond_36
invoke-virtual {v5}, Lcom/c/a/ai;->join()V
:cond_36
add-int/lit8 v0, v0, 0x1
if-eqz v2, :cond_2d
:cond_3a
iput-boolean v1, p0, Lcom/c/a/bb;->f:Z
sget-boolean v0, Lcom/c/bp;->b:Z
if-eqz v0, :cond_44
add-int/lit8 v0, v2, 0x1
sput v0, Lcom/c/a/bs;->b:I
:cond_44
return-void
:catchall_45
move-exception v0
:try_start_46
monitor-exit p0
:try_end_47
.catchall {:try_start_46 .. :try_end_47} :catchall_45
throw v0
.end method
.method  a(Lcom/c/a/ac;I)Z
.registers 7
sget-boolean v0, Lcom/c/a/bb;->a:Z
if-nez v0, :cond_12
iget-wide v0, p0, Lcom/c/a/bb;->d:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gtz v0, :cond_12
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_12
iget-boolean v0, p0, Lcom/c/a/bb;->f:Z
if-eqz v0, :cond_18
const/4 v0, 0x0
:goto_17
return v0
:cond_18
monitor-enter p0
:try_start_19
new-instance v0, Lcom/c/a/ai;
new-instance v1, Lcom/c/a/bg;
iget-object v2, p0, Lcom/c/a/bb;->e:Lcom/c/a/bo;
invoke-direct {v1, p1, v2, p2}, Lcom/c/a/bg;-><init>(Lcom/c/a/ac;Lcom/c/a/bo;I)V
invoke-direct {v0, v1}, Lcom/c/a/ai;-><init>(Lcom/c/a/at;)V
iput-object v0, p0, Lcom/c/a/bb;->h:Lcom/c/a/ai;
iget-object v0, p0, Lcom/c/a/bb;->h:Lcom/c/a/ai;
invoke-virtual {v0}, Lcom/c/a/ai;->start()V
monitor-exit p0
const/4 v0, 0x1
goto :goto_17
:catchall_2f
move-exception v0
monitor-exit p0
:try_end_31
.catchall {:try_start_19 .. :try_end_31} :catchall_2f
throw v0
.end method
.method  a(Lcom/c/a/cd;Z)Z
.registers 10
iget-boolean v0, p0, Lcom/c/a/bb;->f:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
monitor-enter p0
:try_start_7
new-instance v6, Lcom/c/a/ai;
new-instance v0, Lcom/c/a/bk;
iget-object v1, p0, Lcom/c/a/bb;->c:Lcom/c/a/j;
iget-object v3, p0, Lcom/c/a/bb;->e:Lcom/c/a/bo;
if-eqz p2, :cond_24
iget-wide v4, p0, Lcom/c/a/bb;->d:J
:goto_13
move-object v2, p1
invoke-direct/range {v0 .. v5}, Lcom/c/a/bk;-><init>(Lcom/c/a/j;Lcom/c/a/cd;Lcom/c/a/bo;J)V
invoke-direct {v6, v0}, Lcom/c/a/ai;-><init>(Lcom/c/a/at;)V
iput-object v6, p0, Lcom/c/a/bb;->g:Lcom/c/a/ai;
iget-object v0, p0, Lcom/c/a/bb;->g:Lcom/c/a/ai;
invoke-virtual {v0}, Lcom/c/a/ai;->start()V
monitor-exit p0
const/4 v0, 0x1
goto :goto_5
:cond_24
const-wide/16 v4, 0x0
goto :goto_13
:catchall_27
move-exception v0
monitor-exit p0
:try_end_29
.catchall {:try_start_7 .. :try_end_29} :catchall_27
throw v0
.end method
.class public abstract Lcom/c/ba;
.super Ljava/lang/Object;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.field public static a:Z = false
.field private static final b:J = 0x198c2f871470772L
.field private static d:Lcom/c/ba;
.field private static final e:Ljava/lang/String;
.field private c:J
.method static constructor <clinit>()V
.registers 8
const-string v0, "\u001b=P>:X/[mn\u0008.Qm!\u000c%N|="
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
const/4 v2, 0x0
const/4 v3, 0x1
if-gt v1, v3, :cond_27
:cond_b
move-object v3, v0
move v4, v2
move v7, v1
move-object v1, v0
move v0, v7
:goto_10
aget-char v6, v1, v2
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_44
const/16 v5, 0x4e
:goto_19
xor-int/2addr v5, v6
int-to-char v5, v5
aput-char v5, v1, v2
add-int/lit8 v2, v4, 0x1
if-nez v0, :cond_25
move-object v1, v3
move v4, v2
move v2, v0
goto :goto_10
:cond_25
move v1, v0
move-object v0, v3
:cond_27
if-gt v1, v2, :cond_b
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/c/ba;->e:Ljava/lang/String;
const/4 v0, 0x0
sput-object v0, Lcom/c/ba;->d:Lcom/c/ba;
return-void
:pswitch_38
const/16 v5, 0x78
goto :goto_19
:pswitch_3b
const/16 v5, 0x5c
goto :goto_19
:pswitch_3e
const/16 v5, 0x3e
goto :goto_19
:pswitch_41
const/16 v5, 0x19
goto :goto_19
:pswitch_data_44
.packed-switch 0x0
:pswitch_38
:pswitch_3b
:pswitch_3e
:pswitch_41
.end packed-switch
.end method
.method protected constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Lcom/c/ba;->b()J
move-result-wide v0
iput-wide v0, p0, Lcom/c/ba;->c:J
return-void
.end method
.method public static final a(J)Lcom/c/ba;
.registers 5
invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;
move-result-object v0
iget-wide v1, v0, Lcom/c/ba;->c:J
sub-long/2addr v1, p0
iput-wide v1, v0, Lcom/c/ba;->c:J
return-object v0
.end method
.method public static final a(JLcom/c/ba;)Lcom/c/ba;
.registers 6
invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;
move-result-object v0
iget-wide v1, p2, Lcom/c/ba;->c:J
sub-long/2addr v1, p0
iput-wide v1, v0, Lcom/c/ba;->c:J
return-object v0
.end method
.method public static final d()Lcom/c/ba;
.registers 1
sget-object v0, Lcom/c/ba;->d:Lcom/c/ba;
if-nez v0, :cond_a
new-instance v0, Lcom/c/be;
invoke-direct {v0}, Lcom/c/be;-><init>()V
:goto_9
return-object v0
:cond_a
sget-object v0, Lcom/c/ba;->d:Lcom/c/ba;
invoke-virtual {v0}, Lcom/c/ba;->c()Lcom/c/ba;
move-result-object v0
goto :goto_9
.end method
.method public static declared-synchronized d(Lcom/c/ba;)V
.registers 4
const-class v1, Lcom/c/ba;
monitor-enter v1
:try_start_3
new-instance v0, Ljava/lang/UnsupportedOperationException;
sget-object v2, Lcom/c/ba;->e:Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_b
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public a()J
.registers 5
invoke-virtual {p0}, Lcom/c/ba;->b()J
move-result-wide v0
iget-wide v2, p0, Lcom/c/ba;->c:J
sub-long/2addr v0, v2
return-wide v0
.end method
.method public a(Lcom/c/ba;)J
.registers 4
invoke-virtual {p1, p0}, Lcom/c/ba;->b(Lcom/c/ba;)J
move-result-wide v0
return-wide v0
.end method
.method protected abstract b()J
.end method
.method public b(Lcom/c/ba;)J
.registers 6
iget-wide v0, p0, Lcom/c/ba;->c:J
iget-wide v2, p1, Lcom/c/ba;->c:J
sub-long/2addr v0, v2
return-wide v0
.end method
.method public c(Lcom/c/ba;)I
.registers 6
iget-wide v0, p0, Lcom/c/ba;->c:J
iget-wide v2, p1, Lcom/c/ba;->c:J
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, -0x1
:goto_9
return v0
:cond_a
iget-wide v0, p0, Lcom/c/ba;->c:J
iget-wide v2, p1, Lcom/c/ba;->c:J
cmp-long v0, v0, v2
if-gez v0, :cond_14
const/4 v0, 0x1
goto :goto_9
:cond_14
const/4 v0, 0x0
goto :goto_9
.end method
.method protected abstract c()Lcom/c/ba;
.end method
.method protected synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/c/ba;->c()Lcom/c/ba;
move-result-object v0
return-object v0
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/c/ba;
invoke-virtual {p0, p1}, Lcom/c/ba;->c(Lcom/c/ba;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return v0
:try_start_4
:cond_4
iget-wide v1, p0, Lcom/c/ba;->c:J
check-cast p1, Lcom/c/ba;
iget-wide v3, p1, Lcom/c/ba;->c:J
:try_end_a
.catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_a} :catch_10
cmp-long v1, v1, v3
if-nez v1, :cond_3
const/4 v0, 0x1
goto :goto_3
:catch_10
move-exception v1
goto :goto_3
.end method
.method public hashCode()I
.registers 3
iget-wide v0, p0, Lcom/c/ba;->c:J
long-to-int v0, v0
return v0
.end method
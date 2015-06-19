.class final Lcom/google/analytics/tracking/android/al;
.super Ljava/lang/Object;
.source "GAUsage.java"
.field private static final d:Lcom/google/analytics/tracking/android/al;
.field private a:Ljava/util/SortedSet;
.field private b:Ljava/lang/StringBuilder;
.field private c:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/analytics/tracking/android/al;
invoke-direct {v0}, Lcom/google/analytics/tracking/android/al;-><init>()V
sput-object v0, Lcom/google/analytics/tracking/android/al;->d:Lcom/google/analytics/tracking/android/al;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iput-object v0, p0, Lcom/google/analytics/tracking/android/al;->a:Ljava/util/SortedSet;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/google/analytics/tracking/android/al;->b:Ljava/lang/StringBuilder;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/analytics/tracking/android/al;->c:Z
return-void
.end method
.method public static a()Lcom/google/analytics/tracking/android/al;
.registers 1
sget-object v0, Lcom/google/analytics/tracking/android/al;->d:Lcom/google/analytics/tracking/android/al;
return-object v0
.end method
.method public final declared-synchronized a(Lcom/google/analytics/tracking/android/am;)V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/analytics/tracking/android/al;->c:Z
if-nez v0, :cond_19
iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->a:Ljava/util/SortedSet;
invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->b:Ljava/lang/StringBuilder;
const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
invoke-virtual {p1}, Lcom/google/analytics/tracking/android/am;->ordinal()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_1b
:cond_19
monitor-exit p0
return-void
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Z)V
.registers 3
monitor-enter p0
:try_start_1
iput-boolean p1, p0, Lcom/google/analytics/tracking/android/al;->c:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized b()Ljava/lang/String;
.registers 8
const/4 v3, 0x0
monitor-enter p0
:try_start_2
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x6
move v2, v3
:goto_9
iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->a:Ljava/util/SortedSet;
invoke-interface {v0}, Ljava/util/SortedSet;->size()I
move-result v0
if-lez v0, :cond_3c
iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->a:Ljava/util/SortedSet;
invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/analytics/tracking/android/am;
iget-object v5, p0, Lcom/google/analytics/tracking/android/al;->a:Ljava/util/SortedSet;
invoke-interface {v5, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
invoke-virtual {v0}, Lcom/google/analytics/tracking/android/am;->ordinal()I
move-result v5
:goto_22
if-lt v5, v1, :cond_31
const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x6
move v2, v3
goto :goto_22
:cond_31
const/4 v5, 0x1
invoke-virtual {v0}, Lcom/google/analytics/tracking/android/am;->ordinal()I
move-result v0
rem-int/lit8 v0, v0, 0x6
shl-int v0, v5, v0
add-int/2addr v2, v0
goto :goto_9
:cond_3c
if-gtz v2, :cond_44
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-nez v0, :cond_4d
:cond_44
const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_4d
iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->a:Ljava/util/SortedSet;
invoke-interface {v0}, Ljava/util/SortedSet;->clear()V
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_55
.catchall {:try_start_2 .. :try_end_55} :catchall_58
move-result-object v0
monitor-exit p0
return-object v0
:catchall_58
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized c()Ljava/lang/String;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->b:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_11
iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->b:Ljava/lang/StringBuilder;
const/4 v1, 0x0
const-string v2, "."
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
:cond_11
iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->b:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iput-object v1, p0, Lcom/google/analytics/tracking/android/al;->b:Ljava/lang/StringBuilder;
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_20
monitor-exit p0
return-object v0
:catchall_20
move-exception v0
monitor-exit p0
throw v0
.end method
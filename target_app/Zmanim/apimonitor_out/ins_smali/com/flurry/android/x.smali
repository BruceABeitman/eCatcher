.class final Lcom/flurry/android/x;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/LinkedHashMap;
.field private b:I
.method constructor <init>(I)V
.registers 5
const/16 v0, 0x14
const/high16 v2, 0x3f40
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/flurry/android/x;->b:I
int-to-float v0, v0
div-float/2addr v0, v2
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v0, v0
add-int/lit8 v0, v0, 0x1
new-instance v1, Lcom/flurry/android/k;
invoke-direct {v1, p0, v0, v2}, Lcom/flurry/android/k;-><init>(Lcom/flurry/android/x;IF)V
iput-object v1, p0, Lcom/flurry/android/x;->a:Ljava/util/LinkedHashMap;
return-void
.end method
.method static synthetic a(Lcom/flurry/android/x;)I
.registers 2
iget v0, p0, Lcom/flurry/android/x;->b:I
return v0
.end method
.method final declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/android/x;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result-object v0
monitor-exit p0
return-object v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized a()Ljava/util/Collection;
.registers 3
monitor-enter p0
:try_start_1
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/flurry/android/x;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_e
monitor-exit p0
return-object v0
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/android/x;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized b()Ljava/util/Set;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/android/x;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result-object v0
monitor-exit p0
return-object v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.class public final Lcom/google/zxing/client/android/aa;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"
.implements Lcom/google/zxing/p;
.field private final a:Lcom/google/zxing/client/android/ViewfinderView;
.method public constructor <init>(Lcom/google/zxing/client/android/ViewfinderView;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/client/android/aa;->a:Lcom/google/zxing/client/android/ViewfinderView;
return-void
.end method
.method public final a(Lcom/google/zxing/o;)V
.registers 5
iget-object v0, p0, Lcom/google/zxing/client/android/aa;->a:Lcom/google/zxing/client/android/ViewfinderView;
iget-object v1, v0, Lcom/google/zxing/client/android/ViewfinderView;->a:Ljava/util/List;
monitor-enter v1
:try_start_5
invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
const/16 v2, 0x14
if-le v0, v2, :cond_1a
const/4 v2, 0x0
add-int/lit8 v0, v0, -0xa
invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
:cond_1a
monitor-exit v1
:try_end_1b
.catchall {:try_start_5 .. :try_end_1b} :catchall_1c
return-void
:catchall_1c
move-exception v0
monitor-exit v1
throw v0
.end method
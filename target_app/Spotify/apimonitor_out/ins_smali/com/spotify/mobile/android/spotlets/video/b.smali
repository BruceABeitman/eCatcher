.class public abstract Lcom/spotify/mobile/android/spotlets/video/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:I
.field private final b:Ljava/util/Queue;
.field private final c:Ljava/util/TreeSet;
.field private final d:I
.field private e:I
.method public varargs constructor <init>(I[I)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->b:Ljava/util/Queue;
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->c:Ljava/util/TreeSet;
iput p1, p0, Lcom/spotify/mobile/android/spotlets/video/b;->d:I
array-length v1, p2
const/4 v0, 0x0
:goto_15
if-ge v0, v1, :cond_25
aget v2, p2, v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/video/b;->c:Ljava/util/TreeSet;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_25
return-void
.end method
.method protected abstract a()V
.end method
.method protected abstract a(I)V
.end method
.method protected abstract b()V
.end method
.method protected abstract b(I)V
.end method
.method protected abstract c(I)V
.end method
.method public final d(I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->b:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
move-result v0
if-nez v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->b:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-gt v0, p1, :cond_26
iget v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->a:I
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/b;->a(I)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->a:I
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->b:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
:cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->c:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z
move-result v0
if-nez v0, :cond_48
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->c:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-gt v0, p1, :cond_48
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/b;->c(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/b;->c:Ljava/util/TreeSet;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
:cond_48
return-void
.end method
.method protected final e(I)V
.registers 6
iput p1, p0, Lcom/spotify/mobile/android/spotlets/video/b;->e:I
iget v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->d:I
if-lez v0, :cond_1f
iget v0, p0, Lcom/spotify/mobile/android/spotlets/video/b;->e:I
iget v1, p0, Lcom/spotify/mobile/android/spotlets/video/b;->d:I
div-int v1, v0, v1
const/4 v0, 0x0
:goto_d
iget v2, p0, Lcom/spotify/mobile/android/spotlets/video/b;->d:I
if-ge v0, v2, :cond_1f
mul-int v2, v0, v1
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/video/b;->b:Ljava/util/Queue;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_1f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/b;->b()V
return-void
.end method
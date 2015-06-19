.class public final Lcom/spotify/mobile/android/util/a/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/util/a/c;
.field private b:Z
.field private c:Landroid/util/SparseArray;
.field private d:Landroid/util/SparseArray;
.field private e:Landroid/util/SparseArray;
.method constructor <init>(Lcom/spotify/mobile/android/util/a/c;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/util/a/d;->a:Lcom/spotify/mobile/android/util/a/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/a/d;->c:Landroid/util/SparseArray;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/a/d;->d:Landroid/util/SparseArray;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/a/d;->e:Landroid/util/SparseArray;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/a/d;->b:Z
return-void
.end method
.method public final a()V
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/util/a/d;->a:Lcom/spotify/mobile/android/util/a/c;
iget-object v0, p0, Lcom/spotify/mobile/android/util/a/d;->a:Lcom/spotify/mobile/android/util/a/c;
invoke-static {v0}, Lcom/spotify/mobile/android/util/a/c;->a(Lcom/spotify/mobile/android/util/a/c;)Landroid/media/RemoteControlClient;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/util/a/d;->b:Z
invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/util/a/d;->c:Landroid/util/SparseArray;
move v1, v2
:goto_12
invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
move-result v0
if-ge v1, v0, :cond_60
invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
if-lez v5, :cond_3b
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
if-lez v5, :cond_3b
invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I
move-result v5
invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
invoke-virtual {v3, v5, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
:goto_37
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_12
:cond_3b
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Bitmap size is invalid: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_37
:cond_60
iget-object v4, p0, Lcom/spotify/mobile/android/util/a/d;->d:Landroid/util/SparseArray;
move v1, v2
:goto_63
invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
move-result v0
if-ge v1, v0, :cond_7e
invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I
move-result v5
invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v6
invoke-virtual {v3, v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_63
:cond_7e
iget-object v1, p0, Lcom/spotify/mobile/android/util/a/d;->e:Landroid/util/SparseArray;
:goto_80
invoke-virtual {v1}, Landroid/util/SparseArray;->size()I
move-result v0
if-ge v2, v0, :cond_96
invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I
move-result v4
invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v4, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
add-int/lit8 v2, v2, 0x1
goto :goto_80
:cond_96
invoke-virtual {v3}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V
return-void
.end method
.method public final a(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/a/d;->e:Landroid/util/SparseArray;
invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
return-void
.end method
.method public final a(J)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/util/a/d;->d:Landroid/util/SparseArray;
const/16 v1, 0x9
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/a/d;->c:Landroid/util/SparseArray;
const/16 v1, 0x64
invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
return-void
.end method
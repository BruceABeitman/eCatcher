.class public abstract Lcom/spotify/mobile/android/spotlets/common/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field private a:I
.field private b:I
.field private c:I
.field private d:Z
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->b:I
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->d:Z
return-void
.end method
.method protected a(I)V
.registers 2
return-void
.end method
.method protected a(II)V
.registers 3
return-void
.end method
.method protected abstract a()Z
.end method
.method protected b()V
.registers 1
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 10
const/4 v4, 0x1
const/4 v3, 0x0
iget v0, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->a:I
if-eq p3, v0, :cond_d
iget v0, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->a:I
invoke-virtual {p0, p3}, Lcom/spotify/mobile/android/spotlets/common/a/a;->a(I)V
iput p3, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->a:I
:cond_d
iget v0, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->c:I
if-eq p4, v0, :cond_2b
const-string v0, "OnScrollListenerAdapter: item count: %d -> %d"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
iget v2, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->c:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iput p4, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->c:I
iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->d:Z
:cond_2b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/a/a;->a()Z
move-result v0
if-eqz v0, :cond_60
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->d:Z
if-eqz v0, :cond_3d
const-string v0, "OnScrollListenerAdapter: threshold reached, waiting"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_3c
:cond_3c
return-void
:cond_3d
if-nez p3, :cond_47
const-string v0, "OnScrollListenerAdapter: empty list"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_3c
:cond_47
add-int v0, p2, p3
add-int/lit8 v0, v0, -0x1
iget v1, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->c:I
add-int/lit8 v1, v1, -0x1
add-int/lit8 v2, v0, 0x2
if-lt v2, v1, :cond_3c
const-string v1, "OnScrollListenerAdapter: the end is nigh!"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0, v0, p4}, Lcom/spotify/mobile/android/spotlets/common/a/a;->a(II)V
iput-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->d:Z
goto :goto_3c
:cond_60
iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->d:Z
goto :goto_3c
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 4
iget v0, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->b:I
if-eq v0, p2, :cond_a
const/4 v0, 0x1
if-ne p2, v0, :cond_a
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/a/a;->b()V
:cond_a
iput p2, p0, Lcom/spotify/mobile/android/spotlets/common/a/a;->b:I
return-void
.end method
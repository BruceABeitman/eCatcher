.class final Lcom/mapquest/android/maps/cb;
.super Ljava/lang/Object;
.source "TileCacher.java"
.implements Lcom/mapquest/android/maps/x;
.field private a:Lcom/mapquest/android/maps/x;
.field private b:Lcom/mapquest/android/maps/x;
.field private c:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/mapquest/android/maps/cb;->c:I
move-object v0, p1
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v0
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
move-result v1
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/mapquest/android/maps/cb;->a(II)V
new-instance v0, Lcom/mapquest/android/maps/h;
invoke-direct {v0, p1}, Lcom/mapquest/android/maps/h;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/mapquest/android/maps/cb;->b:Lcom/mapquest/android/maps/x;
return-void
.end method
.method public final a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
.registers 3
sget-object v0, Lcom/mapquest/android/maps/cc;->a:Lcom/mapquest/android/maps/cc;
if-ne v0, p1, :cond_7
iget-object p0, p0, Lcom/mapquest/android/maps/cb;->b:Lcom/mapquest/android/maps/x;
:goto_6
:cond_6
return-object p0
:cond_7
sget-object v0, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
if-ne v0, p1, :cond_e
iget-object p0, p0, Lcom/mapquest/android/maps/cb;->a:Lcom/mapquest/android/maps/x;
goto :goto_6
:cond_e
sget-object v0, Lcom/mapquest/android/maps/cc;->c:Lcom/mapquest/android/maps/cc;
if-eq v0, p1, :cond_6
const/4 p0, 0x0
goto :goto_6
.end method
.method public final a()V
.registers 2
sget-object v0, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
invoke-interface {v0}, Lcom/mapquest/android/maps/x;->a()V
sget-object v0, Lcom/mapquest/android/maps/cc;->a:Lcom/mapquest/android/maps/cc;
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
invoke-interface {v0}, Lcom/mapquest/android/maps/x;->a()V
return-void
.end method
.method public final a(II)V
.registers 7
const/16 v3, 0x32
const/high16 v0, 0x4000
div-int/lit16 v1, p2, 0x100
add-int/lit8 v1, v1, 0x2
div-int/lit16 v2, p1, 0x100
add-int/lit8 v2, v2, 0x2
mul-int/2addr v1, v2
const/16 v2, 0x19
if-le v1, v2, :cond_5b
if-ge v1, v3, :cond_5b
const/high16 v0, 0x3fc0
:cond_15
:goto_15
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
const-string v1, "com.mapquest.android.maps.tilecacher"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "setting cache size to:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget v1, p0, Lcom/mapquest/android/maps/cb;->c:I
if-le v0, v1, :cond_5a
monitor-enter p0
:try_start_31
const-string v1, "com.mapquest.android.maps.tilecacher"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "setting cache size to:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iput v0, p0, Lcom/mapquest/android/maps/cb;->c:I
iget-object v0, p0, Lcom/mapquest/android/maps/cb;->a:Lcom/mapquest/android/maps/x;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/mapquest/android/maps/cb;->a:Lcom/mapquest/android/maps/x;
invoke-interface {v0}, Lcom/mapquest/android/maps/x;->b()V
:cond_50
new-instance v0, Lcom/mapquest/android/maps/ba;
iget v1, p0, Lcom/mapquest/android/maps/cb;->c:I
invoke-direct {v0, v1}, Lcom/mapquest/android/maps/ba;-><init>(I)V
iput-object v0, p0, Lcom/mapquest/android/maps/cb;->a:Lcom/mapquest/android/maps/x;
monitor-exit p0
:try_end_5a
.catchall {:try_start_31 .. :try_end_5a} :catchall_61
:cond_5a
return-void
:cond_5b
if-le v1, v3, :cond_15
const v0, 0x3f8ccccd
goto :goto_15
:catchall_61
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Lcom/mapquest/android/maps/ca;)V
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/cb;->a:Lcom/mapquest/android/maps/x;
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->a(Lcom/mapquest/android/maps/ca;)V
iget-object v0, p0, Lcom/mapquest/android/maps/cb;->b:Lcom/mapquest/android/maps/x;
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->a(Lcom/mapquest/android/maps/ca;)V
return-void
.end method
.method public final b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/cb;->a:Lcom/mapquest/android/maps/x;
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
move-result-object v0
if-nez v0, :cond_e
iget-object v0, p0, Lcom/mapquest/android/maps/cb;->b:Lcom/mapquest/android/maps/x;
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
move-result-object v0
:cond_e
return-object v0
.end method
.method public final b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/cb;->b:Lcom/mapquest/android/maps/x;
invoke-interface {v0}, Lcom/mapquest/android/maps/x;->b()V
iput-object v1, p0, Lcom/mapquest/android/maps/cb;->b:Lcom/mapquest/android/maps/x;
iget-object v0, p0, Lcom/mapquest/android/maps/cb;->a:Lcom/mapquest/android/maps/x;
invoke-interface {v0}, Lcom/mapquest/android/maps/x;->b()V
iput-object v1, p0, Lcom/mapquest/android/maps/cb;->a:Lcom/mapquest/android/maps/x;
return-void
.end method
.method public final c(Lcom/mapquest/android/maps/ca;)V
.registers 3
sget-object v0, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->c(Lcom/mapquest/android/maps/ca;)V
sget-object v0, Lcom/mapquest/android/maps/cc;->a:Lcom/mapquest/android/maps/cc;
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->c(Lcom/mapquest/android/maps/ca;)V
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
if-eqz v0, :cond_23
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_23
return-void
.end method
.method public final d(Lcom/mapquest/android/maps/ca;)Z
.registers 4
const/4 v0, 0x1
sget-object v1, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v1
invoke-interface {v1, p1}, Lcom/mapquest/android/maps/x;->d(Lcom/mapquest/android/maps/ca;)Z
move-result v1
if-eqz v1, :cond_e
:goto_d
:cond_d
return v0
:cond_e
sget-object v1, Lcom/mapquest/android/maps/cc;->a:Lcom/mapquest/android/maps/cc;
invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v1
invoke-interface {v1, p1}, Lcom/mapquest/android/maps/x;->d(Lcom/mapquest/android/maps/ca;)Z
move-result v1
if-nez v1, :cond_d
const/4 v0, 0x0
goto :goto_d
.end method
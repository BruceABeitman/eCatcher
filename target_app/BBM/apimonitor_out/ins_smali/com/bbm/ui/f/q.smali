.class final Lcom/bbm/ui/f/q;
.super Lcom/bbm/j/u;
.source "GroupPictureNotificationItem.java"
.implements Lcom/bbm/ui/f/e;
.field private final a:Landroid/content/Context;
.field private final b:Lcom/bbm/g/am;
.field private final c:Lcom/bbm/ui/f/o;
.field private final d:Lcom/bbm/g/af;
.field private final e:Ljava/lang/String;
.field private f:Lcom/bbm/g/a;
.field private g:Lcom/bbm/g/o;
.method public constructor <init>(Lcom/bbm/ui/f/o;Lcom/bbm/g/af;)V
.registers 4
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/q;->b:Lcom/bbm/g/am;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/q;->a:Landroid/content/Context;
iput-object p1, p0, Lcom/bbm/ui/f/q;->c:Lcom/bbm/ui/f/o;
iput-object p2, p0, Lcom/bbm/ui/f/q;->d:Lcom/bbm/g/af;
iget-object v0, p0, Lcom/bbm/ui/f/q;->d:Lcom/bbm/g/af;
iget-object v0, v0, Lcom/bbm/g/af;->l:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/am;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/q;->e:Ljava/lang/String;
return-void
.end method
.method protected final b()Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/ui/f/q;->b:Lcom/bbm/g/am;
iget-object v3, p0, Lcom/bbm/ui/f/q;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v2
iput-object v2, p0, Lcom/bbm/ui/f/q;->f:Lcom/bbm/g/a;
iget-object v2, p0, Lcom/bbm/ui/f/q;->f:Lcom/bbm/g/a;
iget-object v2, v2, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v2, v3, :cond_15
:cond_14
:goto_14
return v0
:cond_15
iget-object v2, p0, Lcom/bbm/ui/f/q;->f:Lcom/bbm/g/a;
iget-boolean v2, v2, Lcom/bbm/g/a;->u:Z
if-nez v2, :cond_1d
move v0, v1
goto :goto_14
:cond_1d
iget-object v2, p0, Lcom/bbm/ui/f/q;->b:Lcom/bbm/g/am;
iget-object v3, p0, Lcom/bbm/ui/f/q;->d:Lcom/bbm/g/af;
iget-object v3, v3, Lcom/bbm/g/af;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v2
iput-object v2, p0, Lcom/bbm/ui/f/q;->g:Lcom/bbm/g/o;
iget-object v2, p0, Lcom/bbm/ui/f/q;->g:Lcom/bbm/g/o;
iget-object v2, v2, Lcom/bbm/g/o;->g:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_14
iget-object v0, p0, Lcom/bbm/ui/f/q;->c:Lcom/bbm/ui/f/o;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/bbm/ui/f/q;->d:Lcom/bbm/g/af;
iget-object v3, v3, Lcom/bbm/g/af;->l:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "picture"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/f/o;->b(Ljava/lang/String;)V
move v0, v1
goto :goto_14
.end method
.method public final b_()Ljava/lang/String;
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0543
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v4
invoke-virtual {v4}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0e0540
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/bbm/ui/f/q;->f:Lcom/bbm/g/a;
iget-object v4, v4, Lcom/bbm/g/a;->r:Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c_()Landroid/graphics/Bitmap;
.registers 5
iget-object v0, p0, Lcom/bbm/ui/f/q;->d:Lcom/bbm/g/af;
iget-object v0, v0, Lcom/bbm/g/af;->j:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x1050005
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x1050006
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_39
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0200d6
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
:cond_39
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 6
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0542
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/bbm/ui/f/q;->g:Lcom/bbm/g/o;
iget-object v4, v4, Lcom/bbm/g/o;->c:Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final f()I
.registers 2
const/4 v0, -0x1
return v0
.end method
.method public final g()Ljava/lang/Long;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/q;->d:Lcom/bbm/g/af;
iget-wide v0, v0, Lcom/bbm/g/af;->k:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public final h()Landroid/app/PendingIntent;
.registers 4
iget-object v0, p0, Lcom/bbm/ui/f/q;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/bbm/ui/f/q;->e:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/f/q;->d:Lcom/bbm/g/af;
iget-object v2, v2, Lcom/bbm/g/af;->l:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method public final i()Lcom/bbm/ui/f/f;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final j()I
.registers 2
const/16 v0, 0x10
return v0
.end method
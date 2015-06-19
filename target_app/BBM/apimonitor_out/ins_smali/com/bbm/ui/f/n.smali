.class final Lcom/bbm/ui/f/n;
.super Lcom/bbm/j/u;
.source "GroupMessageNotificationItem.java"
.implements Lcom/bbm/ui/f/e;
.field private final a:Landroid/content/Context;
.field private final b:Lcom/bbm/g/am;
.field private final c:Lcom/bbm/ui/f/o;
.field private final d:Ljava/lang/String;
.field private final e:Lcom/bbm/g/ad;
.field private f:Lcom/bbm/g/a;
.field private g:Lcom/bbm/g/q;
.method public constructor <init>(Lcom/bbm/ui/f/o;Lcom/bbm/g/ad;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/n;->b:Lcom/bbm/g/am;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
iput-object p1, p0, Lcom/bbm/ui/f/n;->c:Lcom/bbm/ui/f/o;
iput-object p2, p0, Lcom/bbm/ui/f/n;->e:Lcom/bbm/g/ad;
iput-object p3, p0, Lcom/bbm/ui/f/n;->d:Ljava/lang/String;
return-void
.end method
.method protected final b()Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/ui/f/n;->b:Lcom/bbm/g/am;
iget-object v3, p0, Lcom/bbm/ui/f/n;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->o(Ljava/lang/String;)Lcom/bbm/g/q;
move-result-object v2
iput-object v2, p0, Lcom/bbm/ui/f/n;->g:Lcom/bbm/g/q;
iget-object v2, p0, Lcom/bbm/ui/f/n;->g:Lcom/bbm/g/q;
iget-object v2, v2, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_15
:goto_14
:cond_14
return v0
:cond_15
iget-object v2, p0, Lcom/bbm/ui/f/n;->b:Lcom/bbm/g/am;
iget-object v3, p0, Lcom/bbm/ui/f/n;->g:Lcom/bbm/g/q;
iget-object v3, v3, Lcom/bbm/g/q;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v2
iput-object v2, p0, Lcom/bbm/ui/f/n;->f:Lcom/bbm/g/a;
iget-object v2, p0, Lcom/bbm/ui/f/n;->f:Lcom/bbm/g/a;
iget-object v2, v2, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v2, v3, :cond_14
iget-object v0, p0, Lcom/bbm/ui/f/n;->f:Lcom/bbm/g/a;
iget-boolean v0, v0, Lcom/bbm/g/a;->t:Z
if-nez v0, :cond_31
move v0, v1
goto :goto_14
:cond_31
iget-object v0, p0, Lcom/bbm/ui/f/n;->c:Lcom/bbm/ui/f/o;
iget-object v2, p0, Lcom/bbm/ui/f/n;->d:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/bbm/ui/f/o;->b(Ljava/lang/String;)V
move v0, v1
goto :goto_14
.end method
.method public final b_()Ljava/lang/String;
.registers 6
iget-object v0, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0543
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/bbm/ui/f/n;->g:Lcom/bbm/g/q;
iget-object v4, v4, Lcom/bbm/g/q;->i:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/bbm/ui/f/n;->f:Lcom/bbm/g/a;
iget-object v4, v4, Lcom/bbm/g/a;->r:Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c_()Landroid/graphics/Bitmap;
.registers 8
const v6, 0x1050006
const v4, 0x1050005
const/4 v5, 0x0
iget-object v0, p0, Lcom/bbm/ui/f/n;->f:Lcom/bbm/g/a;
iget-object v0, v0, Lcom/bbm/g/a;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/bbm/ui/f/n;->f:Lcom/bbm/g/a;
iget-object v0, v0, Lcom/bbm/g/a;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
iget-object v2, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v0
:goto_2f
return-object v0
:cond_30
iget-object v0, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f070007
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/f/n;->f:Lcom/bbm/g/a;
iget-wide v2, v0, Lcom/bbm/g/a;->h:J
long-to-int v0, v2
invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v1, :cond_6e
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
iget-object v2, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_2f
:cond_6e
iget-object v1, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
iget-object v2, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v2, Landroid/graphics/Canvas;
invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I
move-result v3
invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I
move-result v4
invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
move-object v0, v1
goto :goto_2f
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/n;->e:Lcom/bbm/g/ad;
iget-object v0, v0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
return-object v0
.end method
.method public final f()I
.registers 2
const/4 v0, -0x1
return v0
.end method
.method public final g()Ljava/lang/Long;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/n;->e:Lcom/bbm/g/ad;
iget-wide v0, v0, Lcom/bbm/g/ad;->f:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public final h()Landroid/app/PendingIntent;
.registers 8
const/high16 v6, 0x400
iget-object v0, p0, Lcom/bbm/ui/f/n;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/bbm/ui/f/n;->f:Lcom/bbm/g/a;
iget-object v1, v1, Lcom/bbm/g/a;->v:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/f/n;->g:Lcom/bbm/g/q;
iget-object v2, v2, Lcom/bbm/g/q;->k:Ljava/lang/String;
if-eqz v2, :cond_5a
new-instance v3, Landroid/content/Intent;
const-class v4, Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v4, "groupConversationUri"
invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "groupUri"
invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
new-instance v2, Landroid/content/Intent;
const-class v4, Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v4, "groupUri"
invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
new-instance v1, Landroid/content/Intent;
const-class v4, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v4, "active_section"
const v5, 0x7f0a007e
invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v4, "com.bbm.ui.activities.action.SECTION_CHANGED"
invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-static {v0}, Landroid/support/v4/app/ar;->a(Landroid/content/Context;)Landroid/support/v4/app/ar;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v0, v2}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v0, v3}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v0}, Landroid/support/v4/app/ar;->a()Landroid/app/PendingIntent;
move-result-object v0
:goto_59
return-object v0
:cond_5a
const/4 v0, 0x0
goto :goto_59
.end method
.method public final i()Lcom/bbm/ui/f/f;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final j()I
.registers 2
const/4 v0, 0x4
return v0
.end method
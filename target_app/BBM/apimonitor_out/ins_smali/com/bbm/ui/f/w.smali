.class final Lcom/bbm/ui/f/w;
.super Lcom/bbm/j/k;
.source "SystemMessageNotificationItem.java"
.implements Lcom/bbm/ui/f/e;
.field private static f:J
.field private final a:Landroid/content/Context;
.field private final b:Lcom/bbm/d/a;
.field private final c:Lcom/bbm/ui/f/g;
.field private final d:Lcom/bbm/d/gl;
.field private e:J
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, 0x0
sput-wide v0, Lcom/bbm/ui/f/w;->f:J
return-void
.end method
.method public constructor <init>(Lcom/bbm/ui/f/g;Lcom/bbm/d/gl;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/bbm/ui/f/w;->e:J
iput-object p1, p0, Lcom/bbm/ui/f/w;->c:Lcom/bbm/ui/f/g;
iput-object p2, p0, Lcom/bbm/ui/f/w;->d:Lcom/bbm/d/gl;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/w;->b:Lcom/bbm/d/a;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/w;->a:Landroid/content/Context;
return-void
.end method
.method protected final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/w;->d:Lcom/bbm/d/gl;
invoke-static {v0}, Lcom/bbm/util/dl;->a(Lcom/bbm/d/gl;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/f/w;->b:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/f/w;->d:Lcom/bbm/d/gl;
invoke-static {v1}, Lcom/bbm/util/dl;->b(Lcom/bbm/d/gl;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;
:cond_13
iget-object v0, p0, Lcom/bbm/ui/f/w;->c:Lcom/bbm/ui/f/g;
iget-object v1, p0, Lcom/bbm/ui/f/w;->d:Lcom/bbm/d/gl;
iget-object v1, v1, Lcom/bbm/d/gl;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/f/g;->b(Ljava/lang/String;)V
return-void
.end method
.method public final b_()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/w;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e06f0
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c_()Landroid/graphics/Bitmap;
.registers 6
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/bbm/ui/f/w;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/f/w;->d:Lcom/bbm/d/gl;
if-eqz v0, :cond_9a
iget-object v3, v0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v4, "bbm:system"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_66
new-instance v0, Lcom/bbm/d/fd;
const v3, 0x7f0203fb
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {v0, v2}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
:goto_21
:try_end_21
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_94
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_21} :catch_a8
if-eqz v0, :cond_af
invoke-static {v0}, Lcom/bbm/util/b/h;->a(Lcom/bbm/d/fd;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v2
if-eqz v2, :cond_af
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/bbm/ui/f/w;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x1050005
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
iget-object v2, p0, Lcom/bbm/ui/f/w;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x1050006
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
:goto_54
if-nez v0, :cond_65
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0200d6
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
:cond_65
return-object v0
:cond_66
:try_start_66
iget-object v3, v0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v4, "partner-app:"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_9a
iget-object v0, v0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v3, "partner-app:"
const-string v4, ""
invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_9a
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;
move-result-object v3
if-eqz v3, :cond_9a
iget-object v0, v3, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v4, :cond_9a
new-instance v0, Lcom/bbm/d/fd;
iget-object v3, v3, Lcom/bbm/d/fl;->d:Ljava/lang/String;
invoke-direct {v0, v2, v3}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
:try_end_93
.catch Ljava/io/IOException; {:try_start_66 .. :try_end_93} :catch_94
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_66 .. :try_end_93} :catch_a8
goto :goto_21
:catch_94
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_21
:try_start_9a
:cond_9a
new-instance v0, Lcom/bbm/d/fd;
const v3, 0x7f0203fe
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {v0, v2}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
:try_end_a6
.catch Ljava/io/IOException; {:try_start_9a .. :try_end_a6} :catch_94
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_9a .. :try_end_a6} :catch_a8
goto/16 :goto_21
:catch_a8
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move-object v0, v1
goto/16 :goto_21
:cond_af
move-object v0, v1
goto :goto_54
.end method
.method public final d()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/w;->d:Lcom/bbm/d/gl;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/bbm/util/dl;->a(Lcom/bbm/d/gl;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final f()I
.registers 2
const/4 v0, -0x1
return v0
.end method
.method public final g()Ljava/lang/Long;
.registers 5
iget-wide v0, p0, Lcom/bbm/ui/f/w;->e:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_11
sget-wide v0, Lcom/bbm/ui/f/w;->f:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
sput-wide v0, Lcom/bbm/ui/f/w;->f:J
iput-wide v0, p0, Lcom/bbm/ui/f/w;->e:J
:cond_11
iget-wide v0, p0, Lcom/bbm/ui/f/w;->e:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public final h()Landroid/app/PendingIntent;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/w;->a:Landroid/content/Context;
const v1, 0x7f0a007b
invoke-static {v0, v1}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;
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
const/16 v0, 0xc
return v0
.end method
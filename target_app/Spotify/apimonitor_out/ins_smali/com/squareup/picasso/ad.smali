.class public final Lcom/squareup/picasso/ad;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:I
.field private final b:Lcom/squareup/picasso/Picasso;
.field private final c:Lcom/squareup/picasso/ac;
.field private d:Z
.field private e:Z
.field private f:Z
.field private g:I
.field private h:I
.field private i:Landroid/graphics/drawable/Drawable;
.field private j:Landroid/graphics/drawable/Drawable;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput v0, Lcom/squareup/picasso/ad;->a:I
return-void
.end method
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
new-instance v0, Lcom/squareup/picasso/ac;
invoke-direct {v0, v1}, Lcom/squareup/picasso/ac;-><init>(Landroid/net/Uri;)V
iput-object v0, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
return-void
.end method
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->l:Z
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Picasso instance already shut down. Cannot submit new requests."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iput-object p1, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
new-instance v0, Lcom/squareup/picasso/ac;
invoke-direct {v0, p2}, Lcom/squareup/picasso/ac;-><init>(Landroid/net/Uri;)V
iput-object v0, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
return-void
.end method
.method private a(J)Lcom/squareup/picasso/ab;
.registers 10
invoke-static {}, Lcom/squareup/picasso/ad;->f()I
move-result v0
iget-object v1, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v1}, Lcom/squareup/picasso/ac;->d()Lcom/squareup/picasso/ab;
move-result-object v1
iput v0, v1, Lcom/squareup/picasso/ab;->a:I
iput-wide p1, v1, Lcom/squareup/picasso/ab;->b:J
iget-object v2, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v2, :cond_23
const-string v3, "Main"
const-string v4, "created"
invoke-virtual {v1}, Lcom/squareup/picasso/ab;->b()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1}, Lcom/squareup/picasso/ab;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_23
iget-object v3, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ab;)Lcom/squareup/picasso/ab;
move-result-object v3
if-eq v3, v1, :cond_4b
iput v0, v3, Lcom/squareup/picasso/ab;->a:I
iput-wide p1, v3, Lcom/squareup/picasso/ab;->b:J
if-eqz v2, :cond_4b
const-string v0, "Main"
const-string v1, "changed"
invoke-virtual {v3}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;
move-result-object v2
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "into "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v1, v2, v4}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_4b
return-object v3
.end method
.method static synthetic e()I
.registers 1
invoke-static {}, Lcom/squareup/picasso/ad;->f()I
move-result v0
return v0
.end method
.method private static f()I
.registers 4
invoke-static {}, Lcom/squareup/picasso/am;->b()Z
move-result v0
if-eqz v0, :cond_d
sget v0, Lcom/squareup/picasso/ad;->a:I
add-int/lit8 v1, v0, 0x1
sput v1, Lcom/squareup/picasso/ad;->a:I
:goto_c
return v0
:cond_d
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V
sget-object v2, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;
new-instance v3, Lcom/squareup/picasso/ad$1;
invoke-direct {v3, v1, v0}, Lcom/squareup/picasso/ad$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_start_22
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_25
:try_end_25
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_2a
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v0
goto :goto_c
:catch_2a
move-exception v0
sget-object v2, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;
new-instance v3, Lcom/squareup/picasso/ad$2;
invoke-direct {v3, v0}, Lcom/squareup/picasso/ad$2;-><init>(Ljava/lang/InterruptedException;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_25
.end method
.method final a()Lcom/squareup/picasso/ad;
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/squareup/picasso/ad;->f:Z
return-object p0
.end method
.method public final a(I)Lcom/squareup/picasso/ad;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Placeholder image resource invalid."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/squareup/picasso/ad;->i:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_16
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Placeholder image already set."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
iput p1, p0, Lcom/squareup/picasso/ad;->g:I
return-object p0
.end method
.method public final a(II)Lcom/squareup/picasso/ad;
.registers 5
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-object v0, v0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/squareup/picasso/ad;->b(II)Lcom/squareup/picasso/ad;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
.registers 4
iget v0, p0, Lcom/squareup/picasso/ad;->g:I
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Placeholder image already set."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Lcom/squareup/picasso/ad;->i:Landroid/graphics/drawable/Drawable;
return-object p0
.end method
.method public final a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;
.registers 3
iget-object v0, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v0, p1}, Lcom/squareup/picasso/ac;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ac;
return-object p0
.end method
.method public final a(Landroid/widget/ImageView;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/f;)V
return-void
.end method
.method public final a(Landroid/widget/ImageView;Lcom/squareup/picasso/f;)V
.registers 13
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
invoke-static {}, Lcom/squareup/picasso/am;->a()V
if-nez p1, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Target must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iget-object v2, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v2}, Lcom/squareup/picasso/ac;->a()Z
move-result v2
if-nez v2, :cond_26
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V
iget v0, p0, Lcom/squareup/picasso/ad;->g:I
iget-object v1, p0, Lcom/squareup/picasso/ad;->i:Landroid/graphics/drawable/Drawable;
invoke-static {p1, v0, v1}, Lcom/squareup/picasso/z;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V
:goto_25
:cond_25
return-void
:cond_26
iget-boolean v2, p0, Lcom/squareup/picasso/ad;->f:Z
if-eqz v2, :cond_5f
iget-object v2, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v2}, Lcom/squareup/picasso/ac;->b()Z
move-result v2
if-eqz v2, :cond_3a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Fit cannot be used with resize."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3a
invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I
move-result v2
invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I
move-result v3
if-eqz v2, :cond_46
if-nez v3, :cond_5a
:cond_46
iget v0, p0, Lcom/squareup/picasso/ad;->g:I
iget-object v1, p0, Lcom/squareup/picasso/ad;->i:Landroid/graphics/drawable/Drawable;
invoke-static {p1, v0, v1}, Lcom/squareup/picasso/z;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
new-instance v1, Lcom/squareup/picasso/i;
invoke-direct {v1, p0, p1, p2}, Lcom/squareup/picasso/i;-><init>(Lcom/squareup/picasso/ad;Landroid/widget/ImageView;Lcom/squareup/picasso/f;)V
iget-object v0, v0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_25
:cond_5a
iget-object v4, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v4, v2, v3}, Lcom/squareup/picasso/ac;->a(II)Lcom/squareup/picasso/ac;
:cond_5f
invoke-direct {p0, v0, v1}, Lcom/squareup/picasso/ad;->a(J)Lcom/squareup/picasso/ab;
move-result-object v9
invoke-static {v9}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/ab;)Ljava/lang/String;
move-result-object v8
iget-boolean v0, p0, Lcom/squareup/picasso/ad;->d:Z
if-nez v0, :cond_b1
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v0, v8}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_b1
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-object v1, v0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;
sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;
iget-boolean v4, p0, Lcom/squareup/picasso/ad;->e:Z
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-boolean v5, v0, Lcom/squareup/picasso/Picasso;->j:Z
move-object v0, p1
invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/z;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v0, :cond_aa
const-string v0, "Main"
const-string v1, "completed"
invoke-virtual {v9}, Lcom/squareup/picasso/ab;->b()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "from "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_aa
if-eqz p2, :cond_25
invoke-interface {p2}, Lcom/squareup/picasso/f;->a()V
goto/16 :goto_25
:cond_b1
iget v0, p0, Lcom/squareup/picasso/ad;->g:I
iget-object v1, p0, Lcom/squareup/picasso/ad;->i:Landroid/graphics/drawable/Drawable;
invoke-static {p1, v0, v1}, Lcom/squareup/picasso/z;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V
new-instance v0, Lcom/squareup/picasso/q;
iget-object v1, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-boolean v4, p0, Lcom/squareup/picasso/ad;->d:Z
iget-boolean v5, p0, Lcom/squareup/picasso/ad;->e:Z
iget v6, p0, Lcom/squareup/picasso/ad;->h:I
iget-object v7, p0, Lcom/squareup/picasso/ad;->j:Landroid/graphics/drawable/Drawable;
move-object v2, p1
move-object v3, v9
move-object v9, p2
invoke-direct/range {v0 .. v9}, Lcom/squareup/picasso/q;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/ab;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/squareup/picasso/f;)V
iget-object v1, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V
goto/16 :goto_25
.end method
.method public final a(Lcom/squareup/picasso/ai;)V
.registers 10
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v1
invoke-static {}, Lcom/squareup/picasso/am;->a()V
if-nez p1, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Target must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iget-boolean v0, p0, Lcom/squareup/picasso/ad;->f:Z
if-eqz v0, :cond_1d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Fit cannot be used with a Target."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
iget v0, p0, Lcom/squareup/picasso/ad;->g:I
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-object v0, v0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget v3, p0, Lcom/squareup/picasso/ad;->g:I
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_2f
iget-object v3, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v3}, Lcom/squareup/picasso/ac;->a()Z
move-result v3
if-nez v3, :cond_43
iget-object v1, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ai;)V
invoke-interface {p1, v0}, Lcom/squareup/picasso/ai;->b(Landroid/graphics/drawable/Drawable;)V
:goto_3f
return-void
:cond_40
iget-object v0, p0, Lcom/squareup/picasso/ad;->i:Landroid/graphics/drawable/Drawable;
goto :goto_2f
:cond_43
invoke-direct {p0, v1, v2}, Lcom/squareup/picasso/ad;->a(J)Lcom/squareup/picasso/ab;
move-result-object v3
invoke-static {v3}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/ab;)Ljava/lang/String;
move-result-object v7
iget-boolean v1, p0, Lcom/squareup/picasso/ad;->d:Z
if-nez v1, :cond_62
iget-object v1, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v1, v7}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_62
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ai;)V
sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;
invoke-interface {p1, v1, v0}, Lcom/squareup/picasso/ai;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
goto :goto_3f
:cond_62
invoke-interface {p1, v0}, Lcom/squareup/picasso/ai;->b(Landroid/graphics/drawable/Drawable;)V
new-instance v0, Lcom/squareup/picasso/aj;
iget-object v1, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-boolean v4, p0, Lcom/squareup/picasso/ad;->d:Z
iget v5, p0, Lcom/squareup/picasso/ad;->h:I
iget-object v6, p0, Lcom/squareup/picasso/ad;->j:Landroid/graphics/drawable/Drawable;
move-object v2, p1
invoke-direct/range {v0 .. v7}, Lcom/squareup/picasso/aj;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/ai;Lcom/squareup/picasso/ab;ZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
iget-object v1, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V
goto :goto_3f
.end method
.method public final b()Lcom/squareup/picasso/ad;
.registers 2
iget-object v0, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v0}, Lcom/squareup/picasso/ac;->c()Lcom/squareup/picasso/ac;
return-object p0
.end method
.method public final b(I)Lcom/squareup/picasso/ad;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Error image resource invalid."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/squareup/picasso/ad;->j:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_16
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Error image already set."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
iput p1, p0, Lcom/squareup/picasso/ad;->h:I
return-object p0
.end method
.method public final b(II)Lcom/squareup/picasso/ad;
.registers 4
iget-object v0, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/ac;->a(II)Lcom/squareup/picasso/ac;
return-object p0
.end method
.method public final b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Error image may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget v0, p0, Lcom/squareup/picasso/ad;->h:I
if-eqz v0, :cond_16
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Error image already set."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
iput-object p1, p0, Lcom/squareup/picasso/ad;->j:Landroid/graphics/drawable/Drawable;
return-object p0
.end method
.method public final c()Lcom/squareup/picasso/ad;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/picasso/ad;->e:Z
return-object p0
.end method
.method public final d()V
.registers 6
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iget-boolean v2, p0, Lcom/squareup/picasso/ad;->f:Z
if-eqz v2, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Fit cannot be used with fetch."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v2, p0, Lcom/squareup/picasso/ad;->c:Lcom/squareup/picasso/ac;
invoke-virtual {v2}, Lcom/squareup/picasso/ac;->a()Z
move-result v2
if-eqz v2, :cond_33
invoke-direct {p0, v0, v1}, Lcom/squareup/picasso/ad;->a(J)Lcom/squareup/picasso/ab;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0, v1}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/ab;Ljava/lang/StringBuilder;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/squareup/picasso/o;
iget-object v3, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
iget-boolean v4, p0, Lcom/squareup/picasso/ad;->d:Z
invoke-direct {v2, v3, v0, v4, v1}, Lcom/squareup/picasso/o;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/ab;ZLjava/lang/String;)V
iget-object v0, p0, Lcom/squareup/picasso/ad;->b:Lcom/squareup/picasso/Picasso;
invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->b(Lcom/squareup/picasso/a;)V
:cond_33
return-void
.end method
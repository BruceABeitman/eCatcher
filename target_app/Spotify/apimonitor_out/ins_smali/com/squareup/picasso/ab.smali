.class public final Lcom/squareup/picasso/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final o:J
.field  a:I
.field  b:J
.field public final c:Landroid/net/Uri;
.field public final d:I
.field public final e:Ljava/util/List;
.field public final f:I
.field public final g:I
.field public final h:Z
.field public final i:Z
.field public final j:F
.field public final k:F
.field public final l:F
.field public final m:Z
.field public final n:Landroid/graphics/Bitmap$Config;
.method static constructor <clinit>()V
.registers 3
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
const-wide/16 v1, 0x5
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v0
sput-wide v0, Lcom/squareup/picasso/ab;->o:J
return-void
.end method
.method private constructor <init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;)V
.registers 14
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;
iput p2, p0, Lcom/squareup/picasso/ab;->d:I
if-nez p3, :cond_1f
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/picasso/ab;->e:Ljava/util/List;
:goto_c
iput p4, p0, Lcom/squareup/picasso/ab;->f:I
iput p5, p0, Lcom/squareup/picasso/ab;->g:I
iput-boolean p6, p0, Lcom/squareup/picasso/ab;->h:Z
iput-boolean p7, p0, Lcom/squareup/picasso/ab;->i:Z
iput p8, p0, Lcom/squareup/picasso/ab;->j:F
iput p9, p0, Lcom/squareup/picasso/ab;->k:F
iput p10, p0, Lcom/squareup/picasso/ab;->l:F
iput-boolean p11, p0, Lcom/squareup/picasso/ab;->m:Z
iput-object p12, p0, Lcom/squareup/picasso/ab;->n:Landroid/graphics/Bitmap$Config;
return-void
:cond_1f
invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/squareup/picasso/ab;->e:Ljava/util/List;
goto :goto_c
.end method
.method synthetic constructor <init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;B)V
.registers 14
invoke-direct/range {p0 .. p12}, Lcom/squareup/picasso/ab;-><init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;)V
return-void
.end method
.method final a()Ljava/lang/String;
.registers 6
const/16 v4, 0x2b
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/squareup/picasso/ab;->b:J
sub-long/2addr v0, v2
sget-wide v2, Lcom/squareup/picasso/ab;->o:J
cmp-long v2, v0, v2
if-lez v2, :cond_35
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/squareup/picasso/ab;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x73
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_34
return-object v0
:cond_35
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/squareup/picasso/ab;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "ms"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_34
.end method
.method final b()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[R"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/squareup/picasso/ab;->a:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()Z
.registers 2
iget v0, p0, Lcom/squareup/picasso/ab;->f:I
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method final d()Z
.registers 3
iget v0, p0, Lcom/squareup/picasso/ab;->f:I
if-nez v0, :cond_b
iget v0, p0, Lcom/squareup/picasso/ab;->j:F
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-eqz v0, :cond_d
:cond_b
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method final e()Z
.registers 2
iget-object v0, p0, Lcom/squareup/picasso/ab;->e:Ljava/util/List;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final toString()Ljava/lang/String;
.registers 8
const/16 v6, 0x2c
const/16 v5, 0x29
const/16 v4, 0x20
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "Request{"
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v0, p0, Lcom/squareup/picasso/ab;->d:I
if-lez v0, :cond_40
iget v0, p0, Lcom/squareup/picasso/ab;->d:I
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:goto_16
iget-object v0, p0, Lcom/squareup/picasso/ab;->e:Ljava/util/List;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/squareup/picasso/ab;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_46
iget-object v0, p0, Lcom/squareup/picasso/ab;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_28
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_46
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/ak;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
invoke-interface {v0}, Lcom/squareup/picasso/ak;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_28
:cond_40
iget-object v0, p0, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto :goto_16
:cond_46
iget v0, p0, Lcom/squareup/picasso/ab;->f:I
if-lez v0, :cond_63
const-string v0, " resize("
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/squareup/picasso/ab;->f:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/squareup/picasso/ab;->g:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_63
iget-boolean v0, p0, Lcom/squareup/picasso/ab;->h:Z
if-eqz v0, :cond_6c
const-string v0, " centerCrop"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_6c
iget-boolean v0, p0, Lcom/squareup/picasso/ab;->i:Z
if-eqz v0, :cond_75
const-string v0, " centerInside"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_75
iget v0, p0, Lcom/squareup/picasso/ab;->j:F
const/4 v2, 0x0
cmpl-float v0, v0, v2
if-eqz v0, :cond_a3
const-string v0, " rotation("
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/squareup/picasso/ab;->j:F
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
iget-boolean v0, p0, Lcom/squareup/picasso/ab;->m:Z
if-eqz v0, :cond_a0
const-string v0, " @ "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/squareup/picasso/ab;->k:F
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/squareup/picasso/ab;->l:F
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
:cond_a0
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_a3
iget-object v0, p0, Lcom/squareup/picasso/ab;->n:Landroid/graphics/Bitmap$Config;
if-eqz v0, :cond_b0
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/squareup/picasso/ab;->n:Landroid/graphics/Bitmap$Config;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_b0
const/16 v0, 0x7d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
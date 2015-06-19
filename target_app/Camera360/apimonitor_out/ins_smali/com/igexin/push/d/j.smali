.class public Lcom/igexin/push/d/j;
.super Ljava/lang/Object;
.field private static a:Ljava/lang/String;
.field private b:Landroid/content/Context;
.field private c:Lcom/igexin/a/a/b/d;
.field private d:Lcom/igexin/push/d/k;
.field private e:Z
.field private f:J
.field private g:J
.field private h:Z
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "SNL"
sput-object v0, Lcom/igexin/push/d/j;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
const-wide/16 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/igexin/push/d/j;->e:Z
iput-wide v1, p0, Lcom/igexin/push/d/j;->f:J
iput-wide v1, p0, Lcom/igexin/push/d/j;->g:J
iput-boolean v0, p0, Lcom/igexin/push/d/j;->h:Z
return-void
.end method
.method private a(J)J
.registers 9
const-wide/16 v0, 0xa
div-long v0, p1, v0
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v2
long-to-double v4, v0
mul-double/2addr v2, v4
const-wide/high16 v4, 0x4000
mul-double/2addr v2, v4
long-to-double v0, v0
sub-double v0, v2, v0
double-to-long v0, v0
add-long/2addr v0, p1
return-wide v0
.end method
.method private b(Lcom/igexin/push/c/c/e;)Ljava/lang/String;
.registers 8
const-string/jumbo v1, ""
instance-of v0, p1, Lcom/igexin/push/c/c/f;
if-eqz v0, :cond_22
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "R-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/f;
invoke-virtual {p1}, Lcom/igexin/push/c/c/f;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_21
return-object v0
:cond_22
instance-of v0, p1, Lcom/igexin/push/c/c/o;
if-eqz v0, :cond_3f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "R-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/o;
iget-object v1, p1, Lcom/igexin/push/c/c/o;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_21
:cond_3f
instance-of v0, p1, Lcom/igexin/push/c/c/i;
if-eqz v0, :cond_60
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "S-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/i;
iget-wide v1, p1, Lcom/igexin/push/c/c/i;->a:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_21
:cond_60
instance-of v0, p1, Lcom/igexin/push/c/c/k;
if-eqz v0, :cond_8c
move-object v0, p1
check-cast v0, Lcom/igexin/push/c/c/k;
iget-wide v2, v0, Lcom/igexin/push/c/c/k;->e:J
const-wide/16 v4, 0x0
cmp-long v0, v2, v4
if-eqz v0, :cond_148
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "S-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/k;
iget-wide v1, p1, Lcom/igexin/push/c/c/k;->e:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_21
:cond_8c
instance-of v0, p1, Lcom/igexin/push/c/c/l;
if-eqz v0, :cond_ae
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "S-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/l;
iget-wide v1, p1, Lcom/igexin/push/c/c/l;->a:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_21
:cond_ae
instance-of v0, p1, Lcom/igexin/push/c/c/m;
if-eqz v0, :cond_d0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "S-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/m;
iget-wide v1, p1, Lcom/igexin/push/c/c/m;->e:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_21
:cond_d0
instance-of v0, p1, Lcom/igexin/push/c/c/d;
if-eqz v0, :cond_ee
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "C-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/d;
iget-object v1, p1, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_21
:cond_ee
instance-of v0, p1, Lcom/igexin/push/c/c/n;
if-eqz v0, :cond_10c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "C-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/n;
iget-object v1, p1, Lcom/igexin/push/c/c/n;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_21
:cond_10c
instance-of v0, p1, Lcom/igexin/push/c/c/a;
if-eqz v0, :cond_12a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "C-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/a;
iget-object v1, p1, Lcom/igexin/push/c/c/a;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_21
:cond_12a
instance-of v0, p1, Lcom/igexin/push/c/c/c;
if-eqz v0, :cond_148
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "C-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p1, Lcom/igexin/push/c/c/c;
iget-object v1, p1, Lcom/igexin/push/c/c/c;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_21
:cond_148
move-object v0, v1
goto/16 :goto_21
.end method
.method private d()Z
.registers 5
sget-boolean v0, Lcom/igexin/push/a/j;->s:Z
const/4 v1, 0x1
if-ne v0, v1, :cond_25
iget-wide v0, p0, Lcom/igexin/push/d/j;->f:J
iget-wide v2, p0, Lcom/igexin/push/d/j;->g:J
add-long/2addr v0, v2
sget-wide v2, Lcom/igexin/push/a/j;->t:J
cmp-long v0, v0, v2
if-ltz v0, :cond_25
new-instance v0, Lcom/igexin/push/d/a;
invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V
sget-object v1, Lcom/igexin/push/core/c;->e:Lcom/igexin/push/core/c;
invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
:cond_25
const/4 v0, 0x0
return v0
.end method
.method private e()V
.registers 11
const/4 v6, 0x0
const/4 v7, 0x0
:try_start_2
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "yyyy-MM-dd"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v8
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v0
const-string/jumbo v1, "bi"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string/jumbo v4, "type"
aput-object v4, v2, v3
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
const-string/jumbo v5, "1"
aput-object v5, v3, v4
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_35
.catchall {:try_start_2 .. :try_end_35} :catchall_137
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_13a
move-result-object v1
if-eqz v1, :cond_6b
:try_start_38
invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
move-result v0
if-nez v0, :cond_13d
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v2, "loginerror_connecterror_count"
const/4 v3, 0x1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v2, "create_time"
invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "type"
const-string/jumbo v3, "1"
invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v2
invoke-virtual {v2}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v2
const-string/jumbo v3, "bi"
invoke-virtual {v2, v3, v0}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
:cond_6b
:try_end_6b
.catchall {:try_start_38 .. :try_end_6b} :catchall_130
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6b} :catch_cd
if-eqz v1, :cond_70
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_70
:goto_70
return-void
:try_start_71
:goto_71
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-eqz v2, :cond_6b
const-string/jumbo v2, "create_time"
invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v2
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "id"
invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v3
invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d5
const-string/jumbo v0, "loginerror_connecterror_count"
invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v4, "loginerror_connecterror_count"
add-int/lit8 v5, v0, 0x1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v4
invoke-virtual {v4}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v4
const-string/jumbo v5, "bi"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
const-string/jumbo v9, "id"
aput-object v9, v6, v7
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v9, 0x0
aput-object v3, v7, v9
invoke-virtual {v4, v5, v2, v6, v7}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V
:try_end_cc
.catchall {:try_start_71 .. :try_end_cc} :catchall_130
.catch Ljava/lang/Exception; {:try_start_71 .. :try_end_cc} :catch_cd
goto :goto_71
:catch_cd
move-exception v0
move-object v0, v1
:goto_cf
if-eqz v0, :cond_70
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto :goto_70
:try_start_d5
:cond_d5
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v4, "type"
const-string/jumbo v5, "2"
invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v4
invoke-virtual {v4}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v4
const-string/jumbo v5, "bi"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
const-string/jumbo v9, "id"
aput-object v9, v6, v7
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v9, 0x0
aput-object v3, v7, v9
invoke-virtual {v4, v5, v2, v6, v7}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v3, "loginerror_connecterror_count"
add-int/lit8 v4, v0, 0x1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v3, "create_time"
invoke-virtual {v2, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "type"
const-string/jumbo v4, "1"
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v3
invoke-virtual {v3}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v3
const-string/jumbo v4, "bi"
invoke-virtual {v3, v4, v2}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
:try_end_12e
.catchall {:try_start_d5 .. :try_end_12e} :catchall_130
.catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_12e} :catch_cd
goto/16 :goto_71
:catchall_130
move-exception v0
:goto_131
if-eqz v1, :cond_136
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_136
throw v0
:catchall_137
move-exception v0
move-object v1, v6
goto :goto_131
:catch_13a
move-exception v0
move-object v0, v6
goto :goto_cf
:cond_13d
move v0, v7
goto/16 :goto_71
.end method
.method public a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
.registers 14
const-wide/16 v9, 0x8
const/4 v2, 0x3
const/4 v5, 0x1
const/4 v8, -0x2
if-eqz p1, :cond_9
if-nez p2, :cond_b
:cond_9
const/4 v0, -0x1
:goto_a
return v0
:cond_b
iget-boolean v0, p0, Lcom/igexin/push/d/j;->e:Z
if-eqz v0, :cond_74
iget v0, p2, Lcom/igexin/push/c/c/e;->i:I
const/4 v1, 0x6
if-eq v0, v1, :cond_23
iget v0, p2, Lcom/igexin/push/c/c/e;->i:I
const/4 v1, 0x4
if-eq v0, v1, :cond_23
iget v0, p2, Lcom/igexin/push/c/c/e;->i:I
const/16 v1, 0x24
if-eq v0, v1, :cond_23
iget v0, p2, Lcom/igexin/push/c/c/e;->i:I
if-nez v0, :cond_45
:cond_23
const/16 v6, 0xf
sget v0, Lcom/igexin/push/a/j;->i:I
if-lez v0, :cond_2b
sget v6, Lcom/igexin/push/a/j;->i:I
:cond_2b
iget-object v0, p0, Lcom/igexin/push/d/j;->c:Lcom/igexin/a/a/b/d;
sget-object v1, Lcom/igexin/push/core/g;->a:Ljava/lang/String;
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v3
invoke-virtual {v3}, Lcom/igexin/push/core/f;->d()Lcom/igexin/a/a/b/c;
move-result-object v3
new-instance v7, Lcom/igexin/push/c/b;
invoke-direct {v7}, Lcom/igexin/push/c/b;-><init>()V
move-object v4, p2
invoke-virtual/range {v0 .. v7}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;ZILcom/igexin/a/a/d/a/g;)Lcom/igexin/a/a/b/f;
move-result-object v0
if-nez v0, :cond_5a
move v0, v8
goto :goto_a
:cond_45
iget-object v0, p0, Lcom/igexin/push/d/j;->c:Lcom/igexin/a/a/b/d;
sget-object v1, Lcom/igexin/push/core/g;->a:Ljava/lang/String;
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v3
invoke-virtual {v3}, Lcom/igexin/push/core/f;->d()Lcom/igexin/a/a/b/c;
move-result-object v3
move-object v4, p2
invoke-virtual/range {v0 .. v5}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;Z)Lcom/igexin/a/a/b/f;
move-result-object v0
if-nez v0, :cond_5a
move v0, v8
goto :goto_a
:cond_5a
invoke-virtual {p2}, Lcom/igexin/push/c/c/e;->d()[B
move-result-object v0
if-eqz v0, :cond_6e
iget-wide v1, p0, Lcom/igexin/push/d/j;->g:J
array-length v0, v0
int-to-long v3, v0
add-long/2addr v3, v9
add-long v0, v1, v3
iput-wide v0, p0, Lcom/igexin/push/d/j;->g:J
:goto_69
invoke-direct {p0}, Lcom/igexin/push/d/j;->d()Z
const/4 v0, 0x0
goto :goto_a
:cond_6e
iget-wide v0, p0, Lcom/igexin/push/d/j;->g:J
add-long/2addr v0, v9
iput-wide v0, p0, Lcom/igexin/push/d/j;->g:J
goto :goto_69
:cond_74
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/igexin/push/d/c;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
move-result v0
goto :goto_a
.end method
.method public a(Landroid/content/Context;Lcom/igexin/a/a/b/d;Lcom/igexin/push/d/k;)V
.registers 4
iput-object p1, p0, Lcom/igexin/push/d/j;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/igexin/push/d/j;->c:Lcom/igexin/a/a/b/d;
iput-object p3, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
return-void
.end method
.method public a(Lcom/igexin/push/c/c/e;)V
.registers 9
const-wide/16 v5, 0x8
if-nez p1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/igexin/push/d/j;->e:Z
if-eqz v0, :cond_b1
invoke-direct {p0, p1}, Lcom/igexin/push/d/j;->b(Lcom/igexin/push/c/c/e;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "S-"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4
const-string/jumbo v1, "R-"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_82
const-string/jumbo v1, "C-"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_82
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "C-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/igexin/push/core/g;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_82
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "R-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/igexin/push/core/g;->C:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_82
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "S-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-wide v2, Lcom/igexin/push/core/g;->t:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_9f
:cond_82
iget-object v0, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
if-eqz v0, :cond_8b
iget-object v0, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
invoke-interface {v0, p1}, Lcom/igexin/push/d/k;->a(Lcom/igexin/push/c/c/e;)Z
:goto_8b
:cond_8b
invoke-virtual {p1}, Lcom/igexin/push/c/c/e;->d()[B
move-result-object v0
if-eqz v0, :cond_ab
iget-wide v1, p0, Lcom/igexin/push/d/j;->f:J
array-length v0, v0
int-to-long v3, v0
add-long/2addr v3, v5
add-long v0, v1, v3
iput-wide v0, p0, Lcom/igexin/push/d/j;->f:J
:goto_9a
invoke-direct {p0}, Lcom/igexin/push/d/j;->d()Z
goto/16 :goto_4
:cond_9f
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v1
invoke-virtual {v1, v0, p1}, Lcom/igexin/push/d/c;->b(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
goto :goto_8b
:cond_ab
iget-wide v0, p0, Lcom/igexin/push/d/j;->f:J
add-long/2addr v0, v5
iput-wide v0, p0, Lcom/igexin/push/d/j;->f:J
goto :goto_9a
:cond_b1
iget-object v0, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
invoke-interface {v0, p1}, Lcom/igexin/push/d/k;->a(Lcom/igexin/push/c/c/e;)Z
goto/16 :goto_4
.end method
.method public a(Z)V
.registers 7
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/igexin/push/d/j;->e:Z
if-eq v0, p1, :cond_20
iput-boolean p1, p0, Lcom/igexin/push/d/j;->e:Z
iput-boolean v4, p0, Lcom/igexin/push/d/j;->h:Z
if-eqz p1, :cond_21
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/igexin/push/d/j;->g:J
iput-wide v0, p0, Lcom/igexin/push/d/j;->f:J
iget-object v0, p0, Lcom/igexin/push/d/j;->c:Lcom/igexin/a/a/b/d;
new-instance v1, Lcom/igexin/push/c/b/b;
invoke-direct {v1}, Lcom/igexin/push/c/b/b;-><init>()V
invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/igexin/push/d/j;->c:Lcom/igexin/a/a/b/d;
invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V
:cond_20
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/igexin/push/d/j;->c:Lcom/igexin/a/a/b/d;
sget-object v1, Lcom/igexin/push/core/g;->a:Ljava/lang/String;
const-string/jumbo v2, "socket"
const-string/jumbo v3, "disConnect"
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v4, v2}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/f;
goto :goto_20
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/push/d/j;->e:Z
return v0
.end method
.method public b()V
.registers 3
const-wide/16 v0, 0x0
sput-wide v0, Lcom/igexin/push/core/g;->F:J
iget-boolean v0, p0, Lcom/igexin/push/d/j;->e:Z
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
invoke-interface {v0}, Lcom/igexin/push/d/k;->b()V
goto :goto_8
.end method
.method public b(Z)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
if-nez p1, :cond_3c
const-string/jumbo v0, "disconnected|network"
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/k;->c:Lcom/igexin/push/core/k;
invoke-virtual {v0, v1}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/k;)V
invoke-static {}, Lcom/igexin/push/core/c/q;->d()V
invoke-static {}, Lcom/igexin/push/core/c/q;->a()V
invoke-direct {p0}, Lcom/igexin/push/d/j;->e()V
sget-boolean v0, Lcom/igexin/push/core/g;->o:Z
if-ne v0, v2, :cond_29
sput-boolean v3, Lcom/igexin/push/core/g;->o:Z
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->m()V
:cond_29
invoke-virtual {p0, v2}, Lcom/igexin/push/d/j;->c(Z)V
:goto_2c
:cond_2c
iget-boolean v0, p0, Lcom/igexin/push/d/j;->e:Z
if-eqz v0, :cond_53
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/d/c;->b()Z
:goto_3b
:cond_3b
return-void
:cond_3c
const-string/jumbo v0, "disconnected|user"
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/c/q;->d()V
sget-boolean v0, Lcom/igexin/push/core/g;->o:Z
if-ne v0, v2, :cond_2c
sput-boolean v3, Lcom/igexin/push/core/g;->o:Z
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->m()V
goto :goto_2c
:cond_53
iget-object v0, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/igexin/push/d/j;->d:Lcom/igexin/push/d/k;
invoke-interface {v0, p1}, Lcom/igexin/push/d/k;->a(Z)V
goto :goto_3b
.end method
.method public c()J
.registers 3
sget-wide v0, Lcom/igexin/push/core/g;->F:J
return-wide v0
.end method
.method public c(Z)V
.registers 10
const-wide/16 v6, 0x0
const-wide/32 v4, 0x36ee80
if-eqz p1, :cond_9
sput-wide v6, Lcom/igexin/push/core/g;->F:J
:cond_9
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/a/f;->a(J)Z
move-result v0
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/a/f;->n()Z
move-result v1
sget-boolean v2, Lcom/igexin/push/core/g;->k:Z
if-eqz v2, :cond_2d
sget-boolean v2, Lcom/igexin/push/core/g;->l:Z
if-eqz v2, :cond_2d
sget-boolean v2, Lcom/igexin/push/core/g;->m:Z
if-eqz v2, :cond_2d
if-nez v0, :cond_2d
if-nez v1, :cond_37
:cond_2d
sput-wide v4, Lcom/igexin/push/core/g;->F:J
:goto_2f
invoke-static {}, Lcom/igexin/push/e/b/f;->g()Lcom/igexin/push/e/b/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/e/b/f;->h()V
return-void
:cond_37
sget-wide v0, Lcom/igexin/push/core/g;->F:J
cmp-long v0, v0, v6
if-gtz v0, :cond_52
const-wide/16 v0, 0x3e8
sput-wide v0, Lcom/igexin/push/core/g;->F:J
:goto_41
sget-wide v0, Lcom/igexin/push/core/g;->F:J
cmp-long v0, v0, v4
if-lez v0, :cond_49
sput-wide v4, Lcom/igexin/push/core/g;->F:J
:cond_49
sget-wide v0, Lcom/igexin/push/core/g;->F:J
invoke-direct {p0, v0, v1}, Lcom/igexin/push/d/j;->a(J)J
move-result-wide v0
sput-wide v0, Lcom/igexin/push/core/g;->F:J
goto :goto_2f
:cond_52
sget-wide v0, Lcom/igexin/push/core/g;->F:J
const-wide/32 v2, 0xea60
cmp-long v0, v0, v2
if-gtz v0, :cond_63
sget-wide v0, Lcom/igexin/push/core/g;->F:J
const-wide/16 v2, 0x2710
add-long/2addr v0, v2
sput-wide v0, Lcom/igexin/push/core/g;->F:J
goto :goto_41
:cond_63
sget-wide v0, Lcom/igexin/push/core/g;->F:J
const-wide/32 v2, 0x1d4c0
add-long/2addr v0, v2
sput-wide v0, Lcom/igexin/push/core/g;->F:J
goto :goto_41
.end method
.class public abstract Lcom/instagram/creation/photo/gallery/b;
.super Ljava/lang/Object;
.source "BaseImageList.java"
.implements Lcom/instagram/creation/photo/gallery/d;
.field private static final h:Ljava/util/regex/Pattern;
.field protected a:Landroid/content/ContentResolver;
.field protected b:I
.field protected c:Landroid/net/Uri;
.field protected d:Landroid/database/Cursor;
.field protected e:Ljava/lang/String;
.field protected f:Z
.field private final g:Landroid/support/v4/c/c;
.method static constructor <clinit>()V
.registers 1
const-string v0, "(.*)/\\d+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/instagram/creation/photo/gallery/b;->h:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/support/v4/c/c;
invoke-direct {v0}, Landroid/support/v4/c/c;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/photo/gallery/b;->f:Z
iput p3, p0, Lcom/instagram/creation/photo/gallery/b;->b:I
iput-object p2, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;
iput-object p4, p0, Lcom/instagram/creation/photo/gallery/b;->e:Ljava/lang/String;
iput-object p1, p0, Lcom/instagram/creation/photo/gallery/b;->a:Landroid/content/ContentResolver;
invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/b;->d()Landroid/database/Cursor;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;
invoke-virtual {v0}, Landroid/support/v4/c/c;->a()V
return-void
.end method
.method private static b(Landroid/net/Uri;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/instagram/creation/photo/gallery/b;->h:Ljava/util/regex/Pattern;
invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-eqz v2, :cond_15
const/4 v0, 0x1
invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
:cond_15
return-object v0
.end method
.method private c(Landroid/net/Uri;)Z
.registers 5
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3c
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3c
invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3c
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
invoke-static {p1}, Lcom/instagram/creation/photo/gallery/b;->b(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3c
const/4 v0, 0x1
:goto_3b
return v0
:cond_3c
const/4 v0, 0x0
goto :goto_3b
.end method
.method private f()Landroid/database/Cursor;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
if-nez v0, :cond_8
const/4 v0, 0x0
monitor-exit p0
:goto_7
return-object v0
:cond_8
iget-boolean v0, p0, Lcom/instagram/creation/photo/gallery/b;->f:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/photo/gallery/b;->f:Z
:cond_14
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
monitor-exit p0
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_18
goto :goto_7
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method private g()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/photo/gallery/b;->f:Z
goto :goto_4
.end method
.method public final a(J)Landroid/net/Uri;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;
invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
move-result-wide v0
cmp-long v0, v0, p1
if-eqz v0, :cond_11
const-string v0, "BaseImageList"
const-string v1, "id mismatch"
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_11
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;
:goto_13
:try_end_13
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_13} :catch_14
return-object v0
:catch_14
move-exception v0
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;
invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v0
goto :goto_13
.end method
.method protected abstract a(Landroid/database/Cursor;)Lcom/instagram/creation/photo/gallery/a;
.end method
.method public final a(I)Lcom/instagram/creation/photo/gallery/c;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/gallery/a;
if-nez v0, :cond_16
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/b;->f()Landroid/database/Cursor;
move-result-object v0
if-nez v0, :cond_17
move-object v0, v1
:cond_16
:goto_16
return-object v0
:cond_17
monitor-enter p0
:try_start_18
invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
move-result v2
if-eqz v2, :cond_30
invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/gallery/b;->a(Landroid/database/Cursor;)Lcom/instagram/creation/photo/gallery/a;
move-result-object v0
:goto_22
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit p0
:try_end_2c
.catchall {:try_start_18 .. :try_end_2c} :catchall_2d
goto :goto_16
:catchall_2d
move-exception v0
monitor-exit p0
throw v0
:cond_30
move-object v0, v1
goto :goto_22
.end method
.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
.registers 9
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/instagram/creation/photo/gallery/b;->c(Landroid/net/Uri;)Z
move-result v1
if-nez v1, :cond_8
:goto_7
:cond_7
return-object v0
:try_start_8
:cond_8
invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
:try_end_b
.catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_46
move-result-wide v2
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/b;->f()Landroid/database/Cursor;
move-result-object v4
if-eqz v4, :cond_7
monitor-enter p0
const/4 v1, -0x1
:try_start_14
invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z
const/4 v1, 0x0
:goto_18
invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
move-result v5
if-eqz v5, :cond_55
invoke-virtual {p0, v4}, Lcom/instagram/creation/photo/gallery/b;->b(Landroid/database/Cursor;)J
move-result-wide v5
cmp-long v5, v5, v2
if-nez v5, :cond_52
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/gallery/a;
if-nez v0, :cond_41
invoke-virtual {p0, v4}, Lcom/instagram/creation/photo/gallery/b;->a(Landroid/database/Cursor;)Lcom/instagram/creation/photo/gallery/a;
move-result-object v0
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v2, v1, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_41
monitor-exit p0
:try_end_42
.catchall {:try_start_14 .. :try_end_42} :catchall_43
goto :goto_7
:catchall_43
move-exception v0
monitor-exit p0
throw v0
:catch_46
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "fail to get id in: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto :goto_7
:cond_52
add-int/lit8 v1, v1, 0x1
goto :goto_18
:cond_55
monitor-exit p0
goto :goto_7
.end method
.method public final a()V
.registers 5
const/4 v3, 0x0
:try_start_1
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/b;->g()V
:goto_4
:try_end_4
.catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_12
iput-object v3, p0, Lcom/instagram/creation/photo/gallery/b;->a:Landroid/content/ContentResolver;
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->close()V
iput-object v3, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;
:cond_11
return-void
:catch_12
move-exception v0
const-string v1, "BaseImageList"
const-string v2, "Caught exception while deactivating cursor."
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_4
.end method
.method public final b()I
.registers 2
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/b;->f()Landroid/database/Cursor;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
monitor-enter p0
:try_start_9
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v0
monitor-exit p0
:try_end_e
.catchall {:try_start_9 .. :try_end_e} :catchall_f
goto :goto_7
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected abstract b(Landroid/database/Cursor;)J
.end method
.method public final c()Z
.registers 2
invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/b;->b()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method protected abstract d()Landroid/database/Cursor;
.end method
.method protected final e()Ljava/lang/String;
.registers 4
iget v0, p0, Lcom/instagram/creation/photo/gallery/b;->b:I
const/4 v1, 0x1
if-ne v0, v1, :cond_25
const-string v0, " ASC"
:goto_7
const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", _id"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_25
const-string v0, " DESC"
goto :goto_7
.end method
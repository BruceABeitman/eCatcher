.class public final Lcom/spotify/mobile/android/util/cs;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Landroid/os/Looper;
.field private b:Landroid/content/AsyncQueryHandler;
.field private c:Lcom/spotify/mobile/android/util/ct;
.field private d:Landroid/net/Uri;
.field private e:[Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:[Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private final i:Ljava/lang/Object;
.field private j:Landroid/database/Cursor;
.field private k:Z
.field private l:Landroid/database/ContentObserver;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/cs;->i:Ljava/lang/Object;
new-instance v0, Lcom/spotify/mobile/android/util/cs$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/cs$1;-><init>(Lcom/spotify/mobile/android/util/cs;)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/cs;->l:Landroid/database/ContentObserver;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cs;->k:Z
new-instance v0, Lcom/spotify/mobile/android/util/cs$2;
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/util/cs$2;-><init>(Lcom/spotify/mobile/android/util/cs;Landroid/content/ContentResolver;)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/cs;->b:Landroid/content/AsyncQueryHandler;
const-string v0, "You must provide a non-null callback object!"
invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ct;
iput-object v0, p0, Lcom/spotify/mobile/android/util/cs;->c:Lcom/spotify/mobile/android/util/ct;
return-void
.end method
.method static synthetic a(Landroid/os/Looper;)Landroid/os/Looper;
.registers 1
sput-object p0, Lcom/spotify/mobile/android/util/cs;->a:Landroid/os/Looper;
return-object p0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 5
if-eqz p1, :cond_28
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->c:Lcom/spotify/mobile/android/util/ct;
invoke-interface {v0, p0, p1}, Lcom/spotify/mobile/android/util/ct;->a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
iget-object v1, p0, Lcom/spotify/mobile/android/util/cs;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_a
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
iget-object v2, p0, Lcom/spotify/mobile/android/util/cs;->l:Landroid/database/ContentObserver;
invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_1a
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cs;->k:Z
if-nez v0, :cond_29
iput-object p1, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
iget-object v2, p0, Lcom/spotify/mobile/android/util/cs;->l:Landroid/database/ContentObserver;
invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
:goto_27
monitor-exit v1
:cond_28
return-void
:cond_29
invoke-interface {p1}, Landroid/database/Cursor;->close()V
:try_end_2c
.catchall {:try_start_a .. :try_end_2c} :catchall_2d
goto :goto_27
:catchall_2d
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a()V
.registers 9
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/spotify/mobile/android/util/cs;->k:Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->b:Landroid/content/AsyncQueryHandler;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/util/cs;->d:Landroid/net/Uri;
iget-object v4, p0, Lcom/spotify/mobile/android/util/cs;->e:[Ljava/lang/String;
iget-object v5, p0, Lcom/spotify/mobile/android/util/cs;->f:Ljava/lang/String;
iget-object v6, p0, Lcom/spotify/mobile/android/util/cs;->g:[Ljava/lang/String;
iget-object v7, p0, Lcom/spotify/mobile/android/util/cs;->h:Ljava/lang/String;
invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v1, 0x0
iput-object p1, p0, Lcom/spotify/mobile/android/util/cs;->d:Landroid/net/Uri;
if-eqz p2, :cond_17
invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
:goto_b
iput-object v0, p0, Lcom/spotify/mobile/android/util/cs;->e:[Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/util/cs;->f:Ljava/lang/String;
iput-object v1, p0, Lcom/spotify/mobile/android/util/cs;->g:[Ljava/lang/String;
iput-object v1, p0, Lcom/spotify/mobile/android/util/cs;->h:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cs;->a()V
return-void
:cond_17
move-object v0, v1
goto :goto_b
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->b:Landroid/content/AsyncQueryHandler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->c:Lcom/spotify/mobile/android/util/ct;
invoke-interface {v0}, Lcom/spotify/mobile/android/util/ct;->a()V
iget-object v1, p0, Lcom/spotify/mobile/android/util/cs;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_e
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
iget-object v2, p0, Lcom/spotify/mobile/android/util/cs;->l:Landroid/database/ContentObserver;
invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/cs;->j:Landroid/database/Cursor;
:cond_21
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cs;->k:Z
monitor-exit v1
:try_end_25
.catchall {:try_start_e .. :try_end_25} :catchall_26
return-void
:catchall_26
move-exception v0
monitor-exit v1
throw v0
.end method
.class public abstract Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;
.super Lcom/spotify/mobile/android/ui/contextmenu/e;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Landroid/content/Context;
.field private final c:Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V
.registers 4
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/e;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->a:Ljava/lang/String;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->b:Landroid/content/Context;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->c:Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;
return-void
.end method
.method private static b(Landroid/database/Cursor;)Z
.registers 2
invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
move-result v0
if-eqz v0, :cond_c
invoke-static {p0}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method protected abstract a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
.end method
.method protected final a()Ljava/lang/Object;
.registers 7
const/4 v1, 0x0
const/4 v0, 0x0
move-object v2, v0
move v0, v1
:goto_4
const-string v3, "Trying to load context menu data, attempt #%s"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v1
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz v2, :cond_20
const-string v3, "Orbit album loader for context menu is sleeping..."
new-array v4, v1, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
const-wide/16 v3, 0x1f4
:try_start_1d
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:goto_20
:cond_20
:try_end_20
.catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_4f
iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->b:Landroid/content/Context;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->a:Ljava/lang/String;
invoke-virtual {p0, v3, v4}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v3
if-eqz v2, :cond_2d
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_2d
add-int/lit8 v0, v0, 0x1
invoke-static {v3}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->b(Landroid/database/Cursor;)Z
move-result v2
if-eqz v2, :cond_38
const/4 v2, 0x5
if-lt v0, v2, :cond_51
:cond_38
invoke-static {v3}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->b(Landroid/database/Cursor;)Z
move-result v0
if-eqz v0, :cond_44
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/ItemLoadException;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/contextmenu/ItemLoadException;-><init>()V
throw v0
:cond_44
invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->a(Landroid/database/Cursor;)Ljava/lang/Object;
move-result-object v0
invoke-interface {v3}, Landroid/database/Cursor;->close()V
return-object v0
:catch_4f
move-exception v3
goto :goto_20
:cond_51
move-object v2, v3
goto :goto_4
.end method
.method protected abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
.end method
.method protected final a(Ljava/lang/Object;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;->c:Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;->a(Ljava/lang/Object;)V
return-void
.end method
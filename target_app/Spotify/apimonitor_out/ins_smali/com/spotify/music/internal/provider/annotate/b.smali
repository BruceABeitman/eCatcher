.class final Lcom/spotify/music/internal/provider/annotate/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/music/internal/provider/annotate/AnnotateProvider;
.method public constructor <init>(Lcom/spotify/music/internal/provider/annotate/AnnotateProvider;Landroid/content/Context;)V
.registers 6
iput-object p1, p0, Lcom/spotify/music/internal/provider/annotate/b;->a:Lcom/spotify/music/internal/provider/annotate/AnnotateProvider;
const-string v0, "annotations.db"
const/4 v1, 0x0
const/4 v2, 0x1
invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/spotify/music/internal/provider/annotate/b; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "CREATE TABLE annotations (_id INTEGER PRIMARY KEY AUTOINCREMENT,playlist_uri TEXT,image_uri TEXT,title TEXT,description TEXT,status BIGINT);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/music/internal/provider/annotate/b; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 9
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Does not support upgrading from %d to %d"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
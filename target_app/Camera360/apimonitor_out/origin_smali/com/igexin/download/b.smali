.class final Lcom/igexin/download/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field final synthetic a:Lcom/igexin/download/DownloadProvider;


# direct methods
.method public constructor <init>(Lcom/igexin/download/DownloadProvider;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/igexin/download/b;->a:Lcom/igexin/download/DownloadProvider;

    invoke-static {}, Lcom/igexin/download/DownloadProvider;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/download/b;->a:Lcom/igexin/download/DownloadProvider;

    invoke-static {v0, p1}, Lcom/igexin/download/DownloadProvider;->a(Lcom/igexin/download/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const/16 v0, 0x1f

    if-ne p2, v0, :cond_9

    const/16 v0, 0x64

    if-ne p3, v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/igexin/download/b;->a:Lcom/igexin/download/DownloadProvider;

    invoke-static {v0, p1}, Lcom/igexin/download/DownloadProvider;->b(Lcom/igexin/download/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/igexin/download/b;->a:Lcom/igexin/download/DownloadProvider;

    invoke-static {v0, p1}, Lcom/igexin/download/DownloadProvider;->a(Lcom/igexin/download/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_8
.end method

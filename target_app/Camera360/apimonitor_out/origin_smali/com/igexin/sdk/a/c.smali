.class public Lcom/igexin/sdk/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/sdk/a/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    iget-object v0, p0, Lcom/igexin/sdk/a/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/a/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "push.pid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/a/c;->b:Ljava/lang/String;

    :cond_36
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Lcom/igexin/sdk/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/igexin/sdk/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/igexin/sdk/a/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/igexin/sdk/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/igexin/sdk/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/igexin/sdk/a/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_14
    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/igexin/sdk/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/igexin/sdk/a/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

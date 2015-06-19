.class final Lcom/bbm/ui/activities/kj;
.super Landroid/os/AsyncTask;
.source "FileSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/FileSearchActivity;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bbm/ui/activities/FileSearchActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/kj;->a:Lcom/bbm/ui/activities/FileSearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/kj;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/activities/FileSearchActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/kj;-><init>(Lcom/bbm/ui/activities/FileSearchActivity;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2f

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_2f

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-direct {p0, v3, p2, p3}, Lcom/bbm/ui/activities/kj;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2f
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/kj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/bbm/ui/activities/kj;->b:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/bbm/ui/activities/kj;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/kj;->b:Ljava/util/List;

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 8

    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/kj;->a:Lcom/bbm/ui/activities/FileSearchActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/FileSearchActivity;->b(Lcom/bbm/ui/activities/FileSearchActivity;)Lcom/bbm/ui/ListHeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/kj;->a:Lcom/bbm/ui/activities/FileSearchActivity;

    const v2, 0x7f0e0337

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/bbm/ui/activities/FileSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/kj;->a:Lcom/bbm/ui/activities/FileSearchActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/FileSearchActivity;->a(Lcom/bbm/ui/activities/FileSearchActivity;)Lcom/bbm/ui/activities/kh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bbm/ui/activities/kh;->a(Ljava/util/List;)V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/bbm/ui/activities/kj;->a:Lcom/bbm/ui/activities/FileSearchActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/FileSearchActivity;->d(Lcom/bbm/ui/activities/FileSearchActivity;)V

    return-void
.end method

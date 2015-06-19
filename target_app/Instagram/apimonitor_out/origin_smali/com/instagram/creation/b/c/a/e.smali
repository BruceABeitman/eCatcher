.class public final Lcom/instagram/creation/b/c/a/e;
.super Lcom/instagram/api/k/a/c;
.source "UploadImageRequest.java"


# instance fields
.field private final b:Lcom/instagram/creation/b/a/b;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/b/c/a/e;->b:Lcom/instagram/creation/b/a/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/c/b;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/e;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "photo"

    const-string v2, "file"

    invoke-virtual {p1, v1, v0, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "UploadImageRequest"

    const-string v1, "Pending Media image file not found."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string v0, "upload_id"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/e;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .registers 2

    const-string v0, "upload/photo/"

    return-object v0
.end method

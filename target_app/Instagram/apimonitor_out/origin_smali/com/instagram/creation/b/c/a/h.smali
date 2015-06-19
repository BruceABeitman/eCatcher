.class public final Lcom/instagram/creation/b/c/a/h;
.super Lcom/instagram/common/a/c/b;
.source "VideoPartParams.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/io/File;II)V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/common/a/c/b;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/b/c/a/h;->a:Ljava/io/File;

    iput p2, p0, Lcom/instagram/creation/b/c/a/h;->b:I

    iput p3, p0, Lcom/instagram/creation/b/c/a/h;->c:I

    return-void
.end method


# virtual methods
.method public final d()Lch/boye/httpclientandroidlib/HttpEntity;
    .registers 5

    new-instance v0, Lcom/instagram/creation/b/c/a/g;

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/h;->a:Ljava/io/File;

    iget v2, p0, Lcom/instagram/creation/b/c/a/h;->b:I

    iget v3, p0, Lcom/instagram/creation/b/c/a/h;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/b/c/a/g;-><init>(Ljava/io/File;II)V

    return-object v0
.end method

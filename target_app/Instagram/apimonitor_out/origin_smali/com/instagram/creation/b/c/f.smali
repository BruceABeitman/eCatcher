.class final Lcom/instagram/creation/b/c/f;
.super Ljava/lang/Object;
.source "VideoUploader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/creation/b/c/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/creation/b/c/a/d;Lcom/instagram/creation/b/c/a/d;)I
    .registers 4

    iget v0, p0, Lcom/instagram/creation/b/c/a/d;->a:I

    iget v1, p1, Lcom/instagram/creation/b/c/a/d;->a:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/instagram/creation/b/c/a/d;

    check-cast p2, Lcom/instagram/creation/b/c/a/d;

    invoke-static {p1, p2}, Lcom/instagram/creation/b/c/f;->a(Lcom/instagram/creation/b/c/a/d;Lcom/instagram/creation/b/c/a/d;)I

    move-result v0

    return v0
.end method

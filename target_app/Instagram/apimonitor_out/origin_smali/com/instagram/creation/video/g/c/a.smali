.class public final Lcom/instagram/creation/video/g/c/a;
.super Ljava/lang/Object;
.source "DefaultVideoMetadataExtractor.java"

# interfaces
.implements Lcom/instagram/creation/video/g/a/d;


# instance fields
.field private a:Lcom/instagram/creation/video/g/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/creation/video/g/c/c;

    invoke-direct {v0, p1}, Lcom/instagram/creation/video/g/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/c/a;->a:Lcom/instagram/creation/video/g/a/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/video/g/a/c;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/g/c/a;->a:Lcom/instagram/creation/video/g/a/d;

    invoke-interface {v0, p1}, Lcom/instagram/creation/video/g/a/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/video/g/a/c;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

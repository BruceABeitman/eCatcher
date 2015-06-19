.class public final Lcom/instagram/creation/photo/gallery/n;
.super Ljava/lang/Object;
.source "SingleImageList.java"

# interfaces
.implements Lcom/instagram/creation/photo/gallery/d;


# instance fields
.field private a:Lcom/instagram/creation/photo/gallery/c;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/instagram/creation/photo/gallery/n;->b:Landroid/net/Uri;

    new-instance v0, Lcom/instagram/creation/photo/gallery/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/creation/photo/gallery/o;-><init>(Lcom/instagram/creation/photo/gallery/d;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->a:Lcom/instagram/creation/photo/gallery/c;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/instagram/creation/photo/gallery/c;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->a:Lcom/instagram/creation/photo/gallery/c;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->a:Lcom/instagram/creation/photo/gallery/c;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->a:Lcom/instagram/creation/photo/gallery/c;

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->b:Landroid/net/Uri;

    return-void
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

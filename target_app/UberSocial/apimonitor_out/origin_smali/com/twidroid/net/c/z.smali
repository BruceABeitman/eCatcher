.class public Lcom/twidroid/net/c/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "UserImageLoaderTask"


# instance fields
.field a:Lcom/twidroid/UberSocialApplication;

.field b:I

.field c:Landroid/os/Handler;

.field d:Z


# direct methods
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;Landroid/os/Handler;IZLandroid/widget/ImageView;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/net/c/z;->a:Lcom/twidroid/UberSocialApplication;

    iput-object p2, p0, Lcom/twidroid/net/c/z;->c:Landroid/os/Handler;

    iput p3, p0, Lcom/twidroid/net/c/z;->b:I

    iput-boolean p4, p0, Lcom/twidroid/net/c/z;->d:Z

    new-instance v0, Lcom/twidroid/net/c/aa;

    invoke-direct {v0, p0, p5}, Lcom/twidroid/net/c/aa;-><init>(Lcom/twidroid/net/c/z;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/net/c/aa;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

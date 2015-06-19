.class final Lcom/bbm/util/di;
.super Ljava/lang/Object;
.source "ShareMyPinUtil.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/util/dh;


# direct methods
.method constructor <init>(Lcom/bbm/util/dh;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/di;->b:Lcom/bbm/util/dh;

    iput-object p2, p0, Lcom/bbm/util/di;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/util/di;->b:Lcom/bbm/util/dh;

    iget-object v0, v0, Lcom/bbm/util/dh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/util/di;->a:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/bbm/util/dg;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

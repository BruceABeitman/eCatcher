.class Lcom/umeng/common/net/g;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/umeng/common/net/g;->a:Lcom/umeng/common/net/DownloadingService;

    iput-object p2, p0, Lcom/umeng/common/net/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/umeng/common/net/g;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.class Lcom/tencent/connect/avatar/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/avatar/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/ImageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v2}, Lcom/tencent/connect/avatar/ImageActivity;->i(Lcom/tencent/connect/avatar/ImageActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string/jumbo v3, "10656"

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->setResult(I)V

    iget-object v0, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->j(Lcom/tencent/connect/avatar/ImageActivity;)V

    return-void
.end method

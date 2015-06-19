.class Lcom/tencent/connect/common/BaseApi$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/common/BaseApi;->handleDownloadLastestQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/connect/common/BaseApi;

.field final synthetic val$dialog:Lcom/tencent/open/b;


# direct methods
.method constructor <init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/open/b;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/connect/common/BaseApi$2;->this$0:Lcom/tencent/connect/common/BaseApi;

    iput-object p2, p0, Lcom/tencent/connect/common/BaseApi$2;->val$dialog:Lcom/tencent/open/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$2;->val$dialog:Lcom/tencent/open/b;

    invoke-virtual {v0}, Lcom/tencent/open/b;->dismiss()V

    return-void
.end method

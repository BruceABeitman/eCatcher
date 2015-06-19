.class Lcom/tencent/weibo/sdk/android/component/Authorize$6;
.super Ljava/lang/Object;
.source "Authorize.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/Authorize;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$6;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$6;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->finish()V

    return-void
.end method

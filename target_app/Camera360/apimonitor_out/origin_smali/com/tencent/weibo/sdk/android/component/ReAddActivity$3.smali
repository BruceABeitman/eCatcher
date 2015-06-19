.class Lcom/tencent/weibo/sdk/android/component/ReAddActivity$3;
.super Ljava/lang/Object;
.source "ReAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->initLayout()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$3;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$3;->this$0:Lcom/tencent/weibo/sdk/android/component/ReAddActivity;

    invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->finish()V

    return-void
.end method

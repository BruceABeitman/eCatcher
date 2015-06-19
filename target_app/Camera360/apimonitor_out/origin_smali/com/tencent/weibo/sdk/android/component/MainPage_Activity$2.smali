.class Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;
.super Ljava/lang/Object;
.source "MainPage_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;

    const-class v2, Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;

    invoke-virtual {v1, v0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

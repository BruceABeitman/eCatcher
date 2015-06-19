.class Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$3;
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

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$3;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$3;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;

    const-class v3, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "content"

    const-string/jumbo v3, "Make U happy"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "video_url"

    const-string/jumbo v3, "http://www.tudou.com/programs/view/b-4VQLxwoX4/"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pic_url"

    const-string/jumbo v3, "http://t2.qpic.cn/mblogpic/9c7e34358608bb61a696/2000"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$3;->this$0:Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;

    invoke-virtual {v2, v1}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

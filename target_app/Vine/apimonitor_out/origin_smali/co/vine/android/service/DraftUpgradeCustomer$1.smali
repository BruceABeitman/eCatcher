.class Lco/vine/android/service/DraftUpgradeCustomer$1;
.super Landroid/os/Handler;
.source "DraftUpgradeCustomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/DraftUpgradeCustomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/DraftUpgradeCustomer;


# direct methods
.method constructor <init>(Lco/vine/android/service/DraftUpgradeCustomer;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/DraftUpgradeCustomer$1;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer$1;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;

    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Lco/vine/android/service/DraftUpgradeCustomer;->count:I

    const-string v0, "Got draft upgrade count: {}."

    iget-object v1, p0, Lco/vine/android/service/DraftUpgradeCustomer$1;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;

    iget v1, v1, Lco/vine/android/service/DraftUpgradeCustomer;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer$1;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;

    #getter for: Lco/vine/android/service/DraftUpgradeCustomer;->mCountChangeRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lco/vine/android/service/DraftUpgradeCustomer;->access$000(Lco/vine/android/service/DraftUpgradeCustomer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

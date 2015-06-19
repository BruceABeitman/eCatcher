.class Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;
.super Ljava/util/TimerTask;
.source "DynamicLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;->this$1:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;->this$1:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;

    iget-object v0, v0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;

    iget-object v0, v0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1$1;

    invoke-direct {v1, p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1$1;-><init>(Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

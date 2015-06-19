.class Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1$1;
.super Ljava/lang/Object;
.source "DynamicLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1$1;->this$2:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1$1;->this$2:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;

    iget-object v0, v0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;->this$1:Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;

    iget-object v0, v0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->onFailedToGetAnyFixes()V

    return-void
.end method

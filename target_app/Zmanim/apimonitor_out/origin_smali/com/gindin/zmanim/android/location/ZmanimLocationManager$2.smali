.class Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2;
.super Ljava/lang/Object;
.source "ZmanimLocationManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2;->this$0:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;

    #calls: Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->showLocationDetails()V
    invoke-static {v0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->access$000(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V

    const/4 v0, 0x1

    return v0
.end method

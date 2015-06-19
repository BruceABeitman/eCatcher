.class Lcom/gindin/zmanim/android/ZmanimActivity$4;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/ZmanimActivity;->handleLocationError(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$4;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$4;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->showDialog(I)V

    return-void
.end method

.class Lcom/gindin/zmanim/android/ZmanimActivity$7;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/ZmanimActivity;->createEnableLocationSourcesDialog()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$7;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$7;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gindin/zmanim/android/Activities;->ENABLE_LOCATION_SERVICES:Lcom/gindin/zmanim/android/Activities;

    invoke-virtual {v2}, Lcom/gindin/zmanim/android/Activities;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

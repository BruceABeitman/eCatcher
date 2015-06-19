.class Lco/vine/android/client/AppController$1;
.super Landroid/content/BroadcastReceiver;
.source "AppController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/client/AppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/client/AppController;


# direct methods
.method constructor <init>(Lco/vine/android/client/AppController;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/client/AppController$1;->this$0:Lco/vine/android/client/AppController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string v0, "Received invalidate cache broadcast"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lco/vine/android/util/video/VideoCache;->invalidateCache()V

    invoke-static {}, Lco/vine/android/util/image/PhotoImagesCache;->invalidateCache()V

    return-void
.end method

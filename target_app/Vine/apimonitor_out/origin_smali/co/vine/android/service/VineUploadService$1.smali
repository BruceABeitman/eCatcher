.class Lco/vine/android/service/VineUploadService$1;
.super Ljava/lang/Object;
.source "VineUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/service/VineUploadService;->executeNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;


# direct methods
.method constructor <init>(Lco/vine/android/service/VineUploadService;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/VineUploadService$1;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$1;->this$0:Lco/vine/android/service/VineUploadService;

    #calls: Lco/vine/android/service/VineUploadService;->stopIfNoTasksLeft()V
    invoke-static {v0}, Lco/vine/android/service/VineUploadService;->access$500(Lco/vine/android/service/VineUploadService;)V

    return-void
.end method

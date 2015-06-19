.class Lcom/pinguo/camera360/CrashReportActivity$1;
.super Ljava/lang/Object;
.source "CrashReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/CrashReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/CrashReportActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/CrashReportActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/CrashReportActivity$1;->this$0:Lcom/pinguo/camera360/CrashReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/CrashReportActivity$1;->this$0:Lcom/pinguo/camera360/CrashReportActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/CrashReportActivity;->finish()V

    return-void
.end method

.class Lcom/pinguo/share/net/ServiceConnection$1;
.super Ljava/lang/Object;
.source "ServiceConnection.java"

# interfaces
.implements Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/net/ServiceConnection;->sharePhotoes(Lcom/pinguo/share/website/WebShareBean;Ljava/lang/String;Landroid/content/Context;Lcom/pinguo/share/website/IShareProcess;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/net/ServiceConnection;

.field private final synthetic val$mpre:Lcom/pinguo/share/net/ProgressMultiPartEntity;

.field private final synthetic val$shareProcess:Lcom/pinguo/share/website/IShareProcess;


# direct methods
.method constructor <init>(Lcom/pinguo/share/net/ServiceConnection;Lcom/pinguo/share/website/IShareProcess;Lcom/pinguo/share/net/ProgressMultiPartEntity;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/share/net/ServiceConnection$1;->this$0:Lcom/pinguo/share/net/ServiceConnection;

    iput-object p2, p0, Lcom/pinguo/share/net/ServiceConnection$1;->val$shareProcess:Lcom/pinguo/share/website/IShareProcess;

    iput-object p3, p0, Lcom/pinguo/share/net/ServiceConnection$1;->val$mpre:Lcom/pinguo/share/net/ProgressMultiPartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(J)V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/share/net/ServiceConnection$1;->val$shareProcess:Lcom/pinguo/share/website/IShareProcess;

    long-to-float v1, p1

    iget-object v2, p0, Lcom/pinguo/share/net/ServiceConnection$1;->val$mpre:Lcom/pinguo/share/net/ProgressMultiPartEntity;

    invoke-virtual {v2}, Lcom/pinguo/share/net/ProgressMultiPartEntity;->getContentLength()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/pinguo/share/website/IShareProcess;->rate(I)V

    return-void
.end method

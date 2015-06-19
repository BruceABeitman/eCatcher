.class Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$2;
.super Ljava/lang/Object;
.source "CloudSettingsForUploadSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting$2;->this$0:Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class Lcom/fsck/k9/activity/setup/AccountSettings$14;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$14;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$14;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    #calls: Lcom/fsck/k9/activity/setup/AccountSettings;->onManageIdentities()V
    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$1200(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    const/4 v0, 0x1

    return v0
.end method

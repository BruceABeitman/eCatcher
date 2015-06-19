.class Lcom/facebook/katana/VersionTasks$1;
.super Ljava/lang/Thread;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/VersionTasks;->executeUpgrades()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/VersionTasks;


# direct methods
.method constructor <init>(Lcom/facebook/katana/VersionTasks;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/VersionTasks$1;->this$0:Lcom/facebook/katana/VersionTasks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/VersionTasks$1;->this$0:Lcom/facebook/katana/VersionTasks;

    #getter for: Lcom/facebook/katana/VersionTasks;->mPreviouslyRunBuild:J
    invoke-static {v0}, Lcom/facebook/katana/VersionTasks;->access$0(Lcom/facebook/katana/VersionTasks;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/VersionTasks$1;->this$0:Lcom/facebook/katana/VersionTasks;

    #getter for: Lcom/facebook/katana/VersionTasks;->mBuildNumber:J
    invoke-static {v2}, Lcom/facebook/katana/VersionTasks;->access$1(Lcom/facebook/katana/VersionTasks;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/VersionTasks$1;->this$0:Lcom/facebook/katana/VersionTasks;

    #getter for: Lcom/facebook/katana/VersionTasks;->mPreviouslyRunBuild:J
    invoke-static {v0}, Lcom/facebook/katana/VersionTasks;->access$0(Lcom/facebook/katana/VersionTasks;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/facebook/katana/VersionTasks$1;->this$0:Lcom/facebook/katana/VersionTasks;

    #getter for: Lcom/facebook/katana/VersionTasks;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/katana/VersionTasks;->access$2(Lcom/facebook/katana/VersionTasks;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/PlatformUtils;->fixContacts(Landroid/content/Context;)V

    :cond_26
    iget-object v0, p0, Lcom/facebook/katana/VersionTasks$1;->this$0:Lcom/facebook/katana/VersionTasks;

    #getter for: Lcom/facebook/katana/VersionTasks;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/katana/VersionTasks;->access$2(Lcom/facebook/katana/VersionTasks;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_run_build"

    iget-object v2, p0, Lcom/facebook/katana/VersionTasks$1;->this$0:Lcom/facebook/katana/VersionTasks;

    #getter for: Lcom/facebook/katana/VersionTasks;->mBuildNumber:J
    invoke-static {v2}, Lcom/facebook/katana/VersionTasks;->access$1(Lcom/facebook/katana/VersionTasks;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/KeyValueManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10
.end method

.class Lcom/pinguo/share/ShareManager$4;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/ShareManager;->otherShare(Landroid/content/Context;Lcom/pinguo/share/ShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$mShareAdapter:Lcom/pinguo/share/local/OtherShareAdapter;

.field private final synthetic val$shareInfo:Lcom/pinguo/share/ShareInfo;


# direct methods
.method constructor <init>(Lcom/pinguo/share/local/OtherShareAdapter;Lcom/pinguo/share/ShareInfo;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/share/ShareManager$4;->val$mShareAdapter:Lcom/pinguo/share/local/OtherShareAdapter;

    iput-object p2, p0, Lcom/pinguo/share/ShareManager$4;->val$shareInfo:Lcom/pinguo/share/ShareInfo;

    iput-object p3, p0, Lcom/pinguo/share/ShareManager$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    iget-object v5, p0, Lcom/pinguo/share/ShareManager$4;->val$mShareAdapter:Lcom/pinguo/share/local/OtherShareAdapter;

    invoke-virtual {v5}, Lcom/pinguo/share/local/OtherShareAdapter;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_83

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/pinguo/share/ShareManager$4;->val$shareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v5, v5, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/share/ShareManager$4;->val$mShareAdapter:Lcom/pinguo/share/local/OtherShareAdapter;

    invoke-virtual {v5, p2}, Lcom/pinguo/share/local/OtherShareAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v5, "image/jpg"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.SUBJECT"

    iget-object v6, p0, Lcom/pinguo/share/ShareManager$4;->val$shareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v6, v6, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.TITLE"

    iget-object v6, p0, Lcom/pinguo/share/ShareManager$4;->val$shareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v6, v6, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/pinguo/share/ShareManager$4;->val$shareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v7, v7, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/share/ShareManager$4;->val$shareInfo:Lcom/pinguo/share/ShareInfo;

    iget-object v7, v7, Lcom/pinguo/share/ShareInfo;->uiTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/pinguo/share/ShareManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_83
    return-void
.end method

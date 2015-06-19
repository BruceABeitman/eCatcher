.class Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;
.super Ljava/lang/Object;
.source "PGEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->showQuitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;)Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    move-result-object v0

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)Lus/pinguo/androidsdk/pgedit/PGEditController;

    move-result-object v0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->sendBroadCastForCancel()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;)Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->finish()V

    return-void
.end method

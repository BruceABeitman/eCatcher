.class Lus/pinguo/androidsdk/pgedit/PGEditActivity$1$1;
.super Ljava/lang/Object;
.source "PGEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->showQuitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;)Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->finish()V

    return-void
.end method

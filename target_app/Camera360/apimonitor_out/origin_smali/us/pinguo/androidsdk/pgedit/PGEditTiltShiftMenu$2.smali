.class Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$2;
.super Ljava/lang/Object;
.source "PGEditTiltShiftMenu.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekValueChanged(F)V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setTiltShiftRangeWithSeekBar(F)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    move-result-object v0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->refreshStatus()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    move-result-object v0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->invalidate()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->changeEffect()V

    return-void
.end method

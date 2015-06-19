.class  Lus/pinguo/androidsdk/pgedit/PGEditMenu$2;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;
.source "PGEditMenu.java"
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;-><init>()V
return-void
.end method
.method public actionFinish()V
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showButtomSecondMenuAnimationFinish()V
return-void
.end method
.class Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setContainerTop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    move-result-object v0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->getEffectFragmentActionListener()Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

    move-result-object v0

    invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;->dialogCancel()V

    return-void
.end method

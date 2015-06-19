.class Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$1;
.super Ljava/lang/Object;
.source "PGEditEffectFragmentProxy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->register(Landroid/support/v4/app/FragmentTransaction;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

    move-result-object v0

    invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;->dialogCancel()V

    return-void
.end method

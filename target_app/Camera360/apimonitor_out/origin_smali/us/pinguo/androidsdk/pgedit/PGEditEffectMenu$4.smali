.class Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"

# interfaces
.implements Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->changeEffect()V
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

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V

    return-void
.end method

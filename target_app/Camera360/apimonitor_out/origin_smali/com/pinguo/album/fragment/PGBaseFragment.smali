.class public abstract Lcom/pinguo/album/fragment/PGBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "PGBaseFragment.java"

# interfaces
.implements Lcom/pinguo/album/PGAlbumContext;


# static fields
.field public static final FRAGMENT_TAG_THUMBNAIL:Ljava/lang/String;


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/fragment/PGBaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/fragment/PGBaseFragment;->FRAGMENT_TAG_THUMBNAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v0

    return-object v0
.end method

.method public abstract getGLController()Lcom/pinguo/album/views/GLController;
.end method

.method public getMainLooper()Landroid/os/Looper;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/pinguo/album/activities/BaseActivity;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/pinguo/album/activities/BaseActivity;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;

    move-result-object v0

    return-object v0
.end method

.method public getThreadPool()Lcom/pinguo/album/AlbumThreadPool;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getAlbumThreadPool()Lcom/pinguo/album/AlbumThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    :cond_c
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method protected showLongToast(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_9
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected showShortToast(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_9
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

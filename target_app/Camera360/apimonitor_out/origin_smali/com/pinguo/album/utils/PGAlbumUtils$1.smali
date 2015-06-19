.class Lcom/pinguo/album/utils/PGAlbumUtils$1;
.super Ljava/lang/Object;
.source "PGAlbumUtils.java"

# interfaces
.implements Lcom/pinguo/album/AlbumThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/utils/PGAlbumUtils;->fakeBusy(Lcom/pinguo/album/AlbumThreadPool$JobContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Landroid/os/ConditionVariable;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/utils/PGAlbumUtils$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/utils/PGAlbumUtils$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

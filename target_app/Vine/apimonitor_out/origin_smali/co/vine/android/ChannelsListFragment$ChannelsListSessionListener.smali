.class public Lco/vine/android/ChannelsListFragment$ChannelsListSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ChannelsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ChannelsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelsListSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ChannelsListFragment;


# direct methods
.method public constructor <init>(Lco/vine/android/ChannelsListFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ChannelsListFragment$ChannelsListSessionListener;->this$0:Lco/vine/android/ChannelsListFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/ChannelsListFragment$ChannelsListSessionListener;->this$0:Lco/vine/android/ChannelsListFragment;

    iget-object v0, v0, Lco/vine/android/ChannelsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->setChannelImages(Ljava/util/HashMap;)V

    return-void
.end method

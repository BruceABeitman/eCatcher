.class public Lco/vine/android/ChannelsListFragment$ChannelsListSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ChannelsListFragment.java"
.field final synthetic this$0:Lco/vine/android/ChannelsListFragment;
.method public constructor <init>(Lco/vine/android/ChannelsListFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ChannelsListFragment$ChannelsListSessionListener;->this$0:Lco/vine/android/ChannelsListFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
iget-object v0, p0, Lco/vine/android/ChannelsListFragment$ChannelsListSessionListener;->this$0:Lco/vine/android/ChannelsListFragment;
iget-object v0, v0, Lco/vine/android/ChannelsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->setChannelImages(Ljava/util/HashMap;)V
return-void
.end method
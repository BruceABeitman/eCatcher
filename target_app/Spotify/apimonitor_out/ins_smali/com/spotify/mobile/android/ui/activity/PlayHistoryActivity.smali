.class public Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private n:Lcom/spotify/mobile/android/ui/adapter/ab;
.field private p:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
.field private q:Landroid/view/View$OnCreateContextMenuListener;
.field private r:Landroid/widget/AdapterView$OnItemClickListener;
.field private s:Landroid/support/v4/app/z;
.method public constructor <init>()V
.registers 7
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
sget-object v2, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;
sget-object v3, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
sget-object v4, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;
new-instance v5, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$1;
invoke-direct {v5, p0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)V
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;-><init>(Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;Lcom/spotify/mobile/android/ui/menus/g;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->p:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->q:Landroid/view/View$OnCreateContextMenuListener;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$5;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->s:Landroid/support/v4/app/z;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->p:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)Lcom/spotify/mobile/android/ui/adapter/ab;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->n:Lcom/spotify/mobile/android/ui/adapter/ab;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f0300b8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->setContentView(I)V
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/ab;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/adapter/ab;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->n:Lcom/spotify/mobile/android/ui/adapter/ab;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->e()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0188
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->s:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const v0, 0x102000a
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->n:Lcom/spotify/mobile/android/ui/adapter/ab;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->q:Landroid/view/View$OnCreateContextMenuListener;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const v0, 0x7f0a0223
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
invoke-static {p0}, Lcom/spotify/mobile/android/ui/fragments/j;->j(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v1, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->y:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class final Lcom/spotify/mobile/android/ui/fragments/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

.field private b:Landroid/content/Context;

.field private c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/h;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/h;->notifyDataSetChanged()V

    return-void
.end method

.method public final a()[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    array-length v0, v0

    goto :goto_5
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->d:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_42

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->b:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object p2

    new-instance v0, Lcom/spotify/android/paste/widget/SwitchView;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/h;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/spotify/android/paste/widget/SwitchView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->f()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/SwitchView;

    invoke-virtual {v0, p0}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1d
    invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    aget-object v3, v0, p1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/h;->d:Z

    iget-object v0, v3, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->f()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/SwitchView;

    iget v4, v3, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->c:I

    if-eqz v4, :cond_45

    :goto_35
    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setChecked(Z)V

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/h;->d:Z

    return-object p2

    :cond_42
    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    goto :goto_1d

    :cond_45
    move v1, v2

    goto :goto_35
.end method

.method public final getViewTypeCount()I
    .registers 2

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->values()[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/h;->d:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/h;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-virtual {v1, v0, p2}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;Z)V

    goto :goto_4
.end method

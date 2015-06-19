.class public final Lcom/spotify/mobile/android/ui/adapter/s;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/s;->a:Landroid/content/Context;
invoke-static {p1, p2}, Lcom/spotify/mobile/android/ui/adapter/s;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/s;->b:Ljava/util/List;
return-void
.end method
.method private static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
.registers 8
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_12
:goto_12
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
const-string v4, "com.facebook.katana"
iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_12
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_12
:cond_2e
new-instance v0, Lcom/spotify/mobile/android/util/dt;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/dt;-><init>(Landroid/content/Context;)V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_37
:cond_37
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
const-string v5, "com.twitter.android"
invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_37
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_37
:cond_53
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_57
:cond_57
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_73
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
const-string v4, "com.google.android.gm"
iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_57
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_57
:cond_73
invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
return-object v2
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/s;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/s;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
if-nez p2, :cond_b
new-instance p2, Lcom/spotify/android/paste/widget/ListItemView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/s;->a:Landroid/content/Context;
invoke-direct {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/s;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/s;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {p2, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-object p2
.end method
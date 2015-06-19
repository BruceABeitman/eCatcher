.class public abstract Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.field protected a:Lcom/spotify/android/paste/widget/ListItemView;
.field protected b:Ljava/lang/String;
.field private c:Landroid/view/View$OnClickListener;
.field private d:Lcom/spotify/mobile/android/ui/actions/a;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->c:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->c:Landroid/view/View$OnClickListener;
invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_9
return-void
.end method
.method protected abstract a(Landroid/content/ContentValues;)V
.end method
.method public abstract a(Landroid/database/Cursor;)V
.end method
.method protected final a(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/Object;)V
.registers 6
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->a:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v0, v1, p1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v1, "value"
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->d:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->b:Ljava/lang/String;
return-void
.end method
.method protected final b()V
.registers 5
const/4 v3, 0x0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a(Landroid/content/ContentValues;)V
invoke-virtual {v0}, Landroid/content/ContentValues;->size()I
move-result v1
if-lez v1, :cond_1c
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:cond_1c
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
return-void
.end method
.method protected onFinishInflate()V
.registers 4
const/4 v2, 0x0
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_b
:goto_a
return-void
:cond_b
const v0, 0x7f0a0386
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->d:Lcom/spotify/mobile/android/ui/actions/a;
goto :goto_a
.end method
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->c:Landroid/view/View$OnClickListener;
return-void
.end method